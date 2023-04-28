; ModuleID = 'drivers/of/platform.c'
source_filename = "drivers/of/platform.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall3s.init\22, \22a\22\09\09"
module asm "__initcall__kmod_platform__423_545_of_platform_default_populate_init3s:\09\09\09"
module asm ".long\09of_platform_default_populate_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7s.init\22, \22a\22\09\09"
module asm "__initcall__kmod_platform__425_552_of_platform_sync_state_init7s:\09\09\09"
module asm ".long\09of_platform_sync_state_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.69 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
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
%struct.module = type opaque
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.79, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
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
%struct.atomic64_t = type { i64 }
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
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.of_dev_auxdata = type { i8*, i64, i8*, i8* }
%struct.amba_device = type { %struct.device, %struct.resource, %struct.clk*, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], i8* }
%struct.clk = type opaque
%struct.amba_cs_uci_id = type { i32, i32, i32, i8* }

@of_default_bus_match_table = dso_local constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-mfd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,amba-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 8
@platform_bus_type = external dso_local global %struct.bus_type, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@platform_bus = external dso_local global %struct.device, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__UNIQUE_ID___addressable_of_platform_default_populate_init424 = internal global i8* bitcast (i32 ()* @of_platform_default_populate_init to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_of_platform_sync_state_init426 = internal global i8* bitcast (i32 ()* @of_platform_sync_state_init to i8*), section ".discard.addressable", align 8
@amba_bustype = external dso_local global %struct.bus_type, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"devm_of_platform_populate_release\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%llx.%pOFn:%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%llx.%pOFn\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@of_skipped_node_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"operating-points-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"arm,primecell\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"arm,primecell-periphid\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"\013OF: amba: of_address_to_resource() failed (%d) for %pOF\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"\013OF: amba_device_add() failed (%d) for %pOF\0A\00", align 1
@reserved_mem_matches = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rmtfs-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,cmd-db\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ramoops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvmem-rmem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"/firmware\00", align 1
@of_root = external dso_local local_unnamed_addr global %struct.device_node*, align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_of_platform_default_populate_init424 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_of_platform_sync_state_init426 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.device* @bus_find_device_by_of_node(%struct.device_node* noundef %np) #12
  %tobool.not = icmp eq %struct.device* %call, null
  %add.ptr = getelementptr %struct.device, %struct.device* %call, i64 -1, i32 35
  %0 = bitcast %struct.dev_iommu** %add.ptr to %struct.platform_device*
  %cond = select i1 %tobool.not, %struct.platform_device* null, %struct.platform_device* %0
  ret %struct.platform_device* %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @bus_find_device_by_of_node(%struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.device_node* %np to i8*
  %call = call %struct.device* @bus_find_device(%struct.bus_type* noundef nonnull @platform_bus_type, %struct.device* noundef null, i8* noundef %0, i32 (%struct.device*, i8*)* noundef nonnull @device_match_of_node) #13
  ret %struct.device* %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.platform_device* @of_device_alloc(%struct.device_node* noundef %np, i8* noundef %bus_id, %struct.device* noundef %parent) local_unnamed_addr #0 {
entry:
  %temp_res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %temp_res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %call = call %struct.platform_device* @platform_device_alloc(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef -1) #13
  %tobool.not = icmp eq %struct.platform_device* %call, null
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %num_reg.0 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %call1 = call i32 @of_address_to_resource(%struct.device_node* noundef %np, i32 noundef %num_reg.0, %struct.resource* noundef nonnull %temp_res) #13
  %cmp = icmp eq i32 %call1, 0
  %inc = add i32 %num_reg.0, 1
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %call2 = call i32 @of_irq_count(%struct.device_node* noundef %np) #13
  %1 = or i32 %call2, %num_reg.0
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %if.end39, label %if.then5

if.then5:                                         ; preds = %while.end
  %add = add i32 %call2, %num_reg.0
  %conv = sext i32 %add to i64
  %call6 = call fastcc i8* @kcalloc(i64 noundef %conv) #12
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  call void @platform_device_put(%struct.platform_device* noundef nonnull %call) #13
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %2 = bitcast i8* %call6 to %struct.resource*
  %num_resources = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 6
  store i32 %add, i32* %num_resources, align 8
  %resource = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 7
  %3 = bitcast %struct.resource** %resource to i8**
  store i8* %call6, i8** %3, align 8
  %cmp1197 = icmp sgt i32 %num_reg.0, 0
  br i1 %cmp1197, label %for.body, label %for.end

for.body:                                         ; preds = %if.end9, %if.end24
  %res.099 = phi %struct.resource* [ %incdec.ptr, %if.end24 ], [ %2, %if.end9 ]
  %i.098 = phi i32 [ %inc32, %if.end24 ], [ 0, %if.end9 ]
  %call13 = call i32 @of_address_to_resource(%struct.device_node* noundef %np, i32 noundef %i.098, %struct.resource* noundef %res.099) #13
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end24, label %if.then23, !prof !8

if.then23:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/platform.c\22; .popsection; .long 14472b - 14470b; .short 135; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body
  %inc32 = add nuw nsw i32 %i.098, 1
  %incdec.ptr = getelementptr %struct.resource, %struct.resource* %res.099, i64 1
  %exitcond.not = icmp eq i32 %inc32, %num_reg.0
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end24, %if.end9
  %res.0.lcssa = phi %struct.resource* [ %2, %if.end9 ], [ %incdec.ptr, %if.end24 ]
  %call33 = call i32 @of_irq_to_resource_table(%struct.device_node* noundef %np, %struct.resource* noundef %res.0.lcssa, i32 noundef %call2) #13
  br label %if.end39

if.end39:                                         ; preds = %for.end, %while.end
  %dev41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 25
  store %struct.device_node* %np, %struct.device_node** %of_node, align 8
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 3
  %fwnode43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 26
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode43, align 8
  %tobool44.not = icmp eq %struct.device* %parent, null
  %.platform_bus = select i1 %tobool44.not, %struct.device* @platform_bus, %struct.device* %parent
  %parent46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 1
  store %struct.device* %.platform_bus, %struct.device** %parent46, align 8
  %tobool47.not = icmp eq i8* %bus_id, null
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end39
  %call50 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev41, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %bus_id) #13
  br label %cleanup

if.else:                                          ; preds = %if.end39
  call fastcc void @of_device_make_bus_id(%struct.device* noundef %dev41) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.else, %entry, %if.then8
  %retval.0 = phi %struct.platform_device* [ null, %if.then8 ], [ null, %entry ], [ %call, %if.else ], [ %call, %if.then48 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret %struct.platform_device* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.platform_device* @platform_device_alloc(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(%struct.device_node* noundef, i32 noundef, %struct.resource* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #12
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(%struct.platform_device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource_table(%struct.device_node* noundef, %struct.resource* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_device_make_bus_id(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %node.032 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %parent33 = getelementptr inbounds %struct.device_node, %struct.device_node* %node.032, i64 0, i32 6
  %0 = load %struct.device_node*, %struct.device_node** %parent33, align 8
  %tobool.not34 = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not34, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %parent37 = phi %struct.device_node** [ %parent, %if.end ], [ %parent33, %entry ]
  %node.035 = phi %struct.device_node* [ %node.0, %if.end ], [ %node.032, %entry ]
  %call = call i8* @of_get_property(%struct.device_node* noundef %node.035, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* noundef null) #13
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %1 = bitcast i8* %call to i32*
  %call2 = call i64 @of_translate_address(%struct.device_node* noundef %node.035, i32* noundef nonnull %1) #13
  %cmp.not = icmp eq i64 %call2, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #12
  %tobool4.not = icmp eq i8* %call3, null
  %cond = select i1 %tobool4.not, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)
  %call6 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev, i8* noundef %cond, i64 noundef %call2, %struct.device_node* noundef %node.035, i8* noundef %call3) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %while.body
  %call7 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #12
  %tobool8.not = icmp eq i8* %call7, null
  %cond9 = select i1 %tobool8.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %node.035, i64 0, i32 2
  %2 = load i8*, i8** %full_name, align 8
  %call10 = call fastcc i8* @kbasename(i8* noundef %2) #12
  %call11 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #12
  %call12 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev, i8* noundef %cond9, i8* noundef %call10, i8* noundef %call11) #13
  %node.0 = load %struct.device_node*, %struct.device_node** %parent37, align 8
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %node.0, i64 0, i32 6
  %3 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %tobool.not = icmp eq %struct.device_node* %3, null
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end, %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.platform_device* @of_platform_device_create(%struct.device_node* noundef %np, i8* noundef %bus_id, %struct.device* noundef %parent) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.platform_device* @of_platform_device_create_pdata(%struct.device_node* noundef %np, i8* noundef %bus_id, i8* noundef null, %struct.device* noundef %parent) #12
  ret %struct.platform_device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.platform_device* @of_platform_device_create_pdata(%struct.device_node* noundef %np, i8* noundef %bus_id, i8* noundef %platform_data, %struct.device* noundef %parent) unnamed_addr #0 {
entry:
  %call = call i1 @of_device_is_available(%struct.device_node* noundef %np) #13
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @of_node_test_and_set_flag(%struct.device_node* noundef %np) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call %struct.platform_device* @of_device_alloc(%struct.device_node* noundef %np, i8* noundef %bus_id, %struct.device* noundef %parent) #12
  %tobool3.not = icmp eq %struct.platform_device* %call2, null
  br i1 %tobool3.not, label %err_clear_flag, label %if.end5

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call2, i64 0, i32 3
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call2, i64 0, i32 3, i32 17
  store i64 4294967295, i64* %coherent_dma_mask, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call2, i64 0, i32 3, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %tobool8.not = icmp eq i64* %0, null
  br i1 %tobool8.not, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end5
  store i64* %coherent_dma_mask, i64** %dma_mask, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end5
  %bus = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call2, i64 0, i32 3, i32 5
  store %struct.bus_type* @platform_bus_type, %struct.bus_type** %bus, align 8
  %platform_data17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call2, i64 0, i32 3, i32 7
  store i8* %platform_data, i8** %platform_data17, align 8
  %of_node = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call2, i64 0, i32 3, i32 25
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  call void @of_msi_configure(%struct.device* noundef %dev6, %struct.device_node* noundef %1) #13
  %call20 = call i32 @of_device_add(%struct.platform_device* noundef nonnull %call2) #13
  %cmp.not = icmp eq i32 %call20, 0
  br i1 %cmp.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end14
  call void @platform_device_put(%struct.platform_device* noundef nonnull %call2) #13
  br label %err_clear_flag

err_clear_flag:                                   ; preds = %if.end, %if.then21
  call fastcc void @of_node_clear_flag(%struct.device_node* noundef %np, i64 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry, %lor.lhs.false, %err_clear_flag
  %retval.0 = phi %struct.platform_device* [ null, %err_clear_flag ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call2, %if.end14 ]
  ret %struct.platform_device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_platform_bus_probe(%struct.device_node* noundef %root, %struct.of_device_id* noundef %matches, %struct.device* noundef %parent) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %root, null
  br i1 %tobool.not, label %cond.end, label %if.end

cond.end:                                         ; preds = %entry
  %call1 = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #12
  %tobool2.not = icmp eq %struct.device_node* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %cond43 = phi %struct.device_node* [ %call1, %cond.end ], [ %root, %entry ]
  %call4 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef nonnull %cond43) #13
  %tobool5.not = icmp eq %struct.of_device_id* %call4, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call fastcc void @of_platform_bus_create(%struct.device_node* noundef nonnull %cond43, %struct.of_device_id* noundef %matches, %struct.of_dev_auxdata* noundef null, %struct.device* noundef %parent, i1 noundef false) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call8 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %cond43, %struct.device_node* noundef null) #13
  %cmp.not38 = icmp eq %struct.device_node* %call8, null
  br i1 %cmp.not38, label %cleanup, label %for.body

for.body:                                         ; preds = %if.else, %for.inc
  %child.039 = phi %struct.device_node* [ %call17, %for.inc ], [ %call8, %if.else ]
  %call9 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef nonnull %child.039) #13
  %tobool10.not = icmp eq %struct.of_device_id* %call9, null
  br i1 %tobool10.not, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  call fastcc void @of_platform_bus_create(%struct.device_node* noundef nonnull %child.039, %struct.of_device_id* noundef %matches, %struct.of_dev_auxdata* noundef null, %struct.device* noundef %parent, i1 noundef false) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body
  %call17 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %cond43, %struct.device_node* noundef nonnull %child.039) #13
  %cmp.not = icmp eq %struct.device_node* %call17, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.else, %if.then6, %cond.end
  %retval.0 = phi i32 [ -22, %cond.end ], [ 0, %if.then6 ], [ 0, %if.else ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_find_node_by_path(i8* noundef %path) unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_find_node_opts_by_path(i8* noundef %path, i8** noundef null) #13
  ret %struct.device_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef, %struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_platform_bus_create(%struct.device_node* noundef %bus, %struct.of_device_id* noundef %matches, %struct.of_dev_auxdata* noundef %lookup, %struct.device* noundef %parent, i1 noundef %strict) unnamed_addr #0 {
entry:
  br i1 %strict, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call i8* @of_get_property(%struct.device_node* noundef %bus, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* noundef null) #13
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @of_skipped_node_table, i64 0, i64 0), %struct.device_node* noundef %bus) #13
  %tobool3.not = icmp eq %struct.of_device_id* %call2, null
  br i1 %tobool3.not, label %if.end8, label %cleanup, !prof !8

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef %bus, i64 noundef 4) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = call fastcc %struct.of_dev_auxdata* @of_dev_lookup(%struct.of_dev_auxdata* noundef %lookup, %struct.device_node* noundef %bus) #12
  %tobool15.not = icmp eq %struct.of_dev_auxdata* %call14, null
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  %name = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %call14, i64 0, i32 2
  %0 = load i8*, i8** %name, align 8
  %platform_data17 = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %call14, i64 0, i32 3
  %1 = load i8*, i8** %platform_data17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  %bus_id.0 = phi i8* [ %0, %if.then16 ], [ null, %if.end13 ]
  %platform_data.0 = phi i8* [ %1, %if.then16 ], [ null, %if.end13 ]
  %call19 = call i32 @of_device_is_compatible(%struct.device_node* noundef %bus, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end18
  call fastcc void @of_amba_device_create(%struct.device_node* noundef %bus, i8* noundef %bus_id.0, i8* noundef %platform_data.0, %struct.device* noundef %parent) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = call fastcc %struct.platform_device* @of_platform_device_create_pdata(%struct.device_node* noundef %bus, i8* noundef %bus_id.0, i8* noundef %platform_data.0, %struct.device* noundef %parent) #12
  %tobool25.not = icmp eq %struct.platform_device* %call24, null
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  %call26 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef %bus) #13
  %tobool27.not = icmp eq %struct.of_device_id* %call26, null
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false
  %call30 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %bus, %struct.device_node* noundef null) #13
  %cmp.not1 = icmp eq %struct.device_node* %call30, null
  br i1 %cmp.not1, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end29
  %dev33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call24, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %child.02 = phi %struct.device_node* [ %call30, %for.body.lr.ph ], [ %call39, %for.body ]
  call fastcc void @of_platform_bus_create(%struct.device_node* noundef nonnull %child.02, %struct.of_device_id* noundef %matches, %struct.of_dev_auxdata* noundef %lookup, %struct.device* noundef %dev33, i1 noundef %strict) #12
  %call39 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %bus, %struct.device_node* noundef nonnull %child.02) #13
  %cmp.not = icmp eq %struct.device_node* %call39, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end29
  call fastcc void @of_node_set_flag(%struct.device_node* noundef %bus) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %lor.lhs.false, %if.end8, %if.end, %land.lhs.true, %for.end, %if.then21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node* noundef, %struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_platform_populate(%struct.device_node* noundef %root, %struct.of_device_id* noundef %matches, %struct.of_dev_auxdata* noundef %lookup, %struct.device* noundef %parent) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %root, null
  br i1 %tobool.not, label %cond.end, label %if.end

