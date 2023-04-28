; ModuleID = 'fs/exec.c'
source_filename = "fs/exec.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.70, %struct.qspinlock }
%union.anon.70 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [48 x i8] }
%struct.anon.3 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.79, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.79 = type { %struct.rb_node, i64 }
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
%struct.page = type { i64, %union.anon.11, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i8* }
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
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
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
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i64 }
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
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.72 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.74 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.28 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.mmu_gather = type { %struct.mm_struct*, %struct.mmu_table_batch*, i64, i64, i16, i32, %struct.mmu_gather_batch*, %struct.mmu_gather_batch, [8 x %struct.page*] }
%struct.mmu_table_batch = type { %struct.callback_head, i32, [0 x i8*] }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch*, i32, i32, [0 x %struct.page*] }
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque
%struct.open_flags = type { i32, i16, i32, i32, i32 }

@suid_dumpable = dso_local local_unnamed_addr global i32 0, align 4
@binfmt_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@formats = internal global %struct.list_head { %struct.list_head* @formats, %struct.list_head* @formats }, align 8
@mmap_min_addr = external dso_local local_unnamed_addr global i64, align 8
@setup_arg_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [48 x i8] c"\014process '%pD4' started with executable stack\0A\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@__const.do_open_execat.open_exec_flags = private unnamed_addr constant { i32, i16, [2 x i8], i32, i32, i32 } { i32 131104, i16 0, [2 x i8] zeroinitializer, i32 1, i32 256, i32 1 }, align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@sighand_cachep = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev/fd/%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/dev/fd/%d/%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__register_binfmt(%struct.linux_binfmt* noundef %fmt, i32 noundef %insert) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_write_lock() #12
  %tobool.not = icmp eq i32 %insert, 0
  %lh1 = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %fmt, i64 0, i32 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call fastcc void @list_add(%struct.list_head* noundef %lh1) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call fastcc void @list_add_tail(%struct.list_head* noundef %lh1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  call fastcc void @__raw_write_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !7
  call fastcc void @queued_write_lock(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @binfmt_lock, i64 0, i32 0)) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #1 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @formats, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef nonnull @formats, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #1 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @formats, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef nonnull @formats) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_write_unlock(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @binfmt_lock, i64 0, i32 0)) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_binfmt(%struct.linux_binfmt* nocapture noundef %fmt) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_write_lock() #12
  %lh = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %fmt, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lh) #12
  call fastcc void @__raw_write_unlock() #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #1 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @path_noexec(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #2 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 2
  %1 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %2 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 11
  %3 = load i64, i64* %s_iflags, align 8
  %and2 = and i64 %3, 2
  %tobool3 = icmp ne i64 %and2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool3, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_string_kernel(i8* noundef %arg, %struct.linux_binprm* nocapture noundef %bprm) local_unnamed_addr #0 {
entry:
  %call = call i64 @strnlen(i8* noundef %arg, i64 noundef 131072) #14
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 3
  %1 = load i64, i64* %p, align 8
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cleanup57, label %if.end

if.end:                                           ; preds = %entry
  %conv2 = sext i32 %conv to i64
  %call3 = call fastcc i1 @valid_arg_len(i64 noundef %conv2) #12
  br i1 %call3, label %if.end5, label %cleanup57

if.end5:                                          ; preds = %if.end
  %sub = sub i64 %1, %conv2
  store i64 %sub, i64* %p, align 8
  %argmin = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 4
  %2 = load i64, i64* %argmin, align 8
  %cmp9 = icmp ult i64 %sub, %2
  br i1 %cmp9, label %cleanup57, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end5
  %cmp13106 = icmp ult i32 %0, 2147483647
  br i1 %cmp13106, label %while.body.preheader, label %cleanup57

while.body.preheader:                             ; preds = %while.cond.preheader
  %add.ptr = getelementptr i8, i8* %arg, i64 %conv2
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end45
  %arg.addr.0109 = phi i8* [ %add.ptr41, %if.end45 ], [ %add.ptr, %while.body.preheader ]
  %len.0108 = phi i32 [ %sub42, %if.end45 ], [ %conv, %while.body.preheader ]
  %pos.0107 = phi i64 [ %sub39, %if.end45 ], [ %1, %while.body.preheader ]
  %and = and i64 %pos.0107, 4095
  %cmp15 = icmp eq i64 %and, 0
  %3 = trunc i64 %and to i32
  %conv30 = select i1 %cmp15, i32 4096, i32 %3
  %cmp32 = icmp ult i32 %len.0108, %conv30
  %cond37 = select i1 %cmp32, i32 %len.0108, i32 %conv30
  %conv38 = zext i32 %cond37 to i64
  %sub39 = sub i64 %pos.0107, %conv38
  %idx.neg = sub nsw i64 0, %conv38
  %add.ptr41 = getelementptr i8, i8* %arg.addr.0109, i64 %idx.neg
  %call43 = call fastcc %struct.page* @get_arg_page(%struct.linux_binprm* noundef %bprm, i64 noundef %sub39, i32 noundef 1) #12
  %tobool.not = icmp eq %struct.page* %call43, null
  br i1 %tobool.not, label %cleanup57, label %if.end45

if.end45:                                         ; preds = %while.body
  %sub42 = sub nsw i32 %len.0108, %cond37
  %call46 = call fastcc i8* @kmap_atomic(%struct.page* noundef nonnull %call43) #12
  %and48 = and i64 %sub39, 4095
  %add.ptr49 = getelementptr i8, i8* %call46, i64 %and48
  %call51 = call i8* @memcpy(i8* noundef %add.ptr49, i8* noundef %add.ptr41, i64 noundef %conv38) #14
  call void @flush_dcache_page(%struct.page* noundef nonnull %call43) #14
  call fastcc void @__kunmap_atomic() #12
  call fastcc void @put_arg_page(%struct.page* noundef nonnull %call43) #12
  %cmp13 = icmp sgt i32 %sub42, 0
  br i1 %cmp13, label %while.body, label %cleanup57

cleanup57:                                        ; preds = %if.end45, %while.body, %while.cond.preheader, %if.end5, %if.end, %entry
  %retval.2 = phi i32 [ -14, %entry ], [ -7, %if.end ], [ -7, %if.end5 ], [ 0, %while.cond.preheader ], [ 0, %if.end45 ], [ -7, %while.body ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @valid_arg_len(i64 noundef %len) unnamed_addr #5 {
entry:
  %cmp = icmp ult i64 %len, 131073
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @get_arg_page(%struct.linux_binprm* nocapture noundef %bprm, i64 noundef %pos, i32 noundef %write) unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %0 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.page* null, %struct.page** %page, align 8, !annotation !9
  %tobool.not = icmp eq i32 %write, 0
  %spec.select = select i1 %tobool.not, i32 16, i32 17
  %mm = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 2
  %1 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %1) #12
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call = call i64 @get_user_pages_remote(%struct.mm_struct* noundef %2, i64 noundef %pos, i64 noundef 1, i32 noundef %spec.select, %struct.page** noundef nonnull %page, %struct.vm_area_struct** noundef null, i32* noundef null) #14
  %conv = trunc i64 %call to i32
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %3) #12
  %cmp = icmp slt i32 %conv, 1
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %vma = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 0
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %call8 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %4) #12, !range !10
  call fastcc void @acct_arg_size(%struct.linux_binprm* noundef %bprm, i64 noundef %call8) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %5 = load %struct.page*, %struct.page** %page, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi %struct.page* [ %5, %if.end9 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  call fastcc void @pagefault_disable() #12
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_arg_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @put_page(%struct.page* noundef %page) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @setup_arg_pages(%struct.linux_binprm* nocapture noundef %bprm, i64 noundef %stack_top, i32 noundef %executable_stack) local_unnamed_addr #0 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %vma2 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 0
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma2, align 8
  %4 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8
  %call3 = call i64 @arch_align_stack(i64 noundef %stack_top) #14
  %add = add i64 %call3, 4095
  %and = and i64 %add, -4096
  %5 = load i64, i64* @mmap_min_addr, align 8
  %cmp = icmp ult i64 %and, %5
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !prof !14

lor.lhs.false:                                    ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 1
  %6 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 0
  %7 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %6, %7
  %sub5 = sub i64 %and, %5
  %cmp6.not = icmp ult i64 %sub, %sub5
  br i1 %cmp6.not, label %if.end, label %cleanup, !prof !15

if.end:                                           ; preds = %lor.lhs.false
  %sub16 = sub i64 %6, %and
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 3
  %8 = load i64, i64* %p, align 8
  %sub17 = sub i64 %8, %sub16
  store i64 %sub17, i64* %p, align 8
  %arg_start = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 35
  store i64 %sub17, i64* %arg_start, align 8
  %loader = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 19
  %9 = load i64, i64* %loader, align 8
  %tobool19.not = icmp eq i64 %9, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end
  %sub22 = sub i64 %9, %sub16
  store i64 %sub22, i64* %loader, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end
  %exec = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 20
  %10 = load i64, i64* %exec, align 8
  %sub24 = sub i64 %10, %sub16
  store i64 %sub24, i64* %exec, align 8
  %call25 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.end23
  %cmp39 = icmp eq i32 %executable_stack, 2
  br i1 %cmp39, label %if.end55, label %if.else, !prof !14

if.else:                                          ; preds = %if.end28
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %11 = load i32, i32* %personality, align 16
  %and30 = lshr i32 %11, 20
  %12 = and i32 %and30, 4
  %or37 = or i32 %12, 1048947
  %cmp50 = icmp eq i32 %executable_stack, 1
  %narrow = select i1 %cmp50, i32 1048947, i32 %or37
  %spec.select = zext i32 %narrow to i64
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.end28
  %vm_flags.0 = phi i64 [ 1048951, %if.end28 ], [ %spec.select, %if.else ]
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 25
  %13 = load i64, i64* %def_flags, align 8
  %or56 = or i64 %13, %vm_flags.0
  %or57 = or i64 %or56, 98304
  %14 = load i64, i64* %vm_start, align 8
  %15 = load i64, i64* %vm_end, align 8
  %call60 = call i32 @mprotect_fixup(%struct.vm_area_struct* noundef %3, %struct.vm_area_struct** noundef nonnull %prev, i64 noundef %14, i64 noundef %15, i64 noundef %or57) #14
  %tobool62.not = icmp eq i32 %call60, 0
  br i1 %tobool62.not, label %do.body, label %out_unlock

do.body:                                          ; preds = %if.end55
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %cmp65.not = icmp eq %struct.vm_area_struct* %16, %3
  br i1 %cmp65.not, label %do.end81, label %do.body75, !prof !15

do.body75:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 813; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !16
  unreachable

do.end81:                                         ; preds = %do.body
  %and82 = and i64 %or56, 4
  %tobool83.not = icmp eq i64 %and82, 0
  br i1 %tobool83.not, label %if.end118, label %if.then91, !prof !15

if.then91:                                        ; preds = %do.end81
  %.b217 = load i1, i1* @setup_arg_pages.__already_done, align 1
  br i1 %.b217, label %if.end118, label %if.then104, !prof !15

if.then104:                                       ; preds = %if.then91
  store i1 true, i1* @setup_arg_pages.__already_done, align 1
  %file = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 8
  %17 = load %struct.file*, %struct.file** %file, align 8
  %call108 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.file* noundef %17) #16
  br label %if.end118

if.end118:                                        ; preds = %if.then91, %if.then104, %do.end81
  %tobool119.not = icmp eq i64 %sub16, 0
  br i1 %tobool119.not, label %if.end126, label %if.then120

if.then120:                                       ; preds = %if.end118
  %call121 = call fastcc i32 @shift_arg_pages(%struct.vm_area_struct* noundef %3, i64 noundef %sub16) #12
  %tobool123.not = icmp eq i32 %call121, 0
  br i1 %tobool123.not, label %if.end126, label %out_unlock

if.end126:                                        ; preds = %if.then120, %if.end118
  %vm_flags127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 8
  %18 = load i64, i64* %vm_flags127, align 8
  %and128 = and i64 %18, -98305
  store i64 %and128, i64* %vm_flags127, align 8
  %19 = load i64, i64* %vm_end, align 8
  %20 = load i64, i64* %vm_start, align 8
  %rlim_cur = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 21, i32 0
  %21 = load i64, i64* %rlim_cur, align 8
  %and133 = and i64 %21, -4096
  %sub131 = add i64 %19, 131072
  %add134 = sub i64 %sub131, %20
  %cmp135 = icmp ugt i64 %add134, %and133
  %sub139 = sub i64 %19, %and133
  %sub142 = add i64 %20, -131072
  %stack_base.0 = select i1 %cmp135, i64 %sub139, i64 %sub142
  %22 = load i64, i64* %p, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %start_stack = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i64 0, i32 0, i32 34
  store i64 %22, i64* %start_stack, align 8
  %call147 = call i32 @expand_stack(%struct.vm_area_struct* noundef %3, i64 noundef %stack_base.0) #14
  %tobool149.not = icmp eq i32 %call147, 0
  %spec.store.select = select i1 %tobool149.not, i32 0, i32 -14
  br label %out_unlock

