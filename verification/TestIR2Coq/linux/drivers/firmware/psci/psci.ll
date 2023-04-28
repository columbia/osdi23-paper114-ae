; ModuleID = 'drivers/firmware/psci/psci.c'
source_filename = "drivers/firmware/psci/psci.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.psci_0_1_function_ids = type { i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.psci_operations = type { i32 ()*, i32 (i32, i64)*, i32 (i32)*, i32 (i64, i64)*, i32 (i64)*, i32 (i64, i64)*, i32 ()* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.38, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.38 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.68 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.79, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.79 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
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
%struct.kref = type { %struct.refcount_struct }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
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
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
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
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.78, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { %struct.file_operations* }
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
%union.anon.78 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.62, %struct.qspinlock }
%union.anon.62 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.69 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.arm_smccc_res = type { i64, i64, i64, i64 }
%struct.arm_smccc_quirk = type { i32, %union.anon.80 }
%union.anon.80 = type { i64 }

@resident_cpu = internal unnamed_addr global i32 -1, align 4
@psci_0_1_function_ids = internal unnamed_addr global %struct.psci_0_1_function_ids zeroinitializer, align 8
@psci_cpu_suspend_feature = internal unnamed_addr global i32 0, align 4
@invoke_psci_fn = internal unnamed_addr global i64 (i64, i64, i64, i64)* null, align 8
@psci_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*)* @psci_0_1_init to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci-0.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*)* @psci_0_2_init to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*)* @psci_1_0_init to i8*) }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 8
@psci_ops = dso_local local_unnamed_addr global %struct.psci_operations zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"\016psci: Using PSCI v0.1 Function IDs from DT\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cpu_suspend\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cpu_off\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cpu_on\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"migrate\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\016psci: probing for conduit method from DT.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\014psci: missing \22method\22 property\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"hvc\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\014psci: invalid \22method\22 property: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Unexpected PSCI conduit %d\0A\00", align 1
@psci_conduit = internal unnamed_addr global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"\016psci: PSCIv%d.%d detected in firmware.\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"\013psci: Conflicting PSCI version detected.\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"\016psci: Using standard PSCI v0.2 function IDs\0A\00", align 1
@psci_sys_reset_nb = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @psci_sys_reset, %struct.notifier_block* null, i32 129 }, align 8
@pm_power_off = external dso_local local_unnamed_addr global void ()*, align 8
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@psci_system_reset2_supported = internal unnamed_addr global i1 false, align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"\016psci: Trusted OS migration not required\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"\016psci: MIGRATE_INFO_TYPE not supported.\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"\013psci: MIGRATE_INFO_TYPE returned unknown type (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"\014psci: MIGRATE_INFO_UP_CPU reported invalid physical ID (0x%lx)\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"\016psci: Trusted OS resident on physical CPU 0x%lx\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [39 x i8] c"\016psci: SMC Calling Convention v%d.%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"\016psci: OSI mode supported.\0A\00", align 1
@switch.table.psci_to_linux_errno = private unnamed_addr constant [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @psci_tos_resident_on(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @resident_cpu, align 4
  %cmp = icmp eq i32 %0, %cpu
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local [2 x i64] @get_psci_0_1_function_ids() local_unnamed_addr #0 {
entry:
  %retval.sroa.0.0.copyload = load i64, i64* bitcast (%struct.psci_0_1_function_ids* @psci_0_1_function_ids to i64*), align 8
  %retval.sroa.2.0.copyload = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 2) to i64*), align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %retval.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %retval.sroa.2.0.copyload, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @psci_has_osi_support() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @psci_cpu_suspend_feature, align 4
  %1 = and i32 %0, 1
  %tobool = icmp ne i32 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @psci_power_state_is_valid(i32 noundef %state) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @psci_has_ext_power_state() #8
  %neg = select i1 %call, i32 -1342177280, i32 -50462720
  %and = and i32 %neg, %state
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @psci_has_ext_power_state() unnamed_addr #0 {
entry:
  %0 = load i32, i32* @psci_cpu_suspend_feature, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @psci_set_osi_mode(i1 noundef %enable) local_unnamed_addr #2 {
