; ModuleID = 'mm/page-writeback.c'
source_filename = "mm/page-writeback.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i64, i64, i64 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.seqcount = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.atomic64_t = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.75, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.75 = type { %struct.__call_single_data }
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
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.blk_mq_tag_set = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.mtd_info = type opaque
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
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
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.kernfs_iattrs = type opaque
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.dirty_throttle_control = type { %struct.bdi_writeback*, %struct.fprop_local_percpu*, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xa_state = type { %struct.xarray*, i64, i8, i8, i8, i8, %struct.xa_node*, %struct.xa_node*, void (%struct.xa_node*)* }
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.80, [64 x i8*], %union.anon.81 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { [3 x [1 x i64]] }
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }

@dirty_background_ratio = dso_local local_unnamed_addr global i32 10, align 4
@vm_dirty_ratio = dso_local local_unnamed_addr global i32 20, align 4
@dirty_writeback_interval = dso_local local_unnamed_addr global i32 500, align 4
@dirty_expire_interval = dso_local local_unnamed_addr global i32 3000, align 4
@dirty_background_bytes = dso_local local_unnamed_addr global i64 0, align 8
@vm_dirty_bytes = dso_local local_unnamed_addr global i64 0, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@bdi_lock = external dso_local global %struct.spinlock, align 4
@bdi_min_ratio = internal unnamed_addr global i32 0, align 4
@dirty_throttle_leaks = dso_local global i32 0, section ".data..percpu", align 4
@bdp_ratelimits = internal global i32 0, section ".data..percpu", align 4
@ratelimit_pages = internal unnamed_addr global i64 32, align 8
@laptop_mode = dso_local local_unnamed_addr global i32 0, align 4
@bdi_list = external dso_local global %struct.list_head, align 8
@global_wb_domain = dso_local global %struct.wb_domain zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"mm/writeback:online\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mm/writeback:dead\00", align 1
@vm_highmem_is_dirtyable = dso_local local_unnamed_addr global i32 0, align 4
@totalreserve_pages = external dso_local local_unnamed_addr global i64, align 8
@vm_zone_stat = external dso_local global [10 x %struct.atomic64_t], align 8
@vm_node_stat = external dso_local global [38 x %struct.atomic64_t], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@blockdev_superblock = external dso_local local_unnamed_addr global %struct.super_block*, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@bdi_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @global_dirty_limits(i64* nocapture noundef writeonly %pbackground, i64* nocapture noundef writeonly %pdirty) local_unnamed_addr #0 {
entry:
  %gdtc = alloca %struct.dirty_throttle_control, align 8
  %0 = bitcast %struct.dirty_throttle_control* %gdtc to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %call = call fastcc i64 @global_dirtyable_memory() #21
  %avail = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 2
  store i64 %call, i64* %avail, align 8
  call fastcc void @domain_dirty_limits(%struct.dirty_throttle_control* noundef nonnull %gdtc) #21
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 5
  %1 = load i64, i64* %bg_thresh, align 8
  store i64 %1, i64* %pbackground, align 8
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 4
  %2 = load i64, i64* %thresh, align 8
  store i64 %2, i64* %pdirty, align 8
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_dirtyable_memory() unnamed_addr #3 {
entry:
  %call = call fastcc i64 @global_zone_page_state() #21
  %0 = load i64, i64* @totalreserve_pages, align 8
  %call1 = call fastcc i64 @global_node_page_state(i32 noundef 2) #21
  %call2 = call fastcc i64 @global_node_page_state(i32 noundef 3) #21
  %1 = call i64 @llvm.usub.sat.i64(i64 %call, i64 %0)
  %add = add i64 %call1, 1
  %add3 = add i64 %add, %1
  %add6 = add i64 %add3, %call2
  ret i64 %add6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @domain_dirty_limits(%struct.dirty_throttle_control* nocapture noundef %dtc) unnamed_addr #0 {
entry:
  %avail = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 2
  %0 = load i64, i64* %avail, align 8
  %1 = load i64, i64* @vm_dirty_bytes, align 8
  %2 = load i64, i64* @dirty_background_bytes, align 8
  %3 = load i32, i32* @vm_dirty_ratio, align 4
  %conv = sext i32 %3 to i64
  %mul = shl nsw i64 %conv, 12
  %div = udiv i64 %mul, 100
  %4 = load i32, i32* @dirty_background_ratio, align 4
  %conv1 = sext i32 %4 to i64
  %mul2 = shl nsw i64 %conv1, 12
  %div3 = udiv i64 %mul2, 100
  %tobool23.not = icmp eq i64 %1, 0
  %sub26 = add i64 %1, 4095
  %mul28 = mul i64 %div, %0
  %thresh.0.in = select i1 %tobool23.not, i64 %mul28, i64 %sub26
  %thresh.0 = lshr i64 %thresh.0.in, 12
  %tobool31.not = icmp eq i64 %2, 0
  %sub34 = add i64 %2, 4095
  %mul37 = mul i64 %div3, %0
  %bg_thresh.0.in = select i1 %tobool31.not, i64 %mul37, i64 %sub34
  %bg_thresh.0 = lshr i64 %bg_thresh.0.in, 12
  %cmp40.not = icmp ult i64 %bg_thresh.0, %thresh.0
  %div43 = lshr i64 %thresh.0.in, 13
  %bg_thresh.1 = select i1 %cmp40.not, i64 %bg_thresh.0, i64 %div43
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %call46 = call fastcc i32 @rt_task(%struct.task_struct* noundef %6) #21
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end57, label %if.then48

if.then48:                                        ; preds = %entry
  %div49 = lshr i64 %bg_thresh.1, 2
  %7 = load i64, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 5), align 8
  %div50 = lshr i64 %7, 5
  %add51 = add nuw nsw i64 %div49, %bg_thresh.1
  %add52 = add nuw nsw i64 %add51, %div50
  %div53 = lshr i64 %thresh.0.in, 14
  %add55 = add nuw nsw i64 %thresh.0, %div53
  %add56 = add nuw nsw i64 %add55, %div50
  br label %if.end57

if.end57:                                         ; preds = %if.then48, %entry
  %thresh.1 = phi i64 [ %add56, %if.then48 ], [ %thresh.0, %entry ]
  %bg_thresh.2 = phi i64 [ %add52, %if.then48 ], [ %bg_thresh.1, %entry ]
  %thresh58 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 4
  store i64 %thresh.1, i64* %thresh58, align 8
  %bg_thresh59 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 5
  store i64 %bg_thresh.2, i64* %bg_thresh59, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @node_dirty_ok(%struct.pglist_data* noundef %pgdat) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @node_dirty_limit(%struct.pglist_data* noundef %pgdat) #21
  %call1 = call fastcc i64 @global_node_page_state(i32 noundef 20) #21
  %call2 = call fastcc i64 @global_node_page_state(i32 noundef 21) #21
  %add3 = add i64 %call2, %call1
  %cmp = icmp ule i64 %add3, %call
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @node_dirty_limit(%struct.pglist_data* noundef %pgdat) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @node_dirtyable_memory(%struct.pglist_data* noundef %pgdat) #21
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %1 = load i64, i64* @vm_dirty_bytes, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i64 %1, 4095
  %div = lshr i64 %sub, 12
  %mul = mul i64 %div, %call
  %call2 = call fastcc i64 @global_dirtyable_memory() #21
  %div3 = udiv i64 %mul, %call2
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @vm_dirty_ratio, align 4
  %conv = sext i32 %2 to i64
  %mul4 = mul i64 %call, %conv
  %div5 = udiv i64 %mul4, 100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dirty.0 = phi i64 [ %div3, %if.then ], [ %div5, %if.else ]
  %3 = inttoptr i64 %0 to %struct.task_struct*
  %call6 = call fastcc i32 @rt_task(%struct.task_struct* noundef %3) #21
  %tobool7.not = icmp eq i32 %call6, 0
  %div9 = lshr i64 %dirty.0, 2
  %add10 = select i1 %tobool7.not, i64 0, i64 %div9
  %dirty.1 = add i64 %add10, %dirty.0
  ret i64 %dirty.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state(i32 noundef %item) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @global_node_page_state_pages(i32 noundef %item) #21
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dirty_background_ratio_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #23
  %cmp = icmp eq i32 %call, 0
  %tobool = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* @dirty_background_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dirty_background_bytes_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #23
  %cmp = icmp eq i32 %call, 0
  %tobool = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @dirty_background_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dirty_ratio_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @vm_dirty_ratio, align 4
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #23
  %cmp = icmp ne i32 %call, 0
  %tobool = icmp eq i32 %write, 0
  %or.cond.not = or i1 %tobool, %cmp
  %1 = load i32, i32* @vm_dirty_ratio, align 4
  %cmp2.not = icmp eq i32 %1, %0
  %or.cond7 = select i1 %or.cond.not, i1 true, i1 %cmp2.not
  br i1 %or.cond7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @writeback_set_ratelimit() #21
  store i64 0, i64* @vm_dirty_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @writeback_set_ratelimit() local_unnamed_addr #0 {