out_unlock:                                       ; preds = %if.then120, %if.end55, %if.end126
  %ret.0 = phi i32 [ %call60, %if.end55 ], [ %call121, %if.then120 ], [ %spec.store.select, %if.end126 ]
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry, %lor.lhs.false, %out_unlock
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -12, %lor.lhs.false ], [ -12, %entry ], [ -4, %if.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @arch_align_stack(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mprotect_fixup(%struct.vm_area_struct* noundef, %struct.vm_area_struct** noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shift_arg_pages(%struct.vm_area_struct* noundef %vma, i64 noundef %shift) unnamed_addr #0 {
entry:
  %tlb = alloca %struct.mmu_gather, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %2 = load i64, i64* %vm_end, align 8
  %sub = sub i64 %2, %1
  %sub1 = sub i64 %1, %shift
  %sub2 = sub i64 %2, %shift
  %3 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !annotation !9
  %cmp = icmp ugt i64 %sub1, %sub2
  br i1 %cmp, label %do.body4, label %do.end9, !prof !14

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 686; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !17
  unreachable

do.end9:                                          ; preds = %entry
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %0, i64 noundef %sub1) #14
  %cmp10.not = icmp eq %struct.vm_area_struct* %call, %vma
  br i1 %cmp10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %do.end9
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %4 = load i64, i64* %vm_pgoff, align 8
  %call14 = call fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %sub1, i64 noundef %2, i64 noundef %4) #12
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = call i64 @move_page_tables(%struct.vm_area_struct* noundef %vma, i64 noundef %1, %struct.vm_area_struct* noundef %vma, i64 noundef %sub1, i64 noundef %sub, i1 noundef false) #14
  %cmp19.not = icmp eq i64 %sub, %call18
  br i1 %cmp19.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @lru_add_drain() #14
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %0) #14
  %cmp23 = icmp ugt i64 %sub2, %1
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool26.not = icmp eq %struct.vm_area_struct* %5, null
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end22
  br i1 %tobool26.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then25
  %vm_start28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i64 0, i32 0
  %6 = load i64, i64* %vm_start28, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then25, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ 0, %if.then25 ]
  call void @free_pgd_range(%struct.mmu_gather* noundef nonnull %tlb, i64 noundef %sub2, i64 noundef %2, i64 noundef %sub2, i64 noundef %cond) #14
  br label %if.end37

if.else:                                          ; preds = %if.end22
  br i1 %tobool26.not, label %cond.end35, label %cond.true31

cond.true31:                                      ; preds = %if.else
  %vm_start33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i64 0, i32 0
  %7 = load i64, i64* %vm_start33, align 8
  br label %cond.end35

cond.end35:                                       ; preds = %if.else, %cond.true31
  %cond36 = phi i64 [ %7, %cond.true31 ], [ 0, %if.else ]
  call void @free_pgd_range(%struct.mmu_gather* noundef nonnull %tlb, i64 noundef %1, i64 noundef %2, i64 noundef %sub2, i64 noundef %cond36) #14
  br label %if.end37

if.end37:                                         ; preds = %cond.end35, %cond.end
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #14
  %8 = load i64, i64* %vm_pgoff, align 8
  %9 = call fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %sub1, i64 noundef %sub2, i64 noundef %8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13, %do.end9, %if.end37
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -14, %do.end9 ], [ -12, %if.end13 ], [ -12, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @expand_stack(%struct.vm_area_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @open_exec(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %name) #14
  %0 = bitcast %struct.filename* %call to i8*
  %1 = bitcast %struct.filename* %call to %struct.file*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #12
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.file* @do_open_execat(i32 noundef -100, %struct.filename* noundef %call, i32 noundef 0) #12
  call void @putname(%struct.filename* noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %f.0 = phi %struct.file* [ %1, %entry ], [ %call3, %if.then ]
  ret %struct.file* %f.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname_kernel(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @do_open_execat(i32 noundef %fd, %struct.filename* noundef %name, i32 noundef %flags) unnamed_addr #0 {
entry:
  %open_exec_flags = alloca %struct.open_flags, align 4
  %0 = bitcast %struct.open_flags* %open_exec_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %0, i8* noundef align 4 dereferenceable(20) bitcast ({ i32, i16, [2 x i8], i32, i32, i32 }* @__const.do_open_execat.open_exec_flags to i8*), i64 20, i1 false)
  %and = and i32 %flags, -4353
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #12
  %1 = bitcast i8* %call to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 256
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %lookup_flags = getelementptr inbounds %struct.open_flags, %struct.open_flags* %open_exec_flags, i64 0, i32 4
  store i32 0, i32* %lookup_flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = phi i32 [ 16384, %if.then2 ], [ 16385, %if.end ]
  %and5 = and i32 %flags, 4096
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end4
  %lookup_flags8 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %open_exec_flags, i64 0, i32 4
  store i32 %2, i32* %lookup_flags8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4
  %call10 = call %struct.file* @do_filp_open(i32 noundef %fd, %struct.filename* noundef %name, %struct.open_flags* noundef nonnull %open_exec_flags) #14
  %3 = bitcast %struct.file* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %3) #12
  br i1 %call11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %call10) #12
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call14, i64 0, i32 0
  %4 = load i16, i16* %i_mode, align 8
  %5 = and i16 %4, -4096
  %cmp16 = icmp eq i16 %5, -32768
  br i1 %cmp16, label %lor.rhs, label %if.then28

lor.rhs:                                          ; preds = %if.end13
  %f_path = getelementptr inbounds %struct.file, %struct.file* %call10, i64 0, i32 1
  %call18 = call i1 @path_noexec(%struct.path* noundef %f_path) #12
  br i1 %call18, label %if.then28, label %if.end39, !prof !14

if.then28:                                        ; preds = %if.end13, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 923; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  br label %exit

if.end39:                                         ; preds = %lor.rhs
  %call40 = call fastcc i32 @deny_write_access(%struct.file* noundef %call10) #12
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %exit

if.end43:                                         ; preds = %if.end39
  %name44 = getelementptr inbounds %struct.filename, %struct.filename* %name, i64 0, i32 0
  %6 = load i8*, i8** %name44, align 8
  %7 = load i8, i8* %6, align 1
  %cmp46.not = icmp eq i8 %7, 0
  br i1 %cmp46.not, label %cleanup, label %if.then48

if.then48:                                        ; preds = %if.end43
  call fastcc void @fsnotify_open(%struct.file* noundef %call10) #12
  br label %cleanup

exit:                                             ; preds = %if.then28, %if.end39
  %err.0 = phi i32 [ -13, %if.then28 ], [ %call40, %if.end39 ]
  call void @fput(%struct.file* noundef %call10) #14
  %conv50 = sext i32 %err.0 to i64
  %call51 = call fastcc i8* @ERR_PTR(i64 noundef %conv50) #12
  %8 = bitcast i8* %call51 to %struct.file*
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then48, %if.end43, %exit, %if.then
  %retval.0 = phi %struct.file* [ %1, %if.then ], [ %8, %exit ], [ %call10, %if.end43 ], [ %call10, %if.then48 ], [ %call10, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #13
  ret %struct.file* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(%struct.filename* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__get_task_comm(i8* noundef returned %buf, i64 noundef %buf_size, %struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %tsk) #12
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 81, i64 0
  %call = call i8* @strncpy(i8* noundef %buf, i8* noundef %arraydecay, i64 noundef %buf_size) #14
  call fastcc void @task_unlock(%struct.task_struct* noundef %tsk) #12
  ret i8* %buf
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %buf, i1 noundef %exec) local_unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %tsk) #12
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 81, i64 0
  %call = call i64 @strlcpy(i8* noundef %arraydecay, i8* noundef %buf, i64 noundef 16) #14
  call fastcc void @task_unlock(%struct.task_struct* noundef %tsk) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @begin_new_exec(%struct.linux_binprm* noundef %bprm) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc i32 @bprm_creds_from_file(%struct.linux_binprm* noundef %bprm) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %point_of_no_return = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 5
  %bf.load = load i8, i8* %point_of_no_return, align 8
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, i8* %point_of_no_return, align 8
  %call3 = call fastcc i32 @de_thread(%struct.task_struct* noundef %1) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  call fastcc void @io_uring_task_cancel() #12
  %call7 = call i32 @unshare_files() #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end6
  %mm = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 2
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %file = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 8
  %3 = load %struct.file*, %struct.file** %file, align 8
  %call11 = call i32 @set_mm_exe_file(%struct.mm_struct* noundef %2, %struct.file* noundef %3) #14
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end10
  %4 = load %struct.file*, %struct.file** %file, align 8
  call void @would_dump(%struct.linux_binprm* noundef %bprm, %struct.file* noundef %4) #12
  %bf.load16 = load i8, i8* %point_of_no_return, align 8
  %bf.clear17 = and i8 %bf.load16, 1
  %tobool18.not = icmp eq i8 %bf.clear17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end14
  %executable = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 6
  %5 = load %struct.file*, %struct.file** %executable, align 8
  call void @would_dump(%struct.linux_binprm* noundef %bprm, %struct.file* noundef %5) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14
  call fastcc void @acct_arg_size(%struct.linux_binprm* noundef %bprm, i64 noundef 0) #12
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call22 = call fastcc i32 @exec_mmap(%struct.mm_struct* noundef %6) #12
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.end20
  store %struct.mm_struct* null, %struct.mm_struct** %mm, align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  call void @exit_itimers(%struct.signal_struct* noundef %7) #14
  call void @flush_itimer_signals() #14
  %call27 = call fastcc i32 @unshare_sighand(%struct.task_struct* noundef %1) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %out_unlock

if.end30:                                         ; preds = %if.end25
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, -73433153
  store i32 %and, i32* %flags, align 4
  call void @flush_thread() #14
  %per_clear = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 11
  %9 = load i32, i32* %per_clear, align 4
  %neg = xor i32 %9, -1
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %10 = load i32, i32* %personality, align 16
  %and31 = and i32 %10, %neg
  store i32 %and31, i32* %personality, align 16
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %11 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  call void @do_close_on_exec(%struct.files_struct* noundef %11) #14
  %bf.load32 = load i8, i8* %point_of_no_return, align 8
  %12 = and i8 %bf.load32, 4
  %tobool35.not = icmp eq i8 %12, 0
  br i1 %tobool35.not, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end30
  %pdeath_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 42
  store i32 0, i32* %pdeath_signal, align 64
  %rlim_cur = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 21, i32 0
  %13 = load i64, i64* %rlim_cur, align 8
  %cmp = icmp ugt i64 %13, 8388608
  br i1 %cmp, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.then36
  store i64 8388608, i64* %rlim_cur, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.then37, %if.end30
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 94
  store i64 0, i64* %sas_ss_size, align 16
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 93
  store i64 0, i64* %sas_ss_sp, align 8
  %interp_flags = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 17
  %14 = load i32, i32* %interp_flags, align 8
  %and42 = and i32 %14, 1
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.end, label %if.then74

do.end:                                           ; preds = %if.end41
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %15 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %15, i64 0, i32 5, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %agg.tmp45.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %15, i64 0, i32 1, i32 0
  %agg.tmp45.sroa.0.0.copyload = load i32, i32* %agg.tmp45.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %coerce.val.ii53 = zext i32 %agg.tmp45.sroa.0.0.copyload to i64
  %call54 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii53) #12
  br i1 %call54, label %do.end58, label %if.then74

do.end58:                                         ; preds = %do.end
  %agg.tmp55.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %15, i64 0, i32 6, i32 0
  %agg.tmp55.sroa.0.0.copyload = load i32, i32* %agg.tmp55.sroa.0.0..sroa_idx, align 8
  %agg.tmp62.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %15, i64 0, i32 2, i32 0
  %agg.tmp62.sroa.0.0.copyload = load i32, i32* %agg.tmp62.sroa.0.0..sroa_idx, align 8
  %coerce.val.ii70 = zext i32 %agg.tmp55.sroa.0.0.copyload to i64
  %coerce.val.ii72 = zext i32 %agg.tmp62.sroa.0.0.copyload to i64
  %call73 = call fastcc i1 @gid_eq(i64 %coerce.val.ii70, i64 %coerce.val.ii72) #12
  br i1 %call73, label %if.else, label %if.then74

if.then74:                                        ; preds = %do.end58, %do.end, %if.end41
  %mm76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %16 = load %struct.mm_struct*, %struct.mm_struct** %mm76, align 8
  %17 = load i32, i32* @suid_dumpable, align 4
  call void @set_dumpable(%struct.mm_struct* noundef %16, i32 noundef %17) #12
  br label %if.end79