entry:
  %0 = zext i1 %enable to i64
  %1 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call = call i64 %1(i64 noundef 2214592527, i64 noundef %0, i64 noundef 0, i64 noundef 0) #9, !callees !7
  %conv1 = trunc i64 %call to i32
  %call2 = call fastcc i32 @psci_to_linux_errno(i32 noundef %conv1) #8
  ret i32 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @psci_to_linux_errno(i32 noundef %errno) unnamed_addr #3 {
entry:
  %switch.tableidx = add i32 %errno, 9
  %0 = icmp ult i32 %switch.tableidx, 10
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [10 x i32], [10 x i32]* @switch.table.psci_to_linux_errno, i64 0, i64 %1
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @psci_dt_init() local_unnamed_addr #4 section ".init.text" {
entry:
  %matched_np = alloca %struct.of_device_id*, align 8
  %0 = bitcast %struct.of_device_id** %matched_np to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.of_device_id* null, %struct.of_device_id** %matched_np, align 8, !annotation !8
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef null, %struct.of_device_id* noundef getelementptr inbounds ([4 x %struct.of_device_id], [4 x %struct.of_device_id]* @psci_of_match, i64 0, i64 0), %struct.of_device_id** noundef nonnull %matched_np) #9
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %call) #9
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.of_device_id*, %struct.of_device_id** %matched_np, align 8
  %data = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %1, i64 0, i32 3
  %2 = bitcast i8** %data to i32 (%struct.device_node*)**
  %3 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** %2, align 8
  %call2 = call i32 %3(%struct.device_node* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %lor.lhs.false ], [ -19, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef, %struct.of_device_id* noundef, %struct.of_device_id** noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @psci_0_1_init(%struct.device_node* noundef %np) #4 section ".init.text" {
entry:
  %id = alloca i32, align 4
  %0 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %id, align 4, !annotation !8
  %call = call fastcc i32 @get_set_conduit_method(%struct.device_node* noundef %np) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %cleanup

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0)) #11
  store i32 ()* @psci_0_1_get_version, i32 ()** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 0), align 8
  %call2 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %id) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  %1 = load i32, i32* %id, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 0), align 8
  store i32 (i32, i64)* @psci_0_1_cpu_suspend, i32 (i32, i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 1), align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end
  %call6 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %id) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %2 = load i32, i32* %id, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 2), align 8
  store i32 (i32)* @psci_0_1_cpu_off, i32 (i32)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 2), align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %call10 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %id) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %3 = load i32, i32* %id, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 1), align 4
  store i32 (i64, i64)* @psci_0_1_cpu_on, i32 (i64, i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 3), align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %call14 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %id) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end13
  %4 = load i32, i32* %id, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 3), align 4
  store i32 (i64)* @psci_0_1_migrate, i32 (i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 4), align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then16, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @psci_0_2_init(%struct.device_node* noundef %np) #4 section ".init.text" {
entry:
  %call = call fastcc i32 @get_set_conduit_method(%struct.device_node* noundef %np) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @psci_probe() #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @psci_1_0_init(%struct.device_node* noundef %np) #4 section ".init.text" {