entry:
  %background_thresh = alloca i64, align 8
  %dirty_thresh = alloca i64, align 8
  %0 = bitcast i64* %background_thresh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = bitcast i64* %dirty_thresh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store i64 0, i64* %dirty_thresh, align 8, !annotation !9
  call void @global_dirty_limits(i64* noundef nonnull %background_thresh, i64* noundef nonnull %dirty_thresh) #21
  %2 = load i64, i64* %dirty_thresh, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 5), align 8
  %call = call fastcc i32 @num_online_cpus() #21
  %mul = shl i32 %call, 5
  %conv = zext i32 %mul to i64
  %div = udiv i64 %2, %conv
  %3 = icmp sgt i64 %div, 16
  %spec.store.select = select i1 %3, i64 %div, i64 16
  store i64 %spec.store.select, i64* @ratelimit_pages, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dirty_bytes_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* @vm_dirty_bytes, align 8
  %call = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #23
  %cmp = icmp ne i32 %call, 0
  %tobool = icmp eq i32 %write, 0
  %or.cond.not = or i1 %tobool, %cmp
  %1 = load i64, i64* @vm_dirty_bytes, align 8
  %cmp2.not = icmp eq i64 %1, %0
  %or.cond7 = select i1 %or.cond.not, i1 true, i1 %cmp2.not
  br i1 %or.cond7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @writeback_set_ratelimit() #21
  store i32 0, i32* @vm_dirty_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wb_writeout_inc(%struct.bdi_writeback* noundef %wb) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #21
  call fastcc void @__wb_writeout_inc(%struct.bdi_writeback* noundef %wb) #21
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #21
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #21
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__wb_writeout_inc(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  call fastcc void @inc_wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef 3) #21
  %completions = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 18
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  %0 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %max_prop_frac = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %0, i64 0, i32 9
  %1 = load i32, i32* %max_prop_frac, align 8
  call fastcc void @wb_domain_writeout_inc(%struct.fprop_local_percpu* noundef %completions, i32 noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #20, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @wb_domain_init(%struct.wb_domain* noundef %dom, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.wb_domain* %dom to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 104) #23
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %dom, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %period_timer = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %dom, i64 0, i32 2
  call void @init_timer_key(%struct.timer_list* noundef %period_timer, void (%struct.timer_list*)* noundef nonnull @writeout_period, i32 noundef 524288, i8* noundef null, %struct.lock_class_key* noundef null) #23
  %1 = load volatile i64, i64* @jiffies, align 64
  %dirty_limit_tstamp = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %dom, i64 0, i32 4
  store i64 %1, i64* %dirty_limit_tstamp, align 8
  %completions = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %dom, i64 0, i32 1
  %call3 = call i32 @fprop_global_init(%struct.fprop_global* noundef %completions, i32 noundef %gfp) #23
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @writeout_period(%struct.timer_list* noundef %t) #0 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %period_time = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 1
  %1 = bitcast %struct.timer_list* %period_time to i64*
  %2 = load i64, i64* %1, align 8
  %sub = sub i64 %0, %2
  %div = udiv i64 %sub, 750
  %conv = trunc i64 %div to i32
  %completions = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -1, i32 0, i32 1
  %3 = bitcast %struct.hlist_node*** %completions to %struct.fprop_global*
  %add = add i32 %conv, 1
  %call = call i1 @fprop_new_period(%struct.fprop_global* noundef %3, i32 noundef %add) #23
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %1, align 8
  %sext = mul i64 %div, 3221225472000
  %conv2 = ashr exact i64 %sext, 32
  %add3 = add i64 %4, %conv2
  %call4 = call fastcc i64 @wp_next_time(i64 noundef %add3) #21
  store i64 %call4, i64* %1, align 8
  %call7 = call i32 @mod_timer(%struct.timer_list* noundef %t, i64 noundef %call4) #23
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, i64* %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fprop_global_init(%struct.fprop_global* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdi_set_min_ratio(%struct.backing_dev_info* nocapture noundef %bdi, i32 noundef %min_ratio) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock_bh() #23
  %max_ratio = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 8
  %0 = load i32, i32* %max_ratio, align 4
  %cmp = icmp ult i32 %0, %min_ratio
  br i1 %cmp, label %if.end8, label %if.else

if.else:                                          ; preds = %entry
  %min_ratio1 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 7
  %1 = load i32, i32* %min_ratio1, align 8
  %sub = sub i32 %min_ratio, %1
  %2 = load i32, i32* @bdi_min_ratio, align 4
  %add = add i32 %2, %sub
  %cmp2 = icmp ult i32 %add, 100
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.else
  store i32 %add, i32* @bdi_min_ratio, align 4
  store i32 %min_ratio, i32* %min_ratio1, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %entry, %if.then3
  %ret.0 = phi i32 [ 0, %if.then3 ], [ -22, %entry ], [ -22, %if.else ]
  call fastcc void @__raw_spin_unlock_bh() #23
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdi_set_max_ratio(%struct.backing_dev_info* nocapture noundef %bdi, i32 noundef %max_ratio) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %max_ratio, 100
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock_bh() #23
  %min_ratio = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 7
  %0 = load i32, i32* %min_ratio, align 8
  %cmp1 = icmp ugt i32 %0, %max_ratio
  br i1 %cmp1, label %if.end5, label %if.else

if.else:                                          ; preds = %if.end
  %max_ratio3 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 8
  store i32 %max_ratio, i32* %max_ratio3, align 4
  %mul = shl nuw nsw i32 %max_ratio, 10
  %div12 = udiv i32 %mul, 100
  %max_prop_frac = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 9
  store i32 %div12, i32* %max_prop_frac, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.else
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %if.end ]
  call fastcc void @__raw_spin_unlock_bh() #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @wb_calc_thresh(%struct.bdi_writeback* noundef %wb, i64 noundef %thresh) local_unnamed_addr #0 {
entry:
  %gdtc = alloca %struct.dirty_throttle_control, align 8
  %0 = bitcast %struct.dirty_throttle_control* %gdtc to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #20
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 0
  store %struct.bdi_writeback* %wb, %struct.bdi_writeback** %wb1, align 8
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 1
  %completions = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 18
  store %struct.fprop_local_percpu* %completions, %struct.fprop_local_percpu** %wb_completions, align 8
  %avail = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 2
  store i64 0, i64* %avail, align 8
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 3
  store i64 0, i64* %dirty, align 8
  %thresh2 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 4
  store i64 %thresh, i64* %thresh2, align 8
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 5
  store i64 0, i64* %bg_thresh, align 8
  %wb_dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 6
  store i64 0, i64* %wb_dirty, align 8
  %wb_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 7
  store i64 0, i64* %wb_thresh, align 8
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 8
  store i64 0, i64* %wb_bg_thresh, align 8
  %pos_ratio = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 9
  store i64 0, i64* %pos_ratio, align 8
  %call = call fastcc i64 @__wb_calc_thresh(%struct.dirty_throttle_control* noundef nonnull %gdtc) #21
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #20
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__wb_calc_thresh(%struct.dirty_throttle_control* nocapture noundef readonly %dtc) unnamed_addr #0 {
entry:
  %numerator = alloca i64, align 8
  %denominator = alloca i64, align 8
  %wb_min_ratio = alloca i64, align 8
  %wb_max_ratio = alloca i64, align 8
  %thresh1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 4
  %0 = load i64, i64* %thresh1, align 8
  %1 = bitcast i64* %numerator to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store i64 0, i64* %numerator, align 8, !annotation !9
  %2 = bitcast i64* %denominator to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  store i64 0, i64* %denominator, align 8, !annotation !9
  %3 = bitcast i64* %wb_min_ratio to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store i64 0, i64* %wb_min_ratio, align 8, !annotation !9
  %4 = bitcast i64* %wb_max_ratio to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20
  store i64 0, i64* %wb_max_ratio, align 8, !annotation !9
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 1
  %5 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %wb_completions, align 8
  call void @fprop_fraction_percpu(%struct.fprop_global* noundef getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 1), %struct.fprop_local_percpu* noundef %5, i64* noundef nonnull %numerator, i64* noundef nonnull %denominator) #23
  %6 = load i32, i32* @bdi_min_ratio, align 4
  %sub = sub i32 100, %6
  %conv = zext i32 %sub to i64
  %mul = mul i64 %0, %conv
  %div = udiv i64 %mul, 100
  %7 = load i64, i64* %numerator, align 8
  %mul2 = mul i64 %div, %7
  %8 = load i64, i64* %denominator, align 8
  %call3 = call fastcc i64 @div64_u64(i64 noundef %mul2, i64 noundef %8) #21
  %wb = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 0
  %9 = load %struct.bdi_writeback*, %struct.bdi_writeback** %wb, align 8
  call fastcc void @wb_min_max_ratio(%struct.bdi_writeback* noundef %9, i64* noundef nonnull %wb_min_ratio, i64* noundef nonnull %wb_max_ratio) #21
  %10 = load i64, i64* %wb_min_ratio, align 8
  %mul4 = mul i64 %10, %0
  %div5 = udiv i64 %mul4, 100
  %add = add i64 %div5, %call3
  %11 = load i64, i64* %wb_max_ratio, align 8
  %mul6 = mul i64 %11, %0
  %div7 = udiv i64 %mul6, 100
  %cmp = icmp ugt i64 %add, %div7
  %spec.select = select i1 %cmp, i64 %div7, i64 %add
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  ret i64 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wb_update_bandwidth(%struct.bdi_writeback* noundef %wb) local_unnamed_addr #0 {
entry:
  %gdtc = alloca %struct.dirty_throttle_control, align 8
  %0 = bitcast %struct.dirty_throttle_control* %gdtc to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #20
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 0
  %1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  store %struct.bdi_writeback* %wb, %struct.bdi_writeback** %wb1, align 8
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 1
  %completions = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 18
  store %struct.fprop_local_percpu* %completions, %struct.fprop_local_percpu** %wb_completions, align 8
  call fastcc void @__wb_update_bandwidth(%struct.dirty_throttle_control* noundef nonnull %gdtc, i1 noundef false) #21
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__wb_update_bandwidth(%struct.dirty_throttle_control* nocapture noundef readonly %gdtc, i1 noundef %update_ratelimit) unnamed_addr #0 {
entry:
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc, i64 0, i32 0
  %0 = load %struct.bdi_writeback*, %struct.bdi_writeback** %wb1, align 8
  %1 = load volatile i64, i64* @jiffies, align 64
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %bw_time_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 11
  %2 = load i64, i64* %bw_time_stamp, align 8
  %sub = sub i64 %1, %2
  %cmp = icmp ugt i64 %sub, 1
  %cond = select i1 %cmp, i64 %sub, i64 1
  %arrayidx = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 9, i64 2
  %call = call fastcc i64 @percpu_counter_read(%struct.percpu_counter* noundef %arrayidx) #21
  %arrayidx3 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 9, i64 3
  %call4 = call fastcc i64 @percpu_counter_read(%struct.percpu_counter* noundef %arrayidx3) #21
  br i1 %update_ratelimit, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @domain_update_dirty_limit(%struct.dirty_throttle_control* noundef %gdtc, i64 noundef %1) #21
  call fastcc void @wb_update_dirty_ratelimit(%struct.dirty_throttle_control* noundef %gdtc, i64 noundef %call, i64 noundef %cond) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @wb_update_write_bandwidth(%struct.bdi_writeback* noundef %0, i64 noundef %cond, i64 noundef %call4) #21
  %dirtied_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 12
  store i64 %call, i64* %dirtied_stamp, align 8
  %written_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 13
  store i64 %call4, i64* %written_stamp, align 8
  store volatile i64 %1, i64* %bw_time_stamp, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @balance_dirty_pages_ratelimited(%struct.address_space* nocapture noundef readonly %mapping) local_unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %0) #21
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 6
  %1 = load i32, i32* %capabilities, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %wb7 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 11
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %nr_dirtied_pause = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 129
  %4 = load i32, i32* %nr_dirtied_pause, align 4
  %dirty_exceeded = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 11, i32 19
  %5 = load i32, i32* %dirty_exceeded, align 8
  %tobool10.not = icmp eq i32 %5, 0
  %cmp = icmp slt i32 %4, 8
  %6 = select i1 %tobool10.not, i1 true, i1 %cmp
  %ratelimit.0 = select i1 %6, i32 %4, i32 8
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %call15 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call15, ptrtoint (i32* @bdp_ratelimits to i64)
  %7 = inttoptr i64 %add to i32*
  %nr_dirtied = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 128
  %8 = load i32, i32* %nr_dirtied, align 16
  %cmp17.not = icmp slt i32 %8, %ratelimit.0
  br i1 %cmp17.not, label %if.else, label %do.body34.sink.split, !prof !12

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %7, align 4
  %conv21 = sext i32 %9 to i64
  %10 = load i64, i64* @ratelimit_pages, align 8
  %cmp22.not = icmp sgt i64 %10, %conv21
  br i1 %cmp22.not, label %do.body34, label %do.body34.sink.split, !prof !12

do.body34.sink.split:                             ; preds = %if.else, %if.end
  %ratelimit.1.ph = phi i32 [ %ratelimit.0, %if.end ], [ 0, %if.else ]
  store i32 0, i32* %7, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.body34.sink.split, %if.else
  %ratelimit.1 = phi i32 [ %ratelimit.0, %if.else ], [ %ratelimit.1.ph, %do.body34.sink.split ]
  %call41 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add42 = add i64 %call41, ptrtoint (i32* @dirty_throttle_leaks to i64)
  %11 = inttoptr i64 %add42 to i32*
  %12 = load i32, i32* %11, align 4
  %cmp43 = icmp sgt i32 %12, 0
  br i1 %cmp43, label %land.lhs.true, label %if.end68

land.lhs.true:                                    ; preds = %do.body34
  %13 = load i32, i32* %nr_dirtied, align 16
  %cmp47 = icmp sgt i32 %ratelimit.1, %13
  br i1 %cmp47, label %if.then49, label %if.end68

if.then49:                                        ; preds = %land.lhs.true
  %sub = sub i32 %ratelimit.1, %13
  %cmp53 = icmp slt i32 %12, %sub
  %cond58 = select i1 %cmp53, i32 %12, i32 %sub
  %sub61 = sub i32 %12, %cond58
  store i32 %sub61, i32* %11, align 4
  %14 = load i32, i32* %nr_dirtied, align 16
  %add66 = add i32 %14, %cond58
  store i32 %add66, i32* %nr_dirtied, align 16
  br label %if.end68

if.end68:                                         ; preds = %if.then49, %land.lhs.true, %do.body34
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  %15 = load i32, i32* %nr_dirtied, align 16
  %cmp71.not = icmp slt i32 %15, %ratelimit.1
  br i1 %cmp71.not, label %cleanup, label %if.then80, !prof !12

if.then80:                                        ; preds = %if.end68
  %conv83 = sext i32 %15 to i64
  call fastcc void @balance_dirty_pages(%struct.bdi_writeback* noundef %wb7, i64 noundef %conv83) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then80, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i1 @sb_is_blkdev_sb(%struct.super_block* noundef %0) #21
  br i1 %call, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call %struct.block_device* @I_BDEV(%struct.inode* noundef nonnull %inode) #23
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 15
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 21
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then1, %if.end3
  %s_bdi.sink = phi %struct.backing_dev_info** [ %s_bdi, %if.end3 ], [ %bdi, %if.then1 ]
  %2 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi %struct.backing_dev_info* [ @noop_backing_dev_info, %entry ], [ %2, %cleanup.sink.split ]
  ret %struct.backing_dev_info* %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #24, !srcloc !14
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @balance_dirty_pages(%struct.bdi_writeback* noundef %wb, i64 noundef %pages_dirtied) unnamed_addr #0 {
entry:
  %gdtc_stor = alloca %struct.dirty_throttle_control, align 8
  %nr_dirtied_pause = alloca i32, align 4
  %0 = bitcast %struct.dirty_throttle_control* %gdtc_stor to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #20
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 0
  %1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 4
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  store %struct.bdi_writeback* %wb, %struct.bdi_writeback** %wb1, align 8
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 1
  %completions = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 18
  store %struct.fprop_local_percpu* %completions, %struct.fprop_local_percpu** %wb_completions, align 8
  %3 = bitcast i32* %nr_dirtied_pause to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #20
  store i32 0, i32* %nr_dirtied_pause, align 4, !annotation !9
  %bdi2 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  %4 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi2, align 8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %4, i64 0, i32 6
  %5 = load i32, i32* %capabilities, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  %6 = load volatile i64, i64* @jiffies, align 64
  %avail = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 2
  %dirty6 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 3
  %thresh11 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 4
  %bg_thresh12 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 5
  %wb_dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 6
  %wb_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 7
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 8
  %dirty_exceeded143 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 19
  %bw_time_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 11
  %dirty_ratelimit158 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 16
  %pos_ratio159 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 9
  %mul174 = mul i64 %pages_dirtied, 250
  %dirty_sleep = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %if.end288, %entry
  %dirty_exceeded.0.off0 = phi i1 [ false, %entry ], [ %25, %if.end288 ]
  %7 = load volatile i64, i64* @jiffies, align 64
  %call3 = call fastcc i64 @global_node_page_state(i32 noundef 20) #21
  %call4 = call fastcc i64 @global_dirtyable_memory() #21
  store i64 %call4, i64* %avail, align 8
  %call5 = call fastcc i64 @global_node_page_state(i32 noundef 21) #21
  %add = add i64 %call5, %call3
  store i64 %add, i64* %dirty6, align 8
  call fastcc void @domain_dirty_limits(%struct.dirty_throttle_control* noundef nonnull %gdtc_stor) #21
  br i1 %tobool, label %if.then, label %if.end35, !prof !15

if.then:                                          ; preds = %for.cond
  call fastcc void @wb_dirty_limits(%struct.dirty_throttle_control* noundef nonnull %gdtc_stor) #21
  br label %if.end35

if.end35:                                         ; preds = %for.cond, %if.then
  %wb_dirty.sink = phi i64* [ %wb_dirty, %if.then ], [ %dirty6, %for.cond ]
  %wb_thresh.sink = phi i64* [ %wb_thresh, %if.then ], [ %thresh11, %for.cond ]
  %wb_bg_thresh.sink = phi i64* [ %wb_bg_thresh, %if.then ], [ %bg_thresh12, %for.cond ]
  %8 = load i64, i64* %wb_dirty.sink, align 8
  %9 = load i64, i64* %wb_thresh.sink, align 8
  %10 = load i64, i64* %wb_bg_thresh.sink, align 8
  %call36 = call fastcc i64 @dirty_freerun_ceiling(i64 noundef %9, i64 noundef %10) #21
  %cmp.not = icmp ugt i64 %8, %call36
  br i1 %cmp.not, label %if.end59, label %free_running

free_running:                                     ; preds = %land.lhs.true77, %if.end35
  %call43 = call fastcc i64 @dirty_poll_interval(i64 noundef %8, i64 noundef %9) #21
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %12 = inttoptr i64 %11 to %struct.task_struct*
  %dirty_paused_when = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i64 0, i32 130
  store i64 %7, i64* %dirty_paused_when, align 8
  %nr_dirtied = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i64 0, i32 128
  store i32 0, i32* %nr_dirtied, align 16
  %conv56 = trunc i64 %call43 to i32
  %nr_dirtied_pause58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i64 0, i32 129
  store i32 %conv56, i32* %nr_dirtied_pause58, align 4
  br i1 %dirty_exceeded.0.off0, label %if.end306, label %land.lhs.true301

if.end59:                                         ; preds = %if.end35
  %call60 = call fastcc i1 @writeback_in_progress(%struct.bdi_writeback* noundef %wb) #21
  br i1 %call60, label %if.end71, label %if.then70, !prof !12

if.then70:                                        ; preds = %if.end59
  call void @wb_start_background_writeback(%struct.bdi_writeback* noundef %wb) #23
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end59
  br i1 %tobool, label %if.end86, label %if.then73

if.then73:                                        ; preds = %if.end71
  call fastcc void @wb_dirty_limits(%struct.dirty_throttle_control* noundef nonnull %gdtc_stor) #21
  %13 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %14 = inttoptr i64 %13 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i64 0, i32 4
  %15 = load i32, i32* %flags, align 4
  %and75 = and i32 %15, 1048576
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end86, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.then73
  %16 = load i64, i64* %wb_dirty, align 8
  %17 = load i64, i64* %wb_thresh, align 8
  %18 = load i64, i64* %wb_bg_thresh, align 8
  %call81 = call fastcc i64 @dirty_freerun_ceiling(i64 noundef %17, i64 noundef %18) #21
  %cmp82 = icmp ult i64 %16, %call81
  br i1 %cmp82, label %free_running, label %if.end86

if.end86:                                         ; preds = %if.then73, %land.lhs.true77, %if.end71
  %19 = load i64, i64* %wb_dirty, align 8
  %20 = load i64, i64* %wb_thresh, align 8
  %cmp89 = icmp ugt i64 %19, %20
  br i1 %cmp89, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %if.end86
  call fastcc void @wb_position_ratio(%struct.dirty_throttle_control* noundef nonnull %gdtc_stor) #21
  br label %do.end