if.else:                                          ; preds = %do.end58
  %mm78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %18 = load %struct.mm_struct*, %struct.mm_struct** %mm78, align 8
  call void @set_dumpable(%struct.mm_struct* noundef %18, i32 noundef 1) #12
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then74
  %filename = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 14
  %19 = load i8*, i8** %filename, align 8
  %call80 = call fastcc i8* @kbasename(i8* noundef %19) #12
  call void @__set_task_comm(%struct.task_struct* noundef %1, i8* noundef %call80, i1 noundef true) #12
  %self_exec_id = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 100
  %20 = load i64, i64* %self_exec_id, align 16
  %add = add i64 %20, 1
  store volatile i64 %add, i64* %self_exec_id, align 16
  call void @flush_signal_handlers(%struct.task_struct* noundef %1, i32 noundef 0) #14
  %cred91 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  %21 = load %struct.cred*, %struct.cred** %cred91, align 8
  %call92 = call i32 @set_cred_ucounts(%struct.cred* noundef %21) #14
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %out_unlock, label %if.end95

if.end95:                                         ; preds = %if.end79
  %22 = load %struct.cred*, %struct.cred** %cred91, align 8
  %call97 = call i32 @commit_creds(%struct.cred* noundef %22) #14
  store %struct.cred* null, %struct.cred** %cred91, align 8
  %bf.load105 = load i8, i8* %point_of_no_return, align 8
  %bf.clear106 = and i8 %bf.load105, 1
  %tobool108.not = icmp eq i8 %bf.clear106, 0
  br i1 %tobool108.not, label %cleanup, label %if.then109

if.then109:                                       ; preds = %if.end95
  %call110 = call i32 @get_unused_fd_flags(i32 noundef 0) #14
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %out_unlock, label %if.end113

if.end113:                                        ; preds = %if.then109
  %executable114 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 6
  %23 = load %struct.file*, %struct.file** %executable114, align 8
  call void @fd_install(i32 noundef %call110, %struct.file* noundef %23) #14
  store %struct.file* null, %struct.file** %executable114, align 8
  %execfd = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 18
  store i32 %call110, i32* %execfd, align 4
  br label %cleanup

out_unlock:                                       ; preds = %if.then109, %if.end79, %if.end25
  %retval1.0 = phi i32 [ %call27, %if.end25 ], [ %call92, %if.end79 ], [ %call110, %if.then109 ]
  %24 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %24, i64 0, i32 55
  call void @up_write(%struct.rw_semaphore* noundef %exec_update_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end, %if.end6, %if.end10, %if.end20, %if.end95, %if.end113, %entry
  %retval.0 = phi i32 [ %call2, %entry ], [ 0, %if.end113 ], [ 0, %if.end95 ], [ %call3, %if.end ], [ %call7, %if.end6 ], [ %call11, %if.end10 ], [ %call22, %if.end20 ], [ %retval1.0, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bprm_creds_from_file(%struct.linux_binprm* noundef %bprm) unnamed_addr #0 {
entry:
  %execfd_creds = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 5
  %bf.load = load i8, i8* %execfd_creds, align 8
  %0 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %0, 0
  %executable = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 6
  %file1 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 8
  %cond.in = select i1 %tobool.not, %struct.file** %file1, %struct.file** %executable
  %cond = load %struct.file*, %struct.file** %cond.in, align 8
  call fastcc void @bprm_fill_uid(%struct.linux_binprm* noundef %bprm, %struct.file* noundef %cond) #12
  %call = call fastcc i32 @security_bprm_creds_from_file(%struct.linux_binprm* noundef %bprm, %struct.file* noundef %cond) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @de_thread(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %call = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %tsk) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %no_thread_group

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  %call1 = call fastcc i32 @signal_group_exit(%struct.signal_struct* noundef %0) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  br label %cleanup144

if.end4:                                          ; preds = %if.end
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 10
  store %struct.task_struct* %tsk, %struct.task_struct** %group_exit_task, align 8
  %call5 = call i32 @zap_other_threads(%struct.task_struct* noundef %tsk) #14
  %notify_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 9
  store i32 %call5, i32* %notify_count, align 4
  %call6 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %tsk) #12
  br i1 %call6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end4
  %dec = add i32 %call5, -1
  store i32 %dec, i32* %notify_count, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4
  %2 = phi i32 [ %dec, %if.then7 ], [ %call5, %if.end4 ]
  %tobool11.not215 = icmp eq i32 %2, 0
  br i1 %tobool11.not215, label %while.end, label %do.body17.lr.ph

do.body17.lr.ph:                                  ; preds = %if.end9
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 1
  br label %do.body17

do.body17:                                        ; preds = %do.body17.lr.ph, %if.end28
  store volatile i32 258, i32* %__state, align 16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  call void @schedule() #14
  %call25 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %tsk) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %killed

if.end28:                                         ; preds = %do.body17
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  %5 = load i32, i32* %notify_count, align 4
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %while.end, label %do.body17

while.end:                                        ; preds = %if.end28, %if.end9
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  %call29 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %tsk) #12
  br i1 %call29, label %if.end117, label %if.then30

if.then30:                                        ; preds = %while.end
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 56
  %6 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 39
  br label %for.cond

for.cond:                                         ; preds = %do.body45, %if.then30
  call fastcc void @__raw_write_lock_irq() #12
  store i32 -1, i32* %notify_count, align 4
  %7 = load i32, i32* %exit_state, align 4
  %tobool32.not = icmp eq i32 %7, 0
  br i1 %tobool32.not, label %do.body45, label %for.end, !prof !14

do.body45:                                        ; preds = %for.cond
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %__state47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 1
  store volatile i32 258, i32* %__state47, align 16
  call fastcc void @__raw_write_unlock_irq() #12
  call void @schedule() #14
  %call54 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %tsk) #12
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.cond, label %killed

for.end:                                          ; preds = %for.cond
  %start_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 73
  %10 = load i64, i64* %start_time, align 8
  %start_time58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 73
  store i64 %10, i64* %start_time58, align 8
  %start_boottime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 74
  %11 = load i64, i64* %start_boottime, align 16
  %start_boottime59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 74
  store i64 %11, i64* %start_boottime59, align 16
  %call61 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %6, %struct.task_struct* noundef %tsk) #12
  br i1 %call61, label %do.end80, label %do.body72, !prof !15

do.body72:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 1113; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !19
  unreachable

do.end80:                                         ; preds = %for.end
  call void @exchange_tids(%struct.task_struct* noundef %tsk, %struct.task_struct* noundef %6) #14
  call void @transfer_pid(%struct.task_struct* noundef %6, %struct.task_struct* noundef %tsk, i32 noundef 1) #14
  call void @transfer_pid(%struct.task_struct* noundef %6, %struct.task_struct* noundef %tsk, i32 noundef 2) #14
  call void @transfer_pid(%struct.task_struct* noundef %6, %struct.task_struct* noundef %tsk, i32 noundef 3) #14
  %tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 32
  %tasks81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 32
  call fastcc void @list_replace_rcu(%struct.list_head* noundef %tasks, %struct.list_head* noundef %tasks81) #12
  %sibling = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 55
  %sibling82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 55
  call fastcc void @list_replace_init(%struct.list_head* noundef %sibling, %struct.list_head* noundef %sibling82) #12
  store %struct.task_struct* %tsk, %struct.task_struct** %group_leader, align 8
  %group_leader84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 56
  store %struct.task_struct* %tsk, %struct.task_struct** %group_leader84, align 8
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 41
  store i32 17, i32* %exit_signal, align 4
  %exit_signal85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 41
  store i32 -1, i32* %exit_signal85, align 4
  %12 = load i32, i32* %exit_state, align 4
  %cmp.not = icmp eq i32 %12, 32
  br i1 %cmp.not, label %do.end105, label %do.body97, !prof !15

do.body97:                                        ; preds = %do.end80
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 1138; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end105:                                        ; preds = %do.end80
  store i32 16, i32* %exit_state, align 4
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 5
  %13 = load i32, i32* %ptrace, align 8
  %tobool107.not = icmp eq i32 %13, 0
  br i1 %tobool107.not, label %cleanup.thread, label %if.then115, !prof !15

if.then115:                                       ; preds = %do.end105
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 53
  %14 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  call void @__wake_up_parent(%struct.task_struct* noundef %6, %struct.task_struct* noundef %14) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end105, %if.then115
  call fastcc void @__raw_write_unlock_irq() #12
  call void @release_task(%struct.task_struct* noundef %6) #14
  br label %if.end117

if.end117:                                        ; preds = %cleanup.thread, %while.end
  store %struct.task_struct* null, %struct.task_struct** %group_exit_task, align 8
  store i32 0, i32* %notify_count, align 4
  br label %no_thread_group

no_thread_group:                                  ; preds = %entry, %if.end117
  %exit_signal120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 41
  store i32 17, i32* %exit_signal120, align 4
  %call122 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %tsk) #12
  br i1 %call122, label %cleanup144, label %do.body133, !prof !15

do.body133:                                       ; preds = %no_thread_group
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 1161; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

killed:                                           ; preds = %do.body17, %do.body45
  call fastcc void @__raw_read_lock(%struct.rwlock_t* noundef nonnull @tasklist_lock) #12
  store %struct.task_struct* null, %struct.task_struct** %group_exit_task, align 8
  store i32 0, i32* %notify_count, align 4
  call fastcc void @__raw_read_unlock(%struct.rwlock_t* noundef nonnull @tasklist_lock) #12
  br label %cleanup144

cleanup144:                                       ; preds = %no_thread_group, %killed, %if.then3
  %retval.0 = phi i32 [ -11, %if.then3 ], [ -11, %killed ], [ 0, %no_thread_group ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_uring_task_cancel() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %io_uring = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 85
  %2 = load %struct.io_uring_task*, %struct.io_uring_task** %io_uring, align 8
  %tobool.not = icmp eq %struct.io_uring_task* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__io_uring_cancel(i1 noundef true) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_files() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_mm_exe_file(%struct.mm_struct* noundef, %struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @would_dump(%struct.linux_binprm* nocapture noundef %bprm, %struct.file* nocapture noundef readonly %file) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #12
  %call2 = call i32 @inode_permission(%struct.user_namespace* noundef %call1, %struct.inode* noundef %call, i32 noundef 4) #14
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %interp_flags = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 17
  %0 = load i32, i32* %interp_flags, align 8
  %or = or i32 %0, 1
  store i32 %or, i32* %interp_flags, align 8
  %mm = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 2
  %1 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %user_ns3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 47
  %2 = load %struct.user_namespace*, %struct.user_namespace** %user_ns3, align 8
  %cmp4.not26 = icmp eq %struct.user_namespace* %2, @init_user_ns
  br i1 %cmp4.not26, label %if.end11, label %land.rhs

land.rhs:                                         ; preds = %if.then, %while.body
  %user_ns.027 = phi %struct.user_namespace* [ %3, %while.body ], [ %2, %if.then ]
  %call5 = call i1 @privileged_wrt_inode_uidgid(%struct.user_namespace* noundef %user_ns.027, %struct.user_namespace* noundef %call1, %struct.inode* noundef %call) #14
  br i1 %call5, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %parent = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %user_ns.027, i64 0, i32 3
  %3 = load %struct.user_namespace*, %struct.user_namespace** %parent, align 8
  %cmp4.not = icmp eq %struct.user_namespace* %3, @init_user_ns
  br i1 %cmp4.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %while.body
  %user_ns.0.lcssa = phi %struct.user_namespace* [ %user_ns.027, %land.rhs ], [ @init_user_ns, %while.body ]
  %cmp6.not = icmp eq %struct.user_namespace* %2, %user_ns.0.lcssa
  br i1 %cmp6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %while.end
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %user_ns10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i64 0, i32 0, i32 47
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %user_ns10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then, %while.end, %if.then7, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @acct_arg_size(%struct.linux_binprm* nocapture noundef %bprm, i64 noundef %pages) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %vma_pages = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 1
  %3 = load i64, i64* %vma_pages, align 8
  %sub = sub i64 %pages, %3
  %tobool = icmp ne %struct.mm_struct* %2, null
  %tobool2 = icmp ne i64 %sub, 0
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  store i64 %pages, i64* %vma_pages, align 8
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef nonnull %2, i64 noundef %sub) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @exec_mmap(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm2, align 8
  call void @exec_mm_release(%struct.task_struct* noundef %1, %struct.mm_struct* noundef %2) #14
  %tobool.not = icmp eq %struct.mm_struct* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @sync_mm_rss(%struct.mm_struct* noundef nonnull %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 55
  %call3 = call i32 @down_write_killable(%struct.rw_semaphore* noundef %exec_update_lock) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end6
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef nonnull %2) #12
  %core_state = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 44
  %4 = load %struct.core_state*, %struct.core_state** %core_state, align 8
  %tobool9.not = icmp eq %struct.core_state* %4, null
  br i1 %tobool9.not, label %if.end16, label %if.then12, !prof !15

if.then12:                                        ; preds = %if.then8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %2) #12
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock14 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 55
  call void @up_write(%struct.rw_semaphore* noundef %exec_update_lock14) #14
  br label %cleanup

if.end16:                                         ; preds = %if.then8, %if.end6
  call fastcc void @task_lock(%struct.task_struct* noundef %1) #12
  call void @membarrier_exec_mmap(%struct.mm_struct* noundef %mm) #14
  call fastcc void @arch_local_irq_disable() #12
  %active_mm17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %6 = load %struct.mm_struct*, %struct.mm_struct** %active_mm17, align 16
  store %struct.mm_struct* %mm, %struct.mm_struct** %active_mm17, align 16
  store %struct.mm_struct* %mm, %struct.mm_struct** %mm2, align 8
  call fastcc void @arch_local_irq_enable() #12
  call fastcc void @activate_mm(%struct.mm_struct* noundef %6, %struct.mm_struct* noundef %mm) #12
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm2, align 8
  %vmacache_seqnum = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i64 0, i32 0, i32 2
  store i64 0, i64* %vmacache_seqnum, align 8
  call fastcc void @vmacache_flush(%struct.task_struct* noundef %1) #12
  call fastcc void @task_unlock(%struct.task_struct* noundef %1) #12
  br i1 %tobool.not, label %if.end46, label %if.then25

if.then25:                                        ; preds = %if.end16
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %2) #12
  %cmp.not = icmp eq %struct.mm_struct* %6, %2
  br i1 %cmp.not, label %do.end44, label %do.body36, !prof !15

