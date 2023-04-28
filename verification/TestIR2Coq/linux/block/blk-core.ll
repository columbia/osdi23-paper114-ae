; ModuleID = 'block/blk-core.c'
source_filename = "block/blk-core.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.82 = type { i32, i8* }
%struct.kmem_cache = type opaque
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.71, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.71 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.21, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.26, i32 }
%union.anon.26 = type { %struct.kuid_t }
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
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kgid_t = type { i32 }
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.40, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.40 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.4, %union.anon.70, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.70 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.72, %union.anon.73, %union.anon.74, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.77, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.3, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.3 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.cpumask = type { [4 x i64] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%union.anon.74 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.77 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.41, %union.anon.42, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.2, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.2 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.56, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
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
%struct.kernel_siginfo = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.55, i32, [12 x i8] }
%union.anon.55 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.57, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.57 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.22, i8* }
%union.anon.22 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36, [48 x i8] }
%struct.anon.36 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.58, %struct.list_head, %struct.list_head, %union.anon.59 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.58 = type { %struct.list_head }
%union.anon.59 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.60 }
%union.anon.60 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.62 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.81 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.66 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.64, %struct.qspinlock }
%union.anon.64 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.66 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.vm_event_state = type { [53 x i64] }
%struct.req_iterator = type { %struct.bvec_iter, %struct.bio* }
%struct.blk_plug_cb = type { %struct.list_head, void (%struct.blk_plug_cb*, i1)*, i8* }

@blk_queue_ida = dso_local global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@blk_op_name = internal unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)], align 8
@blk_errors = internal unnamed_addr constant [17 x %struct.anon.82] [%struct.anon.82 { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0) }, %struct.anon.82 { i32 -95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon.82 { i32 -110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0) }, %struct.anon.82 { i32 -28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon.82 { i32 -67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0) }, %struct.anon.82 { i32 -121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0) }, %struct.anon.82 { i32 -52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.anon.82 { i32 -61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon.82 { i32 -84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0) }, %struct.anon.82 { i32 -12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon.82 { i32 -5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0) }, %struct.anon.82 { i32 -78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0) }, %struct.anon.82 { i32 -11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0) }, %struct.anon.82 { i32 -16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0) }, %struct.anon.82 zeroinitializer, %struct.anon.82 { i32 -109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0) }, %struct.anon.82 { i32 -75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }], align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"\016%s: dev %s: flags=%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\016  sector %llu, nr/cnr %u/%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\016  bio %p, biotail %p, len %u\0A\00", align 1
@blk_requestq_cachep = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@blk_queue_ktype = external dso_local global %struct.kobj_type, align 8
@blk_alloc_queue.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"&q->debugfs_mutex\00", align 1
@blk_alloc_queue.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"&q->sysfs_lock\00", align 1
@blk_alloc_queue.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"&q->sysfs_dir_lock\00", align 1
@blk_alloc_queue.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"&q->mq_freeze_wq\00", align 1
@blk_alloc_queue.__key.12 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"&q->mq_freeze_lock\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__func__.blk_update_request = private unnamed_addr constant [19 x i8] c"blk_update_request\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"request botched\00", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 8
@kblockd_workqueue = internal unnamed_addr global %struct.workqueue_struct* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"kblockd\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Failed to create kblockd\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"request_queue\00", align 1
@blk_debugfs_root = dso_local local_unnamed_addr global %struct.dentry* null, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"FLUSH\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"DISCARD\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SECURE_ERASE\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"WRITE_SAME\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"WRITE_ZEROES\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"ZONE_OPEN\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"ZONE_CLOSE\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ZONE_FINISH\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"ZONE_APPEND\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"ZONE_RESET\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"ZONE_RESET_ALL\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"DRV_IN\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"DRV_OUT\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"operation not supported\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"critical space allocation\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"recoverable transport\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"critical target\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"critical nexus\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"critical medium\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"protection\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"kernel resource\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"dm internal retry\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"nonblocking retry\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"device resource\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"open zones exceeded\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"active zones exceeded\00", align 1
@bio_check_ro.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = private unnamed_addr constant [58 x i8] c"Trying to write to read-only block-device %s (partno %d)\0A\00", align 1
@handle_bad_sector._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.handle_bad_sector = private unnamed_addr constant [18 x i8] c"handle_bad_sector\00", align 1
@.str.52 = private unnamed_addr constant [75 x i8] c"\016attempt to access beyond end of device\0A%s: rw=%d, want=%llu, limit=%llu\0A\00", align 1
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@.str.53 = private unnamed_addr constant [38 x i8] c"\013%s: over max size limit. (%u > %u)\0A\00", align 1
@__func__.blk_cloned_rq_check_limits = private unnamed_addr constant [27 x i8] c"blk_cloned_rq_check_limits\00", align 1
@.str.54 = private unnamed_addr constant [44 x i8] c"\013%s: over max segments limit. (%hu > %hu)\0A\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@print_req_error._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.print_req_error = private unnamed_addr constant [16 x i8] c"print_req_error\00", align 1
@.str.55 = private unnamed_addr constant [87 x i8] c"\013%s: %s error, dev %s, sector %llu op 0x%x:(%s) flags 0x%x phys_seg %u prio class %u\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_flag_set(i32 noundef %flag, %struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %flag to i64
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %queue_flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_flag_clear(i32 noundef %flag, %struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %flag to i64
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %queue_flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_queue_flag_test_and_set(i32 noundef %flag, %struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %flag to i64
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %call = call fastcc i1 @test_and_set_bit(i64 noundef %conv, i64* noundef %queue_flags) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #18
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_rq_init(%struct.request_queue* noundef %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.request* %rq to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 272) #18
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %queuelist) #17
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  store %struct.request_queue* %q, %struct.request_queue** %q1, align 8
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  store i64 -1, i64* %__sector, align 8
  %hash = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 12, i32 0
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %hash) #17
  %rb_node = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13, i32 0
  %1 = ptrtoint %struct.rb_node* %rb_node to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node, i64 0, i32 0
  store i64 %1, i64* %__rb_parent_color, align 8
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  store i32 -1, i32* %tag, align 8
  %internal_tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 6
  store i32 -1, i32* %internal_tag, align 4
  %call3 = call fastcc i64 @ktime_get_ns() #17
  %start_time_ns = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 17
  store i64 %call3, i64* %start_time_ns, align 8
  %part = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 16
  store %struct.block_device* null, %struct.block_device** %part, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_ns() unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get() #18
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8* @blk_op_str(i32 noundef %op) local_unnamed_addr #4 {
entry:
  %cmp = icmp ult i32 %op, 36
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = zext i32 %op to i64
  %0 = lshr i64 17179689296, %conv
  %1 = and i64 %0, 1
  %tobool.not.not = icmp eq i64 %1, 0
  br i1 %tobool.not.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr [36 x i8*], [36 x i8*]* @blk_op_name, i64 0, i64 %conv
  %2 = load i8*, i8** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %op_str.0 = phi i8* [ %2, %if.then ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %entry ]
  ret i8* %op_str.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define dso_local i8 @errno_to_blk_status(i32 noundef %errno) local_unnamed_addr #6 {
entry:
  switch i32 %errno, label %for.inc.16 [
    i32 0, label %cleanup
    i32 -95, label %cleanup.fold.split
    i32 -110, label %cleanup.fold.split15
    i32 -28, label %cleanup.fold.split16
    i32 -67, label %cleanup.fold.split17
    i32 -121, label %cleanup.fold.split18
    i32 -52, label %cleanup.fold.split19
    i32 -61, label %cleanup.fold.split20
    i32 -84, label %cleanup.fold.split21
    i32 -12, label %cleanup.fold.split22
    i32 -5, label %cleanup.fold.split23
    i32 -78, label %cleanup.fold.split24
    i32 -11, label %cleanup.fold.split25
    i32 -16, label %cleanup.fold.split26
    i32 -109, label %cleanup.fold.split27
    i32 -75, label %cleanup.fold.split28
  ]

for.inc.16:                                       ; preds = %entry
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %entry, %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split, %for.inc.16
  %retval.0 = phi i8 [ 10, %for.inc.16 ], [ 0, %entry ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split15 ], [ 3, %cleanup.fold.split16 ], [ 4, %cleanup.fold.split17 ], [ 5, %cleanup.fold.split18 ], [ 6, %cleanup.fold.split19 ], [ 7, %cleanup.fold.split20 ], [ 8, %cleanup.fold.split21 ], [ 9, %cleanup.fold.split22 ], [ 10, %cleanup.fold.split23 ], [ 11, %cleanup.fold.split24 ], [ 12, %cleanup.fold.split25 ], [ 13, %cleanup.fold.split26 ], [ 15, %cleanup.fold.split27 ], [ 16, %cleanup.fold.split28 ]
  ret i8 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_status_to_errno(i8 noundef %status) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i8 %status, 16
  br i1 %cmp, label %if.then, label %if.end19, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 211; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !9
  br label %cleanup