entry:
  %call = call i32 @psci_0_2_init(%struct.device_node* noundef %np) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i1 @psci_has_osi_support() #8
  br i1 %call1, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #11
  %call4 = call i32 @psci_set_osi_mode(i1 noundef false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_set_conduit_method(%struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %method = alloca i8*, align 8
  %0 = bitcast i8** %method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i8* null, i8** %method, align 8, !annotation !8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #11
  %call1 = call i32 @of_property_read_string(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** noundef nonnull %method) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %method, align 8
  %call7 = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call fastcc void @set_conduit(i32 noundef 2) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %2 = load i8*, i8** %method, align 8
  %call10 = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %2) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %do.end16

if.then12:                                        ; preds = %if.else
  call fastcc void @set_conduit(i32 noundef 1) #8
  br label %cleanup

do.end16:                                         ; preds = %if.else
  %3 = load i8*, i8** %method, align 8
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then12, %do.end16, %do.end4
  %retval.0 = phi i32 [ -6, %do.end4 ], [ -22, %do.end16 ], [ 0, %if.then12 ], [ 0, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @psci_0_1_get_version() #3 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_1_cpu_suspend(i32 noundef %state, i64 noundef %entry_point) #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 0), align 8
  %call = call fastcc i32 @__psci_cpu_suspend(i32 noundef %0, i32 noundef %state, i64 noundef %entry_point) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_1_cpu_off(i32 noundef %state) #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 2), align 8
  %call = call fastcc i32 @__psci_cpu_off(i32 noundef %0, i32 noundef %state) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_1_cpu_on(i64 noundef %cpuid, i64 noundef %entry_point) #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 1), align 4
  %call = call fastcc i32 @__psci_cpu_on(i32 noundef %0, i64 noundef %cpuid, i64 noundef %entry_point) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_1_migrate(i64 noundef %cpuid) #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.psci_0_1_function_ids, %struct.psci_0_1_function_ids* @psci_0_1_function_ids, i64 0, i32 3), align 4
  %call = call fastcc i32 @__psci_migrate(i32 noundef %0, i64 noundef %cpuid) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(%struct.device_node* noundef, i8* noundef, i8** noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_conduit(i32 noundef %conduit) unnamed_addr #2 {
entry:
  switch i32 %conduit, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i64 (i64, i64, i64, i64)* @__invoke_psci_fn_hvc, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i64 (i64, i64, i64, i64)* @__invoke_psci_fn_smc, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conduit) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/firmware/psci/psci.c\22; .popsection; .long 14472b - 14470b; .short 271; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  store i32 %conduit, i32* @psci_conduit, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @__invoke_psci_fn_hvc(i64 noundef %function_id, i64 noundef %arg0, i64 noundef %arg1, i64 noundef %arg2) #2 {
entry:
  %res = alloca %struct.arm_smccc_res, align 8
  %0 = bitcast %struct.arm_smccc_res* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  call void @__arm_smccc_hvc(i64 noundef %function_id, i64 noundef %arg0, i64 noundef %arg1, i64 noundef %arg2, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, %struct.arm_smccc_res* noundef nonnull %res, %struct.arm_smccc_quirk* noundef null) #9
  %a0 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 0
  %1 = load i64, i64* %a0, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @__invoke_psci_fn_smc(i64 noundef %function_id, i64 noundef %arg0, i64 noundef %arg1, i64 noundef %arg2) #2 {
entry:
  %res = alloca %struct.arm_smccc_res, align 8
  %0 = bitcast %struct.arm_smccc_res* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  call void @__arm_smccc_smc(i64 noundef %function_id, i64 noundef %arg0, i64 noundef %arg1, i64 noundef %arg2, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, %struct.arm_smccc_res* noundef nonnull %res, %struct.arm_smccc_quirk* noundef null) #9
  %a0 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 0
  %1 = load i64, i64* %a0, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_hvc(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, %struct.arm_smccc_res* noundef, %struct.arm_smccc_quirk* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, %struct.arm_smccc_res* noundef, %struct.arm_smccc_quirk* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values) unnamed_addr #2 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #9
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__psci_cpu_suspend(i32 noundef %fn, i32 noundef %state, i64 noundef %entry_point) unnamed_addr #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %conv = zext i32 %fn to i64
  %conv1 = zext i32 %state to i64
  %call = call i64 %0(i64 noundef %conv, i64 noundef %conv1, i64 noundef %entry_point, i64 noundef 0) #9, !callees !7
  %conv2 = trunc i64 %call to i32
  %call3 = call fastcc i32 @psci_to_linux_errno(i32 noundef %conv2) #8
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__psci_cpu_off(i32 noundef %fn, i32 noundef %state) unnamed_addr #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %conv = zext i32 %fn to i64
  %conv1 = zext i32 %state to i64
  %call = call i64 %0(i64 noundef %conv, i64 noundef %conv1, i64 noundef 0, i64 noundef 0) #9, !callees !7
  %conv2 = trunc i64 %call to i32
  %call3 = call fastcc i32 @psci_to_linux_errno(i32 noundef %conv2) #8
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__psci_cpu_on(i32 noundef %fn, i64 noundef %cpuid, i64 noundef %entry_point) unnamed_addr #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %conv = zext i32 %fn to i64
  %call = call i64 %0(i64 noundef %conv, i64 noundef %cpuid, i64 noundef %entry_point, i64 noundef 0) #9, !callees !7
  %conv1 = trunc i64 %call to i32
  %call2 = call fastcc i32 @psci_to_linux_errno(i32 noundef %conv1) #8
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__psci_migrate(i32 noundef %fn, i64 noundef %cpuid) unnamed_addr #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %conv = zext i32 %fn to i64
  %call = call i64 %0(i64 noundef %conv, i64 noundef %cpuid, i64 noundef 0, i64 noundef 0) #9, !callees !7
  %conv1 = trunc i64 %call to i32
  %call2 = call fastcc i32 @psci_to_linux_errno(i32 noundef %conv1) #8
  ret i32 %call2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @psci_probe() unnamed_addr #4 section ".init.text" {
entry:
  %call = call i32 @psci_0_2_get_version() #8
  %shr = lshr i32 %call, 16
  %and1 = and i32 %call, 65535
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 noundef %shr, i32 noundef %and1) #11
  %cmp = icmp ult i32 %call, 65536
  %cmp6 = icmp ult i32 %and1, 2
  %or.cond = and i1 %cmp, %cmp6
  br i1 %or.cond, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0)) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @psci_0_2_set_functions() #12
  call fastcc void @psci_init_migrate() #12
  br i1 %cmp, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.end
  call fastcc void @psci_init_smccc() #12
  call fastcc void @psci_init_cpu_suspend() #12
  call fastcc void @psci_init_system_reset2() #12
  call void @kvm_init_hyp_services() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then15, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ 0, %if.then15 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_2_get_version() #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call = call i64 %0(i64 noundef 2214592512, i64 noundef 0, i64 noundef 0, i64 noundef 0) #9, !callees !7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @psci_0_2_set_functions() unnamed_addr #4 section ".init.text" {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0)) #11
  store i32 ()* @psci_0_2_get_version, i32 ()** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 0), align 8
  store i32 (i32, i64)* @psci_0_2_cpu_suspend, i32 (i32, i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 1), align 8
  store i32 (i32)* @psci_0_2_cpu_off, i32 (i32)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 2), align 8
  store i32 (i64, i64)* @psci_0_2_cpu_on, i32 (i64, i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 3), align 8
  store i32 (i64)* @psci_0_2_migrate, i32 (i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 4), align 8
  store i32 (i64, i64)* @psci_affinity_info, i32 (i64, i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 5), align 8
  store i32 ()* @psci_migrate_info_type, i32 ()** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 6), align 8
  %call1 = call i32 @register_restart_handler(%struct.notifier_block* noundef nonnull @psci_sys_reset_nb) #9
  store void ()* @psci_sys_poweroff, void ()** @pm_power_off, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @psci_init_migrate() unnamed_addr #4 section ".init.text" {
