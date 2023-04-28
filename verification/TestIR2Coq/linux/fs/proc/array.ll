; ModuleID = 'fs/proc/array.c'
source_filename = "fs/proc/array.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.20, i32 }
%union.anon.20 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
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
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.21, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.21 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.58, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.58 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.12 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.13, %union.anon.44, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.44 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5, [48 x i8] }
%struct.anon.5 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.net = type opaque
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.77, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.85, %struct.list_head, %struct.list_head, %union.anon.86 }
%struct.lockref = type { %union.anon.83 }
%union.anon.83 = type { i64 }
%union.anon.85 = type { %struct.list_head }
%union.anon.86 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.82, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.79 = type { i32 }
%union.anon.80 = type { %struct.callback_head }
%union.anon.81 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.16 }
%union.anon.16 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.17, %union.anon.18 }
%union.anon.17 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.18 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.82 = type { %struct.pipe_inode_info* }
%struct.pipe_inode_info = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
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
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.45 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.45 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.75, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.io_uring_task = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.72, %struct.anon.73, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.69, %struct.dentry_operations*, %union.anon.70, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.69 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%union.anon.70 = type { %struct.seq_operations* }
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.72 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.73 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.71, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.71 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
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
%struct.rseq = type { i32, i32, %union.anon.74, i32, [12 x i8] }
%union.anon.74 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.76, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.76 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

@.str = private unnamed_addr constant [3 x i8] c"\0A\\\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.64s\00", align 1
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Name:\09\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"0 0 0 0 0 0 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Umask:\09%#04o\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"State:\09\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\0ATgid:\09\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\0ANgid:\09\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\0APid:\09\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\0APPid:\09\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\0ATracerPid:\09\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\0AUid:\09\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\0AGid:\09\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"\0AFDSize:\09\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\0AGroups:\09\00", align 1
@task_state_array = internal unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)], align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"R (running)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"S (sleeping)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"D (disk sleep)\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"T (stopped)\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"t (tracing stop)\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"X (dead)\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Z (zombie)\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"P (parked)\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"I (idle)\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"CoreDumping:\09\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"THP_enabled:\09%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Threads:\09\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"\0ASigQ:\09\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"\0ASigPnd:\09\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"ShdPnd:\09\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"SigBlk:\09\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"SigIgn:\09\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SigCgt:\09\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"CapInh:\09\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"CapPrm:\09\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"CapEff:\09\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"CapBnd:\09\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"CapAmb:\09\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"NoNewPrivs:\09\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"\0ASpeculation_Store_Bypass:\09\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"not vulnerable\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"thread force mitigated\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"thread mitigated\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"thread vulnerable\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"globally mitigated\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"vulnerable\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"\0ASpeculationIndirectBranch:\09\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"not affected\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"conditional force disabled\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"conditional disabled\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"conditional enabled\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"always enabled\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"always disabled\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"Cpus_allowed:\09%*pb\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.60 = private unnamed_addr constant [26 x i8] c"Cpus_allowed_list:\09%*pbl\0A\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"voluntary_ctxt_switches:\09\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"\0Anonvoluntary_ctxt_switches:\09\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c" 1\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c" 0 0 0 0 0 0 0\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_task_name(%struct.seq_file* noundef %m, %struct.task_struct* noundef %p, i1 noundef %escape) local_unnamed_addr #0 {
entry:
  %tcomm = alloca [64 x i8], align 1
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %tcomm, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @wq_worker_comm(i8* noundef nonnull %0, i64 noundef 64, %struct.task_struct* noundef %p) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i8* @__get_task_comm(i8* noundef nonnull %0, i64 noundef 64, %struct.task_struct* noundef %p) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br i1 %escape, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.end
  call fastcc void @seq_escape_str(%struct.seq_file* noundef %m, i8* noundef nonnull %0) #14
  br label %if.end7