land.end:                                         ; preds = %if.end86
  %21 = load i64, i64* %dirty6, align 8
  %22 = load i64, i64* %thresh11, align 8
  %cmp93 = icmp ugt i64 %21, %22
  %23 = select i1 %cmp93, i1 true, i1 %tobool
  call fastcc void @wb_position_ratio(%struct.dirty_throttle_control* noundef nonnull %gdtc_stor) #21
  br i1 %23, label %land.lhs.true142, label %do.end

land.lhs.true142:                                 ; preds = %land.end
  %24 = load i32, i32* %dirty_exceeded143, align 8
  %tobool144.not = icmp eq i32 %24, 0
  br i1 %tobool144.not, label %if.then145, label %do.end

if.then145:                                       ; preds = %land.lhs.true142
  store i32 1, i32* %dirty_exceeded143, align 8
  br label %do.end

do.end:                                           ; preds = %land.end.thread, %land.end, %land.lhs.true142, %if.then145
  %25 = phi i1 [ false, %land.end.thread ], [ false, %land.end ], [ true, %land.lhs.true142 ], [ true, %if.then145 ]
  %26 = load volatile i64, i64* %bw_time_stamp, align 8
  %add149 = add i64 %26, 50
  %27 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add149, %27
  %cmp150 = icmp slt i64 %sub, 0
  br i1 %cmp150, label %if.then152, label %do.end156

if.then152:                                       ; preds = %do.end
  call fastcc void @__wb_update_bandwidth(%struct.dirty_throttle_control* noundef nonnull %gdtc_stor, i1 noundef true) #21
  br label %do.end156

do.end156:                                        ; preds = %do.end, %if.then152
  %28 = load volatile i64, i64* %dirty_ratelimit158, align 8
  %29 = load i64, i64* %pos_ratio159, align 8
  %mul = mul i64 %29, %28
  %shr = lshr i64 %mul, 10
  %30 = load i64, i64* %wb_dirty, align 8
  %call161 = call fastcc i64 @wb_max_pause(%struct.bdi_writeback* noundef %wb, i64 noundef %30) #21
  %call162 = call fastcc i64 @wb_min_pause(%struct.bdi_writeback* noundef %wb, i64 noundef %call161, i64 noundef %shr, i64 noundef %28, i32* noundef nonnull %nr_dirtied_pause) #21
  %cmp163 = icmp ult i64 %mul, 1024
  br i1 %cmp163, label %pause250, label %if.end173, !prof !15

if.end173:                                        ; preds = %do.end156
  %div = udiv i64 %mul174, %shr
  %31 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %32 = inttoptr i64 %31 to %struct.task_struct*
  %dirty_paused_when176 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i64 0, i32 130
  %33 = load i64, i64* %dirty_paused_when176, align 8
  %tobool177.not = icmp eq i64 %33, 0
  %sub181.neg = sub i64 %33, %7
  %sub182 = select i1 %tobool177.not, i64 0, i64 %sub181.neg
  %pause.0 = add i64 %sub182, %div
  %cmp184 = icmp slt i64 %pause.0, %call162
  br i1 %cmp184, label %if.then186, label %if.end229

if.then186:                                       ; preds = %if.end173
  %34 = inttoptr i64 %31 to %struct.task_struct*
  %dirty_paused_when176.le = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i64 0, i32 130
  %cmp199 = icmp slt i64 %pause.0, -250
  br i1 %cmp199, label %if.then201, label %if.else206

if.then201:                                       ; preds = %if.then186
  store i64 %7, i64* %dirty_paused_when176.le, align 8
  %nr_dirtied205 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i64 0, i32 128
  store i32 0, i32* %nr_dirtied205, align 16
  br i1 %25, label %if.end306, label %land.lhs.true301

if.else206:                                       ; preds = %if.then186
  %tobool207.not = icmp ugt i64 %shr, %mul174
  br i1 %tobool207.not, label %if.else214, label %if.then208

if.then208:                                       ; preds = %if.else206
  %add211 = add i64 %33, %div
  store i64 %add211, i64* %dirty_paused_when176.le, align 8
  %nr_dirtied213 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i64 0, i32 128
  store i32 0, i32* %nr_dirtied213, align 16
  br i1 %25, label %if.end306, label %land.lhs.true301

if.else214:                                       ; preds = %if.else206
  %nr_dirtied_pause216 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i64 0, i32 129
  %35 = load i32, i32* %nr_dirtied_pause216, align 4
  %conv217 = sext i32 %35 to i64
  %cmp218.not = icmp ugt i64 %conv217, %pages_dirtied
  br i1 %cmp218.not, label %for.end, label %if.then220

if.then220:                                       ; preds = %if.else214
  %36 = trunc i64 %pages_dirtied to i32
  %conv225 = add i32 %35, %36
  store i32 %conv225, i32* %nr_dirtied_pause216, align 4
  br i1 %25, label %if.end306, label %land.lhs.true301

if.end229:                                        ; preds = %if.end173
  %cmp230 = icmp sgt i64 %pause.0, %call161
  br i1 %cmp230, label %if.then239, label %pause250, !prof !15

if.then239:                                       ; preds = %if.end229
  %sub240 = sub i64 %pause.0, %call161
  %cmp242 = icmp slt i64 %sub240, %call161
  %cond247 = select i1 %cmp242, i64 %sub240, i64 %call161
  %add248 = add i64 %cond247, %7
  br label %pause250

pause250:                                         ; preds = %do.end156, %if.end229, %if.then239
  %now.0 = phi i64 [ %add248, %if.then239 ], [ %7, %if.end229 ], [ %7, %do.end156 ]
  %pause.1 = phi i64 [ %call161, %if.then239 ], [ %pause.0, %if.end229 ], [ %call161, %do.end156 ]
  %37 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %38 = inttoptr i64 %37 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i64 0, i32 1
  store volatile i32 258, i32* %__state, align 16
  store i64 %now.0, i64* %dirty_sleep, align 8
  %call272 = call i64 @io_schedule_timeout(i64 noundef %pause.1) #23
  %add273 = add i64 %pause.1, %now.0
  %dirty_paused_when275 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i64 0, i32 130
  store i64 %add273, i64* %dirty_paused_when275, align 8
  %nr_dirtied277 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i64 0, i32 128
  store i32 0, i32* %nr_dirtied277, align 16
  %39 = load i32, i32* %nr_dirtied_pause, align 4
  %nr_dirtied_pause279 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i64 0, i32 129
  store i32 %39, i32* %nr_dirtied_pause279, align 4
  br i1 %cmp163, label %if.end282, label %for.end

if.end282:                                        ; preds = %pause250
  %call284 = call fastcc i64 @wb_stat_error() #21
  %cmp285.not = icmp ugt i64 %30, %call284
  br i1 %cmp285.not, label %if.end288, label %for.end

if.end288:                                        ; preds = %if.end282
  %call290 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %38) #21
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %for.cond, label %for.end

for.end:                                          ; preds = %pause250, %if.end282, %if.end288, %if.else214
  br i1 %25, label %if.end306, label %land.lhs.true301

land.lhs.true301:                                 ; preds = %free_running, %if.then208, %if.then220, %if.then201, %for.end
  %40 = load i32, i32* %dirty_exceeded143, align 8
  %tobool303.not = icmp eq i32 %40, 0
  br i1 %tobool303.not, label %if.end306, label %if.then304

if.then304:                                       ; preds = %land.lhs.true301
  store i32 0, i32* %dirty_exceeded143, align 8
  br label %if.end306

if.end306:                                        ; preds = %free_running, %if.then208, %if.then220, %if.then201, %if.then304, %land.lhs.true301, %for.end
  %call307 = call fastcc i1 @writeback_in_progress(%struct.bdi_writeback* noundef %wb) #21
  %call307.not = xor i1 %call307, true
  %41 = load i32, i32* @laptop_mode, align 4
  %tobool310.not = icmp eq i32 %41, 0
  %or.cond = select i1 %call307.not, i1 %tobool310.not, i1 false
  %42 = load i64, i64* %bg_thresh12, align 8
  %cmp314 = icmp ugt i64 %call3, %42
  %or.cond502 = select i1 %or.cond, i1 %cmp314, i1 false
  br i1 %or.cond502, label %if.then316, label %cleanup318

if.then316:                                       ; preds = %if.end306
  call void @wb_start_background_writeback(%struct.bdi_writeback* noundef %wb) #23
  br label %cleanup318

cleanup318:                                       ; preds = %if.then316, %if.end306
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @wb_over_bg_thresh(%struct.bdi_writeback* noundef %wb) local_unnamed_addr #0 {
entry:
  %gdtc_stor = alloca %struct.dirty_throttle_control, align 8
  %0 = bitcast %struct.dirty_throttle_control* %gdtc_stor to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #20
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 0
  %1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 4
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  store %struct.bdi_writeback* %wb, %struct.bdi_writeback** %wb1, align 8
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 1
  %completions = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 18
  store %struct.fprop_local_percpu* %completions, %struct.fprop_local_percpu** %wb_completions, align 8
  %call2 = call fastcc i64 @global_dirtyable_memory() #21
  %avail = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 2
  store i64 %call2, i64* %avail, align 8
  %call3 = call fastcc i64 @global_node_page_state(i32 noundef 20) #21
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 3
  store i64 %call3, i64* %dirty, align 8
  call fastcc void @domain_dirty_limits(%struct.dirty_throttle_control* noundef nonnull %gdtc_stor) #21
  %3 = load i64, i64* %dirty, align 8
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %gdtc_stor, i64 0, i32 5
  %4 = load i64, i64* %bg_thresh, align 8
  %cmp = icmp ugt i64 %3, %4
  br i1 %cmp, label %cleanup41, label %if.end

if.end:                                           ; preds = %entry
  %5 = load %struct.bdi_writeback*, %struct.bdi_writeback** %wb1, align 8
  %call7 = call i64 @wb_calc_thresh(%struct.bdi_writeback* noundef %5, i64 noundef %4) #21
  %call8 = call fastcc i64 @wb_stat_error() #21
  %mul = shl i64 %call8, 1
  %cmp9 = icmp ult i64 %call7, %mul
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %call11 = call fastcc i64 @wb_stat_sum(%struct.bdi_writeback* noundef %wb, i32 noundef 0) #21
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call12 = call fastcc i64 @wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef 0) #21
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %reclaimable.0 = phi i64 [ %call11, %if.then10 ], [ %call12, %if.else ]
  %cmp14 = icmp ugt i64 %reclaimable.0, %call7
  br label %cleanup41