entry:
  %0 = load i32 ()*, i32 ()** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 6), align 8
  %call = call i32 %0() #9
  switch i32 %call, label %if.end9 [
    i32 2, label %do.end
    i32 -1, label %do.end6
  ]

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0)) #11
  br label %cleanup

do.end6:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0)) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %.not = icmp ult i32 %call, 2
  br i1 %.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end9
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call19 = call fastcc i64 @psci_migrate_info_up_cpu() #8
  %and = and i64 %call19, -1095233437696
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end18
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i64 0, i64 0), i64 noundef %call19) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call27 = call fastcc i32 @get_logical_index(i64 noundef %call19) #8
  %cmp28 = icmp sgt i32 %call27, -1
  %cond = select i1 %cmp28, i32 %call27, i32 -1
  store i32 %cond, i32* @resident_cpu, align 4
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0), i64 noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end23, %do.end15, %do.end6, %do.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @psci_init_smccc() unnamed_addr #4 section ".init.text" {
entry:
  %call = call fastcc i32 @psci_features(i32 noundef -2147483648) #12
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call1 = call i64 %0(i64 noundef 2147483648, i64 noundef 0, i64 noundef 0, i64 noundef 0) #9, !callees !7
  %conv = trunc i64 %call1 to i32
  %cmp2 = icmp ugt i32 %conv, 65536
  br i1 %cmp2, label %if.then4, label %do.end