if.else5:                                         ; preds = %if.end
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %0) #13
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_worker_comm(i8* noundef, i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__get_task_comm(i8* noundef, i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @seq_escape_str(%struct.seq_file* noundef %m, i8* noundef %src) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %src) #13
  call void @seq_escape_mem(%struct.seq_file* noundef %m, i8* noundef %src, i64 noundef %call, i32 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @render_sigset_t(%struct.seq_file* noundef %m, i8* noundef %header, %struct.sigset_t* nocapture noundef readonly %set) local_unnamed_addr #0 {
entry:
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %header) #13
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %i.0 = phi i32 [ 64, %entry ], [ %sub, %do.body ]
  %sub = add nsw i32 %i.0, -4
  %add = add nsw i32 %i.0, -3
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %set, i32 noundef %add) #14
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  %add1 = add nsw i32 %i.0, -2
  %call2 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %set, i32 noundef %add1) #14
  %tobool3.not = icmp eq i32 %call2, 0
  %or5 = or i32 %spec.select, 2
  %x.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  %add7 = add nsw i32 %i.0, -1
  %call8 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %set, i32 noundef %add7) #14
  %tobool9.not = icmp eq i32 %call8, 0
  %or11 = or i32 %x.1, 4
  %x.2 = select i1 %tobool9.not, i32 %x.1, i32 %or11
  %call14 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %set, i32 noundef %i.0) #14
  %tobool15.not = icmp eq i32 %call14, 0
  %or17 = or i32 %x.2, 8
  %x.3 = select i1 %tobool15.not, i32 %x.2, i32 %or17
  %idxprom = sext i32 %x.3 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %0) #13
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set, i32 noundef %_sig) unnamed_addr #4 {
entry:
  %sub = add i32 %_sig, -1
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %conv4 = zext i32 %sub to i64
  %shr = lshr i64 %0, %conv4
  %1 = trunc i64 %shr to i32
  %conv2 = and i32 %1, 1
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_pid_status(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %task) #13
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #13
  call void @proc_task_name(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task, i1 noundef true) #14
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  call fastcc void @task_state(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %task) #14
  %tobool.not = icmp eq %struct.mm_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @task_mem(%struct.seq_file* noundef %m, %struct.mm_struct* noundef nonnull %call) #13
  call fastcc void @task_core_dumping(%struct.seq_file* noundef %m, %struct.mm_struct* noundef nonnull %call) #14
  call fastcc void @task_thp_status(%struct.seq_file* noundef %m) #14
  call void @mmput(%struct.mm_struct* noundef nonnull %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @task_sig(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task) #14
  call fastcc void @task_cap(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task) #14
  call fastcc void @task_seccomp(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task) #14
  call fastcc void @task_cpus_allowed(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task) #14
  call fastcc void @task_context_switch_counts(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_state(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #13
  %call1 = call fastcc i32 @pid_alive(%struct.task_struct* noundef %p) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 52
  %0 = load volatile %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %call6 = call fastcc i32 @task_tgid_nr_ns(%struct.task_struct* noundef %0, %struct.pid_namespace* noundef %ns) #14
  %phi.cast = sext i32 %call6 to i64
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %phi.cast, %cond.true ], [ 0, %entry ]
  %call7 = call fastcc %struct.task_struct* @ptrace_parent(%struct.task_struct* noundef %p) #14
  %tobool8.not = icmp eq %struct.task_struct* %call7, null
  br i1 %tobool8.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call9 = call fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef nonnull %call7, %struct.pid_namespace* noundef %ns) #14
  %phi.cast154 = sext i32 %call9 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %tpid.0 = phi i64 [ %phi.cast154, %if.then ], [ 0, %cond.end ]
  %call10 = call fastcc i32 @task_tgid_nr_ns(%struct.task_struct* noundef %p, %struct.pid_namespace* noundef %ns) #14
  %call12 = call %struct.cred* @get_task_cred(%struct.task_struct* noundef %p) #13
  call fastcc void @task_lock(%struct.task_struct* noundef %p) #14
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 83
  %1 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %tobool13.not = icmp eq %struct.fs_struct* %1, null
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  %umask16 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %1, i64 0, i32 3
  %2 = load i32, i32* %umask16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end
  %umask.0 = phi i32 [ %2, %if.then14 ], [ -1, %if.end ]
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 84
  %3 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %tobool18.not = icmp eq %struct.files_struct* %3, null
  br i1 %tobool18.not, label %if.end31, label %if.then19

if.then19:                                        ; preds = %if.end17
  %fdt = getelementptr inbounds %struct.files_struct, %struct.files_struct* %3, i64 0, i32 3
  %4 = load volatile %struct.fdtable*, %struct.fdtable** %fdt, align 32
  %max_fds30 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %4, i64 0, i32 0
  %5 = load i32, i32* %max_fds30, align 8
  %phi.cast155 = zext i32 %5 to i64
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %if.end17
  %max_fds.0 = phi i64 [ %phi.cast155, %if.then19 ], [ 0, %if.end17 ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %p) #14
  call fastcc void @rcu_read_unlock() #14
  %cmp = icmp sgt i32 %umask.0, -1
  br i1 %cmp, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end31
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 noundef %umask.0) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end31
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #13
  %call34 = call fastcc i8* @get_task_state(%struct.task_struct* noundef %p) #14
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %call34) #13
  %conv = sext i32 %call10 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 noundef %conv) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 noundef 0) #13
  %call36 = call i32 @pid_nr_ns(%struct.pid* noundef %pid, %struct.pid_namespace* noundef %ns) #13
  %conv37 = sext i32 %call36 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 noundef %conv37) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64 noundef %cond) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i64 noundef %tpid.0) #13
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 1, i32 0
  %6 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %6 to i64
  %call40 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #14
  %conv41 = zext i32 %call40 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 noundef %conv41) #13
  %coerce.dive42 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 5, i32 0
  %7 = load i32, i32* %coerce.dive42, align 4
  %coerce.val.ii43 = zext i32 %7 to i64
  %call44 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii43) #14
  %conv45 = zext i32 %call44 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %conv45) #13
  %coerce.dive46 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 3, i32 0
  %8 = load i32, i32* %coerce.dive46, align 4
  %coerce.val.ii47 = zext i32 %8 to i64
  %call48 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii47) #14
  %conv49 = zext i32 %call48 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %conv49) #13
  %coerce.dive50 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 7, i32 0
  %9 = load i32, i32* %coerce.dive50, align 4
  %coerce.val.ii51 = zext i32 %9 to i64
  %call52 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii51) #14
  %conv53 = zext i32 %call52 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %conv53) #13
  %coerce.dive54 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 2, i32 0
  %10 = load i32, i32* %coerce.dive54, align 8
  %coerce.val.ii55 = zext i32 %10 to i64
  %call56 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii55) #14
  %conv57 = zext i32 %call56 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 noundef %conv57) #13
  %coerce.dive58 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 6, i32 0
  %11 = load i32, i32* %coerce.dive58, align 8
  %coerce.val.ii59 = zext i32 %11 to i64
  %call60 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii59) #14
  %conv61 = zext i32 %call60 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %conv61) #13
  %coerce.dive62 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 4, i32 0
  %12 = load i32, i32* %coerce.dive62, align 8
  %coerce.val.ii63 = zext i32 %12 to i64
  %call64 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii63) #14
  %conv65 = zext i32 %call64 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %conv65) #13
  %coerce.dive66 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 8, i32 0
  %13 = load i32, i32* %coerce.dive66, align 8
  %coerce.val.ii67 = zext i32 %13 to i64
  %call68 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii67) #14
  %conv69 = zext i32 %call68 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %conv69) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 noundef %max_fds.0) #13
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #13
  %group_info71 = getelementptr inbounds %struct.cred, %struct.cred* %call12, i64 0, i32 18
  %14 = load %struct.group_info*, %struct.group_info** %group_info71, align 8
  %ngroups = getelementptr inbounds %struct.group_info, %struct.group_info* %14, i64 0, i32 1
  %15 = load i32, i32* %ngroups, align 4
  %cmp72156 = icmp sgt i32 %15, 0
  br i1 %cmp72156, label %for.body, label %for.end