cleanup41:                                        ; preds = %if.end13, %entry
  %retval.1 = phi i1 [ true, %entry ], [ %cmp14, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #20
  ret i1 %retval.1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @wb_stat_error() unnamed_addr #7 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call = call fastcc i32 @__ilog2_u32(i32 noundef %0) #25
  %add = shl i32 %call, 3
  %mul = add i32 %add, 8
  %mul5 = mul i32 %mul, %0
  %conv6 = zext i32 %mul5 to i64
  ret i64 %conv6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @wb_stat_sum(%struct.bdi_writeback* noundef %wb, i32 noundef %item) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 %idxprom
  %call = call fastcc i64 @percpu_counter_sum_positive(%struct.percpu_counter* noundef %arrayidx) #21
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef %item) unnamed_addr #4 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 %idxprom
  %call = call fastcc i64 @percpu_counter_read_positive(%struct.percpu_counter* noundef %arrayidx) #21
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dirty_writeback_centisecs_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @dirty_writeback_interval, align 4
  %call = call i32 @proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) #23
  %tobool = icmp ne i32 %call, 0
  %tobool1 = icmp eq i32 %write, 0
  %1 = load i32, i32* @dirty_writeback_interval, align 4
  %tobool3 = icmp eq i32 %1, 0
  %not.or.cond = or i1 %tobool1, %tobool
  %or.cond5 = select i1 %not.or.cond, i1 true, i1 %tobool3
  %cmp.not = icmp eq i32 %1, %0
  %or.cond10 = select i1 %or.cond5, i1 true, i1 %cmp.not
  br i1 %or.cond10, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @wakeup_flusher_threads(i32 noundef 3) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @laptop_mode_timer_fn(%struct.timer_list* noundef %t) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -19, i32 2
  %0 = bitcast void (%struct.timer_list*)** %add.ptr to %struct.backing_dev_info*
  call void @wakeup_flusher_threads_bdi(%struct.backing_dev_info* noundef %0, i32 noundef 4) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads_bdi(%struct.backing_dev_info* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @laptop_io_completion(%struct.backing_dev_info* noundef %info) local_unnamed_addr #0 {
entry:
  %laptop_mode_wb_timer = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %info, i64 0, i32 17
  %0 = load volatile i64, i64* @jiffies, align 64
  %1 = load i32, i32* @laptop_mode, align 4
  %conv = sext i32 %1 to i64
  %add = add i64 %0, %conv
  %call = call i32 @mod_timer(%struct.timer_list* noundef %laptop_mode_wb_timer, i64 noundef %add) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @laptop_sync_completion() local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #23
  %.pn23 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @bdi_list, i64 0, i32 0), align 8
  %cmp.not24 = icmp eq %struct.list_head* %.pn23, @bdi_list
  br i1 %cmp.not24, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn25 = phi %struct.list_head* [ %.pn, %for.body ], [ %.pn23, %entry ]
  %laptop_mode_wb_timer = getelementptr %struct.list_head, %struct.list_head* %.pn25, i64 44
  %0 = bitcast %struct.list_head* %laptop_mode_wb_timer to %struct.timer_list*
  %call = call i32 @del_timer(%struct.timer_list* noundef %0) #23
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn25, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %.pn, @bdi_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @rcu_read_unlock() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(%struct.timer_list* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @page_writeback_init() local_unnamed_addr #8 section ".init.text" {
entry:
  %call = call i32 @wb_domain_init(%struct.wb_domain* noundef nonnull @global_wb_domain, i32 noundef 3264) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !12

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2102; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !16
  unreachable

do.end6:                                          ; preds = %entry
  call fastcc void @cpuhp_setup_state(i32 noundef 192, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @page_writeback_cpu_online, i32 (i32)* noundef null) #21
  call fastcc void @cpuhp_setup_state(i32 noundef 13, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef null, i32 (i32)* noundef nonnull @page_writeback_cpu_online) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state(i32 noundef %state, i8* noundef %name, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef %state, i8* noundef %name, i1 noundef true, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef false) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @page_writeback_cpu_online(i32 noundef %cpu) #0 {
entry:
  call void @writeback_set_ratelimit() #21
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tag_pages_for_writeback(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !9
  store i64 0, i64* %2, align 8, !annotation !9
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %start, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %i_pages, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #23
  %call = call i8* @xas_find_marked(%struct.xa_state* noundef nonnull %xas, i64 noundef %end, i32 noundef 0) #23
  %tobool.not17 = icmp eq i8* %call, null
  br i1 %tobool.not17, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %tagged.018 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  call void @xas_set_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 2) #23
  %inc = add i32 %tagged.018, 1
  %rem = and i32 %inc, 4095
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  call void @xas_pause(%struct.xa_state* noundef nonnull %xas) #23
  %3 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i14 = getelementptr inbounds %struct.xarray, %struct.xarray* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i14) #23
  call fastcc void @_cond_resched() #21
  %4 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i15 = getelementptr inbounds %struct.xarray, %struct.xarray* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i15) #23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %call8 = call fastcc i8* @xas_next_marked(%struct.xa_state* noundef nonnull %xas, i64 noundef %end) #21
  %tobool.not = icmp eq i8* %call8, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %5 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i16 = getelementptr inbounds %struct.xarray, %struct.xarray* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i16) #23
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find_marked(%struct.xa_state* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(%struct.xa_state* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next_marked(%struct.xa_state* noundef %xas, i64 noundef %max) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #21
  br i1 %call, label %cleanup.sink.split, label %lor.rhs, !prof !15

lor.rhs:                                          ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup.sink.split, !prof !12

if.end:                                           ; preds = %lor.rhs
  %call6 = call fastcc i32 @xas_find_chunk(%struct.xa_state* noundef %xas) #21
  %conv7 = trunc i32 %call6 to i8
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  store i8 %conv7, i8* %xa_offset, align 2
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %2 = load i64, i64* %xa_index, align 8
  %and = and i64 %2, -64
  %conv8 = zext i32 %call6 to i64
  %add = add i64 %and, %conv8
  store i64 %add, i64* %xa_index, align 8
  %cmp = icmp ugt i64 %add, %max
  br i1 %cmp, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %cmp15 = icmp eq i32 %call6, 64
  br i1 %cmp15, label %cleanup.sink.split, label %if.end19

if.end19:                                         ; preds = %if.end13
  %call20 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %call6) #21
  %tobool21.not = icmp eq i8* %call20, null
  br i1 %tobool21.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end19, %if.end13, %lor.rhs, %entry
  %call23 = call i8* @xas_find_marked(%struct.xa_state* noundef %xas, i64 noundef %max, i32 noundef 0) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ %call20, %if.end19 ], [ %call23, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @write_cache_pages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc, i32 (%struct.page*, %struct.writeback_control*, i8*)* nocapture noundef readonly %writepage, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %index = alloca i64, align 8
  %0 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !9
  %1 = bitcast i64* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #21
  %range_cyclic = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 5
  %bf.load = load i8, i8* %range_cyclic, align 4
  %2 = and i8 %bf.load, 16
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %writeback_index = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 8
  %3 = load i64, i64* %writeback_index, align 8
  store i64 %3, i64* %index, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %range_start = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 2
  %4 = load i64, i64* %range_start, align 8
  %shr = ashr i64 %4, 12
  store i64 %shr, i64* %index, align 8
  %range_end = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 3
  %5 = load i64, i64* %range_end, align 8
  %shr1 = ashr i64 %5, 12
  %cmp = icmp ne i64 %4, 0
  %cmp4 = icmp ne i64 %5, 9223372036854775807
  %or.cond189 = select i1 %cmp, i1 true, i1 %cmp4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %6 = phi i64 [ %3, %if.then ], [ %shr, %if.else ]
  %end.0 = phi i64 [ -1, %if.then ], [ %shr1, %if.else ]
  %tobool119.not = phi i1 [ true, %if.then ], [ %or.cond189, %if.else ]
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %7 = load i32, i32* %sync_mode, align 8
  %cmp7 = icmp ne i32 %7, 1
  %8 = and i8 %bf.load, 4
  %tobool12.not = icmp eq i8 %8, 0
  %or.cond210 = select i1 %cmp7, i1 %tobool12.not, i1 false
  br i1 %or.cond210, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end6
  call void @tag_pages_for_writeback(%struct.address_space* noundef %mapping, i64 noundef %6, i64 noundef %end.0) #21
  br label %if.end15

if.end15:                                         ; preds = %if.end6, %if.then13
  %tag.0 = phi i32 [ 2, %if.then13 ], [ 0, %if.end6 ]
  %cmp17224.not = icmp ugt i64 %6, %end.0
  br i1 %cmp17224.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end15
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %nr_to_write = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  %call248 = call i32 @pagevec_lookup_range_tag(%struct.pagevec* noundef nonnull %pvec, %struct.address_space* noundef %mapping, i64* noundef nonnull %index, i64 noundef %end.0, i32 noundef %tag.0) #23
  %cmp18249 = icmp eq i32 %call248, 0
  br i1 %cmp18249, label %while.end, label %for.cond.preheader

while.body:                                       ; preds = %cleanup99
  %call = call i32 @pagevec_lookup_range_tag(%struct.pagevec* noundef nonnull %pvec, %struct.address_space* noundef %mapping, i64* noundef nonnull %index, i64 noundef %end.0, i32 noundef %tag.0) #23
  %cmp18 = icmp eq i32 %call, 0
  br i1 %cmp18, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body.lr.ph, %while.body
  %call252 = phi i32 [ %call, %while.body ], [ %call248, %while.body.lr.ph ]
  %done_index.0226251 = phi i64 [ %done_index.3, %while.body ], [ %6, %while.body.lr.ph ]
  %ret.0227250 = phi i32 [ %ret.4, %while.body ], [ 0, %while.body.lr.ph ]
  %cmp21215 = icmp sgt i32 %call252, 0
  br i1 %cmp21215, label %for.body.preheader, label %cleanup99

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %call252 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %ret.1217 = phi i32 [ %ret.0227250, %for.body.preheader ], [ %ret.3, %for.inc ]
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv
  %9 = load %struct.page*, %struct.page** %arrayidx, align 8
  %index22 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 1, i32 0, i32 2
  %10 = load i64, i64* %index22, align 8
  call fastcc void @lock_page(%struct.page* noundef %9) #21
  %mapping23 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 1, i32 0, i32 1
  %11 = load %struct.address_space*, %struct.address_space** %mapping23, align 8
  %cmp24.not = icmp eq %struct.address_space* %11, %mapping
  br i1 %cmp24.not, label %if.end28, label %continue_unlock, !prof !12

continue_unlock:                                  ; preds = %do.end59, %if.then35, %if.end28, %for.body
  call void @unlock_page(%struct.page* noundef %9) #23
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %9) #23
  %12 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %12, i64 0, i32 0
  %13 = load volatile i64, i64* %flags.i, align 8
  %14 = and i64 %13, 8
  %tobool30.not = icmp eq i64 %14, 0
  br i1 %tobool30.not, label %continue_unlock, label %if.end32

if.end32:                                         ; preds = %if.end28
  %call.i193 = call fastcc i64 @_compound_head(%struct.page* noundef %9) #23
  %15 = inttoptr i64 %call.i193 to %struct.page*
  %flags.i194 = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  %16 = load volatile i64, i64* %flags.i194, align 8
  %17 = and i64 %16, 32768
  %tobool34.not = icmp eq i64 %17, 0
  br i1 %tobool34.not, label %do.body, label %if.then35

if.then35:                                        ; preds = %if.end32
  %18 = load i32, i32* %sync_mode, align 8
  %cmp37.not = icmp eq i32 %18, 0
  br i1 %cmp37.not, label %continue_unlock, label %if.then39

if.then39:                                        ; preds = %if.then35
  call void @wait_on_page_writeback(%struct.page* noundef %9) #21
  br label %do.body

do.body:                                          ; preds = %if.end32, %if.then39
  %call.i196 = call fastcc i64 @_compound_head(%struct.page* noundef %9) #23
  %19 = inttoptr i64 %call.i196 to %struct.page*
  %flags.i197 = getelementptr inbounds %struct.page, %struct.page* %19, i64 0, i32 0
  %20 = load volatile i64, i64* %flags.i197, align 8
  %21 = and i64 %20, 32768
  %tobool44.not = icmp eq i64 %21, 0
  br i1 %tobool44.not, label %do.end59, label %do.body53, !prof !12

do.body53:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2250; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !17
  unreachable

do.end59:                                         ; preds = %do.body
  %call60 = call i32 @clear_page_dirty_for_io(%struct.page* noundef %9) #21
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %continue_unlock, label %if.end63

if.end63:                                         ; preds = %do.end59
  %22 = load %struct.inode*, %struct.inode** %host, align 8
  %call64 = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %22) #21
  %call65 = call i32 %writepage(%struct.page* noundef %9, %struct.writeback_control* noundef %wbc, i8* noundef %data) #23
  switch i32 %call65, label %if.else78 [
    i32 0, label %if.end89
    i32 524288, label %if.then77
  ], !prof !18

if.then77:                                        ; preds = %if.end63
  call void @unlock_page(%struct.page* noundef %9) #23
  br label %if.end85

if.else78:                                        ; preds = %if.end63
  %23 = load i32, i32* %sync_mode, align 8
  %cmp80.not = icmp eq i32 %23, 1
  br i1 %cmp80.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %if.else78
  %index22.le = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 1, i32 0, i32 2
  %24 = load i64, i64* %index22.le, align 8
  %add = add i64 %24, 1
  br label %cleanup99

if.end85:                                         ; preds = %if.else78, %if.then77
  %error.0 = phi i32 [ 0, %if.then77 ], [ %call65, %if.else78 ]
  %tobool86.not = icmp eq i32 %ret.1217, 0
  %spec.select = select i1 %tobool86.not, i32 %error.0, i32 %ret.1217
  br label %if.end89

if.end89:                                         ; preds = %if.end85, %if.end63
  %ret.2 = phi i32 [ %ret.1217, %if.end63 ], [ %spec.select, %if.end85 ]
  %25 = load i64, i64* %nr_to_write, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %nr_to_write, align 8
  %cmp90 = icmp slt i64 %dec, 1
  br i1 %cmp90, label %land.lhs.true92, label %for.inc

land.lhs.true92:                                  ; preds = %if.end89
  %26 = load i32, i32* %sync_mode, align 8
  %cmp94 = icmp eq i32 %26, 0
  br i1 %cmp94, label %cleanup99, label %for.inc

for.inc:                                          ; preds = %if.end89, %land.lhs.true92, %continue_unlock
  %ret.3 = phi i32 [ %ret.1217, %continue_unlock ], [ %ret.2, %land.lhs.true92 ], [ %ret.2, %if.end89 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup99, label %for.body

cleanup99:                                        ; preds = %for.inc, %land.lhs.true92, %for.cond.preheader, %if.then82
  %tobool16.not = phi i1 [ true, %for.cond.preheader ], [ false, %if.then82 ], [ true, %for.inc ], [ false, %land.lhs.true92 ]
  %done.3 = phi i32 [ 0, %for.cond.preheader ], [ 1, %if.then82 ], [ 0, %for.inc ], [ 1, %land.lhs.true92 ]
  %done_index.3 = phi i64 [ %done_index.0226251, %for.cond.preheader ], [ %add, %if.then82 ], [ %10, %land.lhs.true92 ], [ %10, %for.inc ]
  %ret.4 = phi i32 [ %ret.0227250, %for.cond.preheader ], [ %call65, %if.then82 ], [ %ret.3, %for.inc ], [ %ret.2, %land.lhs.true92 ]
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #21
  call fastcc void @_cond_resched() #21
  %27 = load i64, i64* %index, align 8
  %cmp17 = icmp ule i64 %27, %end.0
  %28 = select i1 %tobool16.not, i1 %cmp17, i1 false
  br i1 %28, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %cleanup99, %while.body.lr.ph, %if.end15
  %done.0.lcssa = phi i32 [ 0, %if.end15 ], [ 0, %while.body.lr.ph ], [ %done.3, %cleanup99 ], [ %done.3, %while.body ]
  %done_index.0.lcssa = phi i64 [ %6, %if.end15 ], [ %6, %while.body.lr.ph ], [ %done_index.3, %cleanup99 ], [ %done_index.3, %while.body ]
  %ret.0.lcssa = phi i32 [ 0, %if.end15 ], [ 0, %while.body.lr.ph ], [ %ret.4, %cleanup99 ], [ %ret.4, %while.body ]
  %bf.load103 = load i8, i8* %range_cyclic, align 4
  %29 = and i8 %bf.load103, 16
  %tobool107 = icmp eq i8 %29, 0
  %tobool109 = icmp ne i32 %done.0.lcssa, 0
  %or.cond = or i1 %tobool109, %tobool107
  %spec.select191 = select i1 %or.cond, i64 %done_index.0.lcssa, i64 0
  br i1 %tobool107, label %lor.lhs.false118, label %if.then124

lor.lhs.false118:                                 ; preds = %while.end
  br i1 %tobool119.not, label %if.end126, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %lor.lhs.false118
  %nr_to_write121 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  %30 = load i64, i64* %nr_to_write121, align 8
  %cmp122 = icmp sgt i64 %30, 0
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %land.lhs.true120, %while.end
  %writeback_index125 = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 8
  store i64 %spec.select191, i64* %writeback_index125, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %land.lhs.true120, %lor.lhs.false118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #20
  ret i32 %ret.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_init(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #9 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 1
  store i8 0, i8* %percpu_pvec_drained, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(%struct.pagevec* noundef, %struct.address_space* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wait_on_page_writeback(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i5 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %0 = inttoptr i64 %call.i5 to %struct.page*
  %flags.i6 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i6, align 8
  %2 = and i64 %1, 32768
  %tobool.not7 = icmp eq i64 %2, 0
  br i1 %tobool.not7, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call1 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  call void @wait_on_page_bit(%struct.page* noundef %page, i32 noundef 15) #23
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 32768
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clear_page_dirty_for_io(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  %tobool.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef nonnull %call) #21
  br i1 %call1, label %if.then, label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call2 = call i32 @page_mkclean(%struct.page* noundef %page) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @set_page_dirty(%struct.page* noundef %page) #21
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %call6 = call fastcc %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode* noundef %0) #21
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 3, i64* noundef %flags.i) #23
  br i1 %call1.i, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end
  call fastcc void @dec_lruvec_page_state(%struct.page* noundef %page, i32 noundef 20) #21
  call void @dec_zone_page_state(%struct.page* noundef %page, i32 noundef 6) #23
  call fastcc void @dec_wb_stat(%struct.bdi_writeback* noundef %call6, i32 noundef 0) #21
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true, %entry
  %call.i27 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %2 = inttoptr i64 %call.i27 to %struct.page*
  %flags.i28 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %call1.i29 = call fastcc i1 @test_and_clear_bit(i64 noundef 3, i64* noundef %flags.i28) #23
  %conv.i30 = zext i1 %call1.i29 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %if.end11
  %retval.0 = phi i32 [ %conv.i30, %if.end11 ], [ 1, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagevec_release(%struct.pagevec* noundef %pvec) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__pagevec_release(%struct.pagevec* noundef %pvec) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) local_unnamed_addr #0 {
entry:
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !9
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %writepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 0
  %2 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %writepage, align 8
  %tobool.not = icmp eq i32 (%struct.page*, %struct.writeback_control*)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #23
  %3 = bitcast %struct.address_space* %mapping to i8*
  %call = call i32 @write_cache_pages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc, i32 (%struct.page*, %struct.writeback_control*, i8*)* noundef nonnull @__writepage, i8* noundef %3) #21
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__writepage(%struct.page* noundef %page, %struct.writeback_control* noundef %wbc, i8* noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.address_space*
  %a_ops = getelementptr inbounds i8, i8* %data, i64 144
  %1 = bitcast i8* %a_ops to %struct.address_space_operations**
  %2 = load %struct.address_space_operations*, %struct.address_space_operations** %1, align 8
  %writepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %2, i64 0, i32 0
  %3 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %writepage, align 8
  %call = call i32 %3(%struct.page* noundef %page, %struct.writeback_control* noundef %wbc) #23
  call fastcc void @mapping_set_error(%struct.address_space* noundef %0, i32 noundef %call) #21
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) local_unnamed_addr #0 {
entry:
  %nr_to_write = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  %0 = load i64, i64* %nr_to_write, align 8
  %cmp = icmp slt i64 %0, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.bdi_writeback* @inode_to_wb_wbc(%struct.inode* noundef %1) #21
  call fastcc void @wb_bandwidth_estimate_start(%struct.bdi_writeback* noundef %call) #21
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %2 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %writepages = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %2, i64 0, i32 2
  %3 = load i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.address_space*, %struct.writeback_control*)** %writepages, align 8
  %tobool.not = icmp eq i32 (%struct.address_space*, %struct.writeback_control*)* %3, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %while.cond
  %call4 = call i32 %3(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) #23
  br label %if.end6