if.then4:                                         ; preds = %if.then
  %1 = load i32, i32* @psci_conduit, align 4
  call void @arm_smccc_version_init(i32 noundef %conv, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %if.then4, %entry
  %ver.1 = phi i32 [ 65536, %entry ], [ %conv, %if.then4 ], [ 65536, %if.then ]
  %shr = lshr i32 %ver.1, 16
  %and6 = and i32 %ver.1, 65535
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 noundef %shr, i32 noundef %and6) #11
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @psci_init_cpu_suspend() unnamed_addr #4 section ".init.text" {
entry:
  %call = call fastcc i32 @psci_features(i32 noundef -1006632959) #12
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 %call, i32* @psci_cpu_suspend_feature, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @psci_init_system_reset2() unnamed_addr #4 section ".init.text" {
entry:
  %call = call fastcc i32 @psci_features(i32 noundef -1006632942) #12
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @psci_system_reset2_supported, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvm_init_hyp_services() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_2_cpu_suspend(i32 noundef %state, i64 noundef %entry_point) #2 {
entry:
  %call = call fastcc i32 @__psci_cpu_suspend(i32 noundef -1006632959, i32 noundef %state, i64 noundef %entry_point) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_2_cpu_off(i32 noundef %state) #2 {
entry:
  %call = call fastcc i32 @__psci_cpu_off(i32 noundef -2080374782, i32 noundef %state) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_2_cpu_on(i64 noundef %cpuid, i64 noundef %entry_point) #2 {
entry:
  %call = call fastcc i32 @__psci_cpu_on(i32 noundef -1006632957, i64 noundef %cpuid, i64 noundef %entry_point) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_0_2_migrate(i64 noundef %cpuid) #2 {
entry:
  %call = call fastcc i32 @__psci_migrate(i32 noundef -1006632955, i64 noundef %cpuid) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_affinity_info(i64 noundef %target_affinity, i64 noundef %lowest_affinity_level) #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call = call i64 %0(i64 noundef 3288334340, i64 noundef %target_affinity, i64 noundef %lowest_affinity_level, i64 noundef 0) #9, !callees !7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_migrate_info_type() #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call = call i64 %0(i64 noundef 2214592518, i64 noundef 0, i64 noundef 0, i64 noundef 0) #9, !callees !7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(%struct.notifier_block* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @psci_sys_poweroff() #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call = call i64 %0(i64 noundef 2214592520, i64 noundef 0, i64 noundef 0, i64 noundef 0) #9, !callees !7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @psci_sys_reset(%struct.notifier_block* nocapture noundef readnone %nb, i64 noundef %action, i8* nocapture noundef readnone %data) #2 {
entry:
  %0 = load i32, i32* @reboot_mode, align 4
  %1 = and i32 %0, -3
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %.b3 = load i1, i1* @psci_system_reset2_supported, align 1
  br i1 %.b3, label %if.end, label %if.else

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %.sink = phi i64 [ 2214592521, %if.else ], [ 3288334354, %land.lhs.true ]
  %3 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call2 = call i64 %3(i64 noundef %.sink, i64 noundef 0, i64 noundef 0, i64 noundef 0) #9
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @psci_migrate_info_up_cpu() unnamed_addr #2 {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %call = call i64 %0(i64 noundef 3288334343, i64 noundef 0, i64 noundef 0, i64 noundef 0) #9, !callees !7
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_logical_index(i64 noundef %mpidr) unnamed_addr #2 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp6.not = icmp eq i32 %0, 0
  br i1 %cmp6.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %cpu.07 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call = call i64 @cpu_logical_map(i32 noundef %cpu.07) #9
  %cmp1 = icmp eq i64 %call, %mpidr
  br i1 %cmp1, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %cpu.07, 1
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %for.inc ], [ %cpu.07, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpu_logical_map(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @psci_features(i32 noundef %psci_func_id) unnamed_addr #4 section ".init.text" {
entry:
  %0 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** @invoke_psci_fn, align 8
  %conv = zext i32 %psci_func_id to i64
  %call = call i64 %0(i64 noundef 2214592522, i64 noundef %conv, i64 noundef 0, i64 noundef 0) #9, !callees !7
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @arm_smccc_version_init(i32 noundef, i32 noundef) local_unnamed_addr #6 section ".init.text"

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { cold nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 (i64, i64, i64, i64)* @__invoke_psci_fn_hvc, i64 (i64, i64, i64, i64)* @__invoke_psci_fn_smc}
!8 = !{!"auto-init"}
!9 = !{i64 2155702030}