for.body:                                         ; preds = %if.end33, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end33 ]
  %tobool74.not = icmp eq i64 %indvars.iv, 0
  %cond75 = select i1 %tobool74.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %coerce.dive77 = getelementptr %struct.group_info, %struct.group_info* %14, i64 0, i32 2, i64 %indvars.iv, i32 0
  %16 = load i32, i32* %coerce.dive77, align 4
  %coerce.val.ii78 = zext i32 %16 to i64
  %call79 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii78) #14
  %conv80 = zext i32 %call79 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef %cond75, i64 noundef %conv80) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = load i32, i32* %ngroups, align 4
  %18 = sext i32 %17 to i64
  %cmp72 = icmp slt i64 %indvars.iv.next, %18
  br i1 %cmp72, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end33
  call fastcc void @put_cred(%struct.cred* noundef %call12) #14
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_mem(%struct.seq_file* noundef, %struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_core_dumping(%struct.seq_file* noundef %m, %struct.mm_struct* nocapture noundef readonly %mm) unnamed_addr #0 {
entry:
  %core_state = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 44
  %0 = load %struct.core_state*, %struct.core_state** %core_state, align 8
  %tobool = icmp ne %struct.core_state* %0, null
  %1 = zext i1 %tobool to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 noundef %1) #13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_thp_status(%struct.seq_file* noundef %m) unnamed_addr #0 {
entry:
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_sig(%struct.seq_file* noundef %m, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %pending = alloca %struct.sigset_t, align 8
  %shpending = alloca %struct.sigset_t, align 8
  %blocked = alloca %struct.sigset_t, align 8
  %ignored = alloca %struct.sigset_t, align 8
  %caught = alloca %struct.sigset_t, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %flags, align 8, !annotation !7
  %1 = bitcast %struct.sigset_t* %pending to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %pending, i64 0, i32 0, i64 0, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %3 = bitcast %struct.sigset_t* %shpending to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %shpending, i64 0, i32 0, i64 0, !annotation !7
  store i64 0, i64* %4, align 8, !annotation !7
  %5 = bitcast %struct.sigset_t* %blocked to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  %6 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %blocked, i64 0, i32 0, i64 0, !annotation !7
  store i64 0, i64* %6, align 8, !annotation !7
  %7 = bitcast %struct.sigset_t* %ignored to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %ignored, i64 0, i32 0, i64 0, !annotation !7
  store i64 0, i64* %8, align 8, !annotation !7
  %9 = bitcast %struct.sigset_t* %caught to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #12
  %10 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %caught, i64 0, i32 0, i64 0, !annotation !7
  store i64 0, i64* %10, align 8, !annotation !7
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %pending) #14
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %shpending) #14
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %blocked) #14
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %ignored) #14
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %caught) #14
  %call = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %p, i64* noundef nonnull %flags) #14
  %tobool.not = icmp eq %struct.sighand_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1, i32 0, i64 0
  %12 = load i64, i64* %11, align 16
  store i64 %12, i64* %2, align 8
  %signal2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %13 = load %struct.signal_struct*, %struct.signal_struct** %signal2, align 8
  %14 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 6, i32 1, i32 0, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 89, i32 0, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  call fastcc void @collect_sigign_sigcatch(%struct.task_struct* noundef %p, %struct.sigset_t* noundef nonnull %ignored, %struct.sigset_t* noundef nonnull %caught) #14
  %call5 = call fastcc i32 @get_nr_threads(%struct.task_struct* noundef %p) #14
  call fastcc void @__rcu_read_lock() #13
  call fastcc void @__rcu_read_lock() #13
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %18 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %18, i64 0, i32 17
  %19 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  call fastcc void @rcu_read_unlock() #14
  %call11 = call fastcc i64 @get_ucounts_value(%struct.ucounts* noundef %19) #14
  call fastcc void @rcu_read_unlock() #14
  %call12 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %p) #14
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %p, i64* noundef nonnull %flags) #14
  %phi.cast = sext i32 %call5 to i64
  %phi.cast35 = and i64 %call11, 4294967295
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %qlim.0 = phi i64 [ %call12, %if.then ], [ 0, %entry ]
  %qsize.0 = phi i64 [ %phi.cast35, %if.then ], [ 0, %entry ]
  %num_threads.0 = phi i64 [ %phi.cast, %if.then ], [ 0, %entry ]
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i64 noundef %num_threads.0) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i64 noundef %qsize.0) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 noundef %qlim.0) #13
  call void @render_sigset_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), %struct.sigset_t* noundef nonnull %pending) #14
  call void @render_sigset_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), %struct.sigset_t* noundef nonnull %shpending) #14
  call void @render_sigset_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), %struct.sigset_t* noundef nonnull %blocked) #14
  call void @render_sigset_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), %struct.sigset_t* noundef nonnull %ignored) #14
  call void @render_sigset_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), %struct.sigset_t* noundef nonnull %caught) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_cap(%struct.seq_file* noundef %m, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %cap_inheritable = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %cap_inheritable to %struct.kernel_cap_struct*, !annotation !7
  %cap_permitted = alloca i64, align 8, !annotation !7
  %tmpcast20 = bitcast i64* %cap_permitted to %struct.kernel_cap_struct*, !annotation !7
  %cap_effective = alloca i64, align 8, !annotation !7
  %tmpcast21 = bitcast i64* %cap_effective to %struct.kernel_cap_struct*, !annotation !7
  %cap_bset = alloca i64, align 8, !annotation !7
  %tmpcast22 = bitcast i64* %cap_bset to %struct.kernel_cap_struct*, !annotation !7
  %cap_ambient = alloca i64, align 8, !annotation !7
  %tmpcast23 = bitcast i64* %cap_ambient to %struct.kernel_cap_struct*, !annotation !7
  %0 = bitcast i64* %cap_inheritable to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast i64* %cap_permitted to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast i64* %cap_effective to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  %3 = bitcast i64* %cap_bset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = bitcast i64* %cap_ambient to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  call fastcc void @__rcu_read_lock() #13
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %5 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %cap_inheritable5 = getelementptr inbounds %struct.cred, %struct.cred* %5, i64 0, i32 10
  %6 = bitcast %struct.kernel_cap_struct* %cap_inheritable5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %cap_inheritable, align 8
  %cap_permitted6 = getelementptr inbounds %struct.cred, %struct.cred* %5, i64 0, i32 11
  %8 = bitcast %struct.kernel_cap_struct* %cap_permitted6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %cap_permitted, align 8
  %cap_effective7 = getelementptr inbounds %struct.cred, %struct.cred* %5, i64 0, i32 12
  %10 = bitcast %struct.kernel_cap_struct* %cap_effective7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %cap_effective, align 8
  %cap_bset8 = getelementptr inbounds %struct.cred, %struct.cred* %5, i64 0, i32 13
  %12 = bitcast %struct.kernel_cap_struct* %cap_bset8 to i64*
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %cap_bset, align 8
  %cap_ambient9 = getelementptr inbounds %struct.cred, %struct.cred* %5, i64 0, i32 14
  %14 = bitcast %struct.kernel_cap_struct* %cap_ambient9 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %cap_ambient, align 8
  call fastcc void @rcu_read_unlock() #14
  call fastcc void @render_cap_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), %struct.kernel_cap_struct* noundef nonnull %tmpcast) #14
  call fastcc void @render_cap_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), %struct.kernel_cap_struct* noundef nonnull %tmpcast20) #14
  call fastcc void @render_cap_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), %struct.kernel_cap_struct* noundef nonnull %tmpcast21) #14
  call fastcc void @render_cap_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), %struct.kernel_cap_struct* noundef nonnull %tmpcast22) #14
  call fastcc void @render_cap_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), %struct.kernel_cap_struct* noundef nonnull %tmpcast23) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_seccomp(%struct.seq_file* noundef %m, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @task_no_new_privs(%struct.task_struct* noundef %p) #14
  %conv = zext i1 %call to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i64 noundef %conv) #13
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0)) #13
  %call1 = call i32 @arch_prctl_spec_ctrl_get(%struct.task_struct* noundef %p, i64 noundef 0) #13
  switch i32 %call1, label %sw.default [
    i32 -22, label %sw.epilog
    i32 0, label %sw.bb2
    i32 9, label %sw.bb3
    i32 5, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb6
  ]

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2
  %.sink = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %entry ]
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %.sink) #13
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0)) #13
  %call7 = call i32 @arch_prctl_spec_ctrl_get(%struct.task_struct* noundef %p, i64 noundef 1) #13
  switch i32 %call7, label %sw.default15 [
    i32 -22, label %sw.epilog16
    i32 0, label %sw.bb9
    i32 9, label %sw.bb10
    i32 5, label %sw.bb11
    i32 3, label %sw.bb12
    i32 2, label %sw.bb13
    i32 4, label %sw.bb14
  ]

