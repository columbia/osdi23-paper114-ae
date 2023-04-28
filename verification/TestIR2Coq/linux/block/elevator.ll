; ModuleID = 'block/elevator.c'
source_filename = "block/elevator.c"
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.71, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.71 = type { %struct.kernfs_elem_dir }
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
%struct.writeback_control = type opaque
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
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.72, %union.anon.73, %union.anon.74, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.77, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
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
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.3, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.3 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
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
%struct.backing_dev_info = type opaque
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
%struct.reclaim_state = type opaque
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
%struct.swap_info_struct = type opaque
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
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
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
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }

@elv_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @elevator_release, %struct.sysfs_ops* @elv_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@elevator_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&eq->sysfs_lock\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"iosched\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s_io_cq\00", align 1
@elv_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@elv_list = internal global %struct.list_head { %struct.list_head* @elv_list, %struct.list_head* @elv_list }, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"\016io scheduler %s registered\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"\014\22%s\22 elevator initialization failed, falling back to \22none\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"[none] \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__setup_str_elevator_setup = internal constant [10 x i8] c"elevator=\00", section ".init.rodata", align 1
@__setup_elevator_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__setup_str_elevator_setup, i32 0, i32 0), i32 (i8*)* @elevator_setup, i32 0 }, section ".init.setup", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@elv_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @elv_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @elv_attr_store }, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"mq-deadline\00", align 1
@.str.14 = private unnamed_addr constant [125 x i8] c"\014Kernel parameter elevator= does not have any effect anymore.\0APlease use sysfs to set IO scheduler for individual devices.\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_elevator_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @elv_bio_merge_ok(%struct.request* noundef %rq, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %call = call i1 @blk_rq_merge_ok(%struct.request* noundef %rq, %struct.bio* noundef %bio) #12
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @elv_iosched_allow_bio_merge(%struct.request* noundef %rq, %struct.bio* noundef %bio) #13
  %tobool.not = icmp ne i32 %call1, 0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_rq_merge_ok(%struct.request* noundef, %struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @elv_iosched_allow_bio_merge(%struct.request* noundef %rq, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %2 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %allow_merge = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %2, i64 0, i32 1, i32 5
  %3 = load i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)** %allow_merge, align 8
  %tobool.not = icmp eq i1 (%struct.request_queue*, %struct.request*, %struct.bio*)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i1 %3(%struct.request_queue* noundef %0, %struct.request* noundef %rq, %struct.bio* noundef %bio) #12
  %conv = zext i1 %call to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.elevator_queue* @elevator_alloc(%struct.request_queue* nocapture noundef readnone %q, %struct.elevator_type* noundef %e) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc_node() #13
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.elevator_queue*
  %type = bitcast i8* %call to %struct.elevator_type**
  store %struct.elevator_type* %e, %struct.elevator_type** %type, align 8
  %kobj = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %kobj to %struct.kobject*
  call void @kobject_init(%struct.kobject* noundef %1, %struct.kobj_type* noundef nonnull @elv_ktype) #12
  %sysfs_lock = getelementptr inbounds i8, i8* %call, i64 80
  %2 = bitcast i8* %sysfs_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @elevator_alloc.__key) #12
  %hash = getelementptr inbounds i8, i8* %call, i64 120
  %arraydecay = bitcast i8* %hash to %struct.hlist_head*
  call fastcc void @__hash_init(%struct.hlist_head* noundef %arraydecay) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.elevator_queue* [ %0, %if.end ], [ null, %entry ]
  ret %struct.elevator_queue* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 10), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #12
  ret i8* %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define internal fastcc void @__hash_init(%struct.hlist_head* nocapture noundef writeonly %ht) unnamed_addr #3 {
entry:
  %first = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %first.1 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 1, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.1, align 8
  %first.2 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 2, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.2, align 8
  %first.3 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 3, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.3, align 8
  %first.4 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 4, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.4, align 8
  %first.5 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 5, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.5, align 8
  %first.6 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 6, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.6, align 8
  %first.7 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 7, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.7, align 8
  %first.8 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 8, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.8, align 8
  %first.9 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 9, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.9, align 8
  %first.10 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 10, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.10, align 8
  %first.11 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 11, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.11, align 8
  %first.12 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 12, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.12, align 8
  %first.13 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 13, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.13, align 8
  %first.14 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 14, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.14, align 8
  %first.15 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 15, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.15, align 8
  %first.16 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 16, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.16, align 8
  %first.17 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 17, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.17, align 8
  %first.18 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 18, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.18, align 8
  %first.19 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 19, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.19, align 8
  %first.20 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 20, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.20, align 8
  %first.21 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 21, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.21, align 8
  %first.22 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 22, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.22, align 8
  %first.23 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 23, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.23, align 8
  %first.24 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 24, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.24, align 8
  %first.25 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 25, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.25, align 8
  %first.26 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 26, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.26, align 8
  %first.27 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 27, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.27, align 8
  %first.28 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 28, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.28, align 8
  %first.29 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 29, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.29, align 8
  %first.30 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 30, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.30, align 8
  %first.31 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 31, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.31, align 8
  %first.32 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 32, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.32, align 8
  %first.33 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 33, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.33, align 8
  %first.34 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 34, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.34, align 8
  %first.35 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 35, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.35, align 8
  %first.36 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 36, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.36, align 8
  %first.37 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 37, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.37, align 8
  %first.38 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 38, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.38, align 8
  %first.39 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 39, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.39, align 8
  %first.40 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 40, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.40, align 8
  %first.41 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 41, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.41, align 8
  %first.42 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 42, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.42, align 8
  %first.43 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 43, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.43, align 8
  %first.44 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 44, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.44, align 8
  %first.45 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 45, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.45, align 8
  %first.46 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 46, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.46, align 8
  %first.47 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 47, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.47, align 8
  %first.48 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 48, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.48, align 8
  %first.49 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 49, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.49, align 8
  %first.50 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 50, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.50, align 8
  %first.51 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 51, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.51, align 8
  %first.52 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 52, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.52, align 8
  %first.53 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 53, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.53, align 8
  %first.54 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 54, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.54, align 8
  %first.55 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 55, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.55, align 8
  %first.56 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 56, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.56, align 8
  %first.57 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 57, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.57, align 8
  %first.58 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 58, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.58, align 8
  %first.59 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 59, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.59, align 8
  %first.60 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 60, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.60, align 8
  %first.61 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 61, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.61, align 8
  %first.62 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 62, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.62, align 8
  %first.63 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 63, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.63, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__elevator_exit(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %e) local_unnamed_addr #0 {