if.end19:                                         ; preds = %entry
  %0 = zext i8 %status to i64
  %errno = getelementptr [17 x %struct.anon.82], [17 x %struct.anon.82]* @blk_errors, i64 0, i64 %0, i32 0
  %1 = load i32, i32* %errno, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  %retval.0 = phi i32 [ %1, %if.end19 ], [ -5, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_dump_rq_flags(%struct.request* nocapture noundef readonly %rq, i8* noundef %msg) local_unnamed_addr #0 {
entry:
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 15
  %0 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %0, null
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 3, i64 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %1 = load i32, i32* %cmd_flags, align 8
  %conv = zext i32 %1 to i64
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef %msg, i8* noundef %cond, i64 noundef %conv) #20
  %call5 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %rq) #17
  %call6 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %rq) #17
  %call7 = call fastcc i32 @blk_rq_cur_sectors(%struct.request* noundef %rq) #17, !range !10
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 noundef %call5, i32 noundef %call6, i32 noundef %call7) #20
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %2 = load %struct.bio*, %struct.bio** %bio, align 8
  %biotail = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 10
  %3 = load %struct.bio*, %struct.bio** %biotail, align 8
  %call12 = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #17
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.bio* noundef %2, %struct.bio* noundef %3, i32 noundef %call12) #20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @blk_rq_pos(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  %0 = load i64, i64* %__sector, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_sectors(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #17
  %shr = lshr i32 %call, 9
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_cur_sectors(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @blk_rq_cur_bytes(%struct.request* noundef %rq) #17
  %shr = ashr i32 %call, 9
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_bytes(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  %0 = load i32, i32* %__data_len, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_sync_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %timeout = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 25
  %call = call i32 @del_timer_sync(%struct.timer_list* noundef %timeout) #18
  %timeout_work = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 26
  %call1 = call i1 @cancel_work_sync(%struct.work_struct* noundef %timeout_work) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_work_sync(%struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_set_pm_only(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %pm_only = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 12
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %pm_only) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_clear_pm_only(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %pm_only1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 12
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %pm_only1) #18
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %if.end.thread, label %if.end, !prof !8

if.end.thread:                                    ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 317; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !11
  br label %if.end18

if.end:                                           ; preds = %entry
  %cmp15 = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  %mq_freeze_wq = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 45
  call void @__wake_up(%struct.wait_queue_head* noundef %mq_freeze_wq, i32 noundef 3, i32 noundef 0, i8* noundef null) #18
  br label %if.end18

if.end18:                                         ; preds = %if.end.thread, %if.then17, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_put_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 16
  call void @kobject_put(%struct.kobject* noundef %kobj) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_start_drain(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @blk_freeze_queue_start(%struct.request_queue* noundef %q) #18
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %q) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @blk_mq_wake_waiters(%struct.request_queue* noundef %q) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mq_freeze_wq = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 45
  call void @__wake_up(%struct.wait_queue_head* noundef %mq_freeze_wq, i32 noundef 3, i32 noundef 0, i8* noundef null) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_freeze_queue_start(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @queue_is_mq(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #8 {
entry:
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %tobool = icmp ne %struct.blk_mq_ops* %0, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_wake_waiters(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_set_queue_dying(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @blk_queue_flag_set(i32 noundef 1, %struct.request_queue* noundef %q) #17
  call void @blk_queue_start_drain(%struct.request_queue* noundef %q) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_cleanup_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 4194304
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 374; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @blk_set_queue_dying(%struct.request_queue* noundef %q) #17
  call void @blk_queue_flag_set(i32 noundef 3, %struct.request_queue* noundef %q) #17
  call void @blk_queue_flag_set(i32 noundef 9, %struct.request_queue* noundef %q) #17
  call void @blk_freeze_queue(%struct.request_queue* noundef %q) #18
  call void @blk_queue_flag_set(i32 noundef 13, %struct.request_queue* noundef %q) #17
  call void @blk_sync_queue(%struct.request_queue* noundef %q) #17
  %call17 = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %q) #17
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  call void @blk_mq_exit_queue(%struct.request_queue* noundef %q) #18
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #18
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %2 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool20.not = icmp eq %struct.elevator_queue* %2, null
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @blk_mq_sched_free_requests(%struct.request_queue* noundef %q) #18
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #18
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  call void @percpu_ref_exit(%struct.percpu_ref* noundef %q_usage_counter) #18
  call void @blk_put_queue(%struct.request_queue* noundef %q) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_freeze_queue(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_exit_queue(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_free_requests(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(%struct.percpu_ref* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_queue_enter(%struct.request_queue* noundef %q, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %and = and i32 %flags, 4
  %tobool = icmp ne i32 %and, 0
  %and2 = and i32 %flags, 1
  %tobool3.not = icmp ne i32 %and2, 0
  %mq_freeze_depth = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 43
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %mq_freeze_wq = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 45
  br label %while.cond

while.cond:                                       ; preds = %do.end31, %entry
  %call = call fastcc i1 @blk_try_enter_queue(%struct.request_queue* noundef %q, i1 noundef %tobool) #17
  %brmerge = or i1 %call, %tobool3.not
  br i1 %brmerge, label %cleanup37.split.loop.exit, label %if.end

if.end:                                           ; preds = %while.cond
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !14
  %1 = load i32, i32* %mq_freeze_depth, align 4
  %tobool8.not = icmp eq i32 %1, 0
  br i1 %tobool8.not, label %do.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load volatile i64, i64* %queue_flags, align 8
  %3 = and i64 %2, 2
  %tobool13.not = icmp eq i64 %3, 0
  br i1 %tobool13.not, label %if.end15, label %do.end31

if.end15:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !15
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #18
  %call1658 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #18
  %4 = load i32, i32* %mq_freeze_depth, align 4
  %tobool18.not59 = icmp eq i32 %4, 0
  br i1 %tobool18.not59, label %for.end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end15, %cleanup
  %5 = load volatile i64, i64* %queue_flags, align 8
  %6 = and i64 %5, 2
  %tobool26.not = icmp eq i64 %6, 0
  br i1 %tobool26.not, label %cleanup, label %for.end

cleanup:                                          ; preds = %lor.lhs.false23
  call void @schedule() #18
  %call16 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #18
  %7 = load i32, i32* %mq_freeze_depth, align 4
  %tobool18.not = icmp eq i32 %7, 0
  br i1 %tobool18.not, label %for.end, label %lor.lhs.false23

for.end:                                          ; preds = %cleanup, %lor.lhs.false23, %if.end15
  call void @finish_wait(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #18
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #19
  br label %do.end31

do.end31:                                         ; preds = %if.end, %lor.lhs.false, %for.end
  %8 = load volatile i64, i64* %queue_flags, align 8
  %9 = and i64 %8, 2
  %tobool34.not = icmp eq i64 %9, 0
  br i1 %tobool34.not, label %while.cond, label %cleanup37

cleanup37.split.loop.exit:                        ; preds = %while.cond
  %.mux.le = select i1 %call, i32 0, i32 -16
  br label %cleanup37

cleanup37:                                        ; preds = %do.end31, %cleanup37.split.loop.exit
  %retval.0 = phi i32 [ %.mux.le, %cleanup37.split.loop.exit ], [ -19, %do.end31 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_try_enter_queue(%struct.request_queue* noundef %q, i1 noundef %pm) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #18
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  %call = call fastcc i1 @percpu_ref_tryget_live(%struct.percpu_ref* noundef %q_usage_counter) #17
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %counter.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 12, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  %brmerge = or i1 %tobool.not, %pm
  br i1 %brmerge, label %return, label %fail_put

fail_put:                                         ; preds = %if.end
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %q_usage_counter) #17
  br label %return

return:                                           ; preds = %fail_put, %entry, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %entry ], [ false, %fail_put ]
  call fastcc void @rcu_read_unlock() #17
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_exit(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %q_usage_counter) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request_queue* @blk_alloc_queue(i32 noundef %node_id) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @blk_requestq_cachep, align 8
  %call.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #18
  %1 = bitcast i8* %call.i to %struct.request_queue*
  %tobool.not = icmp eq i8* %call.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %last_merge = bitcast i8* %call.i to %struct.request**
  store %struct.request* null, %struct.request** %last_merge, align 8
  %call1 = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @blk_queue_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #18
  %id = getelementptr inbounds i8, i8* %call.i, i64 108
  %2 = bitcast i8* %id to i32*
  store i32 %call1, i32* %2, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %fail_q, label %if.end4

if.end4:                                          ; preds = %if.end
  %bio_split = getelementptr inbounds i8, i8* %call.i, i64 1536
  %3 = bitcast i8* %bio_split to %struct.bio_set*
  %call5 = call i32 @bioset_init(%struct.bio_set* noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef 0) #18
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %fail_id

if.end8:                                          ; preds = %if.end4
  %call9 = call %struct.blk_queue_stats* @blk_alloc_queue_stats() #18
  %stats = getelementptr inbounds i8, i8* %call.i, i64 32
  %4 = bitcast i8* %stats to %struct.blk_queue_stats**
  store %struct.blk_queue_stats* %call9, %struct.blk_queue_stats** %4, align 8
  %tobool11.not = icmp eq %struct.blk_queue_stats* %call9, null
  br i1 %tobool11.not, label %fail_split, label %if.end13

if.end13:                                         ; preds = %if.end8
  %node = getelementptr inbounds i8, i8* %call.i, i64 1196
  %5 = bitcast i8* %node to i32*
  store i32 %node_id, i32* %5, align 4
  %nr_active_requests_shared_sbitmap = getelementptr inbounds i8, i8* %call.i, i64 944
  %counter.i = bitcast i8* %nr_active_requests_shared_sbitmap to i32*
  store volatile i32 0, i32* %counter.i, align 8
  %timeout = getelementptr inbounds i8, i8* %call.i, i64 872
  %6 = bitcast i8* %timeout to %struct.timer_list*
  call void @init_timer_key(%struct.timer_list* noundef %6, void (%struct.timer_list*)* noundef nonnull @blk_rq_timed_out_timer, i32 noundef 0, i8* noundef null, %struct.lock_class_key* noundef null) #18
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call.i, i64 912
  %7 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i64*
  store i64 68719476704, i64* %7, align 8
  %entry16 = getelementptr inbounds i8, i8* %call.i, i64 920
  %8 = bitcast i8* %entry16 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %8) #17
  %func = getelementptr inbounds i8, i8* %call.i, i64 936
  %9 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @blk_timeout_work, void (%struct.work_struct*)** %9, align 8
  %icq_list = getelementptr inbounds i8, i8* %call.i, i64 1064
  %10 = bitcast i8* %icq_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %10) #17
  %kobj = getelementptr inbounds i8, i8* %call.i, i64 128
  %11 = bitcast i8* %kobj to %struct.kobject*
  call void @kobject_init(%struct.kobject* noundef %11, %struct.kobj_type* noundef nonnull @blk_queue_ktype) #18
  %debugfs_mutex = getelementptr inbounds i8, i8* %call.i, i64 1200
  %12 = bitcast i8* %debugfs_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %12, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @blk_alloc_queue.__key) #18
  %sysfs_lock = getelementptr inbounds i8, i8* %call.i, i64 1352
  %13 = bitcast i8* %sysfs_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @blk_alloc_queue.__key.6) #18
  %sysfs_dir_lock = getelementptr inbounds i8, i8* %call.i, i64 1384
  %14 = bitcast i8* %sysfs_dir_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %14, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @blk_alloc_queue.__key.8) #18
  %queue_lock = getelementptr inbounds i8, i8* %call.i, i64 112
  %15 = bitcast i8* %queue_lock to i32*
  store i32 0, i32* %15, align 8
  %mq_freeze_wq = getelementptr inbounds i8, i8* %call.i, i64 1456
  %16 = bitcast i8* %mq_freeze_wq to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %16, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @blk_alloc_queue.__key.10) #18
  %mq_freeze_lock = getelementptr inbounds i8, i8* %call.i, i64 1480
  %17 = bitcast i8* %mq_freeze_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %17, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @blk_alloc_queue.__key.12) #18
  %q_usage_counter = getelementptr inbounds i8, i8* %call.i, i64 16
  %18 = bitcast i8* %q_usage_counter to %struct.percpu_ref*
  %call40 = call i32 @percpu_ref_init(%struct.percpu_ref* noundef %18, void (%struct.percpu_ref*)* noundef nonnull @blk_queue_usage_counter_release, i32 noundef 1, i32 noundef 3264) #18
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %fail_stats

if.end43:                                         ; preds = %if.end13
  call void @blk_queue_dma_alignment(%struct.request_queue* noundef nonnull %1, i32 noundef 511) #18
  %limits = getelementptr inbounds i8, i8* %call.i, i64 1080
  %19 = bitcast i8* %limits to %struct.queue_limits*
  call void @blk_set_default_limits(%struct.queue_limits* noundef %19) #18
  %nr_requests = getelementptr inbounds i8, i8* %call.i, i64 200
  %20 = bitcast i8* %nr_requests to i64*
  store i64 128, i64* %20, align 8
  br label %cleanup

fail_stats:                                       ; preds = %if.end13
  %21 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %4, align 8
  call void @blk_free_queue_stats(%struct.blk_queue_stats* noundef %21) #18
  br label %fail_split

fail_split:                                       ; preds = %if.end8, %fail_stats
  call void @bioset_exit(%struct.bio_set* noundef %3) #18
  br label %fail_id

fail_id:                                          ; preds = %if.end4, %fail_split
  %22 = load i32, i32* %2, align 4
  call void @ida_free(%struct.ida* noundef nonnull @blk_queue_ida, i32 noundef %22) #18
  br label %fail_q

fail_q:                                           ; preds = %if.end, %fail_id
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** @blk_requestq_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %23, i8* noundef nonnull %call.i) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %fail_q, %if.end43
  %retval.0 = phi %struct.request_queue* [ null, %fail_q ], [ %1, %if.end43 ], [ null, %entry ]
  ret %struct.request_queue* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(%struct.bio_set* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.blk_queue_stats* @blk_alloc_queue_stats() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_rq_timed_out_timer(%struct.timer_list* noundef %t) #0 {
entry:
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -22, i32 0, i32 1
  %timeout_work = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 114
  %0 = bitcast %struct.hlist_node*** %timeout_work to %struct.work_struct*
  %call = call i32 @kblockd_schedule_work(%struct.work_struct* noundef %0) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @blk_timeout_work(%struct.work_struct* nocapture noundef %work) #4 {
entry:
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(%struct.percpu_ref* noundef, void (%struct.percpu_ref*)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_queue_usage_counter_release(%struct.percpu_ref* noundef %ref) #0 {
entry:
  %mq_freeze_wq = getelementptr %struct.percpu_ref, %struct.percpu_ref* %ref, i64 90
  %0 = bitcast %struct.percpu_ref* %mq_freeze_wq to %struct.wait_queue_head*
  call void @__wake_up(%struct.wait_queue_head* noundef %0, i32 noundef 3, i32 noundef 0, i8* noundef null) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_dma_alignment(%struct.request_queue* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_default_limits(%struct.queue_limits* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_queue_stats(%struct.blk_queue_stats* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(%struct.bio_set* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_get_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 2
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %return, !prof !12

if.then:                                          ; preds = %entry
  call fastcc void @__blk_get_queue(%struct.request_queue* noundef %q) #17
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_get_queue(%struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 16
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @blk_get_request(%struct.request_queue* noundef %q, i32 noundef %op, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = and i32 %op, 2097152
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 636; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and17 = and i32 %flags, -6
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end32, label %if.then31, !prof !12

if.then31:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 637; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !17
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  %call = call %struct.request* @blk_mq_alloc_request(%struct.request_queue* noundef %q, i32 noundef %op, i32 noundef %flags) #18
  %1 = bitcast %struct.request* %call to i8*
  %call41 = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call41, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %2 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %initialize_rq_fn = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %2, i64 0, i32 13
  %3 = load void (%struct.request*)*, void (%struct.request*)** %initialize_rq_fn, align 8
  %tobool42.not = icmp eq void (%struct.request*)* %3, null
  br i1 %tobool42.not, label %if.end46, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  call void %3(%struct.request* noundef %call) #18
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %land.lhs.true, %if.end32
  ret %struct.request* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.request* @blk_mq_alloc_request(%struct.request_queue* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_put_request(%struct.request* noundef %req) local_unnamed_addr #0 {
entry:
  call void @blk_mq_free_request(%struct.request* noundef %req) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(%struct.request* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @submit_bio_noacct(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %bio_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 108
  %2 = load %struct.bio_list*, %struct.bio_list** %bio_list, align 16
  %tobool.not = icmp eq %struct.bio_list* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @bio_list_add(%struct.bio_list* noundef nonnull %2, %struct.bio* noundef %bio) #17
  br label %return

if.end:                                           ; preds = %entry
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %3 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %3, i64 0, i32 16
  %4 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i64 0, i32 8
  %5 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %submit_bio = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %5, i64 0, i32 0
  %6 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %submit_bio, align 8
  %tobool3.not = icmp eq i32 (%struct.bio*)* %6, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @__submit_bio_noacct_mq(%struct.bio* noundef %bio) #17
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @__submit_bio_noacct(%struct.bio* noundef %bio) #17
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call7, %if.end6 ], [ %call5, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_list_add(%struct.bio_list* nocapture noundef %bl, %struct.bio* noundef %bio) unnamed_addr #11 {
entry:
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 0
  store %struct.bio* null, %struct.bio** %bi_next, align 8
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  %0 = load %struct.bio*, %struct.bio** %tail, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %bi_next2 = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 0
  %head.sink = select i1 %tobool.not, %struct.bio** %head, %struct.bio** %bi_next2
  store %struct.bio* %bio, %struct.bio** %head.sink, align 8
  store %struct.bio* %bio, %struct.bio** %tail, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__submit_bio_noacct_mq(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bio_list = alloca [2 x %struct.bio_list], align 8
  %0 = bitcast [2 x %struct.bio_list]* %bio_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [2 x %struct.bio_list], [2 x %struct.bio_list]* %bio_list, i64 0, i64 0
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %bio_list1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 108
  store %struct.bio_list* %arraydecay, %struct.bio_list** %bio_list1, align 16
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %bio.addr.0 = phi %struct.bio* [ %bio, %entry ], [ %call3, %do.body ]
  %call2 = call fastcc i32 @__submit_bio(%struct.bio* noundef %bio.addr.0) #17
  %call3 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef nonnull %arraydecay) #17
  %tobool.not = icmp eq %struct.bio* %call3, null
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  store %struct.bio_list* null, %struct.bio_list** %bio_list1, align 16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__submit_bio_noacct(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bio_list_on_stack = alloca [2 x %struct.bio_list], align 8
  %lower = alloca %struct.bio_list, align 8
  %same = alloca %struct.bio_list, align 8
  %0 = bitcast [2 x %struct.bio_list]* %bio_list_on_stack to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !15
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 0
  %1 = load %struct.bio*, %struct.bio** %bi_next, align 8
  %tobool.not = icmp eq %struct.bio* %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !12

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 960; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !19
  unreachable

do.end8:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.bio_list], [2 x %struct.bio_list]* %bio_list_on_stack, i64 0, i64 0
  call fastcc void @bio_list_init(%struct.bio_list* noundef nonnull %arrayidx) #17
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %bio_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 108
  store %struct.bio_list* %arrayidx, %struct.bio_list** %bio_list, align 16
  %4 = bitcast %struct.bio_list* %lower to i8*
  %5 = bitcast %struct.bio_list* %same to i8*
  %arrayidx10 = getelementptr inbounds [2 x %struct.bio_list], [2 x %struct.bio_list]* %bio_list_on_stack, i64 0, i64 1
  %6 = bitcast %struct.bio_list* %arrayidx10 to i8*
  br label %do.body9

do.body9:                                         ; preds = %while.end, %do.end8
  %bio.addr.0 = phi %struct.bio* [ %bio, %do.end8 ], [ %call30, %while.end ]
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.0, i64 0, i32 1
  %7 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i64 0, i32 16
  %8 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %8, i64 0, i32 9
  %9 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %6, i8* noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  call fastcc void @bio_list_init(%struct.bio_list* noundef nonnull %arrayidx) #17
  %call13 = call fastcc i32 @__submit_bio(%struct.bio* noundef %bio.addr.0) #17
  call fastcc void @bio_list_init(%struct.bio_list* noundef nonnull %lower) #17
  call fastcc void @bio_list_init(%struct.bio_list* noundef nonnull %same) #17
  %call1542 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef nonnull %arrayidx) #17
  %cmp.not43 = icmp eq %struct.bio* %call1542, null
  br i1 %cmp.not43, label %while.end, label %while.body

while.body:                                       ; preds = %do.body9, %while.body
  %call1544 = phi %struct.bio* [ %call15, %while.body ], [ %call1542, %do.body9 ]
  %bi_bdev17 = getelementptr inbounds %struct.bio, %struct.bio* %call1544, i64 0, i32 1
  %10 = load %struct.block_device*, %struct.block_device** %bi_bdev17, align 8
  %bd_disk18 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i64 0, i32 16
  %11 = load %struct.gendisk*, %struct.gendisk** %bd_disk18, align 8
  %queue19 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i64 0, i32 9
  %12 = load %struct.request_queue*, %struct.request_queue** %queue19, align 8
  %cmp20 = icmp eq %struct.request_queue* %9, %12
  %same.lower = select i1 %cmp20, %struct.bio_list* %same, %struct.bio_list* %lower
  call fastcc void @bio_list_add(%struct.bio_list* noundef nonnull %same.lower, %struct.bio* noundef nonnull %call1544) #17
  %call15 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef nonnull %arrayidx) #17
  %cmp.not = icmp eq %struct.bio* %call15, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body9
  call fastcc void @bio_list_merge(%struct.bio_list* noundef nonnull %arrayidx, %struct.bio_list* noundef nonnull %lower) #17
  call fastcc void @bio_list_merge(%struct.bio_list* noundef nonnull %arrayidx, %struct.bio_list* noundef nonnull %same) #17
  call fastcc void @bio_list_merge(%struct.bio_list* noundef nonnull %arrayidx, %struct.bio_list* noundef %arrayidx10) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #19
  %call30 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef nonnull %arrayidx) #17
  %tobool31.not = icmp eq %struct.bio* %call30, null
  br i1 %tobool31.not, label %do.end32, label %do.body9

do.end32:                                         ; preds = %while.end
  store %struct.bio_list* null, %struct.bio_list** %bio_list, align 16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret i32 %call13
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @submit_bio(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i1 @bio_has_data(%struct.bio* noundef %bio) #17
  br i1 %call1, label %if.then2, label %if.end19

if.then2:                                         ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %and = and i32 %0, 255
  %cmp = icmp eq i32 %and, 7
  br i1 %cmp, label %if.then4, label %if.else, !prof !8

if.then4:                                         ; preds = %if.then2
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 16
  %2 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call5 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %3) #17
  br label %if.end7

if.else:                                          ; preds = %if.then2
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %4 = load i32, i32* %bi_size, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %count.0.in = phi i32 [ %call5, %if.then4 ], [ %4, %if.else ]
  %count.0 = lshr i32 %count.0.in, 9
  %call10 = call fastcc i1 @op_is_write(i32 noundef %and) #17
  %conv12 = zext i32 %count.0 to i64
  %. = zext i1 %call10 to i32
  call fastcc void @count_vm_events(i32 noundef %., i64 noundef %conv12) #17
  br label %if.end19

if.end19:                                         ; preds = %if.end7, %entry
  %call36 = call i32 @submit_bio_noacct(%struct.bio* noundef %bio) #17
  ret i32 %call36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_has_data(%struct.bio* noundef readonly %bio) unnamed_addr #8 {
entry:
  %tobool.not = icmp eq %struct.bio* %bio, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %1 = load i32, i32* %bi_opf, align 8
  %trunc = trunc i32 %1 to i8
  %switch.tableidx = add i8 %trunc, -3
  %2 = icmp ult i8 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %land.lhs.true2
  %switch.cast = trunc i8 %switch.tableidx to i7
  %switch.downshift = lshr i7 58, %switch.cast
  %3 = and i7 %switch.downshift, 1
  %switch.masked = icmp ne i7 %3, 0
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %switch.lookup, %land.lhs.true2
  %retval.0 = phi i1 [ true, %land.lhs.true2 ], [ %switch.masked, %switch.lookup ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #8 {
entry:
  %tobool.not = icmp eq %struct.request_queue* %q, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %logical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 9
  %0 = load i32, i32* %logical_block_size, align 8
  %tobool2.not = icmp eq i32 %0, 0
  %spec.select = select i1 %tobool2.not, i32 512, i32 %0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %retval1.0 = phi i32 [ 512, %entry ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval1.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_write(i32 noundef %op) unnamed_addr #4 {
entry:
  %and = and i32 %op, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_events(i32 noundef %item, i64 noundef %delta) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !20
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef %delta) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_flagged(%struct.bio* nocapture noundef readonly %bio, i32 noundef %bit) unnamed_addr #8 {
entry:
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %conv = zext i16 %0 to i32
  %shl = shl nuw i32 1, %bit
  %and = and i32 %shl, %conv
  %cmp = icmp ne i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8 @blk_insert_cloned_request(%struct.request_queue* noundef %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8 @blk_cloned_rq_check_limits(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #17
  %cmp.not = icmp eq i8 %call, 0
  br i1 %cmp.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 128
  %tobool13.not = icmp eq i64 %1, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end7
  call void @blk_account_io_start(%struct.request* noundef %rq) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end7
  %call16 = call i8 @blk_mq_request_issue_directly(%struct.request* noundef %rq, i1 noundef true) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15
  %retval.0 = phi i8 [ %call16, %if.end15 ], [ %call, %entry ]
  ret i8 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @blk_cloned_rq_check_limits(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i32 @blk_queue_get_max_sectors(%struct.request_queue* noundef %q, i32 noundef %and) #17
  %call1 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %rq) #17
  %cmp = icmp ugt i32 %call1, %call
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %cleanup, label %do.end

do.end:                                           ; preds = %if.then
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.blk_cloned_rq_check_limits, i64 0, i64 0), i32 noundef %call1, i32 noundef %call) #20
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = call i32 @blk_recalc_rq_segments(%struct.request* noundef %rq) #18
  %conv = trunc i32 %call7 to i16
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 20
  store i16 %conv, i16* %nr_phys_segments, align 2
  %conv9 = and i32 %call7, 65535
  %call10 = call fastcc i16 @queue_max_segments(%struct.request_queue* noundef %q) #17
  %conv11 = zext i16 %call10 to i32
  %cmp12 = icmp ugt i32 %conv9, %conv11
  br i1 %cmp12, label %do.end17, label %cleanup

do.end17:                                         ; preds = %if.end6
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.blk_cloned_rq_check_limits, i64 0, i64 0), i32 noundef %conv9, i32 noundef %conv11) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then, %do.end17, %do.end
  %retval.0 = phi i8 [ 10, %do.end ], [ 10, %do.end17 ], [ 1, %if.then ], [ 0, %if.end6 ]
  ret i8 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_account_io_start(%struct.request* nocapture noundef %rq) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_do_io_stat(%struct.request* noundef %rq) #17
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %tobool2.not = icmp eq %struct.block_device* %1, null
  br i1 %tobool2.not, label %if.else, label %if.end7

if.else:                                          ; preds = %land.lhs.true, %if.end
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 15
  %2 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 7
  %3 = load %struct.block_device*, %struct.block_device** %part0, align 8
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.else
  %.sink = phi %struct.block_device* [ %3, %if.else ], [ %1, %land.lhs.true ]
  %part6 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 16
  store %struct.block_device* %.sink, %struct.block_device** %part6, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %part8 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 16
  %4 = load %struct.block_device*, %struct.block_device** %part8, align 8
  %5 = load volatile i64, i64* @jiffies, align 64
  call fastcc void @update_io_ticks(%struct.block_device* noundef %4, i64 noundef %5, i1 noundef false) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !23
  br label %return

return:                                           ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8 @blk_mq_request_issue_directly(%struct.request* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_rq_err_bytes(%struct.request* nocapture noundef readonly %rq) local_unnamed_addr #0 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %1 = and i32 %0, 1792
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %2 = load i32, i32* %rq_flags, align 4
  %and2 = and i32 %2, 32
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %bio3 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %bio.039 = load %struct.bio*, %struct.bio** %bio3, align 8
  %tobool4.not40 = icmp eq %struct.bio* %bio.039, null
  br i1 %tobool4.not40, label %do.body, label %for.body

for.body:                                         ; preds = %if.end, %if.end8
  %bio.042 = phi %struct.bio* [ %bio.0, %if.end8 ], [ %bio.039, %if.end ]
  %bytes.041 = phi i32 [ %add, %if.end8 ], [ 0, %if.end ]
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio.042, i64 0, i32 2
  %3 = load i32, i32* %bi_opf, align 8
  %and5 = and i32 %3, %1
  %cmp.not = icmp eq i32 %and5, %1
  br i1 %cmp.not, label %if.end8, label %do.body

if.end8:                                          ; preds = %for.body
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio.042, i64 0, i32 8, i32 1
  %4 = load i32, i32* %bi_size, align 8
  %add = add i32 %4, %bytes.041
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio.042, i64 0, i32 0
  %bio.0 = load %struct.bio*, %struct.bio** %bi_next, align 8
  %tobool4.not = icmp eq %struct.bio* %bio.0, null
  br i1 %tobool4.not, label %do.body, label %for.body

do.body:                                          ; preds = %for.body, %if.end8, %if.end
  %bytes.0.lcssa = phi i32 [ 0, %if.end ], [ %add, %if.end8 ], [ %bytes.041, %for.body ]
  %call9 = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #17
  %tobool10 = icmp ne i32 %call9, 0
  %tobool11.not = icmp eq i32 %bytes.0.lcssa, 0
  %5 = select i1 %tobool10, i1 %tobool11.not, i1 false
  br i1 %5, label %do.body17, label %cleanup, !prof !8

do.body17:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 1228; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !24
  unreachable

cleanup:                                          ; preds = %do.body, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %bytes.0.lcssa, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_account_io_done(%struct.request* nocapture noundef readonly %req, i64 noundef %now) local_unnamed_addr #0 {
entry:
  %part = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 16
  %0 = load %struct.block_device*, %struct.block_device** %part, align 8
  %tobool.not = icmp eq %struct.block_device* %0, null
  br i1 %tobool.not, label %if.end112, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @blk_do_io_stat(%struct.request* noundef %req) #17
  br i1 %call, label %land.lhs.true1, label %if.end112

land.lhs.true1:                                   ; preds = %land.lhs.true
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, 16
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then, label %if.end112

if.then:                                          ; preds = %land.lhs.true1
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %and3 = and i32 %2, 255
  %call4 = call fastcc i32 @op_stat_group(i32 noundef %and3) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %3 = load %struct.block_device*, %struct.block_device** %part, align 8
  %4 = load volatile i64, i64* @jiffies, align 64
  call fastcc void @update_io_ticks(%struct.block_device* noundef %3, i64 noundef %4, i1 noundef true) #17
  %5 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %5, i64 0, i32 1
  %6 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %7 = zext i32 %call4 to i64
  %arrayidx = getelementptr %struct.disk_stats, %struct.disk_stats* %6, i64 0, i32 2, i64 %7
  %8 = ptrtoint i64* %arrayidx to i64
  %call15 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call15, %8
  %9 = inttoptr i64 %add to i64*
  %10 = load i64, i64* %9, align 8
  %add16 = add i64 %10, 1
  store i64 %add16, i64* %9, align 8
  %11 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i64 0, i32 14
  %12 = load i8, i8* %bd_partno, align 8
  %tobool22.not = icmp eq i8 %12, 0
  br i1 %tobool22.not, label %do.body51, label %if.then23

if.then23:                                        ; preds = %if.then
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i64 0, i32 16
  %13 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i64 0, i32 7
  %14 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_stats37 = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i64 0, i32 1
  %15 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats37, align 8
  %arrayidx40 = getelementptr %struct.disk_stats, %struct.disk_stats* %15, i64 0, i32 2, i64 %7
  %16 = ptrtoint i64* %arrayidx40 to i64
  %call42 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add43 = add i64 %call42, %16
  %17 = inttoptr i64 %add43 to i64*
  %18 = load i64, i64* %17, align 8
  %add44 = add i64 %18, 1
  store i64 %add44, i64* %17, align 8
  %.pre = load %struct.block_device*, %struct.block_device** %part, align 8
  br label %do.body51

do.body51:                                        ; preds = %if.then, %if.then23
  %19 = phi %struct.block_device* [ %11, %if.then ], [ %.pre, %if.then23 ]
  %start_time_ns = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 17
  %20 = load i64, i64* %start_time_ns, align 8
  %sub = sub i64 %now, %20
  %bd_stats65 = getelementptr inbounds %struct.block_device, %struct.block_device* %19, i64 0, i32 1
  %21 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats65, align 8
  %arrayidx67 = getelementptr %struct.disk_stats, %struct.disk_stats* %21, i64 0, i32 0, i64 %7
  %22 = ptrtoint i64* %arrayidx67 to i64
  %call69 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add70 = add i64 %call69, %22
  %23 = inttoptr i64 %add70 to i64*
  %24 = load i64, i64* %23, align 8
  %add71 = add i64 %sub, %24
  store i64 %add71, i64* %23, align 8
  %25 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_partno77 = getelementptr inbounds %struct.block_device, %struct.block_device* %25, i64 0, i32 14
  %26 = load i8, i8* %bd_partno77, align 8
  %tobool78.not = icmp eq i8 %26, 0
  br i1 %tobool78.not, label %do.end111, label %if.then79

if.then79:                                        ; preds = %do.body51
  %27 = load i64, i64* %start_time_ns, align 8
  %sub87 = sub i64 %now, %27
  %bd_disk95 = getelementptr inbounds %struct.block_device, %struct.block_device* %25, i64 0, i32 16
  %28 = load %struct.gendisk*, %struct.gendisk** %bd_disk95, align 8
  %part096 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %28, i64 0, i32 7
  %29 = load %struct.block_device*, %struct.block_device** %part096, align 8
  %bd_stats97 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i64 0, i32 1
  %30 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats97, align 8
  %arrayidx100 = getelementptr %struct.disk_stats, %struct.disk_stats* %30, i64 0, i32 0, i64 %7
  %31 = ptrtoint i64* %arrayidx100 to i64
  %call102 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add103 = add i64 %call102, %31
  %32 = inttoptr i64 %add103 to i64*
  %33 = load i64, i64* %32, align 8
  %add104 = add i64 %sub87, %33
  store i64 %add104, i64* %32, align 8
  br label %do.end111

do.end111:                                        ; preds = %if.then79, %do.body51
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  br label %if.end112

if.end112:                                        ; preds = %do.end111, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_do_io_stat(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 15
  %0 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, 8192
  %tobool1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @op_stat_group(i32 noundef %op) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @op_is_discard(i32 noundef %op) #17
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @op_is_write(i32 noundef %op) #17
  %conv = zext i1 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_io_ticks(%struct.block_device* noundef %part, i64 noundef %now, i1 noundef %end) unnamed_addr #0 {
entry:
  br label %again

again:                                            ; preds = %if.then37, %entry
  %part.addr.0 = phi %struct.block_device* [ %part, %entry ], [ %8, %if.then37 ]
  %bd_stamp = getelementptr inbounds %struct.block_device, %struct.block_device* %part.addr.0, i64 0, i32 2
  %0 = load volatile i64, i64* %bd_stamp, align 8
  %sub = sub i64 %0, %now
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end35, !prof !8

if.then:                                          ; preds = %again
  %1 = bitcast i64* %bd_stamp to i8*
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %0, i64 noundef %now) #18
  %cmp5 = icmp eq i64 %call14.i, %0
  br i1 %cmp5, label %if.then14, label %if.end35, !prof !12

if.then14:                                        ; preds = %if.then
  %sub22 = sub i64 %now, %0
  %cond = select i1 %end, i64 %sub22, i64 1
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %part.addr.0, i64 0, i32 1
  %2 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %io_ticks = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %2, i64 0, i32 4
  %3 = ptrtoint i64* %io_ticks to i64
  %call29 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call29, %3
  %4 = inttoptr i64 %add to i64*
  %5 = load i64, i64* %4, align 8
  %add30 = add i64 %5, %cond
  store i64 %add30, i64* %4, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then, %if.then14, %again
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %part.addr.0, i64 0, i32 14
  %6 = load i8, i8* %bd_partno, align 8
  %tobool36.not = icmp eq i8 %6, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end35
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %part.addr.0, i64 0, i32 16
  %7 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i64 0, i32 7
  %8 = load %struct.block_device*, %struct.block_device** %part0, align 8
  br label %again

if.end38:                                         ; preds = %if.end35
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !27
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @bio_start_io_acct(%struct.bio* nocapture noundef readonly %bio) local_unnamed_addr #0 {
entry:
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %1, 9
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %2 = load i32, i32* %bi_opf, align 8
  %and = and i32 %2, 255
  %call = call fastcc i64 @__part_start_io_acct(%struct.block_device* noundef %0, i32 noundef %shr, i32 noundef %and) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__part_start_io_acct(%struct.block_device* noundef %part, i32 noundef %sectors, i32 noundef %op) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @op_stat_group(i32 noundef %op) #17
  %0 = load volatile i64, i64* @jiffies, align 64
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !28
  call fastcc void @update_io_ticks(%struct.block_device* noundef %part, i64 noundef %0, i1 noundef false) #17
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 1
  %1 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %2 = zext i32 %call to i64
  %arrayidx = getelementptr %struct.disk_stats, %struct.disk_stats* %1, i64 0, i32 2, i64 %2
  %3 = ptrtoint i64* %arrayidx to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call13, %3
  %4 = inttoptr i64 %add to i64*
  %5 = load i64, i64* %4, align 8
  %add14 = add i64 %5, 1
  store i64 %add14, i64* %4, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 14
  %6 = load i8, i8* %bd_partno, align 8
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body45, label %if.then

if.then:                                          ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 16
  %7 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i64 0, i32 7
  %8 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_stats31 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i64 0, i32 1
  %9 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats31, align 8
  %arrayidx34 = getelementptr %struct.disk_stats, %struct.disk_stats* %9, i64 0, i32 2, i64 %2
  %10 = ptrtoint i64* %arrayidx34 to i64
  %call36 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add37 = add i64 %call36, %10
  %11 = inttoptr i64 %add37 to i64*
  %12 = load i64, i64* %11, align 8
  %add38 = add i64 %12, 1
  store i64 %add38, i64* %11, align 8
  br label %do.body45

do.body45:                                        ; preds = %entry, %if.then
  %conv = zext i32 %sectors to i64
  %13 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %arrayidx61 = getelementptr %struct.disk_stats, %struct.disk_stats* %13, i64 0, i32 1, i64 %2
  %14 = ptrtoint i64* %arrayidx61 to i64
  %call63 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add64 = add i64 %call63, %14
  %15 = inttoptr i64 %add64 to i64*
  %16 = load i64, i64* %15, align 8
  %add65 = add i64 %16, %conv
  store i64 %add65, i64* %15, align 8
  %17 = load i8, i8* %bd_partno, align 8
  %tobool71.not = icmp eq i8 %17, 0
  br i1 %tobool71.not, label %do.body103, label %if.then72

if.then72:                                        ; preds = %do.body45
  %bd_disk86 = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 16
  %18 = load %struct.gendisk*, %struct.gendisk** %bd_disk86, align 8
  %part087 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %18, i64 0, i32 7
  %19 = load %struct.block_device*, %struct.block_device** %part087, align 8
  %bd_stats88 = getelementptr inbounds %struct.block_device, %struct.block_device* %19, i64 0, i32 1
  %20 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats88, align 8
  %arrayidx91 = getelementptr %struct.disk_stats, %struct.disk_stats* %20, i64 0, i32 1, i64 %2
  %21 = ptrtoint i64* %arrayidx91 to i64
  %call93 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add94 = add i64 %call93, %21
  %22 = inttoptr i64 %add94 to i64*
  %23 = load i64, i64* %22, align 8
  %add95 = add i64 %23, %conv
  store i64 %add95, i64* %22, align 8
  br label %do.body103

do.body103:                                       ; preds = %do.body45, %if.then72
  %24 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %25 = ptrtoint %struct.disk_stats* %24 to i64
  %call118 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add119 = add i64 %call118, ptrtoint (i32* @cpu_number to i64)
  %26 = inttoptr i64 %add119 to i32*
  %27 = load i32, i32* %26, align 4
  %idxprom120 = sext i32 %27 to i64
  %arrayidx121 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom120
  %28 = load i64, i64* %arrayidx121, align 8
  %add122 = add i64 %28, %25
  %29 = inttoptr i64 %add122 to %struct.disk_stats*
  %call123 = call fastcc i1 @op_is_write(i32 noundef %op) #17
  %idxprom124 = zext i1 %call123 to i64
  %a = getelementptr %struct.disk_stats, %struct.disk_stats* %29, i64 0, i32 5, i64 %idxprom124, i32 0
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %a) #18
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !29
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @disk_start_io_acct(%struct.gendisk* nocapture noundef readonly %disk, i32 noundef %sectors, i32 noundef %op) local_unnamed_addr #0 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call = call fastcc i64 @__part_start_io_acct(%struct.block_device* noundef %0, i32 noundef %sectors, i32 noundef %op) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_end_io_acct_remapped(%struct.bio* nocapture noundef readonly %bio, i64 noundef %start_time, %struct.block_device* noundef %orig_bdev) local_unnamed_addr #0 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %and = and i32 %0, 255
  call fastcc void @__part_end_io_acct(%struct.block_device* noundef %orig_bdev, i32 noundef %and, i64 noundef %start_time) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__part_end_io_acct(%struct.block_device* noundef %part, i32 noundef %op, i64 noundef %start_time) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @op_stat_group(i32 noundef %op) #17
  %0 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %0, %start_time
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  call fastcc void @update_io_ticks(%struct.block_device* noundef %part, i64 noundef %0, i1 noundef true) #17
  %call7 = call fastcc i64 @jiffies_to_nsecs(i64 noundef %sub) #17
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 1
  %1 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %2 = zext i32 %call to i64
  %arrayidx = getelementptr %struct.disk_stats, %struct.disk_stats* %1, i64 0, i32 0, i64 %2
  %3 = ptrtoint i64* %arrayidx to i64
  %call14 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call14, %3
  %4 = inttoptr i64 %add to i64*
  %5 = load i64, i64* %4, align 8
  %add15 = add i64 %5, %call7
  store i64 %add15, i64* %4, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 14
  %6 = load i8, i8* %bd_partno, align 8
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body47, label %if.then

if.then:                                          ; preds = %entry
  %call26 = call fastcc i64 @jiffies_to_nsecs(i64 noundef %sub) #17
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 16
  %7 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i64 0, i32 7
  %8 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_stats33 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i64 0, i32 1
  %9 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats33, align 8
  %arrayidx36 = getelementptr %struct.disk_stats, %struct.disk_stats* %9, i64 0, i32 0, i64 %2
  %10 = ptrtoint i64* %arrayidx36 to i64
  %call38 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add39 = add i64 %call38, %10
  %11 = inttoptr i64 %add39 to i64*
  %12 = load i64, i64* %11, align 8
  %add40 = add i64 %12, %call26
  store i64 %add40, i64* %11, align 8
  br label %do.body47

do.body47:                                        ; preds = %entry, %if.then
  %13 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %14 = ptrtoint %struct.disk_stats* %13 to i64
  %call62 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add63 = add i64 %call62, ptrtoint (i32* @cpu_number to i64)
  %15 = inttoptr i64 %add63 to i32*
  %16 = load i32, i32* %15, align 4
  %idxprom64 = sext i32 %16 to i64
  %arrayidx65 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom64
  %17 = load i64, i64* %arrayidx65, align 8
  %add66 = add i64 %17, %14
  %18 = inttoptr i64 %add66 to %struct.disk_stats*
  %call67 = call fastcc i1 @op_is_write(i32 noundef %op) #17
  %idxprom68 = zext i1 %call67 to i64
  %a = getelementptr %struct.disk_stats, %struct.disk_stats* %18, i64 0, i32 5, i64 %idxprom68, i32 0
  call fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %a) #18
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_end_io_acct(%struct.gendisk* nocapture noundef readonly %disk, i32 noundef %op, i64 noundef %start_time) local_unnamed_addr #0 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  call fastcc void @__part_end_io_acct(%struct.block_device* noundef %0, i32 noundef %op, i64 noundef %start_time) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_steal_bios(%struct.bio_list* nocapture noundef %list, %struct.request* nocapture noundef %rq) local_unnamed_addr #11 {
entry:
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %list, i64 0, i32 1
  %1 = load %struct.bio*, %struct.bio** %tail, align 8
  %tobool1.not = icmp eq %struct.bio* %1, null
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %list, i64 0, i32 0
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %1, i64 0, i32 0
  %head.sink = select i1 %tobool1.not, %struct.bio** %head, %struct.bio** %bi_next
  store %struct.bio* %0, %struct.bio** %head.sink, align 8
  %biotail = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 10
  %2 = load %struct.bio*, %struct.bio** %biotail, align 8
  store %struct.bio* %2, %struct.bio** %tail, align 8
  store %struct.bio* null, %struct.bio** %bio, align 8
  store %struct.bio* null, %struct.bio** %biotail, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  store i32 0, i32* %__data_len, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_update_request(%struct.request* noundef %req, i8 noundef %error, i32 noundef %nr_bytes) local_unnamed_addr #0 {
entry:
  %call = call i32 @blk_status_to_errno(i8 noundef %error) #17
  %bio = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %cleanup66, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8 %error, 0
  br i1 %tobool1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %req) #17
  br i1 %call2, label %if.end9, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, 2048
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then8, label %if.end9, !prof !8

if.then8:                                         ; preds = %land.rhs
  call fastcc void @print_req_error(%struct.request* noundef %req, i8 noundef %error) #17
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true, %if.then8, %land.rhs
  call fastcc void @blk_account_io_completion(%struct.request* noundef %req, i32 noundef %nr_bytes) #17
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end9
  %total_bytes.0 = phi i32 [ 0, %if.end9 ], [ %add, %if.end21 ]
  %nr_bytes.addr.0 = phi i32 [ %nr_bytes, %if.end9 ], [ %sub, %if.end21 ]
  %2 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool11.not = icmp eq %struct.bio* %2, null
  br i1 %tobool11.not, label %if.then28, label %while.body

while.body:                                       ; preds = %while.cond
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %2, i64 0, i32 8, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %cmp = icmp ult i32 %3, %nr_bytes.addr.0
  %cond = select i1 %cmp, i32 %3, i32 %nr_bytes.addr.0
  %cmp17.not = icmp ugt i32 %3, %nr_bytes.addr.0
  br i1 %cmp17.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %while.body
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %2, i64 0, i32 0
  %4 = load %struct.bio*, %struct.bio** %bi_next, align 8
  store %struct.bio* %4, %struct.bio** %bio, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %while.body
  call fastcc void @bio_clear_flag(%struct.bio* noundef nonnull %2, i32 noundef 8) #17
  call fastcc void @req_bio_endio(%struct.request* noundef %req, %struct.bio* noundef nonnull %2, i32 noundef %cond, i8 noundef %error) #17
  %add = add i32 %cond, %total_bytes.0
  %sub = sub i32 %nr_bytes.addr.0, %cond
  %tobool22.not = icmp eq i32 %sub, 0
  br i1 %tobool22.not, label %while.end, label %while.cond

while.end:                                        ; preds = %if.end21
  %.pr = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool27.not = icmp eq %struct.bio* %.pr, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.cond, %while.end
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 7
  store i32 0, i32* %__data_len, align 8
  br label %cleanup66

if.end29:                                         ; preds = %while.end
  %__data_len30 = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 7
  %5 = load i32, i32* %__data_len30, align 8
  %sub31 = sub i32 %5, %add
  store i32 %sub31, i32* %__data_len30, align 8
  %call32 = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %req) #17
  br i1 %call32, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end29
  %shr = ashr i32 %add, 9
  %conv34 = sext i32 %shr to i64
  %__sector = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 8
  %6 = load i64, i64* %__sector, align 8
  %add35 = add i64 %6, %conv34
  store i64 %add35, i64* %__sector, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29
  %rq_flags37 = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 4
  %7 = load i32, i32* %rq_flags37, align 4
  %and38 = and i32 %7, 32
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end50, label %if.then40

if.then40:                                        ; preds = %if.end36
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %8 = load i32, i32* %cmd_flags, align 8
  %9 = and i32 %8, -1793
  store i32 %9, i32* %cmd_flags, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %.pr, i64 0, i32 2
  %10 = load i32, i32* %bi_opf, align 8
  %11 = and i32 %10, 1792
  %or116 = or i32 %11, %9
  store i32 %or116, i32* %cmd_flags, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.end36
  %and52 = and i32 %7, 262144
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then54, label %cleanup66

if.then54:                                        ; preds = %if.end50
  %call55 = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %req) #17
  %call56 = call fastcc i32 @blk_rq_cur_bytes(%struct.request* noundef %req) #17
  %cmp57 = icmp ult i32 %call55, %call56
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.then54
  call void @blk_dump_rq_flags(%struct.request* noundef %req, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #17
  %call60 = call fastcc i32 @blk_rq_cur_bytes(%struct.request* noundef %req) #17
  store i32 %call60, i32* %__data_len30, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.then54
  %call63 = call i32 @blk_recalc_rq_segments(%struct.request* noundef %req) #18
  %conv64 = trunc i32 %call63 to i16
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 20
  store i16 %conv64, i16* %nr_phys_segments, align 2
  br label %cleanup66

cleanup66:                                        ; preds = %if.end50, %if.end62, %entry, %if.then28
  %retval.0 = phi i1 [ false, %if.then28 ], [ false, %entry ], [ true, %if.end62 ], [ true, %if.end50 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_rq_is_passthrough(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @blk_op_is_passthrough(i32 noundef %and) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_req_error(%struct.request* nocapture noundef readonly %req, i8 noundef %status) unnamed_addr #0 {
entry:
  %0 = zext i8 %status to i64
  %cmp = icmp ugt i8 %status, 16
  br i1 %cmp, label %if.then, label %if.end19, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 222; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !32
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @print_req_error._rs, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.print_req_error, i64 0, i64 0)) #18
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end19
  %name = getelementptr [17 x %struct.anon.82], [17 x %struct.anon.82]* @blk_errors, i64 0, i64 %0, i32 1
  %1 = load i8*, i8** %name, align 8
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 15
  %2 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %tobool23.not = icmp eq %struct.gendisk* %2, null
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 3, i64 0
  %cond = select i1 %tobool23.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay
  %call25 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %req) #17
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %3 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %3, 255
  %call28 = call i8* @blk_op_str(i32 noundef %and) #17
  %and30 = and i32 %3, -256
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 20
  %4 = load i16, i16* %nr_phys_segments, align 2
  %conv31 = zext i16 %4 to i32
  %ioprio = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 22
  %5 = load i16, i16* %ioprio, align 2
  %6 = lshr i16 %5, 13
  %7 = zext i16 %6 to i32
  %call34 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.blk_update_request, i64 0, i64 0), i8* noundef %1, i8* noundef %cond, i64 noundef %call25, i32 noundef %and, i8* noundef %call28, i32 noundef %and30, i32 noundef %conv31, i32 noundef %7) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_account_io_completion(%struct.request* nocapture noundef readonly %req, i32 noundef %bytes) unnamed_addr #0 {
entry:
  %part = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 16
  %0 = load %struct.block_device*, %struct.block_device** %part, align 8
  %tobool.not = icmp eq %struct.block_device* %0, null
  br i1 %tobool.not, label %if.end49, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @blk_do_io_stat(%struct.request* noundef %req) #17
  br i1 %call, label %if.then, label %if.end49

if.then:                                          ; preds = %land.lhs.true
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %1 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %1, 255
  %call1 = call fastcc i32 @op_stat_group(i32 noundef %and) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %shr = lshr i32 %bytes, 9
  %conv = zext i32 %shr to i64
  %2 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %2, i64 0, i32 1
  %3 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %4 = zext i32 %call1 to i64
  %arrayidx = getelementptr %struct.disk_stats, %struct.disk_stats* %3, i64 0, i32 1, i64 %4
  %5 = ptrtoint i64* %arrayidx to i64
  %call11 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call11, %5
  %6 = inttoptr i64 %add to i64*
  %7 = load i64, i64* %6, align 8
  %add12 = add i64 %7, %conv
  store i64 %add12, i64* %6, align 8
  %8 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i64 0, i32 14
  %9 = load i8, i8* %bd_partno, align 8
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %do.end48, label %if.then19

if.then19:                                        ; preds = %if.then
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i64 0, i32 16
  %10 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i64 0, i32 7
  %11 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_stats35 = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i64 0, i32 1
  %12 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats35, align 8
  %arrayidx38 = getelementptr %struct.disk_stats, %struct.disk_stats* %12, i64 0, i32 1, i64 %4
  %13 = ptrtoint i64* %arrayidx38 to i64
  %call40 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add41 = add i64 %call40, %13
  %14 = inttoptr i64 %add41 to i64*
  %15 = load i64, i64* %14, align 8
  %add42 = add i64 %15, %conv
  store i64 %add42, i64* %14, align 8
  br label %do.end48

do.end48:                                         ; preds = %if.then19, %if.then
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #11 {
entry:
  %shl = shl nuw i32 1, %bit
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = trunc i32 %shl to i16
  %2 = xor i16 %1, -1
  %conv1 = and i16 %0, %2
  store i16 %conv1, i16* %bi_flags, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @req_bio_endio(%struct.request* nocapture noundef readonly %rq, %struct.bio* noundef %bio, i32 noundef %nbytes, i8 noundef %error) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8 %error, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  store i8 %error, i8* %bi_status, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 2048
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end5, label %if.then4, !prof !12

if.then4:                                         ; preds = %if.end
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 4) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  call void @bio_advance(%struct.bio* noundef %bio, i32 noundef %nbytes) #18
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %1 = load i32, i32* %cmd_flags, align 8
  %and6 = and i32 %1, 255
  %cmp = icmp eq i32 %and6, 13
  %or.cond = and i1 %tobool.not, %cmp
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %2 = load i32, i32* %bi_size, align 8
  %tobool12.not = icmp eq i32 %2, 0
  br i1 %or.cond, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end5
  br i1 %tobool12.not, label %if.end17.thread, label %if.end17.thread40

if.end17.thread40:                                ; preds = %if.then11
  %bi_status14 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  store i8 10, i8* %bi_status14, align 2
  br label %if.end27

if.end17.thread:                                  ; preds = %if.then11
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  %3 = load i64, i64* %__sector, align 8
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  store i64 %3, i64* %bi_sector, align 8
  br label %land.lhs.true22

if.end17:                                         ; preds = %if.end5
  br i1 %tobool12.not, label %land.lhs.true22, label %if.end27

land.lhs.true22:                                  ; preds = %if.end17.thread, %if.end17
  %4 = load i32, i32* %rq_flags, align 4
  %and24 = and i32 %4, 16
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true22
  call void @bio_endio(%struct.bio* noundef %bio) #18
  br label %if.end27

if.end27:                                         ; preds = %if.end17.thread40, %if.then26, %land.lhs.true22, %if.end17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_cur_bytes(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call fastcc i32 @bio_cur_bytes(%struct.bio* noundef nonnull %0) #17
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_recalc_rq_segments(%struct.request* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rq_flush_dcache_pages(%struct.request* nocapture noundef readonly %rq) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.req_iterator, align 8
  %0 = bitcast %struct.req_iterator* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %1 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bio2 = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 1
  %iter5 = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0
  %bi_size = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0, i32 1
  store %struct.bio* %1, %struct.bio** %bio2, align 8
  %bi_idx = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.then, %for.inc71
  %storemerge99 = phi %struct.bio* [ %1, %if.then ], [ %15, %for.inc71 ]
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %storemerge99, i64 0, i32 8
  %2 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %2, i64 24, i1 false)
  %3 = load i32, i32* %bi_size, align 8
  %tobool9.not97 = icmp eq i32 %3, 0
  br i1 %tobool9.not97, label %for.inc71, label %land.rhs

land.rhs:                                         ; preds = %for.body, %land.rhs
  %4 = phi %struct.bio* [ %.pre100, %land.rhs ], [ %storemerge99, %for.body ]
  %5 = phi i32 [ %13, %land.rhs ], [ %3, %for.body ]
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %4, i64 0, i32 15
  %6 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %7 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %7 to i64
  %bv_page12 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 0
  %8 = load %struct.page*, %struct.page** %bv_page12, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 2
  %9 = load i32, i32* %bv_offset, align 4
  %10 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %10, %9
  %11 = lshr i32 %add, 12
  %div = zext i32 %11 to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %8, i64 %div
  %bv_len28 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 1
  %12 = load i32, i32* %bv_len28, align 8
  %sub = sub i32 %12, %10
  %cmp = icmp ult i32 %5, %sub
  %cond = select i1 %cmp, i32 %5, i32 %sub
  %rem = and i32 %add, 4095
  %sub43 = sub nuw nsw i32 4096, %rem
  %cmp46 = icmp ult i32 %cond, %sub43
  %cond51 = select i1 %cmp46, i32 %cond, i32 %sub43
  call void @flush_dcache_page(%struct.page* noundef %add.ptr) #18
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %4, %struct.bvec_iter* noundef nonnull %iter5, i32 noundef %cond51) #17
  %13 = load i32, i32* %bi_size, align 8
  %tobool9.not = icmp eq i32 %13, 0
  %.pre100 = load %struct.bio*, %struct.bio** %bio2, align 8
  br i1 %tobool9.not, label %for.inc71, label %land.rhs

for.inc71:                                        ; preds = %land.rhs, %for.body
  %14 = phi %struct.bio* [ %storemerge99, %for.body ], [ %.pre100, %land.rhs ]
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %14, i64 0, i32 0
  %15 = load %struct.bio*, %struct.bio** %bi_next, align 8
  store %struct.bio* %15, %struct.bio** %bio2, align 8
  %tobool4.not = icmp eq %struct.bio* %15, null
  br i1 %tobool4.not, label %if.end, label %for.body

if.end:                                           ; preds = %for.inc71, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_advance_iter_single(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #11 {
entry:
  %shr = lshr i32 %bytes, 9
  %conv = zext i32 %shr to i64
  %bi_sector = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %bi_sector, align 8
  %add = add i64 %0, %conv
  store i64 %add, i64* %bi_sector, align 8
  %call = call fastcc i1 @bio_no_advance_iter(%struct.bio* noundef %bio) #17
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %1, %bytes
  store i32 %sub, i32* %bi_size, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  call fastcc void @bvec_iter_advance_single(%struct.bio_vec* noundef %2, %struct.bvec_iter* noundef %iter, i32 noundef %bytes) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_lld_busy(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %q) #17
  br i1 %call, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %busy = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %0, i64 0, i32 15
  %1 = load i1 (%struct.request_queue*)*, i1 (%struct.request_queue*)** %busy, align 8
  %tobool.not = icmp eq i1 (%struct.request_queue*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i1 %1(%struct.request_queue* noundef %q) #18
  %conv = zext i1 %call3 to i32
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_rq_unprep_clone(%struct.request* nocapture noundef %rq) local_unnamed_addr #0 {
entry:
  %bio1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio1, align 8
  %cmp.not6 = icmp eq %struct.bio* %0, null
  br i1 %cmp.not6, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi %struct.bio* [ %3, %while.body ], [ %0, %entry ]
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %1, i64 0, i32 0
  %2 = load %struct.bio*, %struct.bio** %bi_next, align 8
  store %struct.bio* %2, %struct.bio** %bio1, align 8
  call void @bio_put(%struct.bio* noundef nonnull %1) #18
  %3 = load %struct.bio*, %struct.bio** %bio1, align 8
  %cmp.not = icmp eq %struct.bio* %3, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_rq_prep_clone(%struct.request* nocapture noundef %rq, %struct.request* nocapture noundef readonly %rq_src, %struct.bio_set* noundef %bs, i32 noundef %gfp_mask, i32 (%struct.bio*, %struct.bio*, i8*)* noundef readonly %bio_ctr, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.bio_set* %bs, null
  %spec.store.select = select i1 %tobool.not, %struct.bio_set* @fs_bio_set, %struct.bio_set* %bs
  %bio1 = getelementptr inbounds %struct.request, %struct.request* %rq_src, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio1, align 8
  %tobool2.not = icmp eq %struct.bio* %0, null
  br i1 %tobool2.not, label %if.end22, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool9.not = icmp eq i32 (%struct.bio*, %struct.bio*, i8*)* %bio_ctr, null
  %bio14 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %biotail = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end20
  %bio_src.083 = phi %struct.bio* [ %0, %for.body.lr.ph ], [ %3, %if.end20 ]
  %call = call %struct.bio* @bio_clone_fast(%struct.bio* noundef nonnull %bio_src.083, i32 noundef %gfp_mask, %struct.bio_set* noundef %spec.store.select) #18
  %tobool6.not = icmp eq %struct.bio* %call, null
  br i1 %tobool6.not, label %if.end41, label %if.end8

if.end8:                                          ; preds = %for.body
  br i1 %tobool9.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call i32 %bio_ctr(%struct.bio* noundef nonnull %call, %struct.bio* noundef nonnull %bio_src.083, i8* noundef %data) #18
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then40

if.end13:                                         ; preds = %land.lhs.true, %if.end8
  %1 = load %struct.bio*, %struct.bio** %bio14, align 8
  %tobool15.not = icmp eq %struct.bio* %1, null
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end13
  %2 = load %struct.bio*, %struct.bio** %biotail, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %2, i64 0, i32 0
  br label %if.end20

if.end20:                                         ; preds = %if.end13, %if.then16
  %biotail.sink = phi %struct.bio** [ %bi_next, %if.then16 ], [ %biotail, %if.end13 ]
  %bio14.sink = phi %struct.bio** [ %biotail, %if.then16 ], [ %bio14, %if.end13 ]
  store %struct.bio* %call, %struct.bio** %biotail.sink, align 8
  store %struct.bio* %call, %struct.bio** %bio14.sink, align 8
  %bi_next21 = getelementptr inbounds %struct.bio, %struct.bio* %bio_src.083, i64 0, i32 0
  %3 = load %struct.bio*, %struct.bio** %bi_next21, align 8
  %tobool5.not = icmp eq %struct.bio* %3, null
  br i1 %tobool5.not, label %if.end22, label %for.body

if.end22:                                         ; preds = %if.end20, %entry
  %call23 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %rq_src) #17
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  store i64 %call23, i64* %__sector, align 8
  %call24 = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq_src) #17
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  store i32 %call24, i32* %__data_len, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq_src, i64 0, i32 4
  %4 = load i32, i32* %rq_flags, align 4
  %and = and i32 %4, 262144
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end22
  %rq_flags27 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %5 = load i32, i32* %rq_flags27, align 4
  %or = or i32 %5, 262144
  store i32 %or, i32* %rq_flags27, align 4
  %6 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13
  %7 = getelementptr inbounds %struct.request, %struct.request* %rq_src, i64 0, i32 13
  %8 = bitcast %union.anon.73* %6 to i8*
  %9 = bitcast %union.anon.73* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %rq_src, i64 0, i32 20
  %10 = load i16, i16* %nr_phys_segments, align 2
  %nr_phys_segments30 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 20
  store i16 %10, i16* %nr_phys_segments30, align 2
  %ioprio = getelementptr inbounds %struct.request, %struct.request* %rq_src, i64 0, i32 22
  %11 = load i16, i16* %ioprio, align 2
  %ioprio31 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 22
  store i16 %11, i16* %ioprio31, align 2
  br label %cleanup

if.then40:                                        ; preds = %land.lhs.true
  call void @bio_put(%struct.bio* noundef nonnull %call) #18
  br label %if.end41

if.end41:                                         ; preds = %for.body, %if.then40
  call void @blk_rq_unprep_clone(%struct.request* noundef %rq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end41
  %retval.0 = phi i32 [ -12, %if.end41 ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_clone_fast(%struct.bio* noundef, i32 noundef, %struct.bio_set* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kblockd_schedule_work(%struct.work_struct* noundef %work) local_unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @kblockd_workqueue, align 8
  %call = call fastcc i1 @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #17
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kblockd_mod_delayed_work_on(i32 noundef %cpu, %struct.delayed_work* noundef %dwork, i64 noundef %delay) local_unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @kblockd_workqueue, align 8
  %call = call i1 @mod_delayed_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %0, %struct.delayed_work* noundef %dwork, i64 noundef %delay) #18
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mod_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_start_plug(%struct.blk_plug* noundef %plug) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 109
  %2 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %2, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %mq_list) #17
  %cb_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %cb_list) #17
  %rq_count = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 2
  store i16 0, i16* %rq_count, align 8
  %multiple_queues = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 3
  store i8 0, i8* %multiple_queues, align 2
  %nowait = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 4
  store i8 0, i8* %nowait, align 1
  store %struct.blk_plug* %plug, %struct.blk_plug** %plug1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.blk_plug_cb* @blk_check_plugged(void (%struct.blk_plug_cb*, i1)* noundef %unplug, i8* noundef %data, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 109
  %2 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cb_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %2, i64 0, i32 1
  %3 = bitcast %struct.list_head* %cb_list to %struct.blk_plug_cb**
  %cb.064 = load %struct.blk_plug_cb*, %struct.blk_plug_cb** %3, align 8
  %list65 = getelementptr inbounds %struct.blk_plug_cb, %struct.blk_plug_cb* %cb.064, i64 0, i32 0
  %cmp.not66 = icmp eq %struct.list_head* %list65, %cb_list
  br i1 %cmp.not66, label %do.body16, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %cb.067 = phi %struct.blk_plug_cb* [ %cb.0, %for.inc ], [ %cb.064, %if.end ]
  %callback = getelementptr inbounds %struct.blk_plug_cb, %struct.blk_plug_cb* %cb.067, i64 0, i32 1
  %4 = load void (%struct.blk_plug_cb*, i1)*, void (%struct.blk_plug_cb*, i1)** %callback, align 8
  %cmp3 = icmp eq void (%struct.blk_plug_cb*, i1)* %4, %unplug
  br i1 %cmp3, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %data4 = getelementptr inbounds %struct.blk_plug_cb, %struct.blk_plug_cb* %cb.067, i64 0, i32 2
  %5 = load i8*, i8** %data4, align 8
  %cmp5 = icmp eq i8* %5, %data
  br i1 %cmp5, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %6 = bitcast %struct.blk_plug_cb* %cb.067 to %struct.blk_plug_cb**
  %cb.0 = load %struct.blk_plug_cb*, %struct.blk_plug_cb** %6, align 8
  %list = getelementptr inbounds %struct.blk_plug_cb, %struct.blk_plug_cb* %cb.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %cb_list
  br i1 %cmp.not, label %do.body16, label %for.body

do.body16:                                        ; preds = %for.inc, %if.end
  %cmp17 = icmp ult i32 %size, 32
  br i1 %cmp17, label %do.body24, label %do.end32, !prof !8

do.body24:                                        ; preds = %do.body16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 1710; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !35
  unreachable

do.end32:                                         ; preds = %do.body16
  %conv = sext i32 %size to i64
  %call34 = call fastcc i8* @kzalloc(i64 noundef %conv) #17
  %7 = bitcast i8* %call34 to %struct.blk_plug_cb*
  %tobool35.not = icmp eq i8* %call34, null
  br i1 %tobool35.not, label %cleanup, label %if.then36

if.then36:                                        ; preds = %do.end32
  %data37 = getelementptr inbounds i8, i8* %call34, i64 24
  %8 = bitcast i8* %data37 to i8**
  store i8* %data, i8** %8, align 8
  %callback38 = getelementptr inbounds i8, i8* %call34, i64 16
  %9 = bitcast i8* %callback38 to void (%struct.blk_plug_cb*, i1)**
  store void (%struct.blk_plug_cb*, i1)* %unplug, void (%struct.blk_plug_cb*, i1)** %9, align 8
  %list39 = bitcast i8* %call34 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %list39, %struct.list_head* noundef %cb_list) #17
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %do.end32, %if.then36, %entry
  %retval.0 = phi %struct.blk_plug_cb* [ null, %entry ], [ %7, %if.then36 ], [ %7, %do.end32 ], [ %cb.067, %land.lhs.true ]
  ret %struct.blk_plug_cb* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 2848) #18
  ret i8* %call10.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_flush_plug_list(%struct.blk_plug* noundef %plug, i1 noundef %from_schedule) local_unnamed_addr #0 {
entry:
  call fastcc void @flush_plug_callbacks(%struct.blk_plug* noundef %plug, i1 noundef %from_schedule) #17
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mq_list) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @blk_mq_flush_plug_list(%struct.blk_plug* noundef %plug, i1 noundef %from_schedule) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_plug_callbacks(%struct.blk_plug* noundef %plug, i1 noundef %from_schedule) unnamed_addr #0 {
entry:
  %callbacks = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %callbacks to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %callbacks, i64 0, i32 0
  store %struct.list_head* %callbacks, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %callbacks, i64 0, i32 1
  store %struct.list_head* %callbacks, %struct.list_head** %prev, align 8
  %cb_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 1
  %call17 = call fastcc i32 @list_empty(%struct.list_head* noundef %cb_list) #17
  %tobool.not18 = icmp eq i32 %call17, 0
  br i1 %tobool.not18, label %while.body.lr.ph, label %while.end9

while.body.lr.ph:                                 ; preds = %entry
  %1 = bitcast %struct.list_head* %callbacks to %struct.blk_plug_cb**
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body6, %while.body
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %cb_list) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end9

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  call fastcc void @list_splice_init(%struct.list_head* noundef %cb_list, %struct.list_head* noundef nonnull %callbacks) #17
  %call315 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %callbacks) #17
  %tobool4.not16 = icmp eq i32 %call315, 0
  br i1 %tobool4.not16, label %while.body6, label %while.cond.loopexit