sw.bb9:                                           ; preds = %sw.epilog
  br label %sw.epilog16

sw.bb10:                                          ; preds = %sw.epilog
  br label %sw.epilog16

sw.bb11:                                          ; preds = %sw.epilog
  br label %sw.epilog16

sw.bb12:                                          ; preds = %sw.epilog
  br label %sw.epilog16

sw.bb13:                                          ; preds = %sw.epilog
  br label %sw.epilog16

sw.bb14:                                          ; preds = %sw.epilog
  br label %sw.epilog16

sw.default15:                                     ; preds = %sw.epilog
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %sw.epilog, %sw.default15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9
  %.sink37 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %sw.default15 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), %sw.epilog ]
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %.sink37) #13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_cpus_allowed(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 27, i32 0, i64 0
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i32 noundef %0, i64* noundef %arraydecay) #13
  %1 = load i32, i32* @nr_cpu_ids, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i64 0, i64 0), i32 noundef %1, i64* noundef %arraydecay) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_context_switch_counts(%struct.seq_file* noundef %m, %struct.task_struct* nocapture noundef readonly %p) unnamed_addr #0 {
entry:
  %nvcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 71
  %0 = load i64, i64* %nvcsw, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0), i64 noundef %0) #13
  %nivcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 72
  %1 = load i64, i64* %nivcsw, align 64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0), i64 noundef %1) #13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_tid_stat(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  call fastcc void @do_task_stat(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %task, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_task_stat(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %task, i32 noundef %whole) unnamed_addr #0 {
entry:
  %sigign = alloca %struct.sigset_t, align 8
  %sigcatch = alloca %struct.sigset_t, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %flags = alloca i64, align 8
  %0 = bitcast %struct.sigset_t* %sigign to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %sigign, i64 0, i32 0, i64 0, !annotation !7
  store i64 0, i64* %1, align 8, !annotation !7
  %2 = bitcast %struct.sigset_t* %sigcatch to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  %3 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %sigcatch, i64 0, i32 0, i64 0, !annotation !7
  store i64 0, i64* %3, align 8, !annotation !7
  %4 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  store i64 0, i64* %utime, align 8, !annotation !7
  %5 = bitcast i64* %stime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  store i64 0, i64* %stime, align 8, !annotation !7
  %6 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  store i64 0, i64* %flags, align 8, !annotation !7
  %call = call fastcc i8* @get_task_state(%struct.task_struct* noundef %task) #14
  %7 = load i8, i8* %call, align 1
  %call1 = call i1 @ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef 13) #13
  %call2 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %task) #13
  %tobool = icmp ne %struct.mm_struct* %call2, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %call3 = call i64 @task_vsize(%struct.mm_struct* noundef nonnull %call2) #13
  br i1 %call1, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %flags5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %8 = load i32, i32* %flags5, align 4
  %and = and i32 %8, 516
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end18, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call fastcc i8* @try_get_task_stack(%struct.task_struct* noundef %task) #14
  %tobool9.not = icmp eq i8* %call8, null
  br i1 %tobool9.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.then7
  %call11 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %task) #14
  %pc = getelementptr i8, i8* %call11, i64 16304
  %9 = bitcast i8* %pc to i64*
  %10 = load i64, i64* %9, align 8
  %add.ptr15 = getelementptr i8, i8* %call11, i64 16048
  %11 = bitcast i8* %add.ptr15 to %struct.pt_regs*
  %call16 = call fastcc i64 @user_stack_pointer(%struct.pt_regs* noundef %11) #14
  call void @put_task_stack(%struct.task_struct* noundef %task) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then, %land.lhs.true, %if.then10, %if.then7, %entry
  %esp.0 = phi i64 [ %call16, %if.then10 ], [ 0, %if.then7 ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ 0, %entry ]
  %eip.0 = phi i64 [ %10, %if.then10 ], [ 0, %if.then7 ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ 0, %entry ]
  %vsize.0 = phi i64 [ %call3, %if.then10 ], [ %call3, %if.then7 ], [ %call3, %land.lhs.true ], [ %call3, %if.then ], [ 0, %entry ]
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %sigign) #14
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %sigcatch) #14
  store i64 0, i64* %stime, align 8
  store i64 0, i64* %utime, align 8
  %call19 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef nonnull %flags) #14
  %tobool20.not = icmp eq %struct.sighand_struct* %call19, null
  br i1 %tobool20.not, label %if.end59, label %if.then21

