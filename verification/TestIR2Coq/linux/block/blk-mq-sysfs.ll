; ModuleID = 'block/blk-mq-sysfs.c'
source_filename = "block/blk-mq-sysfs.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.69 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.72, %union.anon.73, %union.anon.74, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.77, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.71, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.71 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
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
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
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
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.70, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.70 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
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
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
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
%struct.reclaim_state = type opaque
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
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.58 }
%union.anon.58 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.60 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.81 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.62, %struct.qspinlock }
%union.anon.62 = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.blk_mq_hw_ctx_sysfs_entry = type { %struct.attribute, i64 (%struct.blk_mq_hw_ctx*, i8*)*, i64 (%struct.blk_mq_hw_ctx*, i8*, i64)* }

@blk_mq_hw_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @blk_mq_hw_sysfs_release, %struct.sysfs_ops* @blk_mq_hw_sysfs_ops, %struct.attribute** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @default_hw_ctx_groups, i32 0, i32 0), %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@blk_mq_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @blk_mq_sysfs_release, %struct.sysfs_ops* null, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@blk_mq_ctx_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @blk_mq_ctx_sysfs_release, %struct.sysfs_ops* null, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"mq\00", align 1
@blk_mq_hw_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @blk_mq_hw_sysfs_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @blk_mq_hw_sysfs_store }, align 8
@default_hw_ctx_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @default_hw_ctx_group, %struct.attribute_group* null], align 8
@default_hw_ctx_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @default_hw_ctx_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@default_hw_ctx_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.blk_mq_hw_ctx_sysfs_entry, %struct.blk_mq_hw_ctx_sysfs_entry* @blk_mq_hw_sysfs_nr_tags, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.blk_mq_hw_ctx_sysfs_entry, %struct.blk_mq_hw_ctx_sysfs_entry* @blk_mq_hw_sysfs_nr_reserved_tags, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.blk_mq_hw_ctx_sysfs_entry, %struct.blk_mq_hw_ctx_sysfs_entry* @blk_mq_hw_sysfs_cpus, i32 0, i32 0), %struct.attribute* null], align 8
@blk_mq_hw_sysfs_nr_tags = internal global %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i16 292 }, i64 (%struct.blk_mq_hw_ctx*, i8*)* @blk_mq_hw_sysfs_nr_tags_show, i64 (%struct.blk_mq_hw_ctx*, i8*, i64)* null }, align 8
@blk_mq_hw_sysfs_nr_reserved_tags = internal global %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.blk_mq_hw_ctx*, i8*)* @blk_mq_hw_sysfs_nr_reserved_tags_show, i64 (%struct.blk_mq_hw_ctx*, i8*, i64)* null }, align 8
@blk_mq_hw_sysfs_cpus = internal global %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.blk_mq_hw_ctx*, i8*)* @blk_mq_hw_sysfs_cpus_show, i64 (%struct.blk_mq_hw_ctx*, i8*, i64)* null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"nr_tags\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"nr_reserved_tags\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"cpu_list\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cpu%u\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_unregister_dev(%struct.device* noundef %dev, %struct.request_queue* nocapture noundef %q) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp11.not = icmp eq i32 %0, 0
  br i1 %cmp11.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.012 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  call fastcc void @blk_mq_unregister_hctx(%struct.blk_mq_hw_ctx* noundef %2) #3
  %inc = add nuw i32 %i.012, 1
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %mq_kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 17
  %4 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  %call = call i32 @kobject_uevent(%struct.kobject* noundef %4, i32 noundef 1) #4
  %5 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  call void @kobject_del(%struct.kobject* noundef %5) #4
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #4
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 51
  store i8 0, i8* %mq_sysfs_init_done, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_unregister_hctx(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 14
  %0 = load i16, i16* %nr_ctx, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %ctxs, align 8
  %arrayidx = getelementptr %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %1, i64 %indvars.iv
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %arrayidx, align 8
  %kobj = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %2, i64 0, i32 9
  call void @kobject_del(%struct.kobject* noundef %kobj) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i16, i16* %nr_ctx, align 2
  %4 = zext i16 %3 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %kobj4 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 29
  call void @kobject_del(%struct.kobject* noundef %kobj4) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_hctx_kobj_init(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 29
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef nonnull @blk_mq_hw_ktype) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sysfs_deinit(%struct.request_queue* nocapture noundef readonly %q) local_unnamed_addr #0 {
entry:
  %call9 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %0
  br i1 %cmp10, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %queue_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call11 = phi i32 [ %call9, %do.body.lr.ph ], [ %call, %do.body ]
  %1 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %queue_ctx, align 8
  %2 = ptrtoint %struct.blk_mq_ctx* %1 to i64
  %idxprom = sext i32 %call11 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.blk_mq_ctx*
  %kobj = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %4, i64 0, i32 9
  call void @kobject_put(%struct.kobject* noundef %kobj) #4
  %call = call i32 @cpumask_next(i32 noundef %call11, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %mq_kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 17
  %6 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  call void @kobject_put(%struct.kobject* noundef %6) #4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sysfs_init(%struct.request_queue* nocapture noundef readonly %q) local_unnamed_addr #0 {
entry:
  %mq_kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 17
  %0 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  call void @kobject_init(%struct.kobject* noundef %0, %struct.kobj_type* noundef nonnull @blk_mq_ktype) #4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp13 = icmp ult i32 %call12, %1
  br i1 %cmp13, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %queue_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call14 = phi i32 [ %call12, %do.body.lr.ph ], [ %call, %do.body ]
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %queue_ctx, align 8
  %3 = ptrtoint %struct.blk_mq_ctx* %2 to i64
  %idxprom = sext i32 %call14 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to %struct.blk_mq_ctx*
  %6 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  %call3 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %6) #4
  %kobj = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %5, i64 0, i32 9
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef nonnull @blk_mq_ctx_ktype) #4
  %call = call i32 @cpumask_next(i32 noundef %call14, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__blk_mq_register_dev(%struct.device* noundef %dev, %struct.request_queue* nocapture noundef %q) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 16, i32 2
  %0 = load %struct.kobject*, %struct.kobject** %parent, align 8
  %tobool.not = icmp eq %struct.kobject* %0, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq-sysfs.c\22; .popsection; .long 14472b - 14470b; .short 262; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mq_kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 17
  %1 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  %kobj16 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj16) #4
  %call17 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %1, %struct.kobject* noundef %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end
  %2 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  %call22 = call i32 @kobject_uevent(%struct.kobject* noundef %2, i32 noundef 0) #4
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp2367.not = icmp eq i32 %3, 0
  br i1 %cmp2367.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end20
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %i.068 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %4 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.068 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, i64 %idxprom
  %5 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %call27 = call fastcc i32 @blk_mq_register_hctx(%struct.blk_mq_hw_ctx* noundef %5) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.rhs
  %dec69 = add i32 %i.068, -1
  %cmp3170 = icmp sgt i32 %dec69, -1
  br i1 %cmp3170, label %while.body, label %while.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw i32 %i.068, 1
  %6 = load i32, i32* %nr_hw_queues, align 8
  %cmp23 = icmp ult i32 %inc, %6
  br i1 %cmp23, label %land.rhs, label %for.end