if.else:                                          ; preds = %while.cond
  %call5 = call i32 @generic_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) #21
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then1
  %ret.0 = phi i32 [ %call4, %if.then1 ], [ %call5, %if.else ]
  %cmp7.not = icmp eq i32 %ret.0, -12
  br i1 %cmp7.not, label %lor.lhs.false, label %do.end

lor.lhs.false:                                    ; preds = %if.end6
  %4 = load i32, i32* %sync_mode, align 8
  %cmp8.not = icmp eq i32 %4, 1
  br i1 %cmp8.not, label %if.end10, label %do.end

if.end10:                                         ; preds = %lor.lhs.false
  call fastcc void @_cond_resched() #21
  %call12 = call i64 @congestion_wait(i32 noundef 0, i64 noundef 5) #23
  br label %while.cond

do.end:                                           ; preds = %lor.lhs.false, %if.end6
  %bw_time_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call, i64 0, i32 11
  %5 = load volatile i64, i64* %bw_time_stamp, align 8
  %add = add i64 %5, 50
  %6 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add, %6
  %cmp14 = icmp slt i64 %sub, 0
  br i1 %cmp14, label %if.then15, label %cleanup

if.then15:                                        ; preds = %do.end
  call void @wb_update_bandwidth(%struct.bdi_writeback* noundef %call) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then15, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0, %if.then15 ], [ %ret.0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bdi_writeback* @inode_to_wb_wbc(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %inode) #21
  ret %struct.bdi_writeback* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_bandwidth_estimate_start(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %bw_time_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 11
  %1 = load volatile i64, i64* %bw_time_stamp, align 8
  %sub = sub i64 %0, %1
  %cmp = icmp ugt i64 %sub, 250
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %counter.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 8, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %call1 = call fastcc i64 @wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef 2) #21
  %dirtied_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 12
  store i64 %call1, i64* %dirtied_stamp, align 8
  %call2 = call fastcc i64 @wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef 3) #21
  %written_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 13
  store i64 %call2, i64* %written_stamp, align 8
  store volatile i64 %0, i64* %bw_time_stamp, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @congestion_wait(i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @write_one_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %1 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #20
  %2 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 1
  %3 = bitcast i64* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 32, i1 false)
  %4 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  store i64 1, i64* %4, align 8
  %5 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  store i32 1, i32* %5, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %6 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i40 = and i64 %7, 1
  %tobool.not = icmp eq i64 %conv.i.i40, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !15

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2403; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !19
  unreachable

do.end10:                                         ; preds = %entry
  call void @wait_on_page_writeback(%struct.page* noundef %page) #21
  %call11 = call i32 @clear_page_dirty_for_io(%struct.page* noundef %page) #21
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18.thread, label %if.then13

if.then13:                                        ; preds = %do.end10
  call fastcc void @get_page(%struct.page* noundef %page) #21
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %8 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %writepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %8, i64 0, i32 0
  %9 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %writepage, align 8
  %call14 = call i32 %9(%struct.page* noundef %page, %struct.writeback_control* noundef nonnull %wbc) #23
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.end18.thread38, label %if.end18

if.end18.thread38:                                ; preds = %if.then13
  call void @wait_on_page_writeback(%struct.page* noundef %page) #21
  call fastcc void @put_page(%struct.page* noundef %page) #21
  br label %if.then20

if.end18.thread:                                  ; preds = %do.end10
  call void @unlock_page(%struct.page* noundef %page) #23
  br label %if.then20

if.end18:                                         ; preds = %if.then13
  call fastcc void @put_page(%struct.page* noundef %page) #21
  br label %if.end22

if.then20:                                        ; preds = %if.end18.thread38, %if.end18.thread
  %call21 = call i32 @filemap_check_errors(%struct.address_space* noundef %0) #23
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.then20
  %ret.1 = phi i32 [ %call14, %if.end18 ], [ %call21, %if.then20 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #20
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #21
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #23
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_check_errors(%struct.address_space* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__set_page_dirty_no_writeback(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call.i4 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %3 = inttoptr i64 %call.i4 to %struct.page*
  %flags.i5 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_set_bit(i64 noundef 3, i64* noundef %flags.i5) #23
  %tobool2.not = xor i1 %call1.i, true
  %lnot.ext = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %lnot.ext, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @account_page_cleaned(%struct.page* noundef %page, %struct.address_space* nocapture noundef readonly %mapping, %struct.bdi_writeback* noundef %wb) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef %mapping) #21
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @dec_lruvec_page_state(%struct.page* noundef %page, i32 noundef 20) #21
  call void @dec_zone_page_state(%struct.page* noundef %page, i32 noundef 6) #23
  call fastcc void @dec_wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef 0) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mapping_can_writeback(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %0) #21
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 6
  %1 = load i32, i32* %capabilities, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %idx) unnamed_addr #0 {
entry:
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef %idx, i32 noundef -1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_zone_page_state(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef %item) unnamed_addr #0 {
entry:
  call fastcc void @__add_wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef %item, i64 noundef -1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__set_page_dirty(%struct.page* noundef %page, %struct.address_space* noundef %mapping, i32 noundef %warn) local_unnamed_addr #0 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %i_pages, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #21
  %mapping5 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping5, align 8
  %tobool.not = icmp eq %struct.address_space* %0, null
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %tobool6.not = icmp eq i32 %warn, 0
  br i1 %tobool6.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %call7 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then18, label %if.end, !prof !15

if.then18:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2499; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then18, %land.rhs
  call fastcc void @account_page_dirtied(%struct.page* noundef %page, %struct.address_space* noundef %mapping) #21
  %call28 = call fastcc i64 @page_index(%struct.page* noundef %page) #21
  call void @__xa_set_mark(%struct.xarray* noundef %i_pages, i64 noundef %call28, i32 noundef 0) #23
  br label %if.end29

if.end29:                                         ; preds = %if.end, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #21
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #21
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #20, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @account_page_dirtied(%struct.page* noundef %page, %struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef %mapping) #21
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %0) #21
  call fastcc void @__inc_lruvec_page_state(%struct.page* noundef %page) #21
  call void @__inc_zone_page_state(%struct.page* noundef %page, i32 noundef 6) #23
  call void @__inc_node_page_state(%struct.page* noundef %page, i32 noundef 31) #23
  call fastcc void @inc_wb_stat(%struct.bdi_writeback* noundef %call1, i32 noundef 0) #21
  call fastcc void @inc_wb_stat(%struct.bdi_writeback* noundef %call1, i32 noundef 2) #21
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %nr_dirtied = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 128
  %3 = load i32, i32* %nr_dirtied, align 16
  %inc = add i32 %3, 1
  store i32 %inc, i32* %nr_dirtied, align 16
  %call10 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call10, ptrtoint (i32* @bdp_ratelimits to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %add11 = add i32 %5, 1
  store i32 %add11, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_set_mark(%struct.xarray* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_index(%struct.page* nocapture noundef readonly %page) unnamed_addr #10 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__set_page_dirty_nobuffers(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_set_bit(i64 noundef 3, i64* noundef %flags.i) #23
  br i1 %call1.i, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  %tobool2.not = icmp eq %struct.address_space* %call1, null
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %flags.i22 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i22, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 13
  %4 = and i32 %3, 1
  %5 = xor i32 %4, 1
  call void @__set_page_dirty(%struct.page* noundef %page, %struct.address_space* noundef nonnull %call1, i32 noundef %5) #21
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call1, i64 0, i32 0
  %6 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool6.not = icmp eq %struct.inode* %6, null
  br i1 %tobool6.not, label %return, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__mark_inode_dirty(%struct.inode* noundef nonnull %6, i32 noundef 4) #23
  br label %return

return:                                           ; preds = %entry, %if.then, %if.then7, %if.end
  %retval.1 = phi i32 [ 1, %if.end ], [ 1, %if.then7 ], [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @account_page_redirty(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %tobool.not = icmp eq %struct.address_space* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef nonnull %0) #21
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call2 = call fastcc %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode* noundef %1) #21
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %nr_dirtied = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 128
  %4 = load i32, i32* %nr_dirtied, align 16
  %dec = add i32 %4, -1
  store i32 %dec, i32* %nr_dirtied, align 16
  call void @dec_node_page_state(%struct.page* noundef %page, i32 noundef 31) #23
  call fastcc void @dec_wb_stat(%struct.bdi_writeback* noundef %call2, i32 noundef 2) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %inode) #21
  ret %struct.bdi_writeback* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_node_page_state(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @redirty_page_for_writepage(%struct.writeback_control* nocapture noundef %wbc, %struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %pages_skipped = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 1
  %0 = load i64, i64* %pages_skipped, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pages_skipped, align 8
  %call = call i32 @__set_page_dirty_nobuffers(%struct.page* noundef %page) #21
  call void @account_page_redirty(%struct.page* noundef %page) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_page_dirty(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  %call1 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call1 to %struct.page*
  %tobool.not = icmp eq %struct.address_space* %call, null
  %call.i27 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #23
  %1 = inttoptr i64 %call.i27 to %struct.page*
  %flags.i28 = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i28, align 8
  br i1 %tobool.not, label %if.end8, label %if.then, !prof !15

if.then:                                          ; preds = %entry
  %3 = and i64 %2, 262144
  %tobool5.not = icmp eq i64 %3, 0
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %call.i25 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #23
  %4 = inttoptr i64 %call.i25 to %struct.page*
  %flags.i26 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 18, i64* noundef %flags.i26) #23
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 9
  %5 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %set_page_dirty = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %5, i64 0, i32 3
  %6 = load i32 (%struct.page*)*, i32 (%struct.page*)** %set_page_dirty, align 8
  %call7 = call i32 %6(%struct.page* noundef %0) #23
  br label %cleanup

if.end8:                                          ; preds = %entry
  %7 = and i64 %2, 8
  %tobool10.not = icmp eq i64 %7, 0
  br i1 %tobool10.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  %call.i30 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #23
  %8 = inttoptr i64 %call.i30 to %struct.page*
  %flags.i31 = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_set_bit(i64 noundef 3, i64* noundef %flags.i31) #23
  br i1 %call1.i, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.then11, %if.end8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end16, %if.end
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %if.end16 ], [ 1, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

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
define dso_local i32 @set_page_dirty_lock(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  call fastcc void @lock_page(%struct.page* noundef %page) #21
  %call = call i32 @set_page_dirty(%struct.page* noundef %page) #21
  call void @unlock_page(%struct.page* noundef %page) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__cancel_dirty_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  %call1 = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef %call) #21
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call2 = call fastcc %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode* noundef %0) #21
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 3, i64* noundef %flags.i) #23
  br i1 %call1.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then
  call void @account_page_cleaned(%struct.page* noundef %page, %struct.address_space* noundef %call, %struct.bdi_writeback* noundef %call2) #21
  br label %if.end5

if.else:                                          ; preds = %entry
  %call.i17 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %2 = inttoptr i64 %call.i17 to %struct.page*
  %flags.i18 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %flags.i18) #23
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then4, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_mkclean(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @test_clear_page_writeback(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  %tobool.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @mapping_use_writeback_tags(%struct.address_space* noundef nonnull %call) #21
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end31, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call3 = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %0) #21
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 1
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %i_pages, i64 0, i32 0, i32 0, i32 0
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #21
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %call2.i = call fastcc i1 @test_and_clear_bit(i64 noundef 15, i64* noundef %flags.i) #23
  br i1 %call2.i, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.then
  %call13 = call fastcc i64 @page_index(%struct.page* noundef %page) #21
  call void @__xa_clear_mark(%struct.xarray* noundef %i_pages, i64 noundef %call13, i32 noundef 1) #23
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call3, i64 0, i32 6
  %2 = load i32, i32* %capabilities, align 4
  %and = and i32 %2, 2
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %if.then11
  %call16 = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %0) #21
  call fastcc void @dec_wb_stat(%struct.bdi_writeback* noundef %call16, i32 noundef 1) #21
  call fastcc void @__wb_writeout_inc(%struct.bdi_writeback* noundef %call16) #21
  %call17 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef nonnull %call) #21
  br i1 %call17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then15
  call fastcc void @wb_inode_writeback_end(%struct.bdi_writeback* noundef %call16) #21
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then18, %if.then11, %if.then
  %3 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool22.not = icmp eq %struct.inode* %3, null
  br i1 %tobool22.not, label %if.end27, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end20
  %call24 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef nonnull %call) #21
  br i1 %call24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %land.lhs.true23
  call void @sb_clear_inode_writeback(%struct.inode* noundef nonnull %3) #23
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true23, %if.end20
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call6) #23
  br i1 %call2.i, label %if.then33, label %if.end34

if.end31:                                         ; preds = %entry, %land.lhs.true
  %call.i64 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %4 = inttoptr i64 %call.i64 to %struct.page*
  %flags.i65 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %call2.i66 = call fastcc i1 @test_and_clear_bit(i64 noundef 15, i64* noundef %flags.i65) #23
  br i1 %call2.i66, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27, %if.end31
  call fastcc void @dec_lruvec_page_state(%struct.page* noundef %page, i32 noundef 21) #21
  call void @dec_zone_page_state(%struct.page* noundef %page, i32 noundef 6) #23
  call void @inc_node_page_state(%struct.page* noundef %page, i32 noundef 32) #23
  br label %if.end34