if.then21:                                        ; preds = %if.end18
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %12 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 24
  %13 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8
  %tobool22.not = icmp eq %struct.tty_struct* %13, null
  br i1 %tobool22.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %if.then21
  %call25 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef nonnull %13) #13
  %call26 = call i32 @pid_nr_ns(%struct.pid* noundef %call25, %struct.pid_namespace* noundef %ns) #13
  call void @put_pid(%struct.pid* noundef %call25) #13
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8
  %call28 = call i32 @tty_devnum(%struct.tty_struct* noundef %14) #13
  %and1.i = and i32 %call28, 255
  %15 = lshr i32 %call28, 12
  %shl.i = and i32 %15, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %call28, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.then21
  %tty_pgrp.0 = phi i32 [ %call26, %if.then23 ], [ -1, %if.then21 ]
  %tty_nr.0 = phi i32 [ %or4.i, %if.then23 ], [ 0, %if.then21 ]
  %call31 = call fastcc i32 @get_nr_threads(%struct.task_struct* noundef %task) #14
  call fastcc void @collect_sigign_sigcatch(%struct.task_struct* noundef %task, %struct.sigset_t* noundef nonnull %sigign, %struct.sigset_t* noundef nonnull %sigcatch) #14
  %cmin_flt32 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 39
  %16 = load i64, i64* %cmin_flt32, align 8
  %cmaj_flt33 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 40
  %17 = load i64, i64* %cmaj_flt33, align 8
  %cutime34 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 28
  %18 = load i64, i64* %cutime34, align 8
  %cstime35 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 29
  %19 = load i64, i64* %cstime35, align 8
  %cgtime36 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 31
  %20 = load i64, i64* %cgtime36, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 49, i64 5, i32 0
  %21 = load volatile i64, i64* %rlim_cur, align 8
  %tobool37.not = icmp eq i32 %whole, 0
  br i1 %tobool37.not, label %if.end55, label %do.body39

do.body39:                                        ; preds = %if.end30, %do.body39
  %min_flt.0 = phi i64 [ %add, %do.body39 ], [ 0, %if.end30 ]
  %maj_flt.0 = phi i64 [ %add42, %do.body39 ], [ 0, %if.end30 ]
  %gtime.0 = phi i64 [ %add44, %do.body39 ], [ 0, %if.end30 ]
  %t.0 = phi %struct.task_struct* [ %call46, %do.body39 ], [ %task, %if.end30 ]
  %min_flt40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t.0, i64 0, i32 75
  %22 = load i64, i64* %min_flt40, align 8
  %add = add i64 %22, %min_flt.0
  %maj_flt41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t.0, i64 0, i32 76
  %23 = load i64, i64* %maj_flt41, align 32
  %add42 = add i64 %23, %maj_flt.0
  %call43 = call fastcc i64 @task_gtime(%struct.task_struct* noundef %t.0) #14
  %add44 = add i64 %call43, %gtime.0
  %call46 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %t.0) #14
  %cmp.not = icmp eq %struct.task_struct* %call46, %task
  br i1 %cmp.not, label %do.end48, label %do.body39

do.end48:                                         ; preds = %do.body39
  %min_flt49 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 37
  %24 = load i64, i64* %min_flt49, align 8
  %add50 = add i64 %24, %add
  %maj_flt51 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 38
  %25 = load i64, i64* %maj_flt51, align 8
  %add52 = add i64 %25, %add42
  call void @thread_group_cputime_adjusted(%struct.task_struct* noundef %task, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #13
  %gtime53 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 30
  %26 = load i64, i64* %gtime53, align 8
  %add54 = add i64 %26, %add44
  br label %if.end55

if.end55:                                         ; preds = %do.end48, %if.end30
  %min_flt.1 = phi i64 [ %add50, %do.end48 ], [ 0, %if.end30 ]
  %maj_flt.1 = phi i64 [ %add52, %do.end48 ], [ 0, %if.end30 ]
  %gtime.1 = phi i64 [ %add54, %do.end48 ], [ 0, %if.end30 ]
  %call56 = call fastcc i32 @task_session_nr_ns(%struct.task_struct* noundef %task, %struct.pid_namespace* noundef %ns) #14
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 52
  %27 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %call57 = call fastcc i32 @task_tgid_nr_ns(%struct.task_struct* noundef %27, %struct.pid_namespace* noundef %ns) #14
  %call58 = call fastcc i32 @task_pgrp_nr_ns(%struct.task_struct* noundef %task, %struct.pid_namespace* noundef %ns) #14
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %task, i64* noundef nonnull %flags) #14
  %phi.cast = sext i32 %call57 to i64
  %phi.cast1 = sext i32 %call58 to i64
  %phi.cast2 = sext i32 %call56 to i64
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end18
  %tty_pgrp.1 = phi i32 [ %tty_pgrp.0, %if.end55 ], [ -1, %if.end18 ]
  %tty_nr.1 = phi i32 [ %tty_nr.0, %if.end55 ], [ 0, %if.end18 ]
  %ppid.0 = phi i64 [ %phi.cast, %if.end55 ], [ 0, %if.end18 ]
  %pgid.0 = phi i64 [ %phi.cast1, %if.end55 ], [ -1, %if.end18 ]
  %sid.0 = phi i64 [ %phi.cast2, %if.end55 ], [ -1, %if.end18 ]
  %num_threads.0 = phi i32 [ %call31, %if.end55 ], [ 0, %if.end18 ]
  %cmin_flt.0 = phi i64 [ %16, %if.end55 ], [ 0, %if.end18 ]
  %cmaj_flt.0 = phi i64 [ %17, %if.end55 ], [ 0, %if.end18 ]
  %min_flt.2 = phi i64 [ %min_flt.1, %if.end55 ], [ 0, %if.end18 ]
  %maj_flt.2 = phi i64 [ %maj_flt.1, %if.end55 ], [ 0, %if.end18 ]
  %cutime.0 = phi i64 [ %18, %if.end55 ], [ 0, %if.end18 ]
  %cstime.0 = phi i64 [ %19, %if.end55 ], [ 0, %if.end18 ]
  %cgtime.0 = phi i64 [ %20, %if.end55 ], [ 0, %if.end18 ]
  %gtime.2 = phi i64 [ %gtime.1, %if.end55 ], [ 0, %if.end18 ]
  %rsslim.0 = phi i64 [ %21, %if.end55 ], [ 0, %if.end18 ]
  br i1 %call1, label %land.lhs.true61, label %if.end67