while.body6:                                      ; preds = %while.body, %while.body6
  %2 = load %struct.blk_plug_cb*, %struct.blk_plug_cb** %1, align 8
  %list = getelementptr inbounds %struct.blk_plug_cb, %struct.blk_plug_cb* %2, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %list) #17
  %callback = getelementptr inbounds %struct.blk_plug_cb, %struct.blk_plug_cb* %2, i64 0, i32 1
  %3 = load void (%struct.blk_plug_cb*, i1)*, void (%struct.blk_plug_cb*, i1)** %callback, align 8
  call void %3(%struct.blk_plug_cb* noundef %2, i1 noundef %from_schedule) #18
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %callbacks) #17
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.body6, label %while.cond.loopexit

while.end9:                                       ; preds = %while.cond.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #13 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_flush_plug_list(%struct.blk_plug* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_finish_plug(%struct.blk_plug* noundef %plug) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 109
  %2 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %cmp.not = icmp eq %struct.blk_plug* %2, %plug
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @blk_flush_plug_list(%struct.blk_plug* noundef %plug, i1 noundef false) #17
  store %struct.blk_plug* null, %struct.blk_plug** %plug1, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_io_schedule() local_unnamed_addr #0 {
entry:
  call void @io_schedule() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @blk_dev_init() local_unnamed_addr #14 section ".init.text" {