if.end34:                                         ; preds = %if.end27, %if.then33, %if.end31
  %ret.0.in68 = phi i32 [ 0, %if.end27 ], [ 1, %if.then33 ], [ 0, %if.end31 ]
  ret i32 %ret.0.in68
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @mapping_use_writeback_tags(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 5
  %3 = and i32 %2, 1
  %4 = xor i32 %3, 1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_clear_mark(%struct.xarray* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) #21
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 11
  ret %struct.bdi_writeback* %wb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mapping_tagged(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #10 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call fastcc i1 @xa_marked(%struct.xarray* noundef %i_pages) #21
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_inode_writeback_end(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %writeback_inodes = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 8
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %writeback_inodes) #23
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @bdi_wq, align 8
  %bw_dwork = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 24
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0, %struct.delayed_work* noundef %bw_dwork) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sb_clear_inode_writeback(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_node_page_state(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__test_set_page_writeback(%struct.page* noundef %page, i1 noundef %keep_write) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  %tobool.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool.not, label %if.end41, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @mapping_use_writeback_tags(%struct.address_space* noundef nonnull %call) #21
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end41, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !9
  store i64 0, i64* %2, align 8, !annotation !9
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %call3 = call fastcc i64 @page_index(%struct.page* noundef %page) #21
  store i64 %call3, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 0
  %3 = load %struct.inode*, %struct.inode** %host, align 8
  %call4 = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %3) #21
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %i_pages, i64 0, i32 0, i32 0, i32 0
  %call8 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #21
  %call11 = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #23
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %call2.i = call fastcc i1 @test_and_set_bit(i64 noundef 15, i64* noundef %flags.i) #23
  br i1 %call2.i, label %if.end30, label %if.then14

if.then14:                                        ; preds = %if.then
  %call15 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef nonnull %call) #21
  call void @xas_set_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 1) #23
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call4, i64 0, i32 6
  %5 = load i32, i32* %capabilities, align 4
  %and = and i32 %5, 2
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.then14
  %call19 = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %3) #21
  call fastcc void @inc_wb_stat(%struct.bdi_writeback* noundef %call19, i32 noundef 1) #21
  br i1 %call15, label %if.end30, label %if.then21

if.then21:                                        ; preds = %if.then18
  call fastcc void @wb_inode_writeback_start(%struct.bdi_writeback* noundef %call19) #21
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then14
  %6 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool24.not = icmp eq %struct.inode* %6, null
  %brmerge = select i1 %tobool24.not, i1 true, i1 %call15
  br i1 %brmerge, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @sb_mark_inode_writeback(%struct.inode* noundef nonnull %6) #23
  br label %if.end30

if.end30:                                         ; preds = %if.then18, %if.then27, %if.end22, %if.then
  %call.i73 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %7 = inttoptr i64 %call.i73 to %struct.page*
  %flags.i74 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i74, align 8
  %9 = and i64 %8, 8
  %tobool32.not = icmp eq i64 %9, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 0) #23
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30
  br i1 %keep_write, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 2) #23
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %10 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i75 = getelementptr inbounds %struct.xarray, %struct.xarray* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i75, i64 noundef %call8) #23
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  br i1 %call2.i, label %if.end44, label %if.then43

if.end41:                                         ; preds = %entry, %land.lhs.true
  %call.i76 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %11 = inttoptr i64 %call.i76 to %struct.page*
  %flags.i77 = getelementptr inbounds %struct.page, %struct.page* %11, i64 0, i32 0
  %call2.i78 = call fastcc i1 @test_and_set_bit(i64 noundef 15, i64* noundef %flags.i77) #23
  br i1 %call2.i78, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end37, %if.end41
  call fastcc void @inc_lruvec_page_state(%struct.page* noundef %page) #21
  call void @inc_zone_page_state(%struct.page* noundef %page, i32 noundef 6) #23
  br label %if.end44

if.end44:                                         ; preds = %if.end37, %if.then43, %if.end41
  %ret.0.in83 = phi i32 [ 1, %if.end37 ], [ 0, %if.then43 ], [ 1, %if.end41 ]
  ret i32 %ret.0.in83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_load(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef %item) unnamed_addr #0 {
entry:
  call fastcc void @__add_wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef %item, i64 noundef 1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_inode_writeback_start(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %writeback_inodes = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 8
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %writeback_inodes) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sb_mark_inode_writeback(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(%struct.xa_state* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #0 {
entry:
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 21, i32 noundef 1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_zone_page_state(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_bit(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @wait_on_page_writeback_killable(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #23
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 32768
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #23
  %call2 = call i32 @wait_on_page_bit_killable(%struct.page* noundef %page, i32 noundef 15) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.cond, label %return

return:                                           ; preds = %while.cond, %while.body
  %retval.0 = phi i32 [ -4, %while.body ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_on_page_bit_killable(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wait_for_stable_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 11
  %3 = load i64, i64* %s_iflags, align 8
  %and = and i64 %3, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @wait_on_page_writeback(%struct.page* noundef %page) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_zone_page_state() unnamed_addr #4 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 0, i32 0), align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #10 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @rt_prio(i32 noundef %0) #21
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_prio(i32 noundef %prio) unnamed_addr #11 {
entry:
  %cmp = icmp slt i32 %prio, 100
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @node_dirtyable_memory(%struct.pglist_data* noundef %pgdat) unnamed_addr #12 {
entry:
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  %call = call fastcc i1 @populated_zone(%struct.zone* noundef %add.ptr) #21
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @zone_page_state(%struct.zone* noundef %add.ptr) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %nr_pages.1 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  %add.ptr.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  %call.1 = call fastcc i1 @populated_zone(%struct.zone* noundef %add.ptr.1) #21
  br i1 %call.1, label %if.end.1, label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %call1.1 = call fastcc i64 @zone_page_state(%struct.zone* noundef %add.ptr.1) #21
  %add.1 = add i64 %call1.1, %nr_pages.1
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup
  %nr_pages.1.1 = phi i64 [ %add.1, %if.end.1 ], [ %nr_pages.1, %cleanup ]
  %add.ptr.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  %call.2 = call fastcc i1 @populated_zone(%struct.zone* noundef %add.ptr.2) #21
  br i1 %call.2, label %if.end.2, label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  %call1.2 = call fastcc i64 @zone_page_state(%struct.zone* noundef %add.ptr.2) #21
  %add.2 = add i64 %call1.2, %nr_pages.1.1
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1
  %nr_pages.1.2 = phi i64 [ %add.2, %if.end.2 ], [ %nr_pages.1.1, %cleanup.1 ]
  %add.ptr.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3
  %call.3 = call fastcc i1 @populated_zone(%struct.zone* noundef %add.ptr.3) #21
  br i1 %call.3, label %if.end.3, label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  %call1.3 = call fastcc i64 @zone_page_state(%struct.zone* noundef %add.ptr.3) #21
  %add.3 = add i64 %call1.3, %nr_pages.1.2
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2
  %nr_pages.1.3 = phi i64 [ %add.3, %if.end.3 ], [ %nr_pages.1.2, %cleanup.2 ]
  %totalreserve_pages = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 13
  %0 = load i64, i64* %totalreserve_pages, align 64
  %1 = call i64 @llvm.usub.sat.i64(i64 %nr_pages.1.3, i64 %0)
  %call3 = call fastcc i64 @global_node_page_state(i32 noundef 2) #21
  %add4 = add i64 %1, %call3
  %call5 = call fastcc i64 @global_node_page_state(i32 noundef 3) #21
  %add6 = add i64 %add4, %call5
  ret i64 %add6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @populated_zone(%struct.zone* nocapture noundef readonly %zone) unnamed_addr #10 {
entry:
  %present_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 12
  %0 = load i64, i64* %present_pages, align 64
  %tobool = icmp ne i64 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @zone_page_state(%struct.zone* noundef %zone) unnamed_addr #4 {
entry:
  %counter.i.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 26, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state_pages(i32 noundef %item) unnamed_addr #4 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #20, !srcloc !23
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #20, !srcloc !24
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #21
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !15

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #20, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_domain_writeout_inc(%struct.fprop_local_percpu* noundef %completions, i32 noundef %max_prop_frac) unnamed_addr #0 {
entry:
  call void @__fprop_inc_percpu_max(%struct.fprop_global* noundef getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 1), %struct.fprop_local_percpu* noundef %completions, i32 noundef %max_prop_frac) #23
  %0 = load i64, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 3), align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %entry
  %1 = load volatile i64, i64* @jiffies, align 64
  %call = call fastcc i64 @wp_next_time(i64 noundef %1) #21
  store i64 %call, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 3), align 8
  %call7 = call i32 @mod_timer(%struct.timer_list* noundef getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 2), i64 noundef %call) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fprop_inc_percpu_max(%struct.fprop_global* noundef, %struct.fprop_local_percpu* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @wp_next_time(i64 noundef %cur_time) unnamed_addr #11 {
entry:
  %add = add i64 %cur_time, 750
  %tobool.not = icmp eq i64 %add, 0
  %.add = select i1 %tobool.not, i64 1, i64 %add
  ret i64 %.add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @fprop_new_period(%struct.fprop_global* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_bh() unnamed_addr #0 {
entry:
  call fastcc void @__preempt_count_add() #23
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !26
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #21
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #23
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #23
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.25* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #20, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_bh() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #21
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  call void @__local_bh_enable_ip(i64 noundef %cond, i32 noundef 512) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #20, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fprop_fraction_percpu(%struct.fprop_global* noundef, %struct.fprop_local_percpu* noundef, i64* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #11 {
entry:
  %div = udiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @wb_min_max_ratio(%struct.bdi_writeback* nocapture noundef readonly %wb, i64* nocapture noundef writeonly %minp, i64* nocapture noundef writeonly %maxp) unnamed_addr #14 {
entry:
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  %0 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %min_ratio = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %0, i64 0, i32 7
  %1 = load i32, i32* %min_ratio, align 8
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %minp, align 8
  %2 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %max_ratio = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %2, i64 0, i32 8
  %3 = load i32, i32* %max_ratio, align 4
  %conv2 = zext i32 %3 to i64
  store i64 %conv2, i64* %maxp, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @percpu_counter_read(%struct.percpu_counter* nocapture noundef readonly %fbc) unnamed_addr #10 {
entry:
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @domain_update_dirty_limit(%struct.dirty_throttle_control* nocapture noundef readonly %dtc, i64 noundef %now) unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 4), align 8
  %add.neg = add i64 %now, -50
  %sub = sub i64 %add.neg, %0
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 0, i32 0, i32 0)) #23
  %1 = load i64, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 4), align 8
  %sub3 = sub i64 %add.neg, %1
  %cmp4 = icmp sgt i64 %sub3, -1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call fastcc void @update_dirty_limit(%struct.dirty_throttle_control* noundef %dtc) #21
  store i64 %now, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 4), align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 0, i32 0, i32 0)) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_update_dirty_ratelimit(%struct.dirty_throttle_control* nocapture noundef readonly %dtc, i64 noundef %dirtied, i64 noundef %elapsed) unnamed_addr #12 {
entry:
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 0
  %0 = load %struct.bdi_writeback*, %struct.bdi_writeback** %wb1, align 8
  %dirty2 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 3
  %1 = load i64, i64* %dirty2, align 8
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 4
  %2 = load i64, i64* %thresh, align 8
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 5
  %3 = load i64, i64* %bg_thresh, align 8
  %call = call fastcc i64 @dirty_freerun_ceiling(i64 noundef %2, i64 noundef %3) #21
  %call5 = call fastcc i64 @hard_dirty_limit(i64 noundef %2) #21
  %add = add i64 %call5, %call
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 15
  %4 = load i64, i64* %avg_write_bandwidth, align 8
  %dirty_ratelimit6 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 16
  %5 = load i64, i64* %dirty_ratelimit6, align 8
  %dirtied_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 12
  %6 = load i64, i64* %dirtied_stamp, align 8
  %sub = sub i64 %dirtied, %6
  %mul = mul i64 %sub, 250
  %div7 = udiv i64 %mul, %elapsed
  %pos_ratio = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 9
  %7 = load i64, i64* %pos_ratio, align 8
  %mul8 = mul i64 %7, %5
  %shr = lshr i64 %mul8, 10
  %inc = add nuw nsw i64 %shr, 1
  %mul9 = mul i64 %inc, %4
  %8 = trunc i64 %div7 to i32
  %conv = or i32 %8, 1
  %call10 = call fastcc i64 @div_u64(i64 noundef %mul9, i32 noundef %conv) #21
  %cmp = icmp ugt i64 %call10, %4
  br i1 %cmp, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %balanced_dirty_ratelimit.0 = phi i64 [ %4, %if.then ], [ %call10, %entry ]
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 0
  %9 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %9, i64 0, i32 6
  %10 = load i32, i32* %capabilities, align 4
  %and = and i32 %10, 4
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end32, label %if.then22, !prof !12

if.then22:                                        ; preds = %if.end
  %wb_dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 6
  %11 = load i64, i64* %wb_dirty, align 8
  %cmp24 = icmp ult i64 %11, 8
  br i1 %cmp24, label %if.then35, label %if.else

if.else:                                          ; preds = %if.then22
  %wb_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 7
  %12 = load i64, i64* %wb_thresh, align 8
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 8
  %13 = load i64, i64* %wb_bg_thresh, align 8
  %add29 = add i64 %13, %12
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end
  %setpoint.0.in = phi i64 [ %add29, %if.else ], [ %add, %if.end ]
  %dirty.0 = phi i64 [ %11, %if.else ], [ %1, %if.end ]
  %setpoint.0 = lshr i64 %setpoint.0.in, 1
  %cmp33 = icmp ult i64 %dirty.0, %setpoint.0
  br i1 %cmp33, label %if.then35, label %if.else51

if.then35:                                        ; preds = %if.then22, %if.end32
  %balanced_dirty_ratelimit36 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 17
  %14 = load i64, i64* %balanced_dirty_ratelimit36, align 8
  %cmp37 = icmp ult i64 %14, %balanced_dirty_ratelimit.0
  %cond = select i1 %cmp37, i64 %14, i64 %balanced_dirty_ratelimit.0
  %cmp40 = icmp ult i64 %cond, %inc
  %cond45 = select i1 %cmp40, i64 %cond, i64 %inc
  %15 = call i64 @llvm.usub.sat.i64(i64 %cond45, i64 %5)
  br label %if.end72

if.else51:                                        ; preds = %if.end32
  %balanced_dirty_ratelimit52 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 17
  %16 = load i64, i64* %balanced_dirty_ratelimit52, align 8
  %cmp54 = icmp ugt i64 %16, %balanced_dirty_ratelimit.0
  %cond59 = select i1 %cmp54, i64 %16, i64 %balanced_dirty_ratelimit.0
  %cmp61 = icmp ugt i64 %cond59, %inc
  %cond66 = select i1 %cmp61, i64 %cond59, i64 %inc
  %17 = call i64 @llvm.usub.sat.i64(i64 %5, i64 %cond66)
  br label %if.end72