land.lhs.true61:                                  ; preds = %if.end59
  %tobool62 = icmp eq i32 %whole, 0
  %cmp63 = icmp slt i32 %num_threads.0, 2
  %or.cond = select i1 %tobool62, i1 true, i1 %cmp63
  br i1 %or.cond, label %if.then65, label %if.end73

if.then65:                                        ; preds = %land.lhs.true61
  %call66 = call i64 @get_wchan(%struct.task_struct* noundef %task) #13
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end59
  %wchan.0 = phi i64 [ %call66, %if.then65 ], [ 0, %if.end59 ]
  %tobool68.not = icmp eq i32 %whole, 0
  br i1 %tobool68.not, label %if.then69, label %if.end73

if.then69:                                        ; preds = %if.end67
  %min_flt70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 75
  %28 = load i64, i64* %min_flt70, align 8
  %maj_flt71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 76
  %29 = load i64, i64* %maj_flt71, align 32
  call void @task_cputime_adjusted(%struct.task_struct* noundef %task, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #13
  %call72 = call fastcc i64 @task_gtime(%struct.task_struct* noundef %task) #14
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true61, %if.then69, %if.end67
  %wchan.09 = phi i64 [ %wchan.0, %if.end67 ], [ %wchan.0, %if.then69 ], [ 0, %land.lhs.true61 ]
  %min_flt.3 = phi i64 [ %min_flt.2, %if.end67 ], [ %28, %if.then69 ], [ %min_flt.2, %land.lhs.true61 ]
  %maj_flt.3 = phi i64 [ %maj_flt.2, %if.end67 ], [ %29, %if.then69 ], [ %maj_flt.2, %land.lhs.true61 ]
  %gtime.3 = phi i64 [ %gtime.2, %if.end67 ], [ %call72, %if.then69 ], [ %gtime.2, %land.lhs.true61 ]
  %call74 = call i32 @task_prio(%struct.task_struct* noundef %task) #13
  %call75 = call fastcc i32 @task_nice(%struct.task_struct* noundef %task) #14
  %start_boottime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 74
  %30 = load i64, i64* %start_boottime, align 16
  %call77 = call i64 @nsec_to_clock_t(i64 noundef %30) #13
  %call78 = call i32 @pid_nr_ns(%struct.pid* noundef %pid, %struct.pid_namespace* noundef %ns) #13
  %conv79 = sext i32 %call78 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef %conv79) #13
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0)) #13
  call void @proc_task_name(%struct.seq_file* noundef %m, %struct.task_struct* noundef %task, i1 noundef false) #14
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0)) #13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %7) #13
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %ppid.0) #13
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %pgid.0) #13
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %sid.0) #13
  %conv83 = sext i32 %tty_nr.1 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv83) #13
  %conv84 = sext i32 %tty_pgrp.1 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv84) #13
  %flags85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %31 = load i32, i32* %flags85, align 4
  %conv86 = zext i32 %31 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv86) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %min_flt.3) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %cmin_flt.0) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %maj_flt.3) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %cmaj_flt.0) #13
  %32 = load i64, i64* %utime, align 8
  %call87 = call i64 @nsec_to_clock_t(i64 noundef %32) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call87) #13
  %33 = load i64, i64* %stime, align 8
  %call88 = call i64 @nsec_to_clock_t(i64 noundef %33) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call88) #13
  %call89 = call i64 @nsec_to_clock_t(i64 noundef %cutime.0) #13
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call89) #13
  %call90 = call i64 @nsec_to_clock_t(i64 noundef %cstime.0) #13
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call90) #13
  %conv91 = sext i32 %call74 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv91) #13
  %conv92 = sext i32 %call75 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv92) #13
  %conv93 = sext i32 %num_threads.0 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv93) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 0) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call77) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %vsize.0) #13
  br i1 %tobool, label %cond.true, label %cond.end104.critedge

cond.true:                                        ; preds = %if.end73
  %call95 = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef nonnull %call2) #14
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call95) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %rsslim.0) #13
  br i1 %call1, label %cond.true109, label %cond.end104.thread

cond.end104.critedge:                             ; preds = %if.end73
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 0) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %rsslim.0) #13
  br label %cond.end104.thread

cond.end104.thread:                               ; preds = %cond.true, %cond.end104.critedge
  %cond105.ph = phi i64 [ 0, %cond.end104.critedge ], [ 1, %cond.true ]
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %cond105.ph) #13
  %.mux611 = zext i1 %tobool to i64
  br label %cond.end114

cond.true109:                                     ; preds = %cond.true
  %start_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 28
  %34 = load i64, i64* %start_code, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %34) #13
  %end_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 29
  %35 = load i64, i64* %end_code, align 8
  br label %cond.end114