cond.end:                                         ; preds = %entry
  %call1 = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #12
  %tobool2.not = icmp eq %struct.device_node* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %cond27 = phi %struct.device_node* [ %call1, %cond.end ], [ %root, %entry ]
  call void @device_links_supplier_sync_state_pause() #13
  %call4 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %cond27, %struct.device_node* noundef null) #13
  %cmp.not23 = icmp eq %struct.device_node* %call4, null
  br i1 %cmp.not23, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %child.024 = phi %struct.device_node* [ %call9, %for.body ], [ %call4, %if.end ]
  call fastcc void @of_platform_bus_create(%struct.device_node* noundef nonnull %child.024, %struct.of_device_id* noundef %matches, %struct.of_dev_auxdata* noundef %lookup, %struct.device* noundef %parent, i1 noundef true) #12
  %call9 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %cond27, %struct.device_node* noundef nonnull %child.024) #13
  %cmp.not = icmp eq %struct.device_node* %call9, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call void @device_links_supplier_sync_state_resume() #13
  call fastcc void @of_node_set_flag(%struct.device_node* noundef nonnull %cond27) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_supplier_sync_state_pause() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_supplier_sync_state_resume() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_node_set_flag(%struct.device_node* noundef %n) unnamed_addr #0 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  call fastcc void @set_bit(i64* noundef %_flags) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_platform_default_populate(%struct.device_node* noundef %root, %struct.of_dev_auxdata* noundef %lookup, %struct.device* noundef %parent) local_unnamed_addr #0 {