entry:
  %sysfs_lock = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %e, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #12
  call void @blk_mq_exit_sched(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %e) #12
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #12
  %kobj = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %e, i64 0, i32 2
  call void @kobject_put(%struct.kobject* noundef %kobj) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_exit_sched(%struct.request_queue* noundef, %struct.elevator_queue* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @elv_rqhash_del(%struct.request_queue* nocapture noundef readnone %q, %struct.request* nocapture noundef %rq) local_unnamed_addr #4 {
entry:
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__elv_rqhash_del(%struct.request* noundef %rq) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__elv_rqhash_del(%struct.request* nocapture noundef %rq) unnamed_addr #4 {
entry:
  %hash = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 12, i32 0
  call fastcc void @hash_del(%struct.hlist_node* noundef %hash) #13
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, -65537
  store i32 %and, i32* %rq_flags, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_rqhash_add(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/elevator.c\22; .popsection; .long 14472b - 14470b; .short 217; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  unreachable

do.end8:                                          ; preds = %entry
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %hash = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 12, i32 0
  %call = call fastcc i64 @blk_rq_pos(%struct.request* noundef %rq) #13
  %call10 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %rq) #13
  %conv11 = zext i32 %call10 to i64
  %add = add i64 %call, %conv11
  %mul.i = mul i64 %add, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 58
  %arrayidx = getelementptr %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 5, i64 %shr.i
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %hash, %struct.hlist_head* noundef %arrayidx) #13
  %2 = load i32, i32* %rq_flags, align 4
  %or = or i32 %2, 65536
  store i32 %or, i32* %rq_flags, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #4 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body22, label %do.body12

do.body12:                                        ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev, align 8
  br label %do.body22