cond.end114:                                      ; preds = %cond.end104.thread, %cond.true109
  %cond115 = phi i64 [ %35, %cond.true109 ], [ %.mux611, %cond.end104.thread ]
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %cond115) #13
  %or.cond161 = select i1 %call1, i1 %tobool, i1 false
  br i1 %or.cond161, label %cond.true119, label %cond.end121

cond.true119:                                     ; preds = %cond.end114
  %start_stack = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 34
  %36 = load i64, i64* %start_stack, align 8
  br label %cond.end121

cond.end121:                                      ; preds = %cond.end114, %cond.true119
  %cond122 = phi i64 [ %36, %cond.true119 ], [ 0, %cond.end114 ]
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %cond122) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %esp.0) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %eip.0) #13
  %arrayidx125 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 92, i32 1, i32 0, i64 0
  %37 = load i64, i64* %arrayidx125, align 16
  %and126 = and i64 %37, 2147483647
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %and126) #13
  %arrayidx128 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 89, i32 0, i64 0
  %38 = load i64, i64* %arrayidx128, align 8
  %and129 = and i64 %38, 2147483647
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %and129) #13
  %39 = load i64, i64* %1, align 8
  %and132 = and i64 %39, 2147483647
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %and132) #13
  %40 = load i64, i64* %3, align 8
  %and135 = and i64 %40, 2147483647
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %and135) #13
  %tobool136.not = icmp eq i64 %wchan.09, 0
  %. = select i1 %tobool136.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0)
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %.) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 0) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 0) #13
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 41
  %41 = load i32, i32* %exit_signal, align 4
  %conv139 = sext i32 %41 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv139) #13
  %call140 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #14
  %conv141 = zext i32 %call140 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv141) #13
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 18
  %42 = load i32, i32* %rt_priority, align 16
  %conv142 = zext i32 %42 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv142) #13
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 23
  %43 = load i32, i32* %policy, align 16
  %conv143 = zext i32 %43 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv143) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 0) #13
  %call145 = call i64 @nsec_to_clock_t(i64 noundef %gtime.3) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call145) #13
  %call146 = call i64 @nsec_to_clock_t(i64 noundef %cgtime.0) #13
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call146) #13
  %or.cond162 = select i1 %tobool, i1 %call1, i1 false
  br i1 %or.cond162, label %if.then150, label %if.else151

if.then150:                                       ; preds = %cond.end121
  %start_data = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 30
  %44 = load i64, i64* %start_data, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %44) #13
  %end_data = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 31
  %45 = load i64, i64* %end_data, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %45) #13
  %start_brk = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 32
  %46 = load i64, i64* %start_brk, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %46) #13
  %arg_start = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 35
  %47 = load i64, i64* %arg_start, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %47) #13
  %arg_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 36
  %48 = load i64, i64* %arg_end, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %48) #13
  %env_start = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 37
  %49 = load i64, i64* %env_start, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %49) #13
  %env_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 38
  %50 = load i64, i64* %env_end, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %50) #13
  br label %if.end152

if.else151:                                       ; preds = %cond.end121
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0)) #13
  br label %if.end152

if.end152:                                        ; preds = %if.else151, %if.then150
  br i1 %call1, label %if.then154, label %if.else156

if.then154:                                       ; preds = %if.end152
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 40
  %51 = load i32, i32* %exit_code, align 8
  %conv155 = sext i32 %51 to i64
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv155) #13
  br label %if.end157

if.else156:                                       ; preds = %if.end152
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #13
  br label %if.end157