if.end72:                                         ; preds = %if.else51, %if.then35
  %step.0 = phi i64 [ %15, %if.then35 ], [ %17, %if.else51 ]
  %mul73 = shl i64 %step.0, 1
  %add74 = or i64 %mul73, 1
  %div75 = udiv i64 %5, %add74
  %cmp76 = icmp ult i64 %div75, 64
  %shr79 = lshr i64 %step.0, %div75
  %sub81 = add i64 %shr79, 7
  %div82 = lshr i64 %sub81, 3
  %step.1 = select i1 %cmp76, i64 %div82, i64 0
  %cmp85 = icmp ult i64 %5, %balanced_dirty_ratelimit.0
  %18 = sub nsw i64 0, %step.1
  %dirty_ratelimit.0.p = select i1 %cmp85, i64 %step.1, i64 %18
  %dirty_ratelimit.0 = add i64 %dirty_ratelimit.0.p, %5
  %cmp95 = icmp ugt i64 %dirty_ratelimit.0, 1
  %cond100 = select i1 %cmp95, i64 %dirty_ratelimit.0, i64 1
  store volatile i64 %cond100, i64* %dirty_ratelimit6, align 8
  %balanced_dirty_ratelimit106 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 17
  store i64 %balanced_dirty_ratelimit.0, i64* %balanced_dirty_ratelimit106, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_update_write_bandwidth(%struct.bdi_writeback* noundef %wb, i64 noundef %elapsed, i64 noundef %written) unnamed_addr #0 {
entry:
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 15
  %0 = load i64, i64* %avg_write_bandwidth, align 8
  %write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 14
  %1 = load i64, i64* %write_bandwidth, align 8
  %written_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 13
  %2 = load i64, i64* %written_stamp, align 8
  %3 = call i64 @llvm.usub.sat.i64(i64 %written, i64 %2)
  %mul = mul i64 %3, 250
  %cmp1 = icmp ugt i64 %elapsed, 1024
  br i1 %cmp1, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @div64_u64(i64 noundef %mul, i64 noundef %elapsed) #21
  br label %out

if.end:                                           ; preds = %entry
  %sub4 = sub nuw nsw i64 1024, %elapsed
  %mul5 = mul i64 %1, %sub4
  %add = add i64 %mul, %mul5
  %shr = lshr i64 %add, 10
  %cmp6 = icmp ule i64 %0, %1
  %cmp8.not = icmp ult i64 %1, %shr
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8.not
  %sub11 = sub i64 %0, %1
  %shr12 = lshr i64 %sub11, 3
  %sub13 = select i1 %or.cond, i64 0, i64 %shr12
  %avg.0 = sub i64 %0, %sub13
  %cmp15 = icmp ule i64 %1, %avg.0
  %cmp18.not = icmp ugt i64 %1, %shr
  %or.cond117 = select i1 %cmp15, i1 true, i1 %cmp18.not
  br i1 %or.cond117, label %out, label %if.then20

if.then20:                                        ; preds = %if.end
  %sub21 = sub i64 %1, %avg.0
  %shr22 = lshr i64 %sub21, 3
  %add23 = add i64 %shr22, %avg.0
  br label %out

out:                                              ; preds = %if.end, %if.then20, %if.then
  %bw.0 = phi i64 [ %call, %if.then ], [ %shr, %if.then20 ], [ %shr, %if.end ]
  %avg.1 = phi i64 [ %call, %if.then ], [ %add23, %if.then20 ], [ %avg.0, %if.end ]
  %cmp26 = icmp ugt i64 %avg.1, 1
  %cond31 = select i1 %cmp26, i64 %avg.1, i64 1
  %call32 = call fastcc i1 @wb_has_dirty_io(%struct.bdi_writeback* noundef %wb) #21
  br i1 %call32, label %if.then33, label %if.end61

if.then33:                                        ; preds = %out
  %4 = load i64, i64* %avg_write_bandwidth, align 8
  %sub35 = sub i64 %cond31, %4
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  %5 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %tot_write_bandwidth = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %5, i64 0, i32 10
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %sub35, %struct.atomic64_t* noundef %tot_write_bandwidth) #23
  %cmp37 = icmp slt i64 %call.i.i.i, 1
  br i1 %cmp37, label %if.then51, label %if.end61, !prof !15

if.then51:                                        ; preds = %if.then33
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1115; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !29
  br label %if.end61

if.end61:                                         ; preds = %if.then33, %if.then51, %out
  store i64 %bw.0, i64* %write_bandwidth, align 8
  store volatile i64 %cond31, i64* %avg_write_bandwidth, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_dirty_limit(%struct.dirty_throttle_control* nocapture noundef readonly %dtc) unnamed_addr #14 {
entry:
  %thresh1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 4
  %0 = load i64, i64* %thresh1, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 5), align 8
  %cmp = icmp ult i64 %1, %0
  br i1 %cmp, label %update, label %if.end

if.end:                                           ; preds = %entry
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 3
  %2 = load i64, i64* %dirty, align 8
  %cmp2 = icmp ugt i64 %0, %2
  %cond = select i1 %cmp2, i64 %0, i64 %2
  %cmp3 = icmp ugt i64 %1, %cond
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %sub = sub i64 %1, %cond
  %shr = lshr i64 %sub, 5
  %sub5 = sub i64 %1, %shr
  br label %update

update:                                           ; preds = %entry, %if.then4
  %limit.0 = phi i64 [ %sub5, %if.then4 ], [ %0, %entry ]
  store i64 %limit.0, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 5), align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %update
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @dirty_freerun_ceiling(i64 noundef %thresh, i64 noundef %bg_thresh) unnamed_addr #11 {
entry:
  %add = add i64 %bg_thresh, %thresh
  %div = lshr i64 %add, 1
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hard_dirty_limit(i64 noundef %thresh) unnamed_addr #10 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 5), align 8
  %cmp = icmp ult i64 %0, %thresh
  %cond = select i1 %cmp, i64 %thresh, i64 %0
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #15 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* noundef nonnull %remainder) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #9 {
entry:
  %conv = zext i32 %divisor to i64
  %div = udiv i64 %dividend, %conv
  %0 = mul i64 %div, %conv
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @wb_has_dirty_io(%struct.bdi_writeback* noundef %wb) unnamed_addr #4 {
entry:
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 4
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #20, !srcloc !31
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_is_blkdev_sb(%struct.super_block* nocapture noundef readnone %sb) unnamed_addr #10 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %cmp = icmp eq %struct.super_block* %0, %sb
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_dirty_limits(%struct.dirty_throttle_control* nocapture noundef %dtc) unnamed_addr #0 {
entry:
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 0
  %0 = load %struct.bdi_writeback*, %struct.bdi_writeback** %wb1, align 8
  %call = call fastcc i64 @__wb_calc_thresh(%struct.dirty_throttle_control* noundef %dtc) #21
  %wb_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 7
  store i64 %call, i64* %wb_thresh, align 8
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 4
  %1 = load i64, i64* %thresh, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 5
  %2 = load i64, i64* %bg_thresh, align 8
  %mul = mul i64 %2, %call
  %conv = trunc i64 %1 to i32
  %call4 = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef %conv) #21
  %.pre = load i64, i64* %wb_thresh, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi i64 [ %.pre, %cond.true ], [ %call, %entry ]
  %cond = phi i64 [ %call4, %cond.true ], [ 0, %entry ]
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 8
  store i64 %cond, i64* %wb_bg_thresh, align 8
  %call6 = call fastcc i64 @wb_stat_error() #21
  %mul7 = shl i64 %call6, 1
  %cmp = icmp ult i64 %3, %mul7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call9 = call fastcc i64 @wb_stat_sum(%struct.bdi_writeback* noundef %0, i32 noundef 0) #21
  %call10 = call fastcc i64 @wb_stat_sum(%struct.bdi_writeback* noundef %0, i32 noundef 1) #21
  %add = add i64 %call10, %call9
  br label %if.end

if.else:                                          ; preds = %cond.end
  %call11 = call fastcc i64 @wb_stat(%struct.bdi_writeback* noundef %0, i32 noundef 0) #21
  %call12 = call fastcc i64 @wb_stat(%struct.bdi_writeback* noundef %0, i32 noundef 1) #21
  %add13 = add i64 %call12, %call11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add13.sink = phi i64 [ %add, %if.then ], [ %add13, %if.else ]
  %4 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 6
  store i64 %add13.sink, i64* %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @dirty_poll_interval(i64 noundef %dirty, i64 noundef %thresh) unnamed_addr #17 {
entry:
  %cmp = icmp ugt i64 %thresh, %dirty
  br i1 %cmp, label %cond.end8, label %return

cond.end8:                                        ; preds = %entry
  %sub = sub i64 %thresh, %dirty
  %call = call fastcc i32 @__ilog2_u64(i64 noundef %sub) #25
  %shr = ashr i32 %call, 1
  %sh_prom = zext i32 %shr to i64
  %shl = shl nuw i64 1, %sh_prom
  br label %return