entry:
  %call = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 noundef 24, i32 noundef 0) #18
  store %struct.workqueue_struct* %call, %struct.workqueue_struct** @kblockd_workqueue, align 8
  %tobool.not = icmp eq %struct.workqueue_struct* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #23
  unreachable

if.end:                                           ; preds = %entry
  %call5 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1848, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #18
  store %struct.kmem_cache* %call5, %struct.kmem_cache** @blk_requestq_cachep, align 8
  store %struct.dentry* inttoptr (i64 -19 to %struct.dentry*), %struct.dentry** @blk_debugfs_root, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8* noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !38
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !40
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_ref_tryget_live(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store i64* null, i64** %percpu_count, align 8, !annotation !15
  call fastcc void @__rcu_read_lock() #18
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #17
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !41
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef 1) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !42
  br label %if.end12

if.else:                                          ; preds = %entry
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %4 = load i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %4, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %counter.i.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 0, i32 0
  %6 = load volatile i64, i64* %counter.i.i.i.i.i, align 8
  %7 = bitcast %struct.percpu_ref_data* %5 to i8*
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.cond.i.i.i.i.i, %if.then10
  %c.0.i.i.i.i.i = phi i64 [ %6, %if.then10 ], [ %call14.i.i.i.i.i.i.i, %do.cond.i.i.i.i.i ]
  %cmp.i.i.i.i.i = icmp eq i64 %c.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %atomic_long_inc_not_zero.exit, label %do.cond.i.i.i.i.i, !prof !8

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i64 %c.0.i.i.i.i.i, 1
  %call14.i.i.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %7, i64 noundef %c.0.i.i.i.i.i, i64 noundef %add.i.i.i.i.i) #18
  %cmp.not.i.i.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i.i.i, %c.0.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i.i, label %atomic_long_inc_not_zero.exit, label %do.body.i.i.i.i.i, !prof !12