if.end157:                                        ; preds = %if.else156, %if.then154
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  br i1 %tobool, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end157
  call void @mmput(%struct.mm_struct* noundef nonnull %call2) #13
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end157
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_tgid_stat(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  call fastcc void @do_task_stat(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %ns, %struct.pid* noundef %pid, %struct.task_struct* noundef %task, i32 noundef 1) #14
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_pid_statm(%struct.seq_file* noundef %m, %struct.pid_namespace* nocapture noundef readnone %ns, %struct.pid* nocapture noundef readnone %pid, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %resident = alloca i64, align 8
  %shared = alloca i64, align 8
  %text = alloca i64, align 8
  %data = alloca i64, align 8
  %call = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %task) #13
  %tobool.not = icmp eq %struct.mm_struct* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %resident to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %resident, align 8
  %1 = bitcast i64* %shared to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store i64 0, i64* %shared, align 8
  %2 = bitcast i64* %text to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i64 0, i64* %text, align 8
  %3 = bitcast i64* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store i64 0, i64* %data, align 8
  %call1 = call i64 @task_statm(%struct.mm_struct* noundef nonnull %call, i64* noundef nonnull %shared, i64* noundef nonnull %text, i64* noundef nonnull %data, i64* noundef nonnull %resident) #13
  call void @mmput(%struct.mm_struct* noundef nonnull %call) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef %call1) #13
  %4 = load i64, i64* %resident, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %4) #13
  %5 = load i64, i64* %shared, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %5) #13
  %6 = load i64, i64* %text, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %6) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 0) #13
  %7 = load i64, i64* %data, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %7) #13
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 0) #13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @seq_write(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 noundef 14) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @task_statm(%struct.mm_struct* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(%struct.seq_file* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pid_alive(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  %cmp = icmp ne %struct.pid* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_tgid_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 1, %struct.pid_namespace* noundef %ns) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @ptrace_parent(%struct.task_struct* noundef %task) unnamed_addr #5 {
entry:
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 53
  %1 = load volatile %struct.task_struct*, %struct.task_struct** %parent, align 16
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.task_struct* [ %1, %if.then ], [ null, %entry ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef %ns) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @get_task_cred(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @get_task_state(%struct.task_struct* noundef %tsk) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @task_state_index(%struct.task_struct* noundef %tsk) #14
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @task_state_array, i64 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(%struct.pid* noundef, %struct.pid_namespace* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kuid_munged(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #14
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowuid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kgid_munged(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #14
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowgid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #13
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !11
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  call void @rcu_read_unlock_strict() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_state_index(%struct.task_struct* noundef %tsk) unnamed_addr #6 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 39
  %1 = load i32, i32* %exit_state, align 4
  %or = or i32 %1, %0
  %and = and i32 %or, 127
  %cmp = icmp eq i32 %0, 1026
  %spec.store.select = select i1 %cmp, i32 128, i32 %and
  %tobool.not.i = icmp eq i32 %spec.store.select, 0
  %2 = call i32 @llvm.ctlz.i32(i32 %spec.store.select, i1 false) #12, !range !15
  %narrow.i = sub nuw nsw i32 32, %2
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  ret i32 %narrow3.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !16
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @sigemptyset(%struct.sigset_t* nocapture noundef writeonly %set) unnamed_addr #9 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  store i64 0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) #13
  ret %struct.sighand_struct* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @collect_sigign_sigcatch(%struct.task_struct* nocapture noundef readonly %p, %struct.sigset_t* nocapture noundef %sigign, %struct.sigset_t* nocapture noundef %sigcatch) unnamed_addr #10 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %arraydecay = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 3, i64 0
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.015 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %k.014 = phi %struct.k_sigaction* [ %arraydecay, %entry ], [ %incdec.ptr, %for.inc ]
  %sa_handler = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %k.014, i64 0, i32 0, i32 0
  %1 = load void (i32)*, void (i32)** %sa_handler, align 8
  %magicptr = ptrtoint void (i32)* %1 to i64
  switch i64 %magicptr, label %if.then5 [
    i64 1, label %for.inc.sink.split
    i64 0, label %for.inc
  ]

if.then5:                                         ; preds = %for.body
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.body, %if.then5
  %sigign.sink = phi %struct.sigset_t* [ %sigcatch, %if.then5 ], [ %sigign, %for.body ]
  call fastcc void @sigaddset(%struct.sigset_t* noundef %sigign.sink, i32 noundef %i.015) #14
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %incdec.ptr = getelementptr %struct.k_sigaction, %struct.k_sigaction* %k.014, i64 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_nr_threads(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #4 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %nr_threads = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 2
  %1 = load i32, i32* %nr_threads, align 8
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_ucounts_value(%struct.ucounts* noundef %ucounts) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr %struct.ucounts, %struct.ucounts* %ucounts, i64 0, i32 4, i64 10, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 11, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_task_sighand(%struct.task_struct* nocapture noundef readonly %task, i64* nocapture noundef readonly %flags) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %1 = load i64, i64* %flags, align 8
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigaddset(%struct.sigset_t* nocapture noundef %set, i32 noundef %_sig) unnamed_addr #11 {
entry:
  %sub = add i32 %_sig, -1
  %conv3 = zext i32 %sub to i64
  %shl = shl nuw i64 1, %conv3
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %or = or i64 %0, %shl
  store i64 %or, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @render_cap_t(%struct.seq_file* noundef %m, i8* noundef %header, %struct.kernel_cap_struct* nocapture noundef readonly %a) unnamed_addr #0 {
entry:
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %header) #13
  %arrayidx = getelementptr %struct.kernel_cap_struct, %struct.kernel_cap_struct* %a, i64 0, i32 0, i64 1
  %0 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %0 to i64
  call void @seq_put_hex_ll(%struct.seq_file* noundef %m, i8* noundef null, i64 noundef %conv, i32 noundef 8) #13
  %arrayidx.1 = getelementptr %struct.kernel_cap_struct, %struct.kernel_cap_struct* %a, i64 0, i32 0, i64 0
  %1 = load i32, i32* %arrayidx.1, align 4
  %conv.1 = zext i32 %1 to i64
  call void @seq_put_hex_ll(%struct.seq_file* noundef %m, i8* noundef null, i64 noundef %conv.1, i32 noundef 8) #13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_hex_ll(%struct.seq_file* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @task_no_new_privs(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  %0 = load volatile i64, i64* %atomic_flags, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prctl_spec_ctrl_get(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptrace_may_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @task_vsize(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @try_get_task_stack(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %stack_refcount = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 136
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %stack_refcount) #14
  br i1 %call, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %tsk) #14
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #4 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @user_stack_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 31
  %cmp = icmp eq i64 %and, 16
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 13
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %retval.0.in = select i1 %cmp, i64* %arrayidx, i64* %2
  %retval.0 = load i64, i64* %retval.0.in, align 8
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_stack(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_devnum(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @task_gtime(%struct.task_struct* nocapture noundef readonly %t) unnamed_addr #4 {
entry:
  %gtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 69
  %0 = load i64, i64* %gtime, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -69, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(%struct.task_struct* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_session_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 3, %struct.pid_namespace* noundef %ns) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pgrp_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 2, %struct.pid_namespace* noundef %ns) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_wchan(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_cputime_adjusted(%struct.task_struct* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_prio(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_nice(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %0 = load i32, i32* %static_prio, align 8
  %sub = add i32 %0, -120
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ll(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #14
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #14
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #14
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #14
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #14
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #14
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #13
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !8

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !8

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #12, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #5 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2149489033}
!10 = !{i64 2149737583}
!11 = !{i64 2147904695, i64 2147904728, i64 2147904781, i64 2147904840, i64 2147904874, i64 2147904929, i64 2147904958, i64 2147904978}
!12 = !{i64 2149744864}
!13 = !{i64 2149691712}
!14 = !{i64 2149489250}
!15 = !{i32 0, i32 33}
!16 = !{i64 2147815345, i64 2147815993, i64 2147816023, i64 2147816055, i64 2147816089, i64 2147816125, i64 2147816150}
!17 = !{i64 2149748425}
!18 = !{i64 2149309954, i64 2149310001, i64 2149310007, i64 2149310044, i64 2149310062, i64 2149311373, i64 2149311421, i64 2149311469, i64 2149311532, i64 2149311581, i64 2149310140, i64 2149310165, i64 2149310191, i64 2149310197, i64 2149311039, i64 2149311079, i64 2149311097, i64 2149311129, i64 2149311157, i64 2149311211, i64 2149311231, i64 2149311328, i64 2149310220, i64 2149310234, i64 2149310240, i64 2149310290, i64 2149310336, i64 2149310369}
!19 = !{i64 2147894096, i64 2147894129, i64 2147894181, i64 2147894240, i64 2147894274, i64 2147894329, i64 2147894358, i64 2147894378}