entry:
  %call = call i32 @of_platform_populate(%struct.device_node* noundef %root, %struct.of_device_id* noundef getelementptr inbounds ([5 x %struct.of_device_id], [5 x %struct.of_device_id]* @of_default_bus_match_table, i64 0, i64 0), %struct.of_dev_auxdata* noundef %lookup, %struct.device* noundef %parent) #12
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @of_platform_default_populate_init() #4 section ".init.text" {
entry:
  call void @device_links_supplier_sync_state_pause() #13
  %call = call fastcc i1 @of_have_populated_dt() #12
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef null) #12
  %tobool.not16 = icmp eq %struct.device_node* %call1, null
  br i1 %tobool.not16, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %node.017 = phi %struct.device_node* [ %call3, %for.body ], [ %call1, %if.end ]
  %call2 = call %struct.platform_device* @of_platform_device_create(%struct.device_node* noundef nonnull %node.017, i8* noundef null, %struct.device* noundef null) #12
  %call3 = call fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef nonnull %node.017) #12
  %tobool.not = icmp eq %struct.device_node* %call3, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %call4 = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #12
  %tobool5.not = icmp eq %struct.device_node* %call4, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %for.end
  %call7 = call i32 @of_platform_populate(%struct.device_node* noundef nonnull %call4, %struct.of_device_id* noundef null, %struct.of_dev_auxdata* noundef null, %struct.device* noundef null) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end
  %call9 = call i32 @of_platform_default_populate(%struct.device_node* noundef null, %struct.of_dev_auxdata* noundef null, %struct.device* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @of_platform_sync_state_init() #4 section ".init.text" {
entry:
  call void @device_links_supplier_sync_state_resume() #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_platform_device_destroy(%struct.device* noundef %dev, i8* nocapture readnone %data) #0 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef nonnull %0, i64 noundef 3) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call4 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef %1, i64 noundef 4) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @device_for_each_child(%struct.device* noundef %dev, i8* noundef null, i32 (%struct.device*, i8*)* noundef nonnull @of_platform_device_destroy) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  call fastcc void @of_node_clear_flag(%struct.device_node* noundef %2, i64 noundef 3) #12
  %3 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  call fastcc void @of_node_clear_flag(%struct.device_node* noundef %3, i64 noundef 4) #12
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %4 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %cmp = icmp eq %struct.bus_type* %4, @platform_bus_type
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 35
  %5 = bitcast %struct.dev_iommu** %add.ptr to %struct.platform_device*
  call void @platform_device_unregister(%struct.platform_device* noundef %5) #13
  br label %return

if.else:                                          ; preds = %if.end8
  %cmp13 = icmp eq %struct.bus_type* %4, @amba_bustype
  br i1 %cmp13, label %if.then14, label %return

if.then14:                                        ; preds = %if.else
  %6 = bitcast %struct.device* %dev to %struct.amba_device*
  call void @amba_device_unregister(%struct.amba_device* noundef %6) #13
  br label %return

return:                                           ; preds = %if.then11, %if.then14, %if.else, %entry, %lor.lhs.false
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @of_node_check_flag(%struct.device_node* noundef %n, i64 noundef %flag) unnamed_addr #5 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  %0 = load volatile i64, i64* %_flags, align 8
  %and.i = and i64 %flag, 63
  %shr.i = lshr i64 %0, %and.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(%struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_node_clear_flag(%struct.device_node* noundef %n, i64 noundef %flag) unnamed_addr #0 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  call fastcc void @clear_bit(i64 noundef %flag, i64* noundef %_flags) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(%struct.platform_device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_device_unregister(%struct.amba_device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_platform_depopulate(%struct.device* noundef %parent) local_unnamed_addr #0 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef nonnull %0, i64 noundef 4) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @device_for_each_child_reverse(%struct.device* noundef %parent, i8* noundef null, i32 (%struct.device*, i8*)* noundef nonnull @of_platform_device_destroy) #13
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  call fastcc void @of_node_clear_flag(%struct.device_node* noundef %1, i64 noundef 4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(%struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_of_platform_populate(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_of_platform_populate_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #13
  %0 = bitcast i8* %call to %struct.device**
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call4 = call i32 @of_platform_populate(%struct.device_node* noundef %1, %struct.of_device_id* noundef null, %struct.of_dev_auxdata* noundef null, %struct.device* noundef nonnull %dev) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @devres_free(i8* noundef nonnull %call) #13
  br label %cleanup

if.else:                                          ; preds = %if.end3
  store %struct.device* %dev, %struct.device** %0, align 8
  call void @devres_add(%struct.device* noundef nonnull %dev, i8* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.else, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -12, %if.end ], [ 0, %if.else ], [ %call4, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_of_platform_populate_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  call void @of_platform_depopulate(%struct.device* noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_of_platform_depopulate(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.device* %dev to i8*
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_of_platform_populate_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_of_platform_match, i8* noundef %0) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/platform.c\22; .popsection; .long 14472b - 14470b; .short 664; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devm_of_platform_match(%struct.device* nocapture noundef readnone %dev, i8* noundef readonly %res, i8* noundef readnone %data) #0 {
entry:
  %tobool.not = icmp eq i8* %res, null
  br i1 %tobool.not, label %if.then10, label %if.end18

if.then10:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/platform.c\22; .popsection; .long 14472b - 14470b; .short 641; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !11
  br label %cleanup

if.end18:                                         ; preds = %entry
  %0 = bitcast i8* %res to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  %2 = bitcast i8* %data to %struct.device*
  %cmp = icmp eq %struct.device* %1, %2
  %conv19 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then10
  %retval.0 = phi i32 [ %conv19, %if.end18 ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @bus_find_device(%struct.bus_type* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(%struct.device* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 64)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !12

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(%struct.device_node* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kbasename(i8* noundef %path) unnamed_addr #0 {
entry:
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47) #13
  %tobool.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool.not, i8* %path, i8* %add.ptr
  ret i8* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #7 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_node_test_and_set_flag(%struct.device_node* noundef %n) unnamed_addr #0 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  %call = call fastcc i1 @test_and_set_bit(i64* noundef %_flags) #12
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_msi_configure(%struct.device* noundef, %struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_add(%struct.platform_device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 8
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #13
  %2 = and i64 %call.i.i.i, 8
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #14, !srcloc !13
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_node_opts_by_path(i8* noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.of_dev_auxdata* @of_dev_lookup(%struct.of_dev_auxdata* noundef readonly %lookup, %struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.of_dev_auxdata* %lookup, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %compatible157 = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %lookup, i64 0, i32 0
  %1 = load i8*, i8** %compatible157, align 8
  %tobool2.not58 = icmp eq i8* %1, null
  br i1 %tobool2.not58, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i8* [ %1, %for.body.lr.ph ], [ %5, %for.inc ]
  %auxdata.060 = phi %struct.of_dev_auxdata* [ %lookup, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %compatible.059 = phi i32 [ 0, %for.body.lr.ph ], [ %compatible.1, %for.inc ]
  %call = call i32 @of_device_is_compatible(%struct.device_node* noundef %np, i8* noundef nonnull %2) #13
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.inc, label %if.end6

if.end6:                                          ; preds = %for.body
  %call7 = call i32 @of_address_to_resource(%struct.device_node* noundef %np, i32 noundef 0, %struct.resource* noundef nonnull %res) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end6
  %inc = add i32 %compatible.059, 1
  %3 = load i64, i64* %start, align 8
  %phys_addr = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %auxdata.060, i64 0, i32 1
  %4 = load i64, i64* %phys_addr, align 8
  %cmp.not = icmp eq i64 %3, %4
  br i1 %cmp.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body
  %compatible.1 = phi i32 [ %inc, %if.then9 ], [ %compatible.059, %for.body ]
  %incdec.ptr = getelementptr %struct.of_dev_auxdata, %struct.of_dev_auxdata* %auxdata.060, i64 1
  %compatible1 = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %incdec.ptr, i64 0, i32 0
  %5 = load i8*, i8** %compatible1, align 8
  %tobool2.not = icmp eq i8* %5, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool13.not = icmp eq i32 %compatible.1, 0
  br i1 %tobool13.not, label %cleanup, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.end
  %6 = load i8*, i8** %compatible157, align 8
  %tobool18.not63 = icmp eq i8* %6, null
  br i1 %tobool18.not63, label %cleanup, label %for.body19

for.body19:                                       ; preds = %for.cond16.preheader, %for.inc31
  %7 = phi i8* [ %10, %for.inc31 ], [ %6, %for.cond16.preheader ]
  %auxdata.164 = phi %struct.of_dev_auxdata* [ %incdec.ptr32, %for.inc31 ], [ %lookup, %for.cond16.preheader ]
  %call21 = call i32 @of_device_is_compatible(%struct.device_node* noundef %np, i8* noundef nonnull %7) #13
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.inc31, label %if.end24

if.end24:                                         ; preds = %for.body19
  %phys_addr25 = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %auxdata.164, i64 0, i32 1
  %8 = load i64, i64* %phys_addr25, align 8
  %tobool26.not = icmp eq i64 %8, 0
  br i1 %tobool26.not, label %land.lhs.true, label %for.inc31

land.lhs.true:                                    ; preds = %if.end24
  %name = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %auxdata.164, i64 0, i32 2
  %9 = load i8*, i8** %name, align 8
  %tobool27.not = icmp eq i8* %9, null
  br i1 %tobool27.not, label %cleanup, label %for.inc31

for.inc31:                                        ; preds = %if.end24, %land.lhs.true, %for.body19
  %incdec.ptr32 = getelementptr %struct.of_dev_auxdata, %struct.of_dev_auxdata* %auxdata.164, i64 1
  %compatible17 = getelementptr inbounds %struct.of_dev_auxdata, %struct.of_dev_auxdata* %incdec.ptr32, i64 0, i32 0
  %10 = load i8*, i8** %compatible17, align 8
  %tobool18.not = icmp eq i8* %10, null
  br i1 %tobool18.not, label %cleanup, label %for.body19

cleanup:                                          ; preds = %if.end6, %if.then9, %land.lhs.true, %for.inc31, %for.cond.preheader, %for.cond16.preheader, %for.end, %entry
  %retval.0 = phi %struct.of_dev_auxdata* [ null, %entry ], [ null, %for.end ], [ null, %for.cond16.preheader ], [ null, %for.cond.preheader ], [ %auxdata.164, %land.lhs.true ], [ null, %for.inc31 ], [ %auxdata.060, %if.then9 ], [ %auxdata.060, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret %struct.of_dev_auxdata* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_amba_device_create(%struct.device_node* noundef %node, i8* noundef %bus_id, i8* noundef %platform_data, %struct.device* noundef %parent) unnamed_addr #0 {
entry:
  %call = call i1 @of_device_is_available(%struct.device_node* noundef %node) #13
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @of_node_test_and_set_flag(%struct.device_node* noundef %node) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call %struct.amba_device* @amba_device_alloc(i8* noundef null, i64 noundef 0, i64 noundef 0) #13
  %tobool3.not = icmp eq %struct.amba_device* %call2, null
  br i1 %tobool3.not, label %err_clear_flag, label %if.end5

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 0
  %coherent_dma_mask = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 0, i32 17
  store i64 4294967295, i64* %coherent_dma_mask, align 8
  %dma_mask = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 0, i32 16
  store i64* %coherent_dma_mask, i64** %dma_mask, align 8
  %of_node = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 0, i32 25
  store %struct.device_node* %node, %struct.device_node** %of_node, align 8
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  %fwnode13 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 0, i32 26
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode13, align 8
  %tobool14.not = icmp eq %struct.device* %parent, null
  %.platform_bus = select i1 %tobool14.not, %struct.device* @platform_bus, %struct.device* %parent
  %parent16 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 0, i32 1
  store %struct.device* %.platform_bus, %struct.device** %parent16, align 8
  %platform_data18 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 0, i32 7
  store i8* %platform_data, i8** %platform_data18, align 8
  %tobool19.not = icmp eq i8* %bus_id, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end5
  %call22 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %bus_id) #13
  br label %if.end24

if.else:                                          ; preds = %if.end5
  call fastcc void @of_device_make_bus_id(%struct.device* noundef %dev6) #12
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %call25 = call i8* @of_get_property(%struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* noundef null) #13
  %tobool26.not = icmp eq i8* %call25, null
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end24
  %0 = bitcast i8* %call25 to i32*
  %call28 = call fastcc i64 @of_read_ulong(i32* noundef nonnull %0) #12
  %conv = trunc i64 %call28 to i32
  %periphid = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 4
  store i32 %conv, i32* %periphid, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %call31 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 0) #13
  %arrayidx = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 0
  store i32 %call31, i32* %arrayidx, align 4
  %call31.1 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 1) #13
  %arrayidx.1 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 1
  store i32 %call31.1, i32* %arrayidx.1, align 4
  %call31.2 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 2) #13
  %arrayidx.2 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 2
  store i32 %call31.2, i32* %arrayidx.2, align 4
  %call31.3 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 3) #13
  %arrayidx.3 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 3
  store i32 %call31.3, i32* %arrayidx.3, align 4
  %call31.4 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 4) #13
  %arrayidx.4 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 4
  store i32 %call31.4, i32* %arrayidx.4, align 4
  %call31.5 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 5) #13
  %arrayidx.5 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 5
  store i32 %call31.5, i32* %arrayidx.5, align 4
  %call31.6 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 6) #13
  %arrayidx.6 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 6
  store i32 %call31.6, i32* %arrayidx.6, align 4
  %call31.7 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 7) #13
  %arrayidx.7 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 7
  store i32 %call31.7, i32* %arrayidx.7, align 4
  %call31.8 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 8) #13
  %arrayidx.8 = getelementptr %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 7, i64 8
  store i32 %call31.8, i32* %arrayidx.8, align 4
  %res = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call2, i64 0, i32 1
  %call32 = call i32 @of_address_to_resource(%struct.device_node* noundef %node, i32 noundef 0, %struct.resource* noundef %res) #13
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end37, label %do.end

do.end:                                           ; preds = %if.end29
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call32, %struct.device_node* noundef %node) #15
  br label %err_free

if.end37:                                         ; preds = %if.end29
  %call38 = call i32 @amba_device_add(%struct.amba_device* noundef nonnull %call2, %struct.resource* noundef nonnull @iomem_resource) #13
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %do.end43

do.end43:                                         ; preds = %if.end37
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call38, %struct.device_node* noundef %node) #15
  br label %err_free

err_free:                                         ; preds = %do.end43, %do.end
  call void @amba_device_put(%struct.amba_device* noundef nonnull %call2) #13
  br label %err_clear_flag

err_clear_flag:                                   ; preds = %if.end, %err_free
  call fastcc void @of_node_clear_flag(%struct.device_node* noundef %node, i64 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry, %lor.lhs.false, %err_clear_flag
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.amba_device* @amba_device_alloc(i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_ulong(i32* nocapture noundef readonly %cell) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @of_read_number(i32* noundef %cell) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_device_add(%struct.amba_device* noundef, %struct.resource* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_device_put(%struct.amba_device* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell) unnamed_addr #8 {
entry:
  %0 = load i32, i32* %cell, align 4
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #16
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #10 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 16, i64* elementtype(i64) %counter) #14, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @of_have_populated_dt() unnamed_addr #7 {
entry:
  %0 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  %cmp = icmp ne %struct.device_node* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef %from) unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef %from, %struct.of_device_id* noundef getelementptr inbounds ([5 x %struct.of_device_id], [5 x %struct.of_device_id]* @reserved_mem_matches, i64 0, i64 0), %struct.of_device_id** noundef null) #13
  ret %struct.device_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef, %struct.of_device_id* noundef, %struct.of_device_id** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !15
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!9 = !{i64 2155333833}
!10 = !{i64 2155362125}
!11 = !{i64 2155360531}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2147875768, i64 2147876420, i64 2147876450, i64 2147876481, i64 2147876513, i64 2147876548, i64 2147876573}
!14 = !{i64 2147874922, i64 2147875433, i64 2147875463, i64 2147875489, i64 2147875521, i64 2147875550}
!15 = !{i64 2147885492, i64 2147886013, i64 2147886043, i64 2147886069, i64 2147886101, i64 2147886130}