do.body22:                                        ; preds = %entry, %do.body12
  store volatile %struct.hlist_node* %n, %struct.hlist_node** %first1, align 8
  %pprev34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev34, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @blk_rq_pos(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  %0 = load i64, i64* %__sector, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_sectors(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #13
  %shr = lshr i32 %call, 9
  ret i32 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_rqhash_reposition(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  call fastcc void @__elv_rqhash_del(%struct.request* noundef %rq) #13
  call void @elv_rqhash_add(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @elv_rqhash_find(%struct.request_queue* nocapture noundef readonly %q, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %mul.i = mul i64 %offset, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 58
  %first = getelementptr %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 5, i64 %shr.i, i32 0
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -6, i32 1
  %tobool2.not7477 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool2.not74 = or i1 %tobool.not, %tobool2.not7477
  br i1 %tobool2.not74, label %cleanup, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %2 = bitcast %struct.hlist_node*** %add.ptr to %struct.request*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %rq.075 = phi %struct.request* [ %spec.select72, %for.inc ], [ %2, %land.rhs.preheader ]
  %next4 = getelementptr inbounds %struct.request, %struct.request* %rq.075, i64 0, i32 12, i32 0, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next4, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq.075, i64 0, i32 4
  %4 = load i32, i32* %rq_flags, align 4
  %and = and i32 %4, 65536
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body12, label %do.end19, !prof !7

do.body12:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/elevator.c\22; .popsection; .long 14472b - 14470b; .short 236; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  unreachable

do.end19:                                         ; preds = %land.rhs
  %call20 = call fastcc i1 @rq_mergeable(%struct.request* noundef nonnull %rq.075) #13
  br i1 %call20, label %if.end31, label %if.then30, !prof !8

if.then30:                                        ; preds = %do.end19
  call fastcc void @__elv_rqhash_del(%struct.request* noundef nonnull %rq.075) #13
  br label %for.inc

if.end31:                                         ; preds = %do.end19
  %call32 = call fastcc i64 @blk_rq_pos(%struct.request* noundef nonnull %rq.075) #13
  %call33 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef nonnull %rq.075) #13
  %conv34 = zext i32 %call33 to i64
  %add = add i64 %call32, %conv34
  %cmp = icmp eq i64 %add, %offset
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end31, %if.then30
  %tobool40.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr47 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -6, i32 1
  %5 = bitcast %struct.hlist_node*** %add.ptr47 to %struct.request*
  %spec.select72 = select i1 %tobool40.not, %struct.request* null, %struct.request* %5
  %tobool2.not = icmp eq %struct.request* %spec.select72, null
  br i1 %tobool2.not, label %cleanup, label %land.rhs

cleanup:                                          ; preds = %if.end31, %for.inc, %entry
  %rq.0.lcssa = phi %struct.request* [ null, %entry ], [ null, %for.inc ], [ %rq.075, %if.end31 ]
  ret %struct.request* %rq.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rq_mergeable(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %rq) #13
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %trunc = trunc i32 %0 to i8
  switch i8 %trunc, label %if.end12 [
    i8 2, label %return
    i8 9, label %return
    i8 13, label %return
  ]

if.end12:                                         ; preds = %if.end
  %1 = and i32 %0, 409600
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %2 = load i32, i32* %rq_flags, align 4
  %and17 = and i32 %2, 262170
  %tobool18.not = icmp eq i32 %and17, 0
  br label %return

return:                                           ; preds = %if.end16, %if.end12, %if.end, %if.end, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ false, %if.end ], [ false, %if.end ], [ false, %if.end12 ], [ %tobool18.not, %if.end16 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_rb_add(%struct.rb_root* noundef %root, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not23 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not23, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %call = call fastcc i64 @blk_rq_pos(%struct.request* noundef %rq) #13
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = phi %struct.rb_node* [ %0, %while.body.lr.ph ], [ %3, %while.body ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %1, i64 -5, i32 2
  %2 = bitcast %struct.rb_node** %add.ptr to %struct.request*
  %call1 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %2) #13
  %cmp = icmp ult i64 %call, %call1
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 1
  %p.1 = select i1 %cmp, %struct.rb_node** %rb_left, %struct.rb_node** %rb_right
  %3 = load %struct.rb_node*, %struct.rb_node** %p.1, align 8
  %tobool.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %parent.0.lcssa = phi %struct.rb_node* [ null, %entry ], [ %1, %while.body ]
  %p.0.lcssa = phi %struct.rb_node** [ %rb_node, %entry ], [ %p.1, %while.body ]
  %rb_node7 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13, i32 0
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node7, %struct.rb_node* noundef %parent.0.lcssa, %struct.rb_node** noundef %p.0.lcssa) #13
  call void @rb_insert_color(%struct.rb_node* noundef %rb_node7, %struct.rb_root* noundef %root) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #6 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_rb_del(%struct.rb_root* noundef %root, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13, i32 0
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.rb_node* %rb_node to i64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %do.body3, label %do.end6, !prof !7

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/elevator.c\22; .popsection; .long 14472b - 14470b; .short 277; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !11
  unreachable

do.end6:                                          ; preds = %entry
  call void @rb_erase(%struct.rb_node* noundef %rb_node, %struct.rb_root* noundef %root) #12
  store i64 %1, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.request* @elv_rb_find(%struct.rb_root* nocapture noundef readonly %root, i64 noundef %sector) local_unnamed_addr #7 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  %n.018 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not19 = icmp eq %struct.rb_node* %n.018, null
  br i1 %tobool.not19, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end5
  %n.020 = phi %struct.rb_node* [ %n.0, %if.end5 ], [ %n.018, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %n.020, i64 -5, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.request*
  %call = call fastcc i64 @blk_rq_pos(%struct.request* noundef %0) #13
  %cmp = icmp ugt i64 %call, %sector
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.020, i64 0, i32 2
  br label %if.end5

if.else:                                          ; preds = %while.body
  %cmp2 = icmp ult i64 %call, %sector
  br i1 %cmp2, label %if.then3, label %cleanup.loopexit.split.loop.exit

if.then3:                                         ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.020, i64 0, i32 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then
  %n.1.in = phi %struct.rb_node** [ %rb_left, %if.then ], [ %rb_right, %if.then3 ]
  %n.0 = load %struct.rb_node*, %struct.rb_node** %n.1.in, align 8
  %tobool.not = icmp eq %struct.rb_node* %n.0, null
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup.loopexit.split.loop.exit:                 ; preds = %if.else
  %1 = bitcast %struct.rb_node** %add.ptr to %struct.request*
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %cleanup.loopexit.split.loop.exit, %entry
  %retval.0 = phi %struct.request* [ null, %entry ], [ %1, %cleanup.loopexit.split.loop.exit ], [ null, %if.end5 ]
  ret %struct.request* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @elv_merge(%struct.request_queue* noundef %q, %struct.request** noundef %req, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = and i64 %1, 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup33

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @bio_mergeable(%struct.bio* noundef %bio) #13
  br i1 %call1, label %if.end, label %cleanup33

if.end:                                           ; preds = %lor.lhs.false
  %last_merge = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 0
  %3 = load %struct.request*, %struct.request** %last_merge, align 8
  %tobool2.not = icmp eq %struct.request* %3, null
  br i1 %tobool2.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = call i1 @elv_bio_merge_ok(%struct.request* noundef nonnull %3, %struct.bio* noundef %bio) #13
  br i1 %call4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  %4 = load %struct.request*, %struct.request** %last_merge, align 8
  %call7 = call i32 @blk_try_merge(%struct.request* noundef %4, %struct.bio* noundef %bio) #12
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.then5
  %5 = load %struct.request*, %struct.request** %last_merge, align 8
  store %struct.request* %5, %struct.request** %req, align 8
  br label %cleanup33

if.end11:                                         ; preds = %if.then5, %land.lhs.true, %if.end
  %6 = load volatile i64, i64* %queue_flags, align 8
  %7 = and i64 %6, 512
  %tobool14.not = icmp eq i64 %7, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup33

if.end16:                                         ; preds = %if.end11
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %8 = load i64, i64* %bi_sector, align 8
  %call17 = call %struct.request* @elv_rqhash_find(%struct.request_queue* noundef %q, i64 noundef %8) #13
  %tobool18.not = icmp eq %struct.request* %call17, null
  br i1 %tobool18.not, label %if.end25, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end16
  %call20 = call i1 @elv_bio_merge_ok(%struct.request* noundef nonnull %call17, %struct.bio* noundef %bio) #13
  br i1 %call20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %land.lhs.true19
  store %struct.request* %call17, %struct.request** %req, align 8
  %call22 = call fastcc i1 @blk_discard_mergable(%struct.request* noundef nonnull %call17) #13
  %. = select i1 %call22, i32 3, i32 2
  br label %cleanup33

if.end25:                                         ; preds = %land.lhs.true19, %if.end16
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %9 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %request_merge = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %9, i64 0, i32 1, i32 7
  %10 = load i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)** %request_merge, align 8
  %tobool26.not = icmp eq i32 (%struct.request_queue*, %struct.request**, %struct.bio*)* %10, null
  br i1 %tobool26.not, label %cleanup33, label %if.then27

if.then27:                                        ; preds = %if.end25
  %call31 = call i32 %10(%struct.request_queue* noundef %q, %struct.request** noundef %req, %struct.bio* noundef %bio) #12
  br label %cleanup33

cleanup33:                                        ; preds = %if.then8, %if.end25, %if.then21, %if.end11, %entry, %lor.lhs.false, %if.then27
  %retval.1 = phi i32 [ %call31, %if.then27 ], [ %call7, %if.then8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end11 ], [ %., %if.then21 ], [ 0, %if.end25 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_mergeable(%struct.bio* nocapture noundef readonly %bio) unnamed_addr #5 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %1 = and i32 %0, 409600
  %tobool.not = icmp eq i32 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_try_merge(%struct.request* noundef, %struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_discard_mergable(%struct.request* nocapture noundef readonly %req) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %call = call fastcc i16 @queue_max_discard_segments(%struct.request_queue* noundef %1) #13
  %cmp1 = icmp ugt i16 %call, 1
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @elv_attempt_insert_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.list_head* noundef %free) local_unnamed_addr #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %last_merge = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 0
  %2 = load %struct.request*, %struct.request** %last_merge, align 8
  %tobool1.not = icmp eq %struct.request* %2, null
  br i1 %tobool1.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i1 @blk_attempt_req_merge(%struct.request_queue* noundef %q, %struct.request* noundef nonnull %2, %struct.request* noundef %rq) #12
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %free) #13
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %3 = load volatile i64, i64* %queue_flags, align 8
  %4 = and i64 %3, 512
  %tobool8.not = icmp eq i64 %4, 0
  br i1 %tobool8.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %if.end5
  %call1136 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %rq) #13
  %call1237 = call %struct.request* @elv_rqhash_find(%struct.request_queue* noundef %q, i64 noundef %call1136) #13
  %tobool13.not38 = icmp eq %struct.request* %call1237, null
  br i1 %tobool13.not38, label %cleanup, label %lor.lhs.false.preheader

lor.lhs.false.preheader:                          ; preds = %while.cond.preheader
  %call1443 = call i1 @blk_attempt_req_merge(%struct.request_queue* noundef %q, %struct.request* noundef nonnull %call1237, %struct.request* noundef %rq) #12
  br i1 %call1443, label %if.end16, label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %call14 = call i1 @blk_attempt_req_merge(%struct.request_queue* noundef %q, %struct.request* noundef nonnull %call12, %struct.request* noundef nonnull %call124144) #12
  br i1 %call14, label %if.end16, label %cleanup

if.end16:                                         ; preds = %lor.lhs.false.preheader, %lor.lhs.false
  %rq.addr.03945 = phi %struct.request* [ %call124144, %lor.lhs.false ], [ %rq, %lor.lhs.false.preheader ]
  %call124144 = phi %struct.request* [ %call12, %lor.lhs.false ], [ %call1237, %lor.lhs.false.preheader ]
  %queuelist17 = getelementptr inbounds %struct.request, %struct.request* %rq.addr.03945, i64 0, i32 11
  call fastcc void @list_add(%struct.list_head* noundef %queuelist17, %struct.list_head* noundef %free) #13
  %call11 = call fastcc i64 @blk_rq_pos(%struct.request* noundef nonnull %call124144) #13
  %call12 = call %struct.request* @elv_rqhash_find(%struct.request_queue* noundef %q, i64 noundef %call11) #13
  %tobool13.not = icmp eq %struct.request* %call12, null
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false

cleanup:                                          ; preds = %lor.lhs.false, %if.end16, %lor.lhs.false.preheader, %while.cond.preheader, %if.end5, %entry, %if.then4
  %retval.0 = phi i1 [ true, %if.then4 ], [ false, %entry ], [ false, %if.end5 ], [ false, %while.cond.preheader ], [ false, %lor.lhs.false.preheader ], [ true, %if.end16 ], [ true, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_attempt_req_merge(%struct.request_queue* noundef, %struct.request* noundef, %struct.request* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_merged_request(%struct.request_queue* noundef %q, %struct.request* noundef %rq, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %type1 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type1, align 8
  %request_merged = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 1, i32 8
  %2 = load void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, i32)** %request_merged, align 8
  %tobool.not = icmp eq void (%struct.request_queue*, %struct.request*, i32)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %2(%struct.request_queue* noundef %q, %struct.request* noundef %rq, i32 noundef %type) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @elv_rqhash_reposition(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %last_merge = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 0
  store %struct.request* %rq, %struct.request** %last_merge, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_merge_requests(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.request* noundef %next) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %requests_merged = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 1, i32 9
  %2 = load void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (%struct.request_queue*, %struct.request*, %struct.request*)** %requests_merged, align 8
  %tobool.not = icmp eq void (%struct.request_queue*, %struct.request*, %struct.request*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %2(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.request* noundef %next) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @elv_rqhash_reposition(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #13
  %last_merge = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 0
  store %struct.request* %rq, %struct.request** %last_merge, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @elv_latter_request(%struct.request_queue* noundef %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %next_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 1, i32 19
  %2 = load %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)** %next_request, align 8
  %tobool.not = icmp eq %struct.request* (%struct.request_queue*, %struct.request*)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.request* %2(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.request* [ %call, %if.then ], [ null, %entry ]
  ret %struct.request* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @elv_former_request(%struct.request_queue* noundef %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %former_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 1, i32 18
  %2 = load %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)** %former_request, align 8
  %tobool.not = icmp eq %struct.request* (%struct.request_queue*, %struct.request*)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.request* %2(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.request* [ %call, %if.then ], [ null, %entry ]
  ret %struct.request* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @elv_register_queue(%struct.request_queue* noundef %q, i1 noundef %uevent) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %kobj = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 2
  %kobj1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 16
  %call = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %elevator_attrs = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 4
  %2 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %elevator_attrs, align 8
  %tobool2.not = icmp eq %struct.elv_fs_entry* %2, null
  br i1 %tobool2.not, label %if.end11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then
  %name31 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %2, i64 0, i32 0, i32 0
  %3 = load i8*, i8** %name31, align 8
  %tobool5.not32 = icmp eq i8* %3, null
  br i1 %tobool5.not32, label %if.end11, label %while.body

while.cond:                                       ; preds = %while.body
  %name = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %incdec.ptr, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %tobool5.not = icmp eq i8* %4, null
  br i1 %tobool5.not, label %if.end11, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %attr.033 = phi %struct.elv_fs_entry* [ %incdec.ptr, %while.cond ], [ %2, %while.cond.preheader ]
  %attr4 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %attr.033, i64 0, i32 0
  %call8 = call fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr4) #13
  %tobool9.not = icmp eq i32 %call8, 0
  %incdec.ptr = getelementptr %struct.elv_fs_entry, %struct.elv_fs_entry* %attr.033, i64 1
  br i1 %tobool9.not, label %while.cond, label %if.end11

if.end11:                                         ; preds = %while.body, %while.cond, %while.cond.preheader, %if.then
  br i1 %uevent, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  %call15 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 0) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11
  %registered = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 4
  %bf.load = load i8, i8* %registered, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %registered, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_unregister_queue(%struct.request_queue* noundef readonly %q) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.request_queue* %q, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %kobj = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 2
  %call = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 1) #12
  call void @kobject_del(%struct.kobject* noundef %kobj) #12
  %registered = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 4
  %bf.load = load i8, i8* %registered, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %registered, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @elv_register(%struct.elevator_type* noundef %e) local_unnamed_addr #0 {
entry:
  %insert_requests = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 1, i32 13
  %0 = load void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)** %insert_requests, align 8
  %tobool.not = icmp eq void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)* %0, null
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %dispatch_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 1, i32 14
  %1 = load %struct.request* (%struct.blk_mq_hw_ctx*)*, %struct.request* (%struct.blk_mq_hw_ctx*)** %dispatch_request, align 8
  %tobool2.not = icmp eq %struct.request* (%struct.blk_mq_hw_ctx*)* %1, null
  br i1 %tobool2.not, label %if.then, label %if.end20, !prof !7

if.then:                                          ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/elevator.c\22; .popsection; .long 14472b - 14470b; .short 534; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  br label %return

if.end20:                                         ; preds = %lor.rhs
  %icq_size = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 2
  %2 = load i64, i64* %icq_size, align 8
  %tobool21.not = icmp eq i64 %2, 0
  br i1 %tobool21.not, label %if.end88, label %if.then22

if.then22:                                        ; preds = %if.end20
  %cmp = icmp ult i64 %2, 56
  br i1 %cmp, label %if.then38, label %lor.lhs.false, !prof !7

if.then38:                                        ; preds = %if.then22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/elevator.c\22; .popsection; .long 14472b - 14470b; .short 539; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %return

lor.lhs.false:                                    ; preds = %if.then22
  %icq_align = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 3
  %3 = load i64, i64* %icq_align, align 8
  %cmp50 = icmp ult i64 %3, 8
  br i1 %cmp50, label %if.then64, label %if.end76, !prof !7

if.then64:                                        ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/elevator.c\22; .popsection; .long 14472b - 14470b; .short 540; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  br label %return

if.end76:                                         ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 9, i64 0
  %elevator_name = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 5
  %4 = load i8*, i8** %elevator_name, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 22, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %4) #12
  %5 = load i64, i64* %icq_size, align 8
  %conv80 = trunc i64 %5 to i32
  %6 = load i64, i64* %icq_align, align 8
  %conv82 = trunc i64 %6 to i32
  %call83 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef %arraydecay, i32 noundef %conv80, i32 noundef %conv82, i32 noundef 0, void (i8*)* noundef null) #12
  %icq_cache = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 0
  store %struct.kmem_cache* %call83, %struct.kmem_cache** %icq_cache, align 8
  %tobool85.not = icmp eq %struct.kmem_cache* %call83, null
  br i1 %tobool85.not, label %return, label %if.end88

if.end88:                                         ; preds = %if.end76, %if.end20
  call fastcc void @__raw_spin_lock() #12
  %elevator_name89 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 5
  %7 = load i8*, i8** %elevator_name89, align 8
  %call90 = call fastcc %struct.elevator_type* @elevator_find(i8* noundef %7, i32 noundef 0) #13
  %tobool91.not = icmp eq %struct.elevator_type* %call90, null
  br i1 %tobool91.not, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.end88
  call fastcc void @__raw_spin_unlock() #12
  %icq_cache93 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 0
  %8 = load %struct.kmem_cache*, %struct.kmem_cache** %icq_cache93, align 8
  call void @kmem_cache_destroy(%struct.kmem_cache* noundef %8) #12
  br label %return

if.end94:                                         ; preds = %if.end88
  %list = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 10
  call fastcc void @list_add_tail(%struct.list_head* noundef %list) #13
  call fastcc void @__raw_spin_unlock() #12
  %9 = load i8*, i8** %elevator_name89, align 8
  %call97 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* noundef %9) #15
  br label %return

return:                                           ; preds = %if.then64, %if.then38, %if.then, %if.end76, %if.end94, %if.then92
  %retval.0 = phi i32 [ -16, %if.then92 ], [ 0, %if.end94 ], [ -22, %if.then ], [ -22, %if.then64 ], [ -22, %if.then38 ], [ -12, %if.end76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.elevator_type* @elevator_find(i8* noundef %name, i32 noundef %required_features) unnamed_addr #0 {
entry:
  %.pn16 = load i8*, i8** bitcast (%struct.list_head* @elv_list to i8**), align 8
  %cmp.not19 = icmp eq i8* %.pn16, bitcast (%struct.list_head* @elv_list to i8*)
  br i1 %cmp.not19, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn20 = phi i8* [ %.pn, %for.inc ], [ %.pn16, %entry ]
  %e.0.in21 = getelementptr i8, i8* %.pn20, i64 -264
  %e.022 = bitcast i8* %e.0.in21 to %struct.elevator_type*
  %call = call fastcc i1 @elevator_match(%struct.elevator_type* noundef %e.022, i8* noundef %name, i32 noundef %required_features) #13
  br i1 %call, label %cleanup.loopexit.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %0 = bitcast i8* %.pn20 to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @elv_list to i8*)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  %e.022.le = bitcast i8* %e.0.in21 to %struct.elevator_type*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %cleanup.loopexit.split.loop.exit, %entry
  %retval.0 = phi %struct.elevator_type* [ null, %entry ], [ %e.022.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.inc ]
  ret %struct.elevator_type* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(%struct.kmem_cache* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #4 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @elv_list, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef nonnull @elv_list) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elv_unregister(%struct.elevator_type* noundef %e) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #12
  %list = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 10
  call fastcc void @list_del_init(%struct.list_head* noundef %list) #13
  call fastcc void @__raw_spin_unlock() #12
  %icq_cache = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 0
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %icq_cache, align 8
  %tobool.not = icmp eq %struct.kmem_cache* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @rcu_barrier() #12
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %icq_cache, align 8
  call void @kmem_cache_destroy(%struct.kmem_cache* noundef %1) #12
  store %struct.kmem_cache* null, %struct.kmem_cache** %icq_cache, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @elevator_switch_mq(%struct.request_queue* noundef %q, %struct.elevator_type* noundef %new_e) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %registered = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 4
  %bf.load = load i8, i8* %registered, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool2.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @elv_unregister_queue(%struct.request_queue* noundef %q) #13
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void @ioc_clear_queue(%struct.request_queue* noundef %q) #12
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  call fastcc void @elevator_exit(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %1) #13
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %call = call i32 @blk_mq_init_sched(%struct.request_queue* noundef %q, %struct.elevator_type* noundef %new_e) #12
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end5
  %tobool9.not = icmp eq %struct.elevator_type* %new_e, null
  br i1 %tobool9.not, label %out, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 @elv_register_queue(%struct.request_queue* noundef %q, i1 noundef true) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %out, label %if.then13

if.then13:                                        ; preds = %if.then10
  %2 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  call fastcc void @elevator_exit(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %2) #13
  br label %out

out:                                              ; preds = %if.end8, %if.then10, %if.end5, %if.then13
  %ret.1 = phi i32 [ %call, %if.end5 ], [ %call11, %if.then13 ], [ 0, %if.then10 ], [ 0, %if.end8 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioc_clear_queue(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @elevator_exit(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %e) unnamed_addr #0 {
entry:
  call void @blk_mq_sched_free_requests(%struct.request_queue* noundef %q) #12
  call void @__elevator_exit(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %e) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_init_sched(%struct.request_queue* noundef, %struct.elevator_type* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @elevator_init_mq(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @elv_support_iosched(%struct.request_queue* noundef %q) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 4194304
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end10, label %if.then9, !prof !8

if.then9:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/elevator.c\22; .popsection; .long 14472b - 14470b; .short 685; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %2 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool18.not = icmp eq %struct.elevator_queue* %2, null
  br i1 %tobool18.not, label %if.end27, label %cleanup, !prof !8

if.end27:                                         ; preds = %if.end10
  %required_elevator_features = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 32
  %3 = load i32, i32* %required_elevator_features, align 8
  %tobool28.not = icmp eq i32 %3, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  %call30 = call fastcc %struct.elevator_type* @elevator_get_default(%struct.request_queue* noundef %q) #13
  br label %if.end32

if.else:                                          ; preds = %if.end27
  %call31 = call fastcc %struct.elevator_type* @elevator_get_by_features(%struct.request_queue* noundef %q) #13
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  %e.0 = phi %struct.elevator_type* [ %call31, %if.else ], [ %call30, %if.then29 ]
  %tobool33.not = icmp eq %struct.elevator_type* %e.0, null
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end32
  call void @blk_mq_freeze_queue(%struct.request_queue* noundef %q) #12
  call void @blk_mq_quiesce_queue(%struct.request_queue* noundef %q) #12
  %call36 = call i32 @blk_mq_init_sched(%struct.request_queue* noundef %q, %struct.elevator_type* noundef nonnull %e.0) #12
  call void @blk_mq_unquiesce_queue(%struct.request_queue* noundef %q) #12
  call void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q) #12
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end35
  %elevator_name = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e.0, i64 0, i32 5
  %4 = load i8*, i8** %elevator_name, align 8
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end, %if.end32, %if.end10, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @elv_support_iosched(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %q) #13
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %tobool.not = icmp eq %struct.blk_mq_tag_set* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 64
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.elevator_type* @elevator_get_default(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #0 {
entry:
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %tobool.not = icmp eq %struct.blk_mq_tag_set* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 128
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %2 = load i32, i32* %nr_hw_queues, align 8
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end7, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %flags5 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %3 = load i32, i32* %flags5, align 8
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %3) #13
  br i1 %call, label %if.end7, label %return

if.end7:                                          ; preds = %land.lhs.true3, %if.end
  %call8 = call fastcc %struct.elevator_type* @elevator_get(%struct.request_queue* noundef %q, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i1 noundef false) #13
  br label %return

return:                                           ; preds = %land.lhs.true3, %land.lhs.true, %if.end7
  %retval.0 = phi %struct.elevator_type* [ %call8, %if.end7 ], [ null, %land.lhs.true ], [ null, %land.lhs.true3 ]
  ret %struct.elevator_type* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.elevator_type* @elevator_get_by_features(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #12
  %.pn24 = load i8*, i8** bitcast (%struct.list_head* @elv_list to i8**), align 8
  %cmp.not25 = icmp eq i8* %.pn24, bitcast (%struct.list_head* @elv_list to i8*)
  br i1 %cmp.not25, label %if.end10, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %required_elevator_features = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 32
  %0 = load i32, i32* %required_elevator_features, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn26 = phi i8* [ %.pn24, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %elevator_features = getelementptr i8, i8* %.pn26, i64 -40
  %1 = bitcast i8* %elevator_features to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc i1 @elv_support_features(i32 noundef %2, i32 noundef %0) #13
  br i1 %call, label %if.end10.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn26 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @elv_list to i8*)
  br i1 %cmp.not, label %if.end10, label %for.body

if.end10.split.loop.exit:                         ; preds = %for.body
  %e.0.in.le = getelementptr i8, i8* %.pn26, i64 -264
  %e.0.le = bitcast i8* %e.0.in.le to %struct.elevator_type*
  br label %if.end10

if.end10:                                         ; preds = %for.inc, %entry, %if.end10.split.loop.exit
  %found.1 = phi %struct.elevator_type* [ %e.0.le, %if.end10.split.loop.exit ], [ null, %entry ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock() #12
  ret %struct.elevator_type* %found.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @elv_iosched_store(%struct.request_queue* noundef %q, i8* noundef %name, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @elv_support_iosched(%struct.request_queue* noundef %q) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @__elevator_change(%struct.request_queue* noundef %q, i8* noundef %name) #13
  %tobool.not = icmp eq i32 %call1, 0
  %conv = sext i32 %call1 to i64
  %spec.select = select i1 %tobool.not, i64 %count, i64 %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ %count, %entry ], [ %spec.select, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__elevator_change(%struct.request_queue* noundef %q, i8* noundef %name) unnamed_addr #0 {
entry:
  %elevator_name = alloca [16 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %elevator_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !16
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = and i64 %1, 4194304
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 noundef 4) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool4.not = icmp eq %struct.elevator_queue* %3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then3
  %call7 = call fastcc i32 @elevator_switch(%struct.request_queue* noundef %q, %struct.elevator_type* noundef null) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i64 @strlcpy(i8* noundef nonnull %0, i8* noundef %name, i64 noundef 16) #12
  %call11 = call fastcc i8* @strstrip(i8* noundef nonnull %0) #13
  %call12 = call fastcc %struct.elevator_type* @elevator_get(%struct.request_queue* noundef %q, i8* noundef %call11, i1 noundef true) #13
  %tobool13.not = icmp eq %struct.elevator_type* %call12, null
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end8
  %elevator16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %4 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator16, align 8
  %tobool17.not = icmp eq %struct.elevator_queue* %4, null
  br i1 %tobool17.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %4, i64 0, i32 0
  %5 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %call20 = call fastcc i1 @elevator_match(%struct.elevator_type* noundef %5, i8* noundef nonnull %0, i32 noundef 0) #13
  br i1 %call20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.end15
  %call23 = call fastcc i32 @elevator_switch(%struct.request_queue* noundef %q, %struct.elevator_type* noundef nonnull %call12) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end8, %if.then3, %entry, %if.end22, %if.end6
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ %call7, %if.end6 ], [ -2, %entry ], [ 0, %if.then3 ], [ -22, %if.end8 ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @elv_iosched_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %q) #13
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.elevator_queue* %0, null
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #12
  br label %if.end5

if.else:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %len.0 = phi i32 [ 0, %if.else ], [ %call4, %if.then3 ]
  %elv.0 = phi %struct.elevator_type* [ %1, %if.else ], [ null, %if.then3 ]
  call fastcc void @__raw_spin_lock() #12
  %.pn87 = load i8*, i8** bitcast (%struct.list_head* @elv_list to i8**), align 8
  %cmp.not90 = icmp eq i8* %.pn87, bitcast (%struct.list_head* @elv_list to i8*)
  br i1 %cmp.not90, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %tobool8.not = icmp eq %struct.elevator_type* %elv.0, null
  %elevator_name14 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %elv.0, i64 0, i32 5
  %required_elevator_features = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn92 = phi i8* [ %.pn87, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %len.191 = phi i32 [ %len.0, %for.body.lr.ph ], [ %len.2, %for.inc ]
  %__e.095.in = getelementptr i8, i8* %.pn92, i64 -264
  %__e.095 = bitcast i8* %__e.095.in to %struct.elevator_type*
  br i1 %tobool8.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %elevator_name = getelementptr i8, i8* %.pn92, i64 -56
  %2 = bitcast i8* %elevator_name to i8**
  %3 = load i8*, i8** %2, align 8
  %call9 = call fastcc i1 @elevator_match(%struct.elevator_type* noundef nonnull %elv.0, i8* noundef %3, i32 noundef 0) #13
  br i1 %call9, label %for.inc.sink.split, label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %for.body
  %call18 = call fastcc i1 @elv_support_iosched(%struct.request_queue* noundef %q) #13
  br i1 %call18, label %land.lhs.true20, label %for.inc

land.lhs.true20:                                  ; preds = %if.end17
  %elevator_name21 = getelementptr i8, i8* %.pn92, i64 -56
  %4 = bitcast i8* %elevator_name21 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* %required_elevator_features, align 8
  %call22 = call fastcc i1 @elevator_match(%struct.elevator_type* noundef %__e.095, i8* noundef %5, i32 noundef %6) #13
  br i1 %call22, label %for.inc.sink.split, label %for.inc

for.inc.sink.split:                               ; preds = %land.lhs.true20, %land.lhs.true
  %.sink97 = phi i8** [ %elevator_name14, %land.lhs.true ], [ %4, %land.lhs.true20 ]
  %.sink = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %land.lhs.true20 ]
  %idx.ext25 = sext i32 %len.191 to i64
  %add.ptr26 = getelementptr i8, i8* %name, i64 %idx.ext25
  %7 = load i8*, i8** %.sink97, align 8
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr26, i8* noundef %.sink, i8* noundef %7) #12
  %add29 = add i32 %call28, %len.191
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end17, %land.lhs.true20
  %len.2 = phi i32 [ %len.191, %land.lhs.true20 ], [ %len.191, %if.end17 ], [ %add29, %for.inc.sink.split ]
  %8 = bitcast i8* %.pn92 to i8**
  %.pn = load i8*, i8** %8, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @elv_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end5
  %len.1.lcssa = phi i32 [ %len.0, %if.end5 ], [ %len.2, %for.inc ]
  call fastcc void @__raw_spin_unlock() #12
  %9 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool39.not = icmp eq %struct.elevator_queue* %9, null
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %for.end
  %idx.ext41 = sext i32 %len.1.lcssa to i64
  %add.ptr42 = getelementptr i8, i8* %name, i64 %idx.ext41
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr42, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #12
  %add44 = add i32 %call43, %len.1.lcssa
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %for.end
  %len.3 = phi i32 [ %add44, %if.then40 ], [ %len.1.lcssa, %for.end ]
  %idx.ext46 = sext i32 %len.3 to i64
  %add.ptr47 = getelementptr i8, i8* %name, i64 %idx.ext46
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr47, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #12
  %add49 = add i32 %call48, %len.3
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then
  %retval.0.in = phi i32 [ %add49, %if.end45 ], [ %call1, %if.then ]
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @queue_is_mq(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %tobool = icmp ne %struct.blk_mq_ops* %0, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @elevator_match(%struct.elevator_type* nocapture noundef readonly %e, i8* noundef %name, i32 noundef %required_features) unnamed_addr #0 {
entry:
  %elevator_features = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 7
  %0 = load i32, i32* %elevator_features, align 8
  %call = call fastcc i1 @elv_support_features(i32 noundef %0, i32 noundef %required_features) #13
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %elevator_name = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 5
  %1 = load i8*, i8** %elevator_name, align 8
  %call1 = call i32 @strcmp(i8* noundef %1, i8* noundef %name) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %elevator_alias = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 6
  %2 = load i8*, i8** %elevator_alias, align 8
  %tobool4.not = icmp eq i8* %2, null
  br i1 %tobool4.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call6 = call i32 @strcmp(i8* noundef nonnull %2, i8* noundef %name) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end3
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end, %entry, %if.end9
  %retval.0 = phi i1 [ false, %if.end9 ], [ false, %entry ], [ true, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @elv_rb_former_request(%struct.request_queue* nocapture noundef readnone %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13, i32 0
  %call = call %struct.rb_node* @rb_prev(%struct.rb_node* noundef %rb_node) #12
  %tobool.not = icmp eq %struct.rb_node* %call, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %call, i64 -5, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.request*
  %retval.0 = select i1 %tobool.not, %struct.request* null, %struct.request* %0
  ret %struct.request* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_prev(%struct.rb_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @elv_rb_latter_request(%struct.request_queue* nocapture noundef readnone %q, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13, i32 0
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %rb_node) #12
  %tobool.not = icmp eq %struct.rb_node* %call, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %call, i64 -5, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.request*
  %retval.0 = select i1 %tobool.not, %struct.request* null, %struct.request* %0
  ret %struct.request* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @elevator_setup(i8* nocapture noundef readnone %str) #9 section ".init.text" {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([125 x i8], [125 x i8]* @.str.14, i64 0, i64 0)) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hash_del(%struct.hlist_node* nocapture noundef %node) unnamed_addr #4 {
entry:
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %node) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #13
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #5 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #4 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_bytes(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  %0 = load i32, i32* %__data_len, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_rq_is_passthrough(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @blk_op_is_passthrough(i32 noundef %and) #13
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_op_is_passthrough(i32 noundef %op) unnamed_addr #10 {
entry:
  %and = and i32 %op, 254
  %0 = icmp eq i32 %and, 34
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @queue_max_discard_segments(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_discard_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 23
  %0 = load i16, i16* %max_discard_segments, align 4
  ret i16 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
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
define internal void @elevator_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 5
  %0 = bitcast %struct.kernfs_node** %add.ptr to i8*
  call void @kfree(i8* noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @elv_attr_show(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %page) #0 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.elevator_queue*, i8*)**
  %1 = load i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.elevator_queue*, i8*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 5
  %sysfs_lock = getelementptr inbounds %struct.kernfs_node*, %struct.kernfs_node** %add.ptr7, i64 10
  %2 = bitcast %struct.kernfs_node** %sysfs_lock to %struct.mutex*
  call void @mutex_lock(%struct.mutex* noundef %2) #12
  %type = bitcast %struct.kernfs_node** %add.ptr7 to %struct.elevator_type**
  %3 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %tobool8.not = icmp eq %struct.elevator_type* %3, null
  br i1 %tobool8.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %4 = bitcast %struct.kernfs_node** %add.ptr7 to %struct.elevator_queue*
  %5 = load i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*)** %0, align 8
  %call = call i64 %5(%struct.elevator_queue* noundef %4, i8* noundef %page) #12
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ -2, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i64 [ %cond, %cond.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @elv_attr_store(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %page, i64 noundef %length) #0 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.elevator_queue*, i8*, i64)**
  %1 = load i64 (%struct.elevator_queue*, i8*, i64)*, i64 (%struct.elevator_queue*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.elevator_queue*, i8*, i64)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 5
  %sysfs_lock = getelementptr inbounds %struct.kernfs_node*, %struct.kernfs_node** %add.ptr7, i64 10
  %2 = bitcast %struct.kernfs_node** %sysfs_lock to %struct.mutex*
  call void @mutex_lock(%struct.mutex* noundef %2) #12
  %type = bitcast %struct.kernfs_node** %add.ptr7 to %struct.elevator_type**
  %3 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %tobool8.not = icmp eq %struct.elevator_type* %3, null
  br i1 %tobool8.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %4 = bitcast %struct.kernfs_node** %add.ptr7 to %struct.elevator_queue*
  %5 = load i64 (%struct.elevator_queue*, i8*, i64)*, i64 (%struct.elevator_queue*, i8*, i64)** %0, align 8
  %call = call i64 %5(%struct.elevator_queue* noundef %4, i8* noundef %page, i64 noundef %length) #12
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ -2, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i64 [ %cond, %cond.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  call fastcc void @do_raw_spin_lock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @elv_list_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

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
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @elv_list_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @elv_list_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #14, !srcloc !18
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @elv_list_lock to i8*), i8 0) #14, !srcloc !20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_free_requests(%struct.request_queue* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags) unnamed_addr #10 {
entry:
  %and = and i32 %flags, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.elevator_type* @elevator_get(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %name, i1 noundef %try_loading) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #12
  %required_elevator_features = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 32
  %0 = load i32, i32* %required_elevator_features, align 8
  %call = call fastcc %struct.elevator_type* @elevator_find(i8* noundef %name, i32 noundef %0) #13
  %tobool.not = icmp eq %struct.elevator_type* %call, null
  %1 = and i1 %tobool.not, %try_loading
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock() #12
  call fastcc void @__raw_spin_lock() #12
  %2 = load i32, i32* %required_elevator_features, align 8
  %call4 = call fastcc %struct.elevator_type* @elevator_find(i8* noundef %name, i32 noundef %2) #13
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %e.0 = phi %struct.elevator_type* [ %call, %entry ], [ %call4, %if.then ]
  call fastcc void @__raw_spin_unlock() #12
  ret %struct.elevator_type* %e.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @elv_support_features(i32 noundef %elv_features, i32 noundef %required_features) unnamed_addr #10 {
entry:
  %and = and i32 %required_features, %elv_features
  %cmp = icmp eq i32 %and, %required_features
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @elevator_switch(%struct.request_queue* noundef %q, %struct.elevator_type* noundef %new_e) unnamed_addr #0 {
entry:
  call void @blk_mq_freeze_queue(%struct.request_queue* noundef %q) #12
  call void @blk_mq_quiesce_queue(%struct.request_queue* noundef %q) #12
  %call = call i32 @elevator_switch_mq(%struct.request_queue* noundef %q, %struct.elevator_type* noundef %new_e) #13
  call void @blk_mq_unquiesce_queue(%struct.request_queue* noundef %q) #12
  call void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @strstrip(i8* noundef %str) unnamed_addr #0 {
entry:
  %call = call i8* @strim(i8* noundef %str) #12
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strim(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155293934}
!10 = !{i64 2155318631}
!11 = !{i64 2155322431}
!12 = !{i64 2155339047}
!13 = !{i64 2155340661}
!14 = !{i64 2155342267}
!15 = !{i64 2155349637}
!16 = !{!"auto-init"}
!17 = !{i64 2149551100}
!18 = !{i64 2147834667, i64 2147834700, i64 2147834753, i64 2147834812, i64 2147834846, i64 2147834901, i64 2147834930, i64 2147834950}
!19 = !{i64 2149558381}
!20 = !{i64 2149350611}