do.body36:                                        ; preds = %if.then25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 1027; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  unreachable

do.end44:                                         ; preds = %if.then25
  %8 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %maxrss = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 45
  call fastcc void @setmax_mm_hiwater_rss(i64* noundef %maxrss, %struct.mm_struct* noundef nonnull %2) #12
  call void @mmput(%struct.mm_struct* noundef nonnull %2) #14
  br label %cleanup

if.end46:                                         ; preds = %if.end16
  call fastcc void @mmdrop(%struct.mm_struct* noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end46, %do.end44, %if.then12
  %retval.0 = phi i32 [ -4, %if.then12 ], [ 0, %do.end44 ], [ 0, %if.end46 ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_itimers(%struct.signal_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_itimer_signals() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @unshare_sighand(%struct.task_struct* noundef %me) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %me, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %count = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 1
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %count) #12
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %cleanup31, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @sighand_cachep, align 8
  %call1 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #14
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup31, label %if.end

if.end:                                           ; preds = %if.then
  %count3 = getelementptr inbounds i8, i8* %call1, i64 4
  %2 = bitcast i8* %count3 to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %2) #12
  %action = getelementptr inbounds i8, i8* %call1, i64 32
  %arraydecay5 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 3, i64 0
  %3 = bitcast %struct.k_sigaction* %arraydecay5 to i8*
  %call6 = call i8* @memcpy(i8* noundef %action, i8* noundef %3, i64 noundef 2048) #14
  call fastcc void @__raw_write_lock_irq() #12
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %4 = ptrtoint i8* %call1 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.sighand_struct** elementtype(%struct.sighand_struct*) %sighand, i64 %4) #13, !srcloc !23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  call fastcc void @__raw_write_unlock_irq() #12
  call void @__cleanup_sighand(%struct.sighand_struct* noundef %0) #14
  br label %cleanup31

cleanup31:                                        ; preds = %entry, %if.end, %if.then
  %retval.1 = phi i32 [ -12, %if.then ], [ 0, %if.end ], [ 0, %entry ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_thread() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_close_on_exec(%struct.files_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #12
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #12
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #12
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #12
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_dumpable(%struct.mm_struct* noundef %mm, i32 noundef %value) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %value, 2
  br i1 %cmp, label %if.then, label %if.end16, !prof !14

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exec.c\22; .popsection; .long 14472b - 14470b; .short 2057; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !24
  br label %return

if.end16:                                         ; preds = %entry
  %conv1742 = zext i32 %value to i64
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  %0 = bitcast i64* %flags to i8*
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end16
  %1 = load volatile i64, i64* %flags, align 8
  %and = and i64 %1, -4
  %or = or i64 %and, %conv1742
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %1, i64 noundef %or) #14
  %cmp24.not = icmp eq i64 %call14.i, %1
  br i1 %cmp24.not, label %return, label %do.body

return:                                           ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kbasename(i8* noundef %path) unnamed_addr #0 {
entry:
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47) #14
  %tobool.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool.not, i8* %path, i8* %add.ptr
  ret i8* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signal_handlers(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(%struct.cred* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(%struct.cred* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #2 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #12
  ret %struct.user_namespace* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @privileged_wrt_inode_uidgid(%struct.user_namespace* noundef, %struct.user_namespace* noundef, %struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @setup_new_exec(%struct.linux_binprm* noundef %bprm) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %rlim_stack = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 21
  call void @arch_pick_mmap_layout(%struct.mm_struct* noundef %2, %struct.rlimit* noundef %rlim_stack) #14
  call void @arch_setup_new_exec() #14
  %3 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %3
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %task_size = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i64 0, i32 0, i32 6
  store i64 %shl, i64* %task_size, align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 55
  call void @up_write(%struct.rw_semaphore* noundef %exec_update_lock) #14
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 54
  call void @mutex_unlock(%struct.mutex* noundef %cred_guard_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_pick_mmap_layout(%struct.mm_struct* noundef, %struct.rlimit* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_setup_new_exec() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @finalize_exec(%struct.linux_binprm* nocapture noundef readonly %bprm) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 56
  %2 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_lock(%struct.task_struct* noundef %2) #12
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 49, i64 3
  %rlim_stack = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 21
  %4 = bitcast %struct.rlimit* %arrayidx to i8*
  %5 = bitcast %struct.rlimit* %rlim_stack to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %5, i64 16, i1 false)
  %6 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_unlock(%struct.task_struct* noundef %6) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bprm_change_interp(i8* noundef %interp, %struct.linux_binprm* nocapture noundef %bprm) local_unnamed_addr #0 {
entry:
  %interp1 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 15
  %0 = load i8*, i8** %interp1, align 8
  %filename = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 14
  %1 = load i8*, i8** %filename, align 8
  %cmp.not = icmp eq i8* %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @kfree(i8* noundef %0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias i8* @kstrdup(i8* noundef %interp, i32 noundef 3264) #14
  store i8* %call, i8** %interp1, align 8
  %tobool.not = icmp eq i8* %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remove_arg_zero(%struct.linux_binprm* nocapture noundef %bprm) local_unnamed_addr #0 {
entry:
  %argc = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 12
  %0 = load i32, i32* %argc, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.end
  %1 = load i64, i64* %p, align 8
  %call = call fastcc %struct.page* @get_arg_page(%struct.linux_binprm* noundef %bprm, i64 noundef %1, i32 noundef 0) #12
  %tobool2.not = icmp eq %struct.page* %call, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %do.body
  %and = and i64 %1, 4095
  %call5 = call fastcc i8* @kmap_atomic(%struct.page* noundef nonnull %call) #12
  br label %land.rhs

land.rhs:                                         ; preds = %if.end4, %for.inc
  %offset.040 = phi i64 [ %and, %if.end4 ], [ %inc, %for.inc ]
  %arrayidx = getelementptr i8, i8* %call5, i64 %offset.040
  %2 = load i8, i8* %arrayidx, align 1
  %tobool6.not = icmp eq i8 %2, 0
  br i1 %tobool6.not, label %do.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i64 %offset.040, 1
  %3 = load i64, i64* %p, align 8
  %inc8 = add i64 %3, 1
  store i64 %inc8, i64* %p, align 8
  %exitcond.not = icmp eq i64 %inc, 4096
  br i1 %exitcond.not, label %do.end, label %land.rhs

do.end:                                           ; preds = %for.inc, %land.rhs
  %offset.0.lcssa = phi i64 [ 4096, %for.inc ], [ %offset.040, %land.rhs ]
  call fastcc void @__kunmap_atomic() #12
  call fastcc void @put_arg_page(%struct.page* noundef nonnull %call) #12
  %cmp14 = icmp eq i64 %offset.0.lcssa, 4096
  br i1 %cmp14, label %do.body, label %do.end16

do.end16:                                         ; preds = %do.end
  %4 = load i64, i64* %p, align 8
  %inc18 = add i64 %4, 1
  store i64 %inc18, i64* %p, align 8
  %5 = load i32, i32* %argc, align 8
  %dec = add i32 %5, -1
  store i32 %dec, i32* %argc, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.end16, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %do.end16 ], [ -14, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernel_execve(i8* noundef %kernel_filename, i8** noundef %argv, i8** noundef %envp) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %kernel_filename) #14
  %0 = bitcast %struct.filename* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #12
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %0) #12
  %conv = trunc i64 %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc %struct.linux_binprm* @alloc_bprm(i32 noundef -100, %struct.filename* noundef %call) #12
  %1 = bitcast %struct.linux_binprm* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %1) #12
  br i1 %call5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i64 @PTR_ERR(i8* noundef %1) #12
  %conv8 = trunc i64 %call7 to i32
  br label %out_ret

if.end9:                                          ; preds = %if.end
  %call10 = call fastcc i32 @count_strings_kernel(i8** noundef %argv) #12
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %out_free, label %if.end13

if.end13:                                         ; preds = %if.end9
  %argc = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call4, i64 0, i32 12
  store i32 %call10, i32* %argc, align 8
  %call14 = call fastcc i32 @count_strings_kernel(i8** noundef %envp) #12
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %out_free, label %if.end18

if.end18:                                         ; preds = %if.end13
  %envc = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call4, i64 0, i32 13
  store i32 %call14, i32* %envc, align 4
  %call19 = call fastcc i32 @bprm_stack_limits(%struct.linux_binprm* noundef %call4) #12
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %out_free, label %if.end23

if.end23:                                         ; preds = %if.end18
  %filename24 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call4, i64 0, i32 14
  %2 = load i8*, i8** %filename24, align 8
  %call25 = call i32 @copy_string_kernel(i8* noundef %2, %struct.linux_binprm* noundef %call4) #12
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %out_free, label %if.end29

if.end29:                                         ; preds = %if.end23
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call4, i64 0, i32 3
  %3 = load i64, i64* %p, align 8
  %exec = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call4, i64 0, i32 20
  store i64 %3, i64* %exec, align 8
  %4 = load i32, i32* %envc, align 4
  %call31 = call fastcc i32 @copy_strings_kernel(i32 noundef %4, i8** noundef %envp, %struct.linux_binprm* noundef %call4) #12
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %out_free, label %if.end35

if.end35:                                         ; preds = %if.end29
  %5 = load i32, i32* %argc, align 8
  %call37 = call fastcc i32 @copy_strings_kernel(i32 noundef %5, i8** noundef %argv, %struct.linux_binprm* noundef %call4) #12
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %out_free, label %if.end41

if.end41:                                         ; preds = %if.end35
  %call42 = call fastcc i32 @bprm_execve(%struct.linux_binprm* noundef %call4, i32 noundef -100, %struct.filename* noundef %call, i32 noundef 0) #12
  br label %out_free

out_free:                                         ; preds = %if.end35, %if.end29, %if.end23, %if.end18, %if.end13, %if.end9, %if.end41
  %retval1.0 = phi i32 [ %call10, %if.end9 ], [ %call14, %if.end13 ], [ %call19, %if.end18 ], [ %call25, %if.end23 ], [ %call31, %if.end29 ], [ %call37, %if.end35 ], [ %call42, %if.end41 ]
  call fastcc void @free_bprm(%struct.linux_binprm* noundef %call4) #12
  br label %out_ret

out_ret:                                          ; preds = %out_free, %if.then6
  %retval1.1 = phi i32 [ %conv8, %if.then6 ], [ %retval1.0, %out_free ]
  call void @putname(%struct.filename* noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out_ret, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %retval1.1, %out_ret ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.linux_binprm* @alloc_bprm(i32 noundef %fd, %struct.filename* nocapture noundef readonly %filename) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #12
  %0 = bitcast i8* %call to %struct.linux_binprm*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %fd, -100
  %name5.phi.trans.insert = getelementptr inbounds %struct.filename, %struct.filename* %filename, i64 0, i32 0
  %.pre = load i8*, i8** %name5.phi.trans.insert, align 8
  br i1 %cmp, label %if.end25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, i8* %.pre, align 1
  switch i8 %1, label %if.else14 [
    i8 47, label %if.end25
    i8 0, label %if.then12
  ]

if.then12:                                        ; preds = %lor.lhs.false
  %call13 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %fd) #14
  br label %if.end18

if.else14:                                        ; preds = %lor.lhs.false
  %call16 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef %fd, i8* noundef %.pre) #14
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then12
  %call16.sink = phi i8* [ %call16, %if.else14 ], [ %call13, %if.then12 ]
  %fdpath17 = getelementptr inbounds i8, i8* %call, i64 112
  %2 = bitcast i8* %fdpath17 to i8**
  store i8* %call16.sink, i8** %2, align 8
  %tobool20.not = icmp eq i8* %call16.sink, null
  br i1 %tobool20.not, label %out_free, label %if.end25

if.end25:                                         ; preds = %if.end18, %lor.lhs.false, %if.end
  %.sink = phi i8* [ %.pre, %lor.lhs.false ], [ %.pre, %if.end ], [ %call16.sink, %if.end18 ]
  %filename24 = getelementptr inbounds i8, i8* %call, i64 96
  %3 = bitcast i8* %filename24 to i8**
  store i8* %.sink, i8** %3, align 8
  %interp = getelementptr inbounds i8, i8* %call, i64 104
  %4 = bitcast i8* %interp to i8**
  store i8* %.sink, i8** %4, align 8
  %call27 = call fastcc i32 @bprm_mm_init(%struct.linux_binprm* noundef nonnull %0) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %out_free

out_free:                                         ; preds = %if.end25, %if.end18
  %retval1.0 = phi i32 [ %call27, %if.end25 ], [ -12, %if.end18 ]
  call fastcc void @free_bprm(%struct.linux_binprm* noundef nonnull %0) #12
  br label %out

out:                                              ; preds = %entry, %out_free
  %retval1.1 = phi i32 [ %retval1.0, %out_free ], [ -12, %entry ]
  %conv31 = sext i32 %retval1.1 to i64
  %call32 = call fastcc i8* @ERR_PTR(i64 noundef %conv31) #12
  %5 = bitcast i8* %call32 to %struct.linux_binprm*
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %out
  %retval.0 = phi %struct.linux_binprm* [ %5, %out ], [ %0, %if.end25 ]
  ret %struct.linux_binprm* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @count_strings_kernel(i8** noundef readonly %argv) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8** %argv, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load i8*, i8** %argv, align 8
  %tobool1.not14 = icmp eq i8* %0, null
  br i1 %tobool1.not14, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %2 = inttoptr i64 %1 to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end7
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end7 ]
  %cmp = icmp eq i64 %indvars.iv, 2147483647
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %for.body
  %call4 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %2) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  call fastcc void @_cond_resched() #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr i8*, i8** %argv, i64 %indvars.iv.next
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool1.not = icmp eq i8* %3, null
  br i1 %tobool1.not, label %cleanup.loopexit.split.loop.exit, label %for.body

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end7
  %4 = trunc i64 %indvars.iv.next to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.body, %cleanup.loopexit.split.loop.exit, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ %4, %cleanup.loopexit.split.loop.exit ], [ -514, %if.end3 ], [ -7, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @bprm_stack_limits(%struct.linux_binprm* nocapture noundef %bprm) unnamed_addr #8 {
entry:
  %rlim_cur = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 21, i32 0
  %0 = load i64, i64* %rlim_cur, align 8
  %div = lshr i64 %0, 2
  %1 = icmp ult i64 %div, 6291456
  %cond = select i1 %1, i64 %div, i64 6291456
  %cmp2 = icmp ugt i64 %cond, 131072
  %cond6 = select i1 %cmp2, i64 %cond, i64 131072
  %argc = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 12
  %2 = load i32, i32* %argc, align 8
  %envc = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 13
  %3 = load i32, i32* %envc, align 4
  %add = add i32 %3, %2
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %cmp7.not = icmp ult i64 %mul, %cond6
  br i1 %cmp7.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub.neg = sub nsw i64 %mul, %cond6
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 3
  %4 = load i64, i64* %p, align 8
  %sub9 = add i64 %sub.neg, %4
  %argmin = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 4
  store i64 %sub9, i64* %argmin, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -7, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_strings_kernel(i32 noundef %argc, i8** nocapture noundef readonly %argv, %struct.linux_binprm* nocapture noundef %bprm) unnamed_addr #0 {
entry:
  %cmp15 = icmp sgt i32 %argc, 0
  br i1 %cmp15, label %while.body.preheader, label %return

while.body.preheader:                             ; preds = %entry
  %0 = zext i32 %argc to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %cleanup
  %indvars.iv = phi i64 [ %0, %while.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars = trunc i64 %indvars.iv.next to i32
  %idxprom13 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr i8*, i8** %argv, i64 %idxprom13
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @copy_string_kernel(i8* noundef %1, %struct.linux_binprm* noundef %bprm) #12
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call3 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %3) #12
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %return

cleanup:                                          ; preds = %if.end
  call fastcc void @_cond_resched() #12
  %cmp = icmp sgt i32 %indvars, 0
  br i1 %cmp, label %while.body, label %return

return:                                           ; preds = %cleanup, %while.body, %if.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ -514, %if.end ], [ %call, %while.body ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bprm_execve(%struct.linux_binprm* noundef %bprm, i32 noundef %fd, %struct.filename* noundef %filename, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @prepare_bprm_creds(%struct.linux_binprm* noundef %bprm) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @check_unsafe_exec(%struct.linux_binprm* noundef %bprm) #12
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %in_execve = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 47
  %bf.load = load i8, i8* %in_execve, align 8
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %in_execve, align 8
  %call3 = call fastcc %struct.file* @do_open_execat(i32 noundef %fd, %struct.filename* noundef %filename, i32 noundef %flags) #12
  %2 = bitcast %struct.file* %call3 to i8*
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %2) #12
  %conv = trunc i64 %call4 to i32
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %2) #12
  br i1 %call5, label %out_unmark, label %if.end7