return:                                           ; preds = %entry, %cond.end8
  %retval.0 = phi i64 [ %shl, %cond.end8 ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @writeback_in_progress(%struct.bdi_writeback* noundef %wb) unnamed_addr #4 {
entry:
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 2
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_start_background_writeback(%struct.bdi_writeback* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc void @wb_position_ratio(%struct.dirty_throttle_control* nocapture noundef %dtc) unnamed_addr #3 {
entry:
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 0
  %0 = load %struct.bdi_writeback*, %struct.bdi_writeback** %wb1, align 8
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 15
  %1 = load volatile i64, i64* %avg_write_bandwidth, align 8
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 4
  %2 = load i64, i64* %thresh, align 8
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 5
  %3 = load i64, i64* %bg_thresh, align 8
  %call4 = call fastcc i64 @hard_dirty_limit(i64 noundef %2) #21
  %wb_thresh5 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 7
  %4 = load i64, i64* %wb_thresh5, align 8
  %pos_ratio6 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 9
  store i64 0, i64* %pos_ratio6, align 8
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 3
  %5 = load i64, i64* %dirty, align 8
  %cmp.not = icmp ugt i64 %call4, %5
  br i1 %cmp.not, label %if.end, label %cleanup116, !prof !12

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @dirty_freerun_ceiling(i64 noundef %2, i64 noundef %3) #21
  %add = add i64 %call, %call4
  %div = lshr i64 %add, 1
  %call9 = call fastcc i64 @pos_ratio_polynom(i64 noundef %div, i64 noundef %5, i64 noundef %call4) #21
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %0, i64 0, i32 0
  %6 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %6, i64 0, i32 6
  %7 = load i32, i32* %capabilities, align 4
  %and = and i32 %7, 4
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end49, label %if.then18, !prof !12

if.then18:                                        ; preds = %if.end
  %wb_dirty = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 6
  %8 = load i64, i64* %wb_dirty, align 8
  %cmp19 = icmp ult i64 %8, 8
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.then18
  %mul = shl i64 %call9, 1
  %cmp23 = icmp slt i64 %mul, 2048
  %cond = select i1 %cmp23, i64 %mul, i64 2048
  br label %cleanup116.sink.split

if.end26:                                         ; preds = %if.then18
  %cmp28.not = icmp ult i64 %8, %4
  br i1 %cmp28.not, label %if.end31, label %cleanup116

if.end31:                                         ; preds = %if.end26
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 8
  %9 = load i64, i64* %wb_bg_thresh, align 8
  %call32 = call fastcc i64 @dirty_freerun_ceiling(i64 noundef %4, i64 noundef %9) #21
  %cmp33 = icmp eq i64 %call32, 0
  %cmp35 = icmp eq i64 %call32, %4
  %or.cond = select i1 %cmp33, i1 true, i1 %cmp35
  br i1 %or.cond, label %cleanup116, label %if.end38

if.end38:                                         ; preds = %if.end31
  %call40 = call fastcc i64 @pos_ratio_polynom(i64 noundef %call32, i64 noundef %8, i64 noundef %4) #21
  %cmp42 = icmp slt i64 %call9, %call40
  %cond47 = select i1 %cmp42, i64 %call9, i64 %call40
  br label %cleanup116.sink.split

if.end49:                                         ; preds = %if.end
  %cmp51 = icmp ugt i64 %4, %2
  br i1 %cmp51, label %if.then60, label %if.end62, !prof !15

if.then60:                                        ; preds = %if.end49
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end49
  %wb_thresh.0 = phi i64 [ %2, %if.then60 ], [ %4, %if.end49 ]
  %sub = sub i64 %call4, %5
  %div64 = lshr i64 %sub, 3
  %cmp66 = icmp ugt i64 %wb_thresh.0, %div64
  %cond71 = select i1 %cmp66, i64 %wb_thresh.0, i64 %div64
  %shl = shl i64 %cond71, 16
  %10 = trunc i64 %2 to i32
  %conv73 = or i32 %10, 1
  %call74 = call fastcc i64 @div_u64(i64 noundef %shl, i32 noundef %conv73) #21
  %mul75 = mul i64 %call74, %div
  %shr = lshr i64 %mul75, 16
  %11 = load i64, i64* %thresh, align 8
  %mul78 = shl i64 %1, 3
  %sub77 = sub i64 %mul78, %cond71
  %add79 = add i64 %sub77, %11
  %mul80 = mul i64 %add79, %call74
  %shr81 = lshr i64 %mul80, 16
  %add82 = add nuw nsw i64 %shr81, %shr
  %wb_dirty83 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %dtc, i64 0, i32 6
  %12 = load i64, i64* %wb_dirty83, align 8
  %div84 = lshr i64 %mul80, 18
  %sub85 = sub nsw i64 %add82, %div84
  %cmp86 = icmp ult i64 %12, %sub85
  br i1 %cmp86, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.end62
  %sub90 = sub i64 %add82, %12
  %mul91 = mul i64 %sub90, %call9
  %or93 = or i64 %shr81, 1
  %call94 = call fastcc i64 @div64_u64(i64 noundef %mul91, i64 noundef %or93) #21
  br label %if.end96

if.else:                                          ; preds = %if.end62
  %div95 = sdiv i64 %call9, 4
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.then88
  %pos_ratio.0 = phi i64 [ %call94, %if.then88 ], [ %div95, %if.else ]
  %div97 = lshr i64 %cond71, 1
  %cmp99 = icmp ult i64 %12, %div97
  br i1 %cmp99, label %if.then101, label %cleanup116.sink.split

if.then101:                                       ; preds = %if.end96
  %div103 = lshr i64 %cond71, 4
  %cmp104 = icmp ugt i64 %12, %div103
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %if.then101
  %mul107 = mul i64 %pos_ratio.0, %div97
  %conv109 = trunc i64 %12 to i32
  %call110 = call fastcc i64 @div_u64(i64 noundef %mul107, i32 noundef %conv109) #21
  br label %cleanup116.sink.split

if.else111:                                       ; preds = %if.then101
  %mul112 = shl i64 %pos_ratio.0, 3
  br label %cleanup116.sink.split

cleanup116.sink.split:                            ; preds = %if.end96, %if.else111, %if.then106, %if.end38, %if.then21
  %cond.sink = phi i64 [ %cond, %if.then21 ], [ %cond47, %if.end38 ], [ %call110, %if.then106 ], [ %mul112, %if.else111 ], [ %pos_ratio.0, %if.end96 ]
  store i64 %cond.sink, i64* %pos_ratio6, align 8
  br label %cleanup116

cleanup116:                                       ; preds = %cleanup116.sink.split, %if.end26, %if.end31, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @wb_max_pause(%struct.bdi_writeback* noundef %wb, i64 noundef %wb_dirty) unnamed_addr #4 {
entry:
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 15
  %0 = load volatile i64, i64* %avg_write_bandwidth, align 8
  %div = lshr i64 %0, 5
  %add = add nuw nsw i64 %div, 1
  %div1 = udiv i64 %wb_dirty, %add
  %inc = add i64 %div1, 1
  %cmp = icmp ult i64 %inc, 50
  %cond = select i1 %cmp, i64 %inc, i64 50
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @wb_min_pause(%struct.bdi_writeback* noundef %wb, i64 noundef %max_pause, i64 noundef %task_ratelimit, i64 noundef %dirty_ratelimit, i32* nocapture noundef writeonly %nr_dirtied_pause) unnamed_addr #3 {
entry:
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 15
  %0 = load volatile i64, i64* %avg_write_bandwidth, align 8
  %call = call fastcc i32 @__ilog2_u64(i64 noundef %0) #25
  %dirty_ratelimit5 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 16
  %1 = load volatile i64, i64* %dirty_ratelimit5, align 8
  %call6 = call fastcc i32 @__ilog2_u64(i64 noundef %1) #25
  %cmp = icmp sgt i32 %call, %call6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv7 = sext i32 %call6 to i64
  %conv = sext i32 %call to i64
  %sub = sub nsw i64 %conv, %conv7
  %mul = mul nsw i64 %sub, 2500
  %div = sdiv i64 %mul, 1024
  %add = add nsw i64 %div, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %t.0 = phi i64 [ %add, %if.then ], [ 2, %entry ]
  %div9 = sdiv i64 %max_pause, 2
  %add10 = add nsw i64 %div9, 1
  %cmp12 = icmp slt i64 %t.0, %add10
  %cond = select i1 %cmp12, i64 %t.0, i64 %add10
  %mul14 = mul i64 %cond, %dirty_ratelimit
  %div15 = lshr i64 %mul14, 8
  %conv16 = trunc i64 %div15 to i32
  %cmp17 = icmp slt i32 %conv16, 32
  br i1 %cmp17, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end
  %mul20 = mul i64 %dirty_ratelimit, %max_pause
  %div21 = lshr i64 %mul20, 8
  %conv22 = trunc i64 %div21 to i32
  %cmp23 = icmp sgt i32 %conv22, 32
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then19
  %div26 = udiv i64 8000, %dirty_ratelimit
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.then25, %if.end
  %pages.0 = phi i32 [ 32, %if.then25 ], [ %conv22, %if.then19 ], [ %conv16, %if.end ]
  %t.1 = phi i64 [ %div26, %if.then25 ], [ %max_pause, %if.then19 ], [ %cond, %if.end ]
  %mul29 = mul i32 %pages.0, 250
  %conv30 = sext i32 %mul29 to i64
  %add31 = add i64 %task_ratelimit, 1
  %div32 = udiv i64 %conv30, %add31
  %cmp33 = icmp sgt i64 %div32, %max_pause
  %mul36 = mul i64 %task_ratelimit, %max_pause
  %div37 = lshr i64 %mul36, 8
  %conv38 = trunc i64 %div37 to i32
  %pages.1 = select i1 %cmp33, i32 %conv38, i32 %pages.0
  %t.2 = select i1 %cmp33, i64 %max_pause, i64 %t.1
  store i32 %pages.1, i32* %nr_dirtied_pause, align 4
  %cmp40 = icmp sgt i32 %pages.1, 31
  br i1 %cmp40, label %cond.true42, label %cond.end46

cond.true42:                                      ; preds = %if.end28
  %div43 = sdiv i64 %t.2, 2
  %add44 = add nsw i64 %div43, 1
  br label %cond.end46

cond.end46:                                       ; preds = %if.end28, %cond.true42
  %cond47 = phi i64 [ %add44, %cond.true42 ], [ %t.2, %if.end28 ]
  ret i64 %cond47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @io_schedule_timeout(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #21
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #17 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #20, !range !33
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pos_ratio_polynom(i64 noundef %setpoint, i64 noundef %dirty, i64 noundef %limit) unnamed_addr #11 {
entry:
  %sub = sub i64 %setpoint, %dirty
  %shl = shl i64 %sub, 10
  %sub1 = sub i64 %limit, %setpoint
  %or = or i64 %sub1, 1
  %call = call fastcc i64 @div64_s64(i64 noundef %shl, i64 noundef %or) #21
  %mul = mul i64 %call, %call
  %shr = ashr i64 %mul, 10
  %mul2 = mul i64 %shr, %call
  %shr3 = ashr i64 %mul2, 10
  %0 = icmp sgt i64 %shr3, -1024
  %1 = select i1 %0, i64 %shr3, i64 -1024
  %2 = icmp slt i64 %1, 1024
  %3 = select i1 %2, i64 %1, i64 1024
  %cond9 = add nsw i64 %3, 1024
  ret i64 %cond9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_s64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #11 {
entry:
  %div = sdiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #21
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #10 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #21
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #21
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #21
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #11 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #17 {
entry:
  %tobool.not.i = icmp eq i32 %n, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #20, !range !34
  %narrow.i.op = sub nsw i32 31, %0
  %sub = select i1 %tobool.not.i, i32 -1, i32 %narrow.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @percpu_counter_sum_positive(%struct.percpu_counter* noundef %fbc) unnamed_addr #0 {
entry:
  %call = call i64 @__percpu_counter_sum(%struct.percpu_counter* noundef %fbc) #23
  %0 = icmp sgt i64 %call, 0
  %cond = select i1 %0, i64 %call, i64 0
  ret i64 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(%struct.percpu_counter* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @percpu_counter_read_positive(%struct.percpu_counter* noundef %fbc) unnamed_addr #4 {
entry:
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %0 = load volatile i64, i64* %count, align 8
  %1 = icmp sgt i64 %0, 0
  %. = select i1 %1, i64 %0, i64 0
  ret i64 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  call void @rcu_read_unlock_strict() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #21
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call fastcc void @arch_local_irq_enable() #21
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #20, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_not_node(%struct.xa_node* noundef %node) unnamed_addr #11 {
entry:
  %0 = ptrtoint %struct.xa_node* %node to i64
  %and = and i64 %0, 3
  %tobool = icmp ne i64 %and, 0
  %tobool1.not = icmp eq %struct.xa_node* %node, null
  %1 = or i1 %tobool1.not, %tobool
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @xas_find_chunk(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #7 {
entry:
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %0 = load i8, i8* %xa_offset, align 2
  %cmp = icmp ult i8 %0, 63
  br i1 %cmp, label %if.then3, label %cleanup9

if.then3:                                         ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %arraydecay = getelementptr inbounds %struct.xa_node, %struct.xa_node* %1, i64 0, i32 8, i32 0, i64 0, i64 0
  %conv = zext i8 %0 to i64
  %2 = load i64, i64* %arraydecay, align 8
  %shl = shl nsw i64 -2, %conv
  %and = and i64 %2, %shl
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %cleanup9, label %cleanup

cleanup:                                          ; preds = %if.then3
  %3 = call i64 @llvm.cttz.i64(i64 %and, i1 true) #20, !range !33
  %conv6 = trunc i64 %3 to i32
  br label %cleanup9

cleanup9:                                         ; preds = %if.then3, %entry, %cleanup
  %retval.1 = phi i32 [ %conv6, %cleanup ], [ 64, %entry ], [ 64, %if.then3 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_entry(%struct.xa_node* noundef %node, i32 noundef %offset) unnamed_addr #4 {
entry:
  %idxprom = zext i32 %offset to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 7, i64 %idxprom
  %0 = load volatile i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #18

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #21
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #23
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #20, !srcloc !40
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_count(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #10 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(%struct.pagevec* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_set_error(%struct.address_space* noundef %mapping, i32 noundef %error) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end11, label %if.end, !prof !12

if.end:                                           ; preds = %entry
  call void @__filemap_set_wb_err(%struct.address_space* noundef %mapping, i32 noundef %error) #23
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool4.not = icmp eq %struct.inode* %0, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 43
  %call = call i32 @errseq_set(i32* noundef %s_wb_err, i32 noundef %error) #23
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %cmp = icmp eq i32 %error, -28
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %. = zext i1 %cmp to i64
  call fastcc void @set_bit(i64 noundef %., i64* noundef %flags) #21
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(%struct.address_space* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(i32* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #20, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #21
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #23
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !43
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #23
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #20, !srcloc !44
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %idx, i32 noundef %val) unnamed_addr #0 {
entry:
  %conv = sext i32 %val to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %idx, i64 noundef %conv) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__add_wb_stat(%struct.bdi_writeback* noundef %wb, i32 noundef %item, i64 noundef %amount) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call = call fastcc i32 @__ilog2_u32(i32 noundef %0) #25
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 %idxprom
  %add = shl i32 %call, 3
  %mul = add i32 %add, 8
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef %arrayidx, i64 noundef %amount, i32 noundef %mul) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #23
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #23
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__inc_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #0 {
entry:
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inc_zone_page_state(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inc_node_page_state(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #0 {
entry:
  call void @__mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 20, i64 noundef 1) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #21
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #20, !srcloc !46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #23
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #20, !srcloc !47
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_marked(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #10 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, 67108864
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef 50) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #19

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nounwind }
attributes #21 = { nobuiltin "no-builtins" }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin nounwind "no-builtins" }
attributes #24 = { nounwind readonly }
attributes #25 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{i64 1255557}
!9 = !{!"auto-init"}
!10 = !{i64 2149001131, i64 2149001178, i64 2149001184, i64 2149001221, i64 2149001239, i64 2149006611, i64 2149006659, i64 2149006707, i64 2149006770, i64 2149006819, i64 2149001317, i64 2149001342, i64 2149001368, i64 2149001374, i64 2149006277, i64 2149006317, i64 2149006335, i64 2149006367, i64 2149006395, i64 2149006449, i64 2149006469, i64 2149006566, i64 2149001397, i64 2149001411, i64 2149001417, i64 2149001467, i64 2149001513, i64 2149001546}
!11 = !{i64 2155911725}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155915241}
!14 = !{i64 2149017437, i64 2149017484, i64 2149017490, i64 2149017527, i64 2149017545, i64 2149018472, i64 2149018520, i64 2149018568, i64 2149018631, i64 2149018680, i64 2149017623, i64 2149017648, i64 2149017674, i64 2149017680, i64 2149017717, i64 2149017723, i64 2149017773, i64 2149017819, i64 2149017852}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2155956259}
!17 = !{i64 2155959064}
!18 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!19 = !{i64 2155971265}
!20 = !{i64 2155978478}
!21 = !{i64 2149429291}
!22 = !{i64 2150826873}
!23 = !{i64 2148995118, i64 2148995165, i64 2148995171, i64 2148995208, i64 2148995226, i64 2148996537, i64 2148996585, i64 2148996633, i64 2148996696, i64 2148996745, i64 2148995304, i64 2148995329, i64 2148995355, i64 2148995361, i64 2148996203, i64 2148996243, i64 2148996261, i64 2148996293, i64 2148996321, i64 2148996375, i64 2148996395, i64 2148996492, i64 2148995384, i64 2148995398, i64 2148995404, i64 2148995454, i64 2148995500, i64 2148995533}
!24 = !{i64 2148997297, i64 2148997344, i64 2148997350, i64 2148997387, i64 2148997405, i64 2148998348, i64 2148998396, i64 2148998444, i64 2148998507, i64 2148998556, i64 2148997483, i64 2148997508, i64 2148997534, i64 2148997540, i64 2148997577, i64 2148997583, i64 2148997633, i64 2148997679, i64 2148997712}
!25 = !{i64 2148989415, i64 2148989462, i64 2148989468, i64 2148989505, i64 2148989523, i64 2148990864, i64 2148990912, i64 2148990960, i64 2148991023, i64 2148991072, i64 2148989601, i64 2148989626, i64 2148989652, i64 2148989658, i64 2148990530, i64 2148990570, i64 2148990588, i64 2148990620, i64 2148990648, i64 2148990702, i64 2148990722, i64 2148990819, i64 2148989681, i64 2148989695, i64 2148989701, i64 2148989751, i64 2148989797, i64 2148989830}
!26 = !{i64 2149092798}
!27 = !{i64 2147904038, i64 2147904071, i64 2147904124, i64 2147904183, i64 2147904217, i64 2147904272, i64 2147904301, i64 2147904321}
!28 = !{i64 2149243803}
!29 = !{i64 2155796940}
!30 = !{i64 2149444292}
!31 = !{i64 2147849710, i64 2147850358, i64 2147850388, i64 2147850419, i64 2147850451, i64 2147850486, i64 2147850511}
!32 = !{i64 2149451573}
!33 = !{i64 0, i64 65}
!34 = !{i32 0, i32 33}
!35 = !{i64 2149854169}
!36 = !{i64 2149854386}
!37 = !{i64 2149433584}
!38 = !{i64 2149458437}
!39 = !{i64 2148979959, i64 2148980006, i64 2148980012, i64 2148980049, i64 2148980067, i64 2148981407, i64 2148981455, i64 2148981503, i64 2148981566, i64 2148981615, i64 2148980145, i64 2148980170, i64 2148980196, i64 2148980202, i64 2148981073, i64 2148981113, i64 2148981131, i64 2148981163, i64 2148981191, i64 2148981245, i64 2148981265, i64 2148981362, i64 2148980225, i64 2148980239, i64 2148980245, i64 2148980295, i64 2148980341, i64 2148980374}
!40 = !{i64 2147880144, i64 2147880814, i64 2147880844, i64 2147880876, i64 2147880908, i64 2147880942, i64 2147880967}
!41 = !{i64 2147877256, i64 2147877767, i64 2147877797, i64 2147877823, i64 2147877855, i64 2147877884}
!42 = !{i64 2147808176, i64 2147808692, i64 2147808722, i64 2147808749, i64 2147808783, i64 2147808813}
!43 = !{i64 2147818749, i64 2147819397, i64 2147819427, i64 2147819459, i64 2147819493, i64 2147819529, i64 2147819554}
!44 = !{i64 2147878102, i64 2147878754, i64 2147878784, i64 2147878815, i64 2147878847, i64 2147878882, i64 2147878907}
!45 = !{i64 2149455134}
!46 = !{i64 2147887826, i64 2147888347, i64 2147888377, i64 2147888403, i64 2147888435, i64 2147888464}
!47 = !{i64 2147888679, i64 2147889341, i64 2147889371, i64 2147889402, i64 2147889434, i64 2147889469, i64 2147889494}
!48 = !{i64 2147817897, i64 2147818413, i64 2147818443, i64 2147818470, i64 2147818504, i64 2147818534}