for.end:                                          ; preds = %for.inc, %if.end20
  %ret.0.lcssa = phi i32 [ %call17, %if.end20 ], [ 0, %for.inc ]
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 51
  store i8 1, i8* %mq_sysfs_init_done, align 8
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %dec71 = phi i32 [ %dec, %while.body ], [ %dec69, %while.cond.preheader ]
  %7 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom3464 = zext i32 %dec71 to i64
  %arrayidx35 = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, i64 %idxprom3464
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx35, align 8
  call fastcc void @blk_mq_unregister_hctx(%struct.blk_mq_hw_ctx* noundef %8) #3
  %dec = add nsw i32 %dec71, -1
  %cmp31 = icmp sgt i32 %dec71, 0
  br i1 %cmp31, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %9 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  %call37 = call i32 @kobject_uevent(%struct.kobject* noundef %9, i32 noundef 1) #4
  %10 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  call void @kobject_del(%struct.kobject* noundef %10) #4
  call void @kobject_put(%struct.kobject* noundef %kobj16) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end, %while.end
  %retval.0 = phi i32 [ %call27, %while.end ], [ %call17, %if.end ], [ %ret.0.lcssa, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_register_hctx(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 14
  %0 = load i16, i16* %nr_ctx, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %kobj = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 29
  %mq_kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 17
  %2 = load %struct.kobject*, %struct.kobject** %mq_kobj, align 8
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 25
  %3 = load i32, i32* %queue_num, align 4
  %call = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj, %struct.kobject* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 noundef %3) #4
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 15
  %4 = load i16, i16* %nr_ctx, align 2
  %cmp33.not = icmp eq i16 %4, 0
  br i1 %cmp33.not, label %cleanup, label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %5 = load i16, i16* %nr_ctx, align 2
  %6 = zext i16 %5 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %6
  br i1 %cmp, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %7 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %ctxs, align 8
  %arrayidx = getelementptr %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, i64 %indvars.iv
  %8 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %arrayidx, align 8
  %kobj7 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %8, i64 0, i32 9
  %cpu = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %8, i64 0, i32 1
  %9 = load i32, i32* %cpu, align 64
  %call9 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj7, %struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 noundef %9) #4
  %tobool10.not = icmp eq i32 %call9, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool10.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.cond, %land.rhs, %for.cond.preheader, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call, %if.end ], [ 0, %for.cond.preheader ], [ 0, %for.cond ], [ %call9, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sysfs_unregister(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 40
  call void @mutex_lock(%struct.mutex* noundef %sysfs_dir_lock) #4
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 51
  %0 = load i8, i8* %mq_sysfs_init_done, align 8, !range !9
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %unlock, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %1 = load i32, i32* %nr_hw_queues, align 8
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %unlock, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.012 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %idxprom
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  call fastcc void @blk_mq_unregister_hctx(%struct.blk_mq_hw_ctx* noundef %3) #3
  %inc = add nuw i32 %i.012, 1
  %4 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %for.body, label %unlock

unlock:                                           ; preds = %for.body, %for.cond.preheader, %entry
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_dir_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_sysfs_register(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 40
  call void @mutex_lock(%struct.mutex* noundef %sysfs_dir_lock) #4
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 51
  %0 = load i8, i8* %mq_sysfs_init_done, align 8, !range !9
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %unlock, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %1 = load i32, i32* %nr_hw_queues, align 8
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %unlock, label %for.body

for.cond:                                         ; preds = %for.body
  %2 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %2
  br i1 %cmp, label %for.body, label %unlock

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.017 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %3 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.017 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, i64 %idxprom
  %4 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %call = call fastcc i32 @blk_mq_register_hctx(%struct.blk_mq_hw_ctx* noundef %4) #3
  %tobool2.not = icmp eq i32 %call, 0
  %inc = add nuw i32 %i.017, 1
  br i1 %tobool2.not, label %for.cond, label %unlock

unlock:                                           ; preds = %for.cond, %for.body, %for.cond.preheader, %entry
  %ret.1 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.cond ], [ %call, %for.body ]
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_dir_lock) #4
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_mq_hw_sysfs_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -8, i32 3
  %flags = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 24
  %0 = bitcast %struct.kset** %flags to i64*
  %1 = load i64, i64* %0, align 64
  %and = and i64 %1, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %srcu = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 73
  %arraydecay = bitcast %struct.kset** %srcu to %struct.srcu_struct*
  call void @cleanup_srcu_struct(%struct.srcu_struct* noundef %arraydecay) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = bitcast %struct.kset** %add.ptr to i8*
  %fq = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 27
  %3 = bitcast %struct.kset** %fq to %struct.blk_flush_queue**
  %4 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %3, align 8
  call void @blk_free_flush_queue(%struct.blk_flush_queue* noundef %4) #4
  %ctx_map = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 29
  %5 = bitcast %struct.kset** %ctx_map to %struct.sbitmap*
  call fastcc void @sbitmap_free(%struct.sbitmap* noundef %5) #3
  %ctxs = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 35
  %6 = bitcast %struct.kset** %ctxs to i8**
  %7 = load i8*, i8** %6, align 8
  call void @kfree(i8* noundef %7) #4
  call void @kfree(i8* noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(%struct.srcu_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_flush_queue(%struct.blk_flush_queue* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_free(%struct.sbitmap* nocapture noundef %sb) unnamed_addr #0 {
entry:
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = bitcast i32** %alloc_hint to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #4
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %2 = bitcast %struct.sbitmap_word** %map to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #4
  store %struct.sbitmap_word* null, %struct.sbitmap_word** %map, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blk_mq_hw_sysfs_show(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %page) #0 {
entry:
  %add.ptr7 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -8, i32 3
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.blk_mq_hw_ctx*, i8*)**
  %1 = load i64 (%struct.blk_mq_hw_ctx*, i8*)*, i64 (%struct.blk_mq_hw_ctx*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.blk_mq_hw_ctx*, i8*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr7, i64 26
  %2 = bitcast %struct.kset** %queue to %struct.request_queue**
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 16
  %4 = bitcast %struct.kset** %add.ptr7 to %struct.blk_mq_hw_ctx*
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #4
  %5 = load i64 (%struct.blk_mq_hw_ctx*, i8*)*, i64 (%struct.blk_mq_hw_ctx*, i8*)** %0, align 8
  %call = call i64 %5(%struct.blk_mq_hw_ctx* noundef %4, i8* noundef %page) #4
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blk_mq_hw_sysfs_store(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %page, i64 noundef %length) #0 {
entry:
  %add.ptr7 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -8, i32 3
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.blk_mq_hw_ctx*, i8*, i64)**
  %1 = load i64 (%struct.blk_mq_hw_ctx*, i8*, i64)*, i64 (%struct.blk_mq_hw_ctx*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.blk_mq_hw_ctx*, i8*, i64)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr7, i64 26
  %2 = bitcast %struct.kset** %queue to %struct.request_queue**
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 16
  %4 = bitcast %struct.kset** %add.ptr7 to %struct.blk_mq_hw_ctx*
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #4
  %5 = load i64 (%struct.blk_mq_hw_ctx*, i8*, i64)*, i64 (%struct.blk_mq_hw_ctx*, i8*, i64)** %0, align 8
  %call = call i64 %5(%struct.blk_mq_hw_ctx* noundef %4, i8* noundef %page, i64 noundef %length) #4
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blk_mq_hw_sysfs_nr_tags_show(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, i8* noundef %page) #0 {
entry:
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %nr_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 0
  %1 = load i32, i32* %nr_tags, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1) #4
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blk_mq_hw_sysfs_nr_reserved_tags_show(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, i8* noundef %page) #0 {
entry:
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 1
  %1 = load i32, i32* %nr_reserved_tags, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1) #4
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blk_mq_hw_sysfs_cpus_show(%struct.blk_mq_hw_ctx* noundef %hctx, i8* noundef %page) #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 2, i64 0
  %call41 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %arraydecay) #5
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp42 = icmp ult i32 %call41, %0
  br i1 %cmp42, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call = call i32 @cpumask_next(i32 noundef %call45, %struct.cpumask* noundef %arraydecay) #5
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %call45 = phi i32 [ %call, %for.cond ], [ %call41, %entry ]
  %pos.044 = phi i32 [ %add, %for.cond ], [ 0, %entry ]
  %tobool.not43 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %for.cond ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %entry ]
  %idx.ext2 = sext i32 %pos.044 to i64
  %add.ptr3 = getelementptr i8, i8* %page, i64 %idx.ext2
  %sub5 = sub nsw i64 4095, %idx.ext2
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr3, i64 noundef %sub5, i8* noundef %tobool.not43, i32 noundef %call45) #4
  %conv7 = sext i32 %call6 to i64
  %cmp10.not = icmp ugt i64 %sub5, %conv7
  %add = add i32 %call6, %pos.044
  br i1 %cmp10.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %for.body, %entry
  %pos.0.lcssa = phi i32 [ 0, %entry ], [ %pos.044, %for.body ], [ %add, %for.cond ]
  %idx.ext14 = sext i32 %pos.0.lcssa to i64
  %add.ptr15 = getelementptr i8, i8* %page, i64 %idx.ext14
  %sub17 = sub nsw i64 4096, %idx.ext14
  %call18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr15, i64 noundef %sub17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #4
  %add19 = add i32 %call18, %pos.0.lcssa
  %conv20 = sext i32 %add19 to i64
  ret i64 %conv20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_mq_sysfs_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %0 = bitcast %struct.kobject* %kobj to i8*
  %1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 1, i32 0
  %2 = load i8*, i8** %1, align 8
  call void @free_percpu(i8* noundef %2) #4
  call void @kfree(i8* noundef %0) #4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_mq_ctx_sysfs_release(%struct.kobject* nocapture noundef readonly %kobj) #0 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -3, i32 3
  %ctxs = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 19
  %0 = bitcast %struct.kset** %ctxs to %struct.blk_mq_ctxs**
  %1 = load %struct.blk_mq_ctxs*, %struct.blk_mq_ctxs** %0, align 8
  %kobj1 = getelementptr inbounds %struct.blk_mq_ctxs, %struct.blk_mq_ctxs* %1, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj1) #4
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nounwind }

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
!8 = !{i64 2154963132}
!9 = !{i8 0, i8 2}