if.end7:                                          ; preds = %if.end
  call void @sched_exec() #14
  %file8 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 8
  store %struct.file* %call3, %struct.file** %file8, align 8
  %fdpath = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 16
  %3 = load i8*, i8** %fdpath, align 8
  %tobool9.not = icmp eq i8* %3, null
  br i1 %tobool9.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call10 = call i1 @get_close_on_exec(i32 noundef %fd) #14
  br i1 %call10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %interp_flags = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 17
  %4 = load i32, i32* %interp_flags, align 8
  %or = or i32 %4, 4
  store i32 %or, i32* %interp_flags, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %if.end7
  %call18 = call fastcc i32 @exec_binprm(%struct.linux_binprm* noundef %bprm) #12
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %out, label %if.end21

if.end21:                                         ; preds = %if.end13
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %5 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %in_exec = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %5, i64 0, i32 4
  store i32 0, i32* %in_exec, align 8
  %bf.load25 = load i8, i8* %in_execve, align 8
  %bf.clear26 = and i8 %bf.load25, -3
  store i8 %bf.clear26, i8* %in_execve, align 8
  call fastcc void @rseq_execve(%struct.task_struct* noundef %1) #12
  br label %cleanup

out:                                              ; preds = %if.end13
  %point_of_no_return = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 5
  %bf.load31 = load i8, i8* %point_of_no_return, align 8
  %6 = and i8 %bf.load31, 8
  %tobool33.not = icmp eq i8 %6, 0
  br i1 %tobool33.not, label %out_unmark, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %out
  %call36 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #12
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %out_unmark

if.then38:                                        ; preds = %land.lhs.true34
  call void @force_sigsegv(i32 noundef 11) #14
  br label %out_unmark