atomic_long_inc_not_zero.exit:                    ; preds = %do.body.i.i.i.i.i, %do.cond.i.i.i.i.i
  %8 = xor i1 %cmp.i.i.i.i.i, true
  br label %if.end12

if.end12:                                         ; preds = %if.else, %atomic_long_inc_not_zero.exit, %do.body1
  %ret.0.off0 = phi i1 [ true, %do.body1 ], [ false, %if.else ], [ %8, %atomic_long_inc_not_zero.exit ]
  call fastcc void @rcu_read_unlock() #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** nocapture noundef writeonly %percpu_countp) unnamed_addr #13 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load volatile i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to i64*
  store i64* %1, i64** %percpu_countp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #19, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #19, !srcloc !45
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !46
  call void @rcu_read_unlock_strict() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store i64* null, i64** %percpu_count, align 8, !annotation !15
  call fastcc void @__rcu_read_lock() #18
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #17
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef -1) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !48
  br label %if.end14

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %count) #18
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12, label %if.end14, !prof !8

if.then12:                                        ; preds = %if.else
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %release = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 1
  %6 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %release, align 8
  call void %6(%struct.percpu_ref* noundef %ref) #18
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %do.body1
  call fastcc void @rcu_read_unlock() #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #19, !srcloc !49
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__submit_bio(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %call = call fastcc i32 @bio_queue_enter(%struct.bio* noundef %bio) #17
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @submit_bio_checks(%struct.bio* noundef %bio) #17
  br i1 %call2, label %lor.lhs.false, label %queue_exit

lor.lhs.false:                                    ; preds = %if.end
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 8
  %2 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %submit_bio = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %2, i64 0, i32 0
  %3 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %submit_bio, align 8
  %tobool6.not = icmp eq i32 (%struct.bio*)* %3, null
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false
  %call10 = call i32 %3(%struct.bio* noundef %bio) #18
  br label %queue_exit

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call i32 @blk_mq_submit_bio(%struct.bio* noundef %bio) #18
  br label %cleanup

queue_exit:                                       ; preds = %if.end, %if.then7
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ -1, %if.end ]
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %4 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  call void @blk_queue_exit(%struct.request_queue* noundef %4) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %queue_exit, %if.end11
  %retval.0 = phi i32 [ %ret.0, %queue_exit ], [ %call12, %if.end11 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.bio* @bio_list_pop(%struct.bio_list* nocapture noundef %bl) unnamed_addr #11 {
entry:
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %head, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 0
  %1 = load %struct.bio*, %struct.bio** %bi_next, align 8
  store %struct.bio* %1, %struct.bio** %head, align 8
  %tobool4.not = icmp eq %struct.bio* %1, null
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  store %struct.bio* null, %struct.bio** %tail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  store %struct.bio* null, %struct.bio** %bi_next, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret %struct.bio* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_queue_enter(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %mq_freeze_depth = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 43
  %state12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 12
  %3 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %mq_freeze_wq = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 45
  br label %while.cond

while.cond:                                       ; preds = %do.end31, %entry
  %call = call fastcc i1 @blk_try_enter_queue(%struct.request_queue* noundef %2, i1 noundef false) #17
  br i1 %call, label %cleanup37, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %bi_opf, align 8
  %5 = and i32 %4, 2097152
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load volatile i64, i64* %state12, align 8
  %7 = and i64 %6, 4
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %if.end, label %dead

if.end:                                           ; preds = %if.then
  call fastcc void @bio_wouldblock_error(%struct.bio* noundef %bio) #17
  br label %cleanup37

if.end4:                                          ; preds = %while.body
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !50
  %8 = load i32, i32* %mq_freeze_depth, align 4
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %do.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %9 = load volatile i64, i64* %state12, align 8
  %10 = and i64 %9, 4
  %tobool14.not = icmp eq i64 %10, 0
  br i1 %tobool14.not, label %if.end16, label %do.end31

if.end16:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !15
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #18
  %call1764 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #18
  %11 = load i32, i32* %mq_freeze_depth, align 4
  %tobool19.not65 = icmp eq i32 %11, 0
  br i1 %tobool19.not65, label %for.end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end16, %cleanup
  %12 = load volatile i64, i64* %state12, align 8
  %13 = and i64 %12, 4
  %tobool26.not = icmp eq i64 %13, 0
  br i1 %tobool26.not, label %cleanup, label %for.end

cleanup:                                          ; preds = %lor.lhs.false23
  call void @schedule() #18
  %call17 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #18
  %14 = load i32, i32* %mq_freeze_depth, align 4
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %for.end, label %lor.lhs.false23

for.end:                                          ; preds = %cleanup, %lor.lhs.false23, %if.end16
  call void @finish_wait(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #18
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #19
  br label %do.end31

do.end31:                                         ; preds = %if.end4, %lor.lhs.false, %for.end
  %15 = load volatile i64, i64* %state12, align 8
  %16 = and i64 %15, 4
  %tobool34.not = icmp eq i64 %16, 0
  br i1 %tobool34.not, label %while.cond, label %dead

dead:                                             ; preds = %do.end31, %if.then
  call fastcc void @bio_io_error(%struct.bio* noundef %bio) #17
  br label %cleanup37

cleanup37:                                        ; preds = %while.cond, %dead, %if.end
  %retval.0 = phi i32 [ -19, %dead ], [ -16, %if.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @submit_bio_checks(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc %struct.blk_plug* @blk_mq_plug() #17
  %tobool.not = icmp eq %struct.blk_plug* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %nowait = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %call, i64 0, i32 4
  %3 = load i8, i8* %nowait, align 1, !range !51
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %4 = load i32, i32* %bi_opf, align 8
  %5 = or i32 %4, 2097152
  store i32 %5, i32* %bi_opf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %bi_opf6 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %6 = load i32, i32* %bi_opf6, align 8
  %7 = and i32 %6, 2097152
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end13, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %8 = load volatile i64, i64* %queue_flags, align 8
  %9 = and i64 %8, 536870912
  %tobool11.not = icmp eq i64 %9, 0
  br i1 %tobool11.not, label %end_io, label %if.end13

if.end13:                                         ; preds = %land.lhs.true9, %if.end
  call fastcc void @bio_check_ro(%struct.bio* noundef %bio) #17
  %call24 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 11) #17
  br i1 %call24, label %if.end51, label %if.then25

if.then25:                                        ; preds = %if.end13
  %call26 = call fastcc i32 @bio_check_eod(%struct.bio* noundef %bio) #17
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end36, label %end_io, !prof !12

if.end36:                                         ; preds = %if.then25
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 14
  %10 = load i8, i8* %bd_partno, align 8
  %tobool38.not = icmp eq i8 %10, 0
  br i1 %tobool38.not, label %if.end51, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end36
  call fastcc void @blk_partition_remap(%struct.bio* noundef %bio) #17
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true39, %if.end36, %if.end13
  %11 = load i32, i32* %bi_opf6, align 8
  %call53 = call fastcc i1 @op_is_flush(i32 noundef %11) #17
  br i1 %call53, label %land.lhs.true55, label %if.end67

land.lhs.true55:                                  ; preds = %if.end51
  %queue_flags56 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %12 = load volatile i64, i64* %queue_flags56, align 8
  %13 = and i64 %12, 131072
  %tobool58.not = icmp eq i64 %13, 0
  br i1 %tobool58.not, label %if.then59, label %if.end67

if.then59:                                        ; preds = %land.lhs.true55
  %14 = and i32 %11, -393217
  store i32 %14, i32* %bi_opf6, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %15 = load i32, i32* %bi_size, align 8
  %tobool64.not = icmp ult i32 %15, 512
  br i1 %tobool64.not, label %end_io, label %if.end67

if.end67:                                         ; preds = %if.then59, %land.lhs.true55, %if.end51
  %16 = phi i32 [ %14, %if.then59 ], [ %11, %land.lhs.true55 ], [ %11, %if.end51 ]
  %queue_flags68 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %17 = load volatile i64, i64* %queue_flags68, align 8
  %18 = and i64 %17, 65536
  %tobool70.not = icmp eq i64 %18, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  call fastcc void @bio_clear_hipri(%struct.bio* noundef %bio) #17
  %.pre = load i32, i32* %bi_opf6, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end67
  %19 = phi i32 [ %.pre, %if.then71 ], [ %16, %if.end67 ]
  %trunc = trunc i32 %19 to i8
  switch i8 %trunc, label %sw.epilog [
    i8 3, label %sw.bb
    i8 5, label %sw.bb80
    i8 7, label %sw.bb86
    i8 13, label %end_io
    i8 15, label %end_io
    i8 10, label %end_io
    i8 11, label %end_io
    i8 12, label %end_io
    i8 17, label %end_io
    i8 9, label %sw.bb107
  ]

sw.bb:                                            ; preds = %if.end72
  %20 = load volatile i64, i64* %queue_flags68, align 8
  %21 = and i64 %20, 256
  %tobool77.not = icmp eq i64 %21, 0
  br i1 %tobool77.not, label %end_io, label %sw.epilog

sw.bb80:                                          ; preds = %if.end72
  %22 = load volatile i64, i64* %queue_flags68, align 8
  %23 = and i64 %22, 2048
  %tobool83.not = icmp eq i64 %23, 0
  br i1 %tobool83.not, label %end_io, label %sw.epilog

sw.bb86:                                          ; preds = %if.end72
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 31, i32 15
  %24 = load i32, i32* %max_write_same_sectors, align 8
  %tobool87.not = icmp eq i32 %24, 0
  br i1 %tobool87.not, label %end_io, label %sw.epilog

sw.bb107:                                         ; preds = %if.end72
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 31, i32 16
  %25 = load i32, i32* %max_write_zeroes_sectors, align 4
  %tobool109.not = icmp eq i32 %25, 0
  br i1 %tobool109.not, label %end_io, label %sw.epilog

sw.epilog:                                        ; preds = %if.end72, %sw.bb107, %sw.bb86, %sw.bb80, %sw.bb
  %26 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %27 = inttoptr i64 %26 to %struct.task_struct*
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i64 0, i32 112
  %28 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool113.not = icmp eq %struct.io_context* %28, null
  br i1 %tobool113.not, label %if.then123, label %if.end126, !prof !8

if.then123:                                       ; preds = %sw.epilog
  %node = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 33
  %29 = load i32, i32* %node, align 4
  %call125 = call i32 @create_task_io_context(%struct.task_struct* noundef %27, i32 noundef 2592, i32 noundef %29) #18
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %sw.epilog
  %call130 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 8) #17
  br i1 %call130, label %cleanup, label %if.then131

if.then131:                                       ; preds = %if.end126
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 8) #17
  br label %cleanup

end_io:                                           ; preds = %if.end72, %if.end72, %if.end72, %if.end72, %if.end72, %if.end72, %land.lhs.true9, %sw.bb, %sw.bb80, %sw.bb86, %sw.bb107, %if.then59, %if.then25
  %status.0 = phi i8 [ 10, %if.then25 ], [ 0, %if.then59 ], [ 1, %sw.bb107 ], [ 1, %sw.bb86 ], [ 1, %sw.bb80 ], [ 1, %sw.bb ], [ 1, %land.lhs.true9 ], [ 1, %if.end72 ], [ 1, %if.end72 ], [ 1, %if.end72 ], [ 1, %if.end72 ], [ 1, %if.end72 ], [ 1, %if.end72 ]
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  store i8 %status.0, i8* %bi_status, align 2
  call void @bio_endio(%struct.bio* noundef %bio) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.then131, %end_io
  %retval.0 = phi i1 [ false, %end_io ], [ true, %if.then131 ], [ true, %if.end126 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_submit_bio(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_wouldblock_error(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 4) #17
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  store i8 12, i8* %bi_status, align 2
  call void @bio_endio(%struct.bio* noundef %bio) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_io_error(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  store i8 10, i8* %bi_status, align 2
  call void @bio_endio(%struct.bio* noundef %bio) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_set_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #11 {
entry:
  %shl = shl nuw i32 1, %bit
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = trunc i32 %shl to i16
  %conv1 = or i16 %0, %1
  store i16 %conv1, i16* %bi_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.blk_plug* @blk_mq_plug() unnamed_addr #12 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !18
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %plug = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 109
  %2 = load %struct.blk_plug*, %struct.blk_plug** %plug, align 8
  ret %struct.blk_plug* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_check_ro(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %b = alloca [32 x i8], align 1
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @op_is_write(i32 noundef %and) #17
  br i1 %call, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %call1 = call i32 @bdev_read_only(%struct.block_device* noundef %1) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %b, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !15
  %3 = load i32, i32* %bi_opf, align 8
  %call3 = call fastcc i1 @op_is_flush(i32 noundef %3) #17
  br i1 %call3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %if.then
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %4 = load i32, i32* %bi_size, align 8
  %tobool5.not = icmp ult i32 %4, 512
  br i1 %tobool5.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %.b1 = load i1, i1* @bio_check_ro.__already_done, align 1
  br i1 %.b1, label %cleanup, label %if.then12, !prof !12

if.then12:                                        ; preds = %if.end
  store i1 true, i1* @bio_check_ro.__already_done, align 1
  %call23 = call i8* @bio_devname(%struct.bio* noundef %bio, i8* noundef nonnull %2) #18
  %5 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %5, i64 0, i32 14
  %6 = load i8, i8* %bd_partno, align 8
  %conv25 = zext i8 %6 to i32
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call23, i32 noundef %conv25) #18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-core.c\22; .popsection; .long 14472b - 14470b; .short 708; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then12, %land.lhs.true4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #19
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %cleanup
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_check_eod(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %call = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef %0) #17
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %tobool = icmp ugt i32 %1, 511
  %tobool1 = icmp ne i64 %call, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %land.lhs.true2, label %cleanup

land.lhs.true2:                                   ; preds = %entry
  %shr = lshr i32 %1, 9
  %conv = zext i32 %shr to i64
  %cmp = icmp ult i64 %call, %conv
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %2 = load i64, i64* %bi_sector, align 8
  %sub = sub i64 %call, %conv
  %cmp6 = icmp ugt i64 %2, %sub
  br i1 %cmp6, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true2
  call fastcc void @handle_bad_sector(%struct.bio* noundef %bio, i64 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @blk_partition_remap(%struct.bio* nocapture noundef %bio) unnamed_addr #11 {
entry:
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %tobool4.not = icmp ult i32 %0, 512
  br i1 %tobool4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %entry
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_start_sect = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 0
  %2 = load i64, i64* %bd_start_sect, align 8
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %3 = load i64, i64* %bi_sector, align 8
  %add = add i64 %3, %2
  store i64 %add, i64* %bi_sector, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %entry
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 11) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_flush(i32 noundef %op) unnamed_addr #4 {
entry:
  %0 = and i32 %op, 393216
  %tobool = icmp ne i32 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_hipri(%struct.bio* nocapture noundef %bio) unnamed_addr #11 {
entry:
  call fastcc void @bio_clear_flag(%struct.bio* noundef %bio, i32 noundef 13) #17
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %1 = and i32 %0, -16777217
  store i32 %1, i32* %bi_opf, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_task_io_context(%struct.task_struct* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_only(%struct.block_device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bio_devname(%struct.bio* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bdev_nr_sectors(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #8 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #17
  %shr = ashr i64 %call, 9
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @handle_bad_sector(%struct.bio* noundef %bio, i64 noundef %maxsector) unnamed_addr #0 {
entry:
  %b = alloca [32 x i8], align 1
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %b, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !15
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @handle_bad_sector._rs, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.handle_bad_sector, i64 0, i64 0)) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i8* @bio_devname(%struct.bio* noundef %bio, i8* noundef nonnull %0) #18
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %1 = load i32, i32* %bi_opf, align 8
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %2 = load i64, i64* %bi_sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %3, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %2, %conv
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.52, i64 0, i64 0), i8* noundef %call1, i32 noundef %1, i64 noundef %add, i64 noundef %maxsector) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #8 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @bio_list_init(%struct.bio_list* nocapture noundef writeonly %bl) unnamed_addr #3 {
entry:
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  store %struct.bio* null, %struct.bio** %tail, align 8
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  store %struct.bio* null, %struct.bio** %head, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_list_merge(%struct.bio_list* nocapture noundef %bl, %struct.bio_list* nocapture noundef readonly %bl2) unnamed_addr #11 {
entry:
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl2, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %head, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  %1 = load %struct.bio*, %struct.bio** %tail, align 8
  %tobool1.not = icmp eq %struct.bio* %1, null
  %head6 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %1, i64 0, i32 0
  %head6.sink = select i1 %tobool1.not, %struct.bio** %head6, %struct.bio** %bi_next
  store %struct.bio* %0, %struct.bio** %head6.sink, align 8
  %tail8 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl2, i64 0, i32 1
  %2 = load %struct.bio*, %struct.bio** %tail8, align 8
  store %struct.bio* %2, %struct.bio** %tail, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_queue_get_max_sectors(%struct.request_queue* nocapture noundef readonly %q, i32 noundef %op) unnamed_addr #8 {
entry:
  switch i32 %op, label %if.end28 [
    i32 5, label %if.then
    i32 3, label %if.then
    i32 7, label %if.then14
    i32 9, label %if.then26
  ], !prof !53

if.then:                                          ; preds = %entry, %entry
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 13
  %0 = load i32, i32* %max_discard_sectors, align 8
  %cmp3 = icmp ult i32 %0, 8388607
  %cond = select i1 %cmp3, i32 %0, i32 8388607
  br label %return

if.then14:                                        ; preds = %entry
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 15
  %1 = load i32, i32* %max_write_same_sectors, align 8
  br label %return

if.then26:                                        ; preds = %entry
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 16
  %2 = load i32, i32* %max_write_zeroes_sectors, align 4
  br label %return

if.end28:                                         ; preds = %entry
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %3 = load i32, i32* %max_sectors, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then26, %if.then14, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %1, %if.then14 ], [ %2, %if.then26 ], [ %3, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @queue_max_segments(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #8 {
entry:
  %max_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 21
  %0 = load i16, i16* %max_segments, align 8
  ret i16 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_discard(i32 noundef %op) unnamed_addr #4 {
entry:
  %and = and i32 %op, 255
  %cmp = icmp eq i32 %and, 3
  ret i1 %cmp
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #19, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @jiffies_to_nsecs(i64 noundef %j) unnamed_addr #0 {
entry:
  %call = call i32 @jiffies_to_usecs(i64 noundef %j) #18
  %conv = zext i32 %call to i64
  %mul = mul nuw nsw i64 %conv, 1000
  ret i64 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Jr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #19, !srcloc !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_op_is_passthrough(i32 noundef %op) unnamed_addr #4 {
entry:
  %and = and i32 %op, 254
  %0 = icmp eq i32 %and, 34
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_advance(%struct.bio* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bio_cur_bytes(%struct.bio* noundef %bio) unnamed_addr #8 {
entry:
  %call = call fastcc i1 @bio_has_data(%struct.bio* noundef %bio) #17
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %0 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_idx = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 2
  %1 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %1 to i64
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 2
  %2 = load i32, i32* %bv_offset, align 4
  %bi_bvec_done = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 3
  %3 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %3, %2
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %4 = load i32, i32* %bi_size, align 8
  %bv_len14 = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 1
  %5 = load i32, i32* %bv_len14, align 8
  %sub = sub i32 %5, %3
  %cmp = icmp ult i32 %4, %sub
  %cond = select i1 %cmp, i32 %4, i32 %sub
  %6 = and i32 %add, 4095
  %narrow = sub nuw nsw i32 4096, %6
  %cmp31 = icmp ult i32 %cond, %narrow
  %cond36 = select i1 %cmp31, i32 %cond, i32 %narrow
  br label %return

if.else:                                          ; preds = %entry
  %bi_size52 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %7 = load i32, i32* %bi_size52, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %cond36, %if.then ], [ %7, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_no_advance_iter(%struct.bio* nocapture noundef readonly %bio) unnamed_addr #8 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %trunc = trunc i32 %0 to i8
  %switch.tableidx = add i8 %trunc, -3
  %1 = icmp ult i8 %switch.tableidx, 7
  %2 = and i8 %switch.tableidx, 1
  %switch.idx.cast.not = icmp eq i8 %2, 0
  %3 = select i1 %1, i1 %switch.idx.cast.not, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bvec_iter_advance_single(%struct.bio_vec* nocapture noundef readonly %bv, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #11 {
entry:
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %0 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %0, %bytes
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %1 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %1 to i64
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %bv, i64 %idxprom, i32 1
  %2 = load i32, i32* %bv_len, align 8
  %cmp = icmp eq i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i32 %1, 1
  store i32 %inc, i32* %bi_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %done.0 = phi i32 [ 0, %if.then ], [ %add, %entry ]
  store i32 %done.0, i32* %bi_bvec_done, align 8
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %3, %bytes
  store i32 %sub, i32* %bi_size, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #11 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readonly }
attributes #23 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155492930}
!10 = !{i32 -4194304, i32 4194304}
!11 = !{i64 2155501056}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155503404}
!14 = !{i64 2155503890}
!15 = !{!"auto-init"}
!16 = !{i64 2155516123}
!17 = !{i64 2155517816}
!18 = !{i64 1485945}
!19 = !{i64 2155526619}
!20 = !{i64 2152787778}
!21 = !{i64 2152788730}
!22 = !{i64 2155587017}
!23 = !{i64 2155587082}
!24 = !{i64 2155530232}
!25 = !{i64 2155555051}
!26 = !{i64 2155586951}
!27 = !{i64 2149048250, i64 2149048297, i64 2149048303, i64 2149048340, i64 2149048358, i64 2149049285, i64 2149049333, i64 2149049381, i64 2149049444, i64 2149049493, i64 2149048436, i64 2149048461, i64 2149048487, i64 2149048493, i64 2149048530, i64 2149048536, i64 2149048586, i64 2149048632, i64 2149048665}
!28 = !{i64 2155589592}
!29 = !{i64 2155620722}
!30 = !{i64 2155623566}
!31 = !{i64 2155642247}
!32 = !{i64 2155495241}
!33 = !{i64 2155540688}
!34 = !{i64 2155554889}
!35 = !{i64 2155685587}
!36 = !{i64 2147836810, i64 2147837321, i64 2147837351, i64 2147837377, i64 2147837409, i64 2147837438}
!37 = !{i64 2147847380, i64 2147847901, i64 2147847931, i64 2147847957, i64 2147847989, i64 2147848018}
!38 = !{i64 2147837656, i64 2147838308, i64 2147838338, i64 2147838369, i64 2147838401, i64 2147838436, i64 2147838461}
!39 = !{i64 2147767730, i64 2147768246, i64 2147768276, i64 2147768303, i64 2147768337, i64 2147768367}
!40 = !{i64 2147778303, i64 2147778951, i64 2147778981, i64 2147779013, i64 2147779047, i64 2147779083, i64 2147779108}
!41 = !{i64 2152233096}
!42 = !{i64 2152233908}
!43 = !{i64 2149698460}
!44 = !{i64 2149074196, i64 2149074237, i64 2149074293, i64 2149074345}
!45 = !{i64 2147882450, i64 2147882483, i64 2147882534, i64 2147882590, i64 2147882623, i64 2147882678, i64 2147882707, i64 2147882734}
!46 = !{i64 2149698677}
!47 = !{i64 2152238880}
!48 = !{i64 2152239692}
!49 = !{i64 2147822997, i64 2147823645, i64 2147823675, i64 2147823706, i64 2147823738, i64 2147823773, i64 2147823798}
!50 = !{i64 2155505870}
!51 = !{i8 0, i8 2}
!52 = !{i64 2155523224}
!53 = !{!"branch_weights", i32 4000000, i32 4004001, i32 4004001, i32 2001, i32 2000}
!54 = !{i64 2147808416, i64 2147808930, i64 2147808960, i64 2147808986, i64 2147809018, i64 2147809047}
!55 = !{i64 2147822149, i64 2147822663, i64 2147822693, i64 2147822719, i64 2147822751, i64 2147822780}