out_unmark:                                       ; preds = %out, %land.lhs.true34, %if.then38, %if.end
  %retval1.1 = phi i32 [ %conv, %if.end ], [ %call18, %land.lhs.true34 ], [ %call18, %if.then38 ], [ %call18, %out ]
  %fs41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %7 = load %struct.fs_struct*, %struct.fs_struct** %fs41, align 8
  %in_exec42 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %7, i64 0, i32 4
  store i32 0, i32* %in_exec42, align 8
  %bf.load45 = load i8, i8* %in_execve, align 8
  %bf.clear46 = and i8 %bf.load45, -3
  store i8 %bf.clear46, i8* %in_execve, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unmark, %if.end21
  %retval.0 = phi i32 [ %retval1.1, %out_unmark ], [ %call18, %if.end21 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_bprm(%struct.linux_binprm* noundef %bprm) unnamed_addr #0 {
entry:
  %mm = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 2
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool.not = icmp eq %struct.mm_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @acct_arg_size(%struct.linux_binprm* noundef %bprm, i64 noundef 0) #12
  %1 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call void @mmput(%struct.mm_struct* noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cred = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %tobool2.not = icmp eq %struct.cred* %2, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 54
  call void @mutex_unlock(%struct.mutex* noundef %cred_guard_mutex) #14
  %6 = load %struct.cred*, %struct.cred** %cred, align 8
  call void @abort_creds(%struct.cred* noundef %6) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %file = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 8
  %7 = load %struct.file*, %struct.file** %file, align 8
  %tobool6.not = icmp eq %struct.file* %7, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end5
  call fastcc void @allow_write_access(%struct.file* noundef nonnull %7) #12
  %8 = load %struct.file*, %struct.file** %file, align 8
  call void @fput(%struct.file* noundef %8) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5
  %executable = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 6
  %9 = load %struct.file*, %struct.file** %executable, align 8
  %tobool11.not = icmp eq %struct.file* %9, null
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @fput(%struct.file* noundef nonnull %9) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %interp = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 15
  %10 = load i8*, i8** %interp, align 8
  %filename = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 14
  %11 = load i8*, i8** %filename, align 8
  %cmp.not = icmp eq i8* %10, %11
  br i1 %cmp.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end14
  call void @kfree(i8* noundef %10) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end14
  %fdpath = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 16
  %12 = load i8*, i8** %fdpath, align 8
  call void @kfree(i8* noundef %12) #14
  %13 = bitcast %struct.linux_binprm* %bprm to i8*
  call void @kfree(i8* noundef %13) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_binfmt(%struct.linux_binfmt* noundef %new) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %binfmt = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 41
  store %struct.linux_binfmt* %new, %struct.linux_binfmt** %binfmt, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_execve(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_execve(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_execve(i64 noundef %filename, i64 noundef %argv, i64 noundef %envp) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %1 = inttoptr i64 %argv to i8**
  %2 = inttoptr i64 %envp to i8**
  %call = call fastcc i64 @__do_sys_execve(i8* noundef %0, i8** noundef %1, i8** noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_execveat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
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
  %call = call fastcc i64 @__se_sys_execveat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_execveat(i64 noundef %fd, i64 noundef %filename, i64 noundef %argv, i64 noundef %envp, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %filename to i8*
  %1 = inttoptr i64 %argv to i8**
  %2 = inttoptr i64 %envp to i8**
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_execveat(i32 noundef %conv, i8* noundef %0, i8** noundef %1, i8** noundef %2, i32 noundef %conv1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.qrwlock* %lock to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 255) #14
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !15

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #13, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #1 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %wlocked = bitcast %struct.qrwlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %wlocked, i8 0) #13, !srcloc !26
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #1 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #1 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_user_pages_remote(%struct.mm_struct* noundef, i64 noundef, i64 noundef, i32 noundef, %struct.page** noundef, %struct.vm_area_struct** noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #2 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #10 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.11* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !15

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
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #14
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !29
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 noundef %pgoff) unnamed_addr #0 {
entry:
  %call = call i32 @__vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 noundef %pgoff, %struct.vm_area_struct* noundef null, %struct.vm_area_struct* noundef null) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @move_page_tables(%struct.vm_area_struct* noundef, i64 noundef, %struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(%struct.mmu_gather* noundef, %struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pgd_range(%struct.mmu_gather* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(%struct.mmu_gather* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vma_adjust(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, %struct.vm_area_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @do_filp_open(i32 noundef, %struct.filename* noundef, %struct.open_flags* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @deny_write_access(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 34
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %i_writecount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %1 = bitcast %struct.atomic_t* %i_writecount to i8*
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %entry
  %c.0.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i, %do.cond.i.i ]
  %cmp.i.i = icmp sgt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %atomic_dec_unless_positive.exit, label %do.cond.i.i, !prof !14

do.cond.i.i:                                      ; preds = %do.body.i.i
  %sub.i.i = add i32 %c.0.i.i, -1
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i, i32 noundef %sub.i.i) #14
  %cmp.not.i.i.i = icmp eq i32 %c.0.i.i, %call11.i.i.i.i
  br i1 %cmp.not.i.i.i, label %atomic_dec_unless_positive.exit, label %do.body.i.i, !prof !15

atomic_dec_unless_positive.exit:                  ; preds = %do.body.i.i, %do.cond.i.i
  %cond = phi i32 [ -26, %do.body.i.i ], [ 0, %do.cond.i.i ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_open(%struct.file* nocapture noundef readonly %file) unnamed_addr #10 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 32, i32 4128
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef %spec.select) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_file(%struct.file* nocapture noundef readonly %file, i32 noundef %mask) unnamed_addr #10 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %1, i32 noundef %mask) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry, i32 noundef %mask) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #12
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #14
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #14
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %thread_group) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @signal_group_exit(%struct.signal_struct* nocapture noundef readonly %sig) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 12
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 10
  %1 = load %struct.task_struct*, %struct.task_struct** %group_exit_task, align 8
  %cmp = icmp ne %struct.task_struct* %1, null
  %phi.cast = zext i1 %cmp to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zap_other_threads(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @thread_group_leader(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %0 = load i32, i32* %exit_signal, align 4
  %cmp = icmp sgt i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #12
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  call fastcc void @queued_write_lock(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @queued_write_unlock(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exchange_tids(%struct.task_struct* noundef, %struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transfer_pid(%struct.task_struct* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_replace_rcu(%struct.list_head* nocapture noundef %old, %struct.list_head* noundef %new) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev2, align 8
  %2 = ptrtoint %struct.list_head* %new to i64
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next14, i64 %2) #13, !srcloc !35
  %3 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_replace_init(%struct.list_head* noundef %old, %struct.list_head* noundef %new) unnamed_addr #1 {
entry:
  call fastcc void @list_replace(%struct.list_head* noundef %old, %struct.list_head* noundef %new) #12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %old) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(%struct.task_struct* noundef, %struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_task(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_lock(%struct.qrwlock* noundef %raw_lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_unlock(%struct.qrwlock* noundef %raw_lock) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !14

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #10 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_replace(%struct.list_head* nocapture noundef readonly %old, %struct.list_head* noundef %new) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev3, align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev4, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #1 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %cnts1 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %cnts1) #14
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !15

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #13, !srcloc !42
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %cnts = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %cnts) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #13, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_cancel(i1 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i64 noundef %value) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 1
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %value, %struct.atomic64_t* noundef %arrayidx) #14
  call void @mm_trace_rss_stat(%struct.mm_struct* noundef %mm, i32 noundef 1, i64 noundef %call.i.i.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(%struct.mm_struct* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !44
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exec_mm_release(%struct.task_struct* noundef, %struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_exec_mmap(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @activate_mm(%struct.mm_struct* noundef %prev_mm, %struct.mm_struct* noundef %next_mm) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  call fastcc void @switch_mm(%struct.mm_struct* noundef %prev_mm, %struct.mm_struct* noundef %next_mm) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vmacache_flush(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 37, i32 1, i64 0
  %0 = bitcast %struct.vm_area_struct** %arraydecay to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @setmax_mm_hiwater_rss(i64* nocapture noundef %maxrss, %struct.mm_struct* noundef %mm) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @get_mm_hiwater_rss(%struct.mm_struct* noundef %mm) #12
  %0 = load i64, i64* %maxrss, align 8
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %call, i64* %maxrss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #14
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @switch_mm(%struct.mm_struct* noundef readnone %prev, %struct.mm_struct* noundef %next) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.mm_struct* %prev, %next
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__switch_mm(%struct.mm_struct* noundef %next) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__switch_mm(%struct.mm_struct* noundef %next) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.mm_struct* %next, @init_mm
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @check_and_switch_context(%struct.mm_struct* noundef %next) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #13, !srcloc !45
  call void asm sideeffect "isb", "~{memory}"() #13, !srcloc !46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #10 {
entry:
  %hiwater_rss = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  %0 = load i64, i64* %hiwater_rss, align 8
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #12
  %cmp = icmp ugt i64 %0, %call
  %cond = select i1 %cmp, i64 %0, i64 %call
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #12
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #12
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #12
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #10 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #10 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cleanup_sighand(%struct.sighand_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #13, !srcloc !47
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bprm_fill_uid(%struct.linux_binprm* nocapture noundef %bprm, %struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call i1 @mnt_may_suid(%struct.vfsmount* noundef %0) #14
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call2 = call fastcc i1 @task_no_new_privs(%struct.task_struct* noundef %2) #12
  br i1 %call2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 5
  %4 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 0
  %5 = load volatile i16, i16* %i_mode, align 8
  %6 = and i16 %5, 3072
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #12
  call fastcc void @inode_lock(%struct.inode* noundef %4) #12
  %7 = load i16, i16* %i_mode, align 8
  %conv10 = zext i16 %7 to i32
  %call12 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %4) #12
  %call14 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %4) #12
  call fastcc void @inode_unlock(%struct.inode* noundef %4) #12
  %cred = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  %coerce.val.ii = zext i32 %call12 to i64
  %call17 = call fastcc i1 @kuid_has_mapping(i64 %coerce.val.ii) #12
  br i1 %call17, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %coerce.val.ii21 = zext i32 %call14 to i64
  %call22 = call fastcc i1 @kgid_has_mapping(i64 %coerce.val.ii21) #12
  br i1 %call22, label %if.end24, label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %and25 = and i32 %conv10, 2048
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end24
  %per_clear = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 11
  %8 = load i32, i32* %per_clear, align 4
  %or = or i32 %8, 7602176
  store i32 %or, i32* %per_clear, align 4
  %9 = load %struct.cred*, %struct.cred** %cred, align 8
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %9, i64 0, i32 5, i32 0
  store i32 %call12, i32* %uid.sroa.0.0..sroa_idx, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %and30 = and i32 %conv10, 1032
  %cmp = icmp eq i32 %and30, 1032
  br i1 %cmp, label %if.then32, label %cleanup

if.then32:                                        ; preds = %if.end29
  %per_clear33 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 11
  %10 = load i32, i32* %per_clear33, align 4
  %or34 = or i32 %10, 7602176
  store i32 %or34, i32* %per_clear33, align 4
  %11 = load %struct.cred*, %struct.cred** %cred, align 8
  %gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %11, i64 0, i32 6, i32 0
  store i32 %call14, i32* %gid.sroa.0.0..sroa_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then32, %if.end7, %lor.lhs.false, %if.end4, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_bprm_creds_from_file(%struct.linux_binprm* noundef %bprm, %struct.file* noundef %file) unnamed_addr #0 {
entry:
  %call = call i32 @cap_bprm_creds_from_file(%struct.linux_binprm* noundef %bprm, %struct.file* noundef %file) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mnt_may_suid(%struct.vfsmount* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @task_no_new_privs(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  %0 = load volatile i64, i64* %atomic_flags, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_gid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kgid_into_mnt(i64 %coerce.val.ii) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kuid_has_mapping(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @uid_valid(i64 %coerce.val.ii2) #12
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kgid_has_mapping(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i1 @gid_valid(i64 %coerce.val.ii2) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_into_mnt(i64 %kgid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #12
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #12
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_bprm_creds_from_file(%struct.linux_binprm* noundef, %struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #14
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bprm_mm_init(%struct.linux_binprm* nocapture noundef %bprm) unnamed_addr #0 {
entry:
  %call = call %struct.mm_struct* @mm_alloc() #14
  %mm1 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 2
  store %struct.mm_struct* %call, %struct.mm_struct** %mm1, align 8
  %tobool.not = icmp eq %struct.mm_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 56
  %2 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_lock(%struct.task_struct* noundef %2) #12
  %rlim_stack = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 21
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 49, i64 3
  %4 = bitcast %struct.rlimit* %rlim_stack to i8*
  %5 = bitcast %struct.rlimit* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %5, i64 16, i1 false)
  %6 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_unlock(%struct.task_struct* noundef %6) #12
  %call6 = call fastcc i32 @__bprm_mm_init(%struct.linux_binprm* noundef %bprm) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end
  store %struct.mm_struct* null, %struct.mm_struct** %mm1, align 8
  call fastcc void @mmdrop(%struct.mm_struct* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then12, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call6, %if.then12 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @mm_alloc() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__bprm_mm_init(%struct.linux_binprm* nocapture noundef %bprm) unnamed_addr #0 {
entry:
  %mm1 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 2
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %call = call %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* noundef %0) #14
  %vma2 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 0
  store %struct.vm_area_struct* %call, %struct.vm_area_struct** %vma2, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @vma_set_anonymous(%struct.vm_area_struct* noundef nonnull %call) #12
  %call3 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %0) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %err_free

do.body:                                          ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  store i64 549755813888, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  store i64 549755809792, i64* %vm_start, align 8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %personality21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 44
  %3 = load i32, i32* %personality21, align 16
  %and22 = lshr i32 %3, 20
  %4 = and i32 %and22, 4
  %or33 = or i32 %4, 1147251
  %conv = zext i32 %or33 to i64
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 8
  store i64 %conv, i64* %vm_flags, align 8
  %call35 = call i64 @vm_get_page_prot(i64 noundef %conv) #14
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 7, i32 0
  store i64 %call35, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %call36 = call i32 @insert_vm_struct(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef nonnull %call) #14
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %err42

if.end39:                                         ; preds = %do.body
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 19
  store i64 1, i64* %total_vm, align 8
  %stack_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 24
  store i64 1, i64* %stack_vm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %0) #12
  %5 = load i64, i64* %vm_end, align 8
  %sub41 = add i64 %5, -8
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 3
  store i64 %sub41, i64* %p, align 8
  br label %cleanup

err42:                                            ; preds = %do.body
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %0) #12
  br label %err_free

err_free:                                         ; preds = %if.end, %err42
  %err.0 = phi i32 [ %call36, %err42 ], [ -4, %if.end ]
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vma2, align 8
  call void @vm_area_free(%struct.vm_area_struct* noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %err_free, %if.end39
  %retval.0 = phi i32 [ %err.0, %err_free ], [ 0, %if.end39 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @vma_set_anonymous(%struct.vm_area_struct* nocapture noundef writeonly %vma) unnamed_addr #11 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* null, %struct.vm_operations_struct** %vm_ops, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vm_get_page_prot(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_vm_struct(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_area_free(%struct.vm_area_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #12
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #12
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #12
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #5 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prepare_bprm_creds(%struct.linux_binprm* nocapture noundef writeonly %bprm) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 54
  %call1 = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %cred_guard_mutex) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.cred* @prepare_exec_creds() #14
  %cred = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  store %struct.cred* %call2, %struct.cred** %cred, align 8
  %tobool4.not = icmp eq %struct.cred* %call2, null
  br i1 %tobool4.not, label %if.end8, label %return, !prof !14

if.end8:                                          ; preds = %if.end
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cred_guard_mutex11 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 54
  call void @mutex_unlock(%struct.mutex* noundef %cred_guard_mutex11) #14
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ -12, %if.end8 ], [ -513, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_unsafe_exec(%struct.linux_binprm* nocapture noundef %bprm) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %2 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %unsafe = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 10
  %3 = load i32, i32* %unsafe, align 8
  %or = or i32 %3, 2
  store i32 %or, i32* %unsafe, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call fastcc i1 @task_no_new_privs(%struct.task_struct* noundef %1) #12
  br i1 %call2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %unsafe4 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 10
  %4 = load i32, i32* %unsafe4, align 8
  %or5 = or i32 %4, 4
  store i32 %or5, i32* %unsafe4, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %5 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %5, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  call fastcc void @__rcu_read_lock() #14
  %call737 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %1) #12
  %cmp.not38 = icmp eq %struct.task_struct* %call737, %1
  br i1 %cmp.not38, label %while.end, label %while.body

while.body:                                       ; preds = %if.end6, %while.body
  %call740 = phi %struct.task_struct* [ %call7, %while.body ], [ %call737, %if.end6 ]
  %n_fs.039 = phi i32 [ %spec.select, %while.body ], [ 1, %if.end6 ]
  %fs8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call740, i64 0, i32 83
  %6 = load %struct.fs_struct*, %struct.fs_struct** %fs8, align 8
  %7 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %cmp10 = icmp eq %struct.fs_struct* %6, %7
  %inc = zext i1 %cmp10 to i32
  %spec.select = add i32 %n_fs.039, %inc
  %call7 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %call740) #12
  %cmp.not = icmp eq %struct.task_struct* %call7, %1
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end6
  %n_fs.0.lcssa = phi i32 [ 1, %if.end6 ], [ %spec.select, %while.body ]
  call fastcc void @rcu_read_unlock() #12
  %8 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %users = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %8, i64 0, i32 0
  %9 = load i32, i32* %users, align 8
  %cmp14 = icmp ugt i32 %9, %n_fs.0.lcssa
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %while.end
  %unsafe16 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 10
  %10 = load i32, i32* %unsafe16, align 8
  %or17 = or i32 %10, 1
  store i32 %or17, i32* %unsafe16, align 8
  br label %if.end19

if.else:                                          ; preds = %while.end
  %in_exec = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %8, i64 0, i32 4
  store i32 1, i32* %in_exec, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %11 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %rlock.i36 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %11, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i36) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_exec() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @get_close_on_exec(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @exec_binprm(%struct.linux_binprm* noundef %bprm) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  call fastcc void @__rcu_read_lock() #14
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 53
  %2 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %call3 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %2) #14
  %call4 = call fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %1, %struct.pid_namespace* noundef %call3) #12
  call fastcc void @rcu_read_unlock() #12
  %interpreter = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 7
  %file = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 8
  %have_execfd = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 5
  %executable = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 6
  br label %if.end

if.end:                                           ; preds = %entry, %for.inc
  %depth.057 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %call5 = call fastcc i32 @search_binary_handler(%struct.linux_binprm* noundef %bprm) #12
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup26, label %if.end8

if.end8:                                          ; preds = %if.end
  %3 = load %struct.file*, %struct.file** %interpreter, align 8
  %tobool.not = icmp eq %struct.file* %3, null
  br i1 %tobool.not, label %for.end, label %if.end10

if.end10:                                         ; preds = %if.end8
  %4 = load %struct.file*, %struct.file** %file, align 8
  store %struct.file* %3, %struct.file** %file, align 8
  store %struct.file* null, %struct.file** %interpreter, align 8
  call fastcc void @allow_write_access(%struct.file* noundef %4) #12
  %bf.load = load i8, i8* %have_execfd, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool14.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool14.not, label %if.else, label %if.then17, !prof !15

if.then17:                                        ; preds = %if.end10
  %5 = load %struct.file*, %struct.file** %executable, align 8
  %tobool18.not = icmp eq %struct.file* %5, null
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then17
  call void @fput(%struct.file* noundef %4) #14
  br label %cleanup26

if.end20:                                         ; preds = %if.then17
  store %struct.file* %4, %struct.file** %executable, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end10
  call void @fput(%struct.file* noundef %4) #14
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end20
  %inc = add nuw nsw i32 %depth.057, 1
  %exitcond = icmp eq i32 %inc, 6
  br i1 %exitcond, label %cleanup26, label %if.end

for.end:                                          ; preds = %if.end8
  %conv24 = sext i32 %call4 to i64
  call fastcc void @ptrace_event(i64 noundef %conv24) #12
  br label %cleanup26

cleanup26:                                        ; preds = %if.end, %for.inc, %if.then19, %for.end
  %retval.2 = phi i32 [ 0, %for.end ], [ -8, %if.then19 ], [ -40, %for.inc ], [ %call5, %if.end ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rseq_execve(%struct.task_struct* nocapture noundef writeonly %t) unnamed_addr #11 {
entry:
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  store %struct.rseq* null, %struct.rseq** %rseq, align 16
  %rseq_sig = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 122
  store i32 0, i32* %rseq_sig, align 8
  %rseq_event_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 123
  store i64 0, i64* %rseq_event_mask, align 64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sigsegv(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_exec_creds() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -69, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  call void @rcu_read_unlock_strict() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef %ns) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @search_binary_handler(%struct.linux_binprm* noundef %bprm) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @prepare_binprm(%struct.linux_binprm* noundef %bprm) #12
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_read_lock(%struct.rwlock_t* noundef nonnull @binfmt_lock) #12
  %fmt.0164 = load %struct.linux_binfmt*, %struct.linux_binfmt** bitcast (%struct.list_head* @formats to %struct.linux_binfmt**), align 8
  %lh165 = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %fmt.0164, i64 0, i32 0
  %cmp5.not166 = icmp eq %struct.list_head* %lh165, @formats
  br i1 %cmp5.not166, label %cleanup.sink.split, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %point_of_no_return = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %fmt.0167 = phi %struct.linux_binfmt* [ %fmt.0164, %for.body.lr.ph ], [ %fmt.0, %for.inc ]
  call fastcc void @__raw_read_unlock(%struct.rwlock_t* noundef nonnull @binfmt_lock) #12
  %load_binary = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %fmt.0167, i64 0, i32 2
  %0 = load i32 (%struct.linux_binprm*)*, i32 (%struct.linux_binprm*)** %load_binary, align 8
  %call9 = call i32 %0(%struct.linux_binprm* noundef %bprm) #14
  call fastcc void @__raw_read_lock(%struct.rwlock_t* noundef nonnull @binfmt_lock) #12
  %bf.load = load i8, i8* %point_of_no_return, align 8
  %1 = and i8 %bf.load, 8
  %tobool10 = icmp ne i8 %1, 0
  %cmp11 = icmp ne i32 %call9, -8
  %or.cond = select i1 %tobool10, i1 true, i1 %cmp11
  br i1 %or.cond, label %cleanup.sink.split, label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = bitcast %struct.linux_binfmt* %fmt.0167 to %struct.linux_binfmt**
  %fmt.0 = load %struct.linux_binfmt*, %struct.linux_binfmt** %2, align 8
  %lh = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %fmt.0, i64 0, i32 0
  %cmp5.not = icmp eq %struct.list_head* %lh, @formats
  br i1 %cmp5.not, label %cleanup.sink.split, label %for.body

cleanup.sink.split:                               ; preds = %for.inc, %for.body, %if.end
  %retval.0.ph = phi i32 [ -2, %if.end ], [ %call9, %for.body ], [ -8, %for.inc ]
  call fastcc void @__raw_read_unlock(%struct.rwlock_t* noundef nonnull @binfmt_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @allow_write_access(%struct.file* noundef readonly %file) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.file* %file, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %file) #12
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 34
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_writecount) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_event(i64 noundef %message) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i1 @ptrace_event_enabled(%struct.task_struct* noundef %1) #12
  br i1 %call1, label %if.then, label %if.then5, !prof !14

if.then:                                          ; preds = %entry
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 113
  store i64 %message, i64* %ptrace_message, align 8
  call void @ptrace_notify(i32 noundef 1029) #14
  br label %if.end13

if.then5:                                         ; preds = %entry
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %2 = load i32, i32* %ptrace, align 8
  %and = and i32 %2, 65537
  %cmp7 = icmp eq i32 %and, 1
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then5
  %call11 = call i32 @send_sig(i32 noundef 5, %struct.task_struct* noundef %1, i32 noundef 0) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prepare_binprm(%struct.linux_binprm* noundef %bprm) unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %0 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %pos, align 8
  %arraydecay = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 22, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 256) #14
  %file = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 8
  %1 = load %struct.file*, %struct.file** %file, align 8
  %call3 = call i64 @kernel_read(%struct.file* noundef %1, i8* noundef %arraydecay, i64 noundef 256, i64* noundef nonnull %pos) #14
  %conv = trunc i64 %call3 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @kernel_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @ptrace_event_enabled(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #2 {
entry:
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %and = and i32 %0, 128
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(%struct.cred* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #13, !srcloc !51
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #13, !srcloc !52
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_execve(i8* noundef %filename, i8** noundef %argv, i8** noundef %envp) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %filename) #14
  %call1 = call fastcc i32 @do_execve(%struct.filename* noundef %call, i8** noundef %argv, i8** noundef %envp) #12
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_execve(%struct.filename* noundef %filename, i8** noundef %__argv, i8** noundef %__envp) unnamed_addr #0 {
entry:
  %coerce.val.pi = ptrtoint i8** %__argv to i64
  %coerce.val.pi6 = ptrtoint i8** %__envp to i64
  %call = call fastcc i32 @do_execveat_common(i32 noundef -100, %struct.filename* noundef %filename, i64 %coerce.val.pi, i64 %coerce.val.pi6, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_execveat_common(i32 noundef %fd, %struct.filename* noundef %filename, i64 %argv.coerce, i64 %envp.coerce, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.filename* %filename to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %0) #12
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call fastcc i64 @PTR_ERR(i8* noundef %0) #12
  %conv = trunc i64 %call6 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 4
  %3 = load i32, i32* %flags8, align 4
  %and = and i32 %3, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %4 = load %struct.cred*, %struct.cred** %cred, align 8
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 17
  %5 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  %call11 = call fastcc i64 @rlimit() #12
  %call12 = call i1 @is_ucounts_overlimit(%struct.ucounts* noundef %5, i32 noundef 8, i64 noundef %call11) #14
  br i1 %call12, label %out_ret, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  %.pre = load i32, i32* %flags8, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end.if.end15_crit_edge, %if.end
  %6 = phi i32 [ %.pre, %do.end.if.end15_crit_edge ], [ %3, %if.end ]
  %and18 = and i32 %6, -4097
  store i32 %and18, i32* %flags8, align 4
  %call19 = call fastcc %struct.linux_binprm* @alloc_bprm(i32 noundef %fd, %struct.filename* noundef %filename) #12
  %7 = bitcast %struct.linux_binprm* %call19 to i8*
  %call20 = call fastcc i1 @IS_ERR(i8* noundef %7) #12
  br i1 %call20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end15
  %call22 = call fastcc i64 @PTR_ERR(i8* noundef %7) #12
  %conv23 = trunc i64 %call22 to i32
  br label %out_ret

if.end24:                                         ; preds = %if.end15
  %call27 = call fastcc i32 @count(i64 %argv.coerce) #12
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %out_free, label %if.end30

if.end30:                                         ; preds = %if.end24
  %argc = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call19, i64 0, i32 12
  store i32 %call27, i32* %argc, align 8
  %call34 = call fastcc i32 @count(i64 %envp.coerce) #12
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %out_free, label %if.end38

if.end38:                                         ; preds = %if.end30
  %envc = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call19, i64 0, i32 13
  store i32 %call34, i32* %envc, align 4
  %call39 = call fastcc i32 @bprm_stack_limits(%struct.linux_binprm* noundef %call19) #12
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %out_free, label %if.end43

if.end43:                                         ; preds = %if.end38
  %filename44 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call19, i64 0, i32 14
  %8 = load i8*, i8** %filename44, align 8
  %call45 = call i32 @copy_string_kernel(i8* noundef %8, %struct.linux_binprm* noundef %call19) #12
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %out_free, label %if.end49

if.end49:                                         ; preds = %if.end43
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call19, i64 0, i32 3
  %9 = load i64, i64* %p, align 8
  %exec = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %call19, i64 0, i32 20
  store i64 %9, i64* %exec, align 8
  %10 = load i32, i32* %envc, align 4
  %call54 = call fastcc i32 @copy_strings(i32 noundef %10, i64 %envp.coerce, %struct.linux_binprm* noundef %call19) #12
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %out_free, label %if.end58

if.end58:                                         ; preds = %if.end49
  %11 = load i32, i32* %argc, align 8
  %call63 = call fastcc i32 @copy_strings(i32 noundef %11, i64 %argv.coerce, %struct.linux_binprm* noundef %call19) #12
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %out_free, label %if.end67

if.end67:                                         ; preds = %if.end58
  %call68 = call fastcc i32 @bprm_execve(%struct.linux_binprm* noundef %call19, i32 noundef %fd, %struct.filename* noundef %filename, i32 noundef %flags) #12
  br label %out_free

out_free:                                         ; preds = %if.end58, %if.end49, %if.end43, %if.end38, %if.end30, %if.end24, %if.end67
  %retval5.0 = phi i32 [ %call27, %if.end24 ], [ %call34, %if.end30 ], [ %call39, %if.end38 ], [ %call45, %if.end43 ], [ %call54, %if.end49 ], [ %call63, %if.end58 ], [ %call68, %if.end67 ]
  call fastcc void @free_bprm(%struct.linux_binprm* noundef %call19) #12
  br label %out_ret

out_ret:                                          ; preds = %do.end, %out_free, %if.then21
  %retval5.1 = phi i32 [ %conv23, %if.then21 ], [ %retval5.0, %out_free ], [ -11, %do.end ]
  call void @putname(%struct.filename* noundef %filename) #14
  br label %cleanup

cleanup:                                          ; preds = %out_ret, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %retval5.1, %out_ret ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_ucounts_overlimit(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #12
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @count(i64 %argv.coerce) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64 %argv.coerce, 0
  br i1 %cmp.not, label %cleanup18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call8 = call fastcc i8* @get_user_arg_ptr(i64 %argv.coerce, i32 noundef 0) #12
  %tobool.not9 = icmp eq i8* %call8, null
  br i1 %tobool.not9, label %cleanup18, label %if.end

if.end:                                           ; preds = %for.cond.preheader, %cleanup
  %call11 = phi i8* [ %call, %cleanup ], [ %call8, %for.cond.preheader ]
  %i.010 = phi i32 [ %inc, %cleanup ], [ 0, %for.cond.preheader ]
  %call5 = call fastcc i1 @IS_ERR(i8* noundef nonnull %call11) #12
  br i1 %call5, label %cleanup18, label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %i.010, 2147483647
  br i1 %cmp8, label %cleanup18, label %if.end10

if.end10:                                         ; preds = %if.end7
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call12 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #12
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %cleanup18

cleanup:                                          ; preds = %if.end10
  %inc = add nuw nsw i32 %i.010, 1
  call fastcc void @_cond_resched() #12
  %call = call fastcc i8* @get_user_arg_ptr(i64 %argv.coerce, i32 noundef %inc) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup18, label %if.end

cleanup18:                                        ; preds = %cleanup, %if.end, %if.end7, %if.end10, %for.cond.preheader, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ %inc, %cleanup ], [ -14, %if.end ], [ -7, %if.end7 ], [ -514, %if.end10 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_strings(i32 noundef %argc, i64 %argv.coerce, %struct.linux_binprm* nocapture noundef %bprm) unnamed_addr #0 {
entry:
  %cmp164 = icmp sgt i32 %argc, 0
  br i1 %cmp164, label %while.body.lr.ph, label %cleanup78

while.body.lr.ph:                                 ; preds = %entry
  %p = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 3
  %argmin = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 4
  br label %while.body

while.cond.loopexit:                              ; preds = %while.cond19
  %cmp = icmp sgt i32 %dec168.in, 1
  br i1 %cmp, label %while.body, label %out

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %dec168.in = phi i32 [ %argc, %while.body.lr.ph ], [ %dec168, %while.cond.loopexit ]
  %kpos.0167 = phi i64 [ 0, %while.body.lr.ph ], [ %kpos.1, %while.cond.loopexit ]
  %kaddr.0166 = phi i8* [ null, %while.body.lr.ph ], [ %kaddr.1, %while.cond.loopexit ]
  %kmapped_page.0165 = phi %struct.page* [ null, %while.body.lr.ph ], [ %kmapped_page.1, %while.cond.loopexit ]
  %dec168 = add nsw i32 %dec168.in, -1
  %call = call fastcc i8* @get_user_arg_ptr(i64 %argv.coerce, i32 noundef %dec168) #12
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %call) #12
  br i1 %call4, label %out, label %if.end

if.end:                                           ; preds = %while.body
  %call5 = call i64 @strnlen_user(i8* noundef %call, i64 noundef 131072) #14
  %conv = trunc i64 %call5 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %out, label %if.end7

if.end7:                                          ; preds = %if.end
  %sext = shl i64 %call5, 32
  %conv8 = ashr exact i64 %sext, 32
  %call9 = call fastcc i1 @valid_arg_len(i64 noundef %conv8) #12
  br i1 %call9, label %if.end11, label %out

if.end11:                                         ; preds = %if.end7
  %0 = load i64, i64* %p, align 8
  %sub = sub i64 %0, %conv8
  store i64 %sub, i64* %p, align 8
  %1 = load i64, i64* %argmin, align 8
  %cmp15 = icmp ult i64 %sub, %1
  br i1 %cmp15, label %out, label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %if.end11
  %add.ptr = getelementptr i8, i8* %call, i64 %conv8
  br label %while.cond19

while.cond19:                                     ; preds = %while.cond19.preheader, %if.end57
  %kmapped_page.1 = phi %struct.page* [ %kmapped_page.3, %if.end57 ], [ %kmapped_page.0165, %while.cond19.preheader ]
  %kaddr.1 = phi i8* [ %kaddr.3, %if.end57 ], [ %kaddr.0166, %while.cond19.preheader ]
  %kpos.1 = phi i64 [ %kpos.3, %if.end57 ], [ %kpos.0167, %while.cond19.preheader ]
  %str.0 = phi i8* [ %add.ptr42, %if.end57 ], [ %add.ptr, %while.cond19.preheader ]
  %len.0 = phi i32 [ %sub43, %if.end57 ], [ %conv, %while.cond19.preheader ]
  %pos.0 = phi i64 [ %sub40, %if.end57 ], [ %0, %while.cond19.preheader ]
  %cmp20 = icmp sgt i32 %len.0, 0
  br i1 %cmp20, label %while.body22, label %while.cond.loopexit

while.body22:                                     ; preds = %while.cond19
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call24 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %3) #12
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %out

if.end27:                                         ; preds = %while.body22
  call fastcc void @_cond_resched() #12
  %4 = trunc i64 %pos.0 to i32
  %conv29 = and i32 %4, 4095
  %cmp30 = icmp eq i32 %conv29, 0
  %spec.store.select = select i1 %cmp30, i32 4096, i32 %conv29
  %cmp34 = icmp ugt i32 %spec.store.select, %len.0
  %spec.select = select i1 %cmp34, i32 %len.0, i32 %spec.store.select
  %sub38 = sub nsw i32 %spec.store.select, %spec.select
  %conv39156 = zext i32 %spec.select to i64
  %sub40 = sub i64 %pos.0, %conv39156
  %idx.neg = sub nsw i64 0, %conv39156
  %add.ptr42 = getelementptr i8, i8* %str.0, i64 %idx.neg
  %sub43 = sub nsw i32 %len.0, %spec.select
  %tobool44.not = icmp eq %struct.page* %kmapped_page.1, null
  %tobool44.not.not = xor i1 %tobool44.not, true
  %and = and i64 %sub40, -4096
  %cmp45.not = icmp eq i64 %kpos.1, %and
  %or.cond = select i1 %tobool44.not.not, i1 %cmp45.not, i1 false
  br i1 %or.cond, label %if.end57, label %if.then47

if.then47:                                        ; preds = %if.end27
  %call48 = call fastcc %struct.page* @get_arg_page(%struct.linux_binprm* noundef %bprm, i64 noundef %sub40, i32 noundef 1) #12
  %tobool49.not = icmp eq %struct.page* %call48, null
  br i1 %tobool49.not, label %out, label %if.end51

if.end51:                                         ; preds = %if.then47
  br i1 %tobool44.not, label %cleanup, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @flush_dcache_page(%struct.page* noundef nonnull %kmapped_page.1) #14
  call fastcc void @put_arg_page(%struct.page* noundef nonnull %kmapped_page.1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then53
  %call55 = call fastcc i8* @kmap(%struct.page* noundef nonnull %call48) #12
  br label %if.end57

if.end57:                                         ; preds = %cleanup, %if.end27
  %kmapped_page.3 = phi %struct.page* [ %call48, %cleanup ], [ %kmapped_page.1, %if.end27 ]
  %kaddr.3 = phi i8* [ %call55, %cleanup ], [ %kaddr.1, %if.end27 ]
  %kpos.3 = phi i64 [ %and, %cleanup ], [ %kpos.1, %if.end27 ]
  %idx.ext58 = sext i32 %sub38 to i64
  %add.ptr59 = getelementptr i8, i8* %kaddr.3, i64 %idx.ext58
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %add.ptr59, i8* noundef %add.ptr42, i64 noundef %conv39156) #14
  %tobool62.not = icmp eq i64 %call2.i, 0
  br i1 %tobool62.not, label %while.cond19, label %out

out:                                              ; preds = %while.cond.loopexit, %while.body, %if.end, %if.end7, %if.end11, %if.then47, %if.end57, %while.body22
  %kmapped_page.6 = phi %struct.page* [ %kmapped_page.1, %if.then47 ], [ %kmapped_page.1, %while.body22 ], [ %kmapped_page.3, %if.end57 ], [ %kmapped_page.1, %while.cond.loopexit ], [ %kmapped_page.0165, %while.body ], [ %kmapped_page.0165, %if.end ], [ %kmapped_page.0165, %if.end7 ], [ %kmapped_page.0165, %if.end11 ]
  %ret.5 = phi i32 [ -7, %if.then47 ], [ -514, %while.body22 ], [ -14, %if.end57 ], [ 0, %while.cond.loopexit ], [ -14, %while.body ], [ -14, %if.end ], [ -7, %if.end7 ], [ -7, %if.end11 ]
  %tobool75.not = icmp eq %struct.page* %kmapped_page.6, null
  br i1 %tobool75.not, label %cleanup78, label %if.then76

if.then76:                                        ; preds = %out
  call void @flush_dcache_page(%struct.page* noundef nonnull %kmapped_page.6) #14
  call fastcc void @put_arg_page(%struct.page* noundef nonnull %kmapped_page.6) #12
  br label %cleanup78

cleanup78:                                        ; preds = %entry, %out, %if.then76
  %ret.5187 = phi i32 [ %ret.5, %out ], [ %ret.5, %if.then76 ], [ 0, %entry ]
  ret i32 %ret.5187
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #10 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 6, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @get_user_arg_ptr(i64 %argv.coerce, i32 noundef %nr) unnamed_addr #0 {
entry:
  %coerce.val.ip = inttoptr i64 %argv.coerce to i8**
  %idx.ext = sext i32 %nr to i64
  %add.ptr = getelementptr i8*, i8** %coerce.val.ip, i64 %idx.ext
  %0 = bitcast i8** %add.ptr to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 8) #12
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.then14, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #12
  %1 = bitcast i8* %call3 to i8**
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8** %1, i32 -14, i32 0) #13, !srcloc !53
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult7 = extractvalue { i32, i64 } %2, 1
  %3 = inttoptr i64 %asmresult7 to i8*
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %cleanup, label %if.then14

if.then14:                                        ; preds = %entry, %if.end
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then14
  %retval.0 = phi i8* [ %call15, %if.then14 ], [ %3, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #13, !srcloc !54
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #13, !srcloc !55
  call void asm sideeffect "hint #20", "~{memory}"() #13, !srcloc !56
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen_user(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #12
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !15

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_execveat(i32 noundef %fd, i8* noundef %filename, i8** noundef %argv, i8** noundef %envp, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_uflags(i8* noundef %filename, i32 noundef %flags) #14
  %call1 = call fastcc i32 @do_execveat(i32 noundef %fd, %struct.filename* noundef %call, i8** noundef %argv, i8** noundef %envp, i32 noundef %flags) #12
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_execveat(i32 noundef %fd, %struct.filename* noundef %filename, i8** noundef %__argv, i8** noundef %__envp, i32 noundef %flags) unnamed_addr #0 {
entry:
  %coerce.val.pi = ptrtoint i8** %__argv to i64
  %coerce.val.pi6 = ptrtoint i8** %__envp to i64
  %call = call fastcc i32 @do_execveat_common(i32 noundef %fd, %struct.filename* noundef %filename, i64 %coerce.val.pi, i64 %coerce.val.pi6, i32 noundef %flags) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname_uflags(i8* noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149603161}
!8 = !{i64 2149610697}
!9 = !{!"auto-init"}
!10 = !{i64 0, i64 4503599627370496}
!11 = !{i64 2154380074}
!12 = !{i64 2154382332}
!13 = !{i64 1324173}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2156005010}
!17 = !{i64 2156002561}
!18 = !{i64 2156008558}
!19 = !{i64 2156018711}
!20 = !{i64 2156020073}
!21 = !{i64 2156025631}
!22 = !{i64 2156012310}
!23 = !{i64 2156029820}
!24 = !{i64 2156052243}
!25 = !{i64 2148047511, i64 2148047544, i64 2148047597, i64 2148047656, i64 2148047690, i64 2148047745, i64 2148047774, i64 2148047794}
!26 = !{i64 2149474392}
!27 = !{i64 2151646555}
!28 = !{i64 2151646762}
!29 = !{i64 2147958161, i64 2147958809, i64 2147958839, i64 2147958871, i64 2147958905, i64 2147958941, i64 2147958966}
!30 = !{i64 2149510599}
!31 = !{i64 2149517880}
!32 = !{i64 2149310110}
!33 = !{i64 2149592201}
!34 = !{i64 2149633855}
!35 = !{i64 2150822577}
!36 = !{i64 2149559108}
!37 = !{i64 2149614062}
!38 = !{i64 2149499891}
!39 = !{i64 2149055722, i64 2149055769, i64 2149055775, i64 2149055812, i64 2149055830, i64 2149057171, i64 2149057219, i64 2149057267, i64 2149057330, i64 2149057379, i64 2149055908, i64 2149055933, i64 2149055959, i64 2149055965, i64 2149056837, i64 2149056877, i64 2149056895, i64 2149056927, i64 2149056955, i64 2149057009, i64 2149057029, i64 2149057126, i64 2149055988, i64 2149056002, i64 2149056008, i64 2149056058, i64 2149056104, i64 2149056137}
!40 = !{i64 2149524744}
!41 = !{i64 2149046266, i64 2149046313, i64 2149046319, i64 2149046356, i64 2149046374, i64 2149047714, i64 2149047762, i64 2149047810, i64 2149047873, i64 2149047922, i64 2149046452, i64 2149046477, i64 2149046503, i64 2149046509, i64 2149047380, i64 2149047420, i64 2149047438, i64 2149047470, i64 2149047498, i64 2149047552, i64 2149047572, i64 2149047669, i64 2149046532, i64 2149046546, i64 2149046552, i64 2149046602, i64 2149046648, i64 2149046681}
!42 = !{i64 2147950472, i64 2147951138, i64 2147951168, i64 2147951201, i64 2147951235, i64 2147951270, i64 2147951295}
!43 = !{i64 2147961220, i64 2147961886, i64 2147961916, i64 2147961948, i64 2147961982, i64 2147962018, i64 2147962043}
!44 = !{i64 2147993183, i64 2147993831, i64 2147993861, i64 2147993892, i64 2147993924, i64 2147993959, i64 2147993984}
!45 = !{i64 2155718548}
!46 = !{i64 2155718694}
!47 = !{i64 2151863112}
!48 = !{i64 2149976029}
!49 = !{i64 2149976246}
!50 = !{i64 2147947588, i64 2147948104, i64 2147948134, i64 2147948161, i64 2147948195, i64 2147948225}
!51 = !{i64 2148060658, i64 2148060691, i64 2148060743, i64 2148060802, i64 2148060836, i64 2148060892, i64 2148060921, i64 2148060948}
!52 = !{i64 2148062308, i64 2148062341, i64 2148062392, i64 2148062448, i64 2148062481, i64 2148062536, i64 2148062565, i64 2148062592}
!53 = !{i64 2155980360, i64 2155980397, i64 2155980414, i64 2155980449, i64 2155980471, i64 2155980497, i64 2155980520, i64 2155980538, i64 2155980697, i64 2155980738, i64 2155980760, i64 2155980806}
!54 = !{i64 4083876, i64 4083959, i64 4084183, i64 4084403, i64 4084426}
!55 = !{i64 4088578, i64 4088602}
!56 = !{i64 2151641362}
