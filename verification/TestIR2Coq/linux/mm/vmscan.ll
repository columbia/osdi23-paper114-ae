; ModuleID = 'mm/vmscan.c'
source_filename = "mm/vmscan.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_vmscan__482_4474_kswapd_init6:\09\09\09"
module asm ".long\09kswapd_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.cpumask = type { [4 x i64] }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.17, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.17 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.16, i32 }
%union.anon.16 = type { %struct.kuid_t }
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
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.18, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.18 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.9, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.19, %union.anon.20, %union.anon.21, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.26, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.19 = type { %struct.hlist_node }
%union.anon.20 = type { %struct.rb_node }
%union.anon.21 = type { %struct.anon.25 }
%struct.anon.25 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.26 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
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
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.74, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
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
%struct.mm_struct = type { %struct.anon.5, [0 x i64] }
%struct.anon.5 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.6, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.6 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.7, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.8, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.7 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.8 = type { %struct.pte_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.61 }
%struct.anon.61 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.65 }
%struct.anon.65 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.73, i32, [12 x i8] }
%union.anon.73 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.74 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.75, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.75 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [48 x i8] }
%struct.anon.28 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.29, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.31, %struct.list_head, %struct.list_head, %union.anon.32 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.33 }
%union.anon.33 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.34, %union.anon.35 }
%union.anon.34 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.35 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.39 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.39 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
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
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.vm_event_state = type { [53 x i64] }
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
%struct.scan_control = type { i64, %struct.nodemask_t*, %struct.mem_cgroup*, i64, i64, i16, i8, i8, i8, i32, i64, i64, %struct.anon.80, %struct.reclaim_state }
%struct.nodemask_t = type { [1 x i64] }
%struct.anon.80 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.reclaim_stat = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }
%struct.anon.49 = type { i64, i8, i8, %struct.atomic_t, i32 }

@vm_swappiness = dso_local local_unnamed_addr global i32 60, align 4
@shrinker_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @shrinker_rwsem to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @shrinker_rwsem to i8*), i64 24) to %struct.list_head*) } }, align 8
@shrinker_list = internal global %struct.list_head { %struct.list_head* @shrinker_list, %struct.list_head* @shrinker_list }, align 8
@isolate_lru_page._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.isolate_lru_page = private unnamed_addr constant [17 x i8] c"isolate_lru_page\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"trying to isolate tail page\00", align 1
@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"kswapd%d\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"\013vmscan: Failed to start kswapd on node %d\0A\00", align 1
@__UNIQUE_ID___addressable_kswapd_init483 = internal global i8* bitcast (i32 ()* @kswapd_init to i8*), section ".discard.addressable", align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@blockdev_superblock = external dso_local local_unnamed_addr global %struct.super_block*, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"\016vmscan: %s: orphaned page\0A\00", align 1
@__func__.pageout = private unnamed_addr constant [8 x i8] c"pageout\00", align 1
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@compound_page_dtors = external dso_local local_unnamed_addr constant [2 x void (%struct.page*)*], align 8
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@buffer_heads_over_limit = external dso_local local_unnamed_addr global i32, align 4
@vm_zone_stat = external dso_local global [10 x %struct.atomic64_t], align 8
@vm_node_stat = external dso_local global [38 x %struct.atomic64_t], align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_kswapd_init483 to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i64 @zone_reclaimable_pages(%struct.zone* noundef %zone) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @zone_page_state_snapshot(%struct.zone* noundef %zone, i32 noundef 3) #17
  %call1 = call fastcc i64 @zone_page_state_snapshot(%struct.zone* noundef %zone, i32 noundef 4) #17
  %add = add i64 %call1, %call
  ret i64 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @zone_page_state_snapshot(%struct.zone* noundef %zone, i32 noundef %item) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 26, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %call120 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #18
  %cmp21 = icmp ult i32 %call120, %1
  br i1 %cmp21, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %2 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %3 = ptrtoint %struct.per_cpu_zonestat* %2 to i64
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call123 = phi i32 [ %call120, %do.body.lr.ph ], [ %call1, %do.body ]
  %x.022 = phi i64 [ %0, %do.body.lr.ph ], [ %add7, %do.body ]
  %idxprom3 = sext i32 %call123 to i64
  %arrayidx4 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom3
  %4 = load i64, i64* %arrayidx4, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to %struct.per_cpu_zonestat*
  %arrayidx6 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %5, i64 0, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %6 to i64
  %add7 = add i64 %x.022, %conv
  %call1 = call i32 @cpumask_next(i32 noundef %call123, %struct.cpumask* noundef nonnull @__cpu_online_mask) #18
  %cmp = icmp ult i32 %call1, %1
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %x.0.lcssa = phi i64 [ %0, %entry ], [ %add7, %do.body ]
  %7 = icmp sgt i64 %x.0.lcssa, 0
  %spec.store.select = select i1 %7, i64 %x.0.lcssa, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @prealloc_shrinker(%struct.shrinker* nocapture noundef %shrinker) local_unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %0, -5
  store i32 %and3, i32* %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %call10 = call fastcc i8* @kzalloc() #17
  %nr_deferred = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 6
  %1 = bitcast %struct.atomic64_t** %nr_deferred to i8**
  store i8* %call10, i8** %1, align 8
  %tobool12.not = icmp eq i8* %call10, null
  %retval.0 = select i1 %tobool12.not, i32 -12, i32 0
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #2 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #19
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_prealloced_shrinker(%struct.shrinker* nocapture noundef %shrinker) local_unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @down_write(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  call void @up_write(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  br label %return

if.end:                                           ; preds = %entry
  %nr_deferred = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 6
  %1 = bitcast %struct.atomic64_t** %nr_deferred to i8**
  %2 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %2) #19
  store %struct.atomic64_t* null, %struct.atomic64_t** %nr_deferred, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_shrinker_prepared(%struct.shrinker* noundef %shrinker) local_unnamed_addr #2 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  %list = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 5
  call fastcc void @list_add_tail(%struct.list_head* noundef %list) #17
  %flags = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %or = or i32 %0, 1
  store i32 %or, i32* %flags, align 4
  call void @up_write(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #4 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @shrinker_list, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef nonnull @shrinker_list) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_shrinker(%struct.shrinker* noundef %shrinker) local_unnamed_addr #2 {
entry:
  %call = call i32 @prealloc_shrinker(%struct.shrinker* noundef %shrinker) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @register_shrinker_prepared(%struct.shrinker* noundef %shrinker) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_shrinker(%struct.shrinker* nocapture noundef %shrinker) local_unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @down_write(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  %list = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 5
  call fastcc void @list_del(%struct.list_head* noundef %list) #17
  %1 = load i32, i32* %flags, align 4
  %and2 = and i32 %1, -2
  store i32 %and2, i32* %flags, align 4
  call void @up_write(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  %nr_deferred = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 6
  %2 = bitcast %struct.atomic64_t** %nr_deferred to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #19
  store %struct.atomic64_t* null, %struct.atomic64_t** %nr_deferred, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drop_slab_node(i32 noundef %nid) local_unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br label %do.body

do.body:                                          ; preds = %do.cond6, %entry
  %shift.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond6 ]
  %call1 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.cond6, label %cleanup9

do.cond6:                                         ; preds = %do.body
  %call4 = call fastcc i64 @shrink_slab(i32 noundef 3264, i32 noundef %nid, i32 noundef 0) #17
  %inc = add i32 %shift.0, 1
  %sh_prom = zext i32 %shift.0 to i64
  %shr = lshr i64 %call4, %sh_prom
  %cmp7 = icmp ugt i64 %shr, 1
  br i1 %cmp7, label %do.body, label %cleanup9

cleanup9:                                         ; preds = %do.body, %do.cond6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #17
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @shrink_slab(i32 noundef %gfp_mask, i32 noundef %nid, i32 noundef %priority) unnamed_addr #2 {
entry:
  %sc = alloca %struct.shrink_control, align 8
  %call3 = call i32 @down_read_trylock(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %out, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %.pn4 = load i8*, i8** bitcast (%struct.list_head* @shrinker_list to i8**), align 8
  %cmp.not5 = icmp eq i8* %.pn4, bitcast (%struct.list_head* @shrinker_list to i8*)
  br i1 %cmp.not5, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = bitcast %struct.shrink_control* %sc to i8*
  %gfp_mask6 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 0
  %nid7 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 1
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 2
  %nr_scanned = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 3
  %memcg8 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn7 = phi i8* [ %.pn4, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %freed.06 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.inc ]
  %shrinker.0.in = getelementptr i8, i8* %.pn7, i64 -32
  %shrinker.0 = bitcast i8* %shrinker.0.in to %struct.shrinker*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  store i32 %gfp_mask, i32* %gfp_mask6, align 8
  store i32 %nid, i32* %nid7, align 4
  store i64 0, i64* %nr_to_scan, align 8
  store i64 0, i64* %nr_scanned, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %memcg8, align 8
  %call9 = call fastcc i64 @do_shrink_slab(%struct.shrink_control* noundef nonnull %sc, %struct.shrinker* noundef %shrinker.0, i32 noundef %priority) #17
  %cmp10 = icmp eq i64 %call9, -2
  %spec.store.select = select i1 %cmp10, i64 0, i64 %call9
  %add = add i64 %spec.store.select, %freed.06
  %call13 = call fastcc i32 @rwsem_is_contended() #17
  %tobool14.not = icmp eq i32 %call13, 0
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  br i1 %tobool14.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body
  %1 = bitcast i8* %.pn7 to i8**
  %.pn = load i8*, i8** %1, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @shrinker_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end.split.loop.exit:                          ; preds = %for.body
  %tobool16.not.le = icmp eq i64 %add, 0
  %..le = select i1 %tobool16.not.le, i64 1, i64 %add
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %for.end.split.loop.exit
  %freed.2 = phi i64 [ %..le, %for.end.split.loop.exit ], [ 0, %for.cond.preheader ], [ %add, %for.inc ]
  call void @up_read(%struct.rw_semaphore* noundef nonnull @shrinker_rwsem) #19
  br label %out

out:                                              ; preds = %entry, %for.end
  %freed.3 = phi i64 [ %freed.2, %for.end ], [ 0, %entry ]
  call fastcc void @_cond_resched() #17
  ret i64 %freed.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drop_slab() local_unnamed_addr #2 {
entry:
  call void @drop_slab_node(i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remove_mapping(%struct.address_space* noundef %mapping, %struct.page* noundef %page) local_unnamed_addr #2 {
entry:
  %call = call fastcc i32 @__remove_mapping(%struct.address_space* noundef %mapping, %struct.page* noundef %page, i1 noundef false, %struct.mem_cgroup* noundef null) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @page_ref_unfreeze(%struct.page* noundef %page, i32 noundef 1) #17
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__remove_mapping(%struct.address_space* noundef %mapping, %struct.page* noundef %page, i1 noundef %reclaimed, %struct.mem_cgroup* noundef %target_memcg) unnamed_addr #2 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i124 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i124, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmscan.c\22; .popsection; .long 14472b - 14470b; .short 1105; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !10
  unreachable

do.body10:                                        ; preds = %entry
  %call11 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #19
  %cmp.not = icmp eq %struct.address_space* %call11, %mapping
  br i1 %cmp.not, label %do.end29, label %do.body21, !prof !11

do.body21:                                        ; preds = %do.body10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmscan.c\22; .popsection; .long 14472b - 14470b; .short 1106; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !12
  unreachable

do.end29:                                         ; preds = %do.body10
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call30 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #17
  %2 = trunc i64 %call30 to i32
  %conv31 = add i32 %2, 1
  %call32 = call fastcc i32 @page_ref_freeze(%struct.page* noundef %page, i32 noundef %conv31) #17
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cannot_free, label %if.end35

if.end35:                                         ; preds = %do.end29
  %call.i119 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %3 = inttoptr i64 %call.i119 to %struct.page*
  %flags.i120 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i120, align 8
  %5 = and i64 %4, 8
  %tobool37.not = icmp eq i64 %5, 0
  br i1 %tobool37.not, label %if.end46, label %if.then45, !prof !11

if.then45:                                        ; preds = %if.end35
  call fastcc void @page_ref_unfreeze(%struct.page* noundef %page, i32 noundef %conv31) #17
  br label %cannot_free

if.end46:                                         ; preds = %if.end35
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %6 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %freepage61 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %6, i64 0, i32 11
  %7 = load void (%struct.page*)*, void (%struct.page*)** %freepage61, align 8
  br i1 %reclaimed, label %land.lhs.true64, label %if.end74

land.lhs.true64:                                  ; preds = %if.end46
  %call65 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #17
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end74, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %call68 = call fastcc i32 @mapping_exiting(%struct.address_space* noundef %mapping) #17
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %if.end74

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %call73 = call i8* @workingset_eviction(%struct.page* noundef %page, %struct.mem_cgroup* noundef %target_memcg) #19
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true70, %land.lhs.true67, %land.lhs.true64, %if.end46
  %shadow.1 = phi i8* [ null, %land.lhs.true67 ], [ %call73, %land.lhs.true70 ], [ null, %land.lhs.true64 ], [ null, %if.end46 ]
  call void @__delete_from_page_cache(%struct.page* noundef %page, i8* noundef %shadow.1) #19
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %cmp77.not = icmp eq void (%struct.page*)* %7, null
  br i1 %cmp77.not, label %cleanup, label %if.then79

if.then79:                                        ; preds = %if.end74
  call void %7(%struct.page* noundef %page) #19
  br label %cleanup

cannot_free:                                      ; preds = %do.end29, %if.then45
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end74, %cannot_free
  %retval.0 = phi i32 [ 0, %cannot_free ], [ 1, %if.end74 ], [ 1, %if.then79 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_unfreeze(%struct.page* noundef %page, i32 noundef %count) unnamed_addr #2 {
entry:
  %counter.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %counter.i.i, i32 %count) #21, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @putback_lru_page(%struct.page* noundef %page) local_unnamed_addr #2 {
entry:
  call void @lru_cache_add(%struct.page* noundef %page) #19
  call fastcc void @put_page(%struct.page* noundef %page) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #19
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @reclaim_clean_pages_from_list(%struct.zone* nocapture noundef readonly %zone, %struct.list_head* noundef %page_list) local_unnamed_addr #2 {
entry:
  %sc = alloca %struct.scan_control, align 8
  %stat = alloca %struct.reclaim_stat, align 4
  %clean_pages = alloca %struct.list_head, align 8
  %0 = bitcast %struct.scan_control* %sc to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  %1 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %2 = bitcast i16* %1 to i8*
  store i8 32, i8* %2, align 8
  %3 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  store i32 3264, i32* %3, align 8
  %4 = bitcast %struct.reclaim_stat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %4) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false), !annotation !14
  %5 = bitcast %struct.list_head* %clean_pages to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #21
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %clean_pages, i64 0, i32 0
  store %struct.list_head* %clean_pages, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %clean_pages, i64 0, i32 1
  store %struct.list_head* %clean_pages, %struct.list_head** %prev, align 8
  %6 = bitcast %struct.list_head* %page_list to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.list_head*
  %cmp.not72 = icmp eq %struct.list_head* %8, %page_list
  br i1 %cmp.not72, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %9 = phi %struct.list_head* [ %20, %for.inc ], [ %8, %entry ]
  %.pn.in.in73 = phi i8* [ %.pn75, %for.inc ], [ %7, %entry ]
  %page.074.in = getelementptr i8, i8* %.pn.in.in73, i64 -8
  %page.074 = bitcast i8* %page.074.in to %struct.page*
  %.pn75.in = bitcast i8* %.pn.in.in73 to i8**
  %.pn75 = load i8*, i8** %.pn75.in, align 8
  %call11 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page.074) #17
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %for.body
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page.074) #19
  %10 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 0
  %11 = load volatile i64, i64* %flags.i, align 8
  %12 = and i64 %11, 8
  %tobool15.not = icmp eq i64 %12, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %mapping.i = getelementptr i8, i8* %.pn.in.in73, i64 16
  %13 = bitcast i8* %mapping.i to %struct.address_space**
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  %15 = ptrtoint %struct.address_space* %14 to i64
  %and.i = and i64 %15, 3
  %cmp.i.not = icmp eq i64 %and.i, 2
  br i1 %cmp.i.not, label %for.inc, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call.i63 = call fastcc i64 @_compound_head(%struct.page* noundef %page.074) #19
  %16 = inttoptr i64 %call.i63 to %struct.page*
  %flags.i64 = getelementptr inbounds %struct.page, %struct.page* %16, i64 0, i32 0
  %17 = load volatile i64, i64* %flags.i64, align 8
  %18 = and i64 %17, 1048576
  %tobool21.not = icmp eq i64 %18, 0
  br i1 %tobool21.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true19
  %call.i66 = call fastcc i64 @_compound_head(%struct.page* noundef %page.074) #19
  %19 = inttoptr i64 %call.i66 to %struct.page*
  %flags.i67 = getelementptr inbounds %struct.page, %struct.page* %19, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i67) #19
  call fastcc void @list_move(%struct.list_head* noundef %9, %struct.list_head* noundef nonnull %clean_pages) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true13, %land.lhs.true16, %land.lhs.true19, %if.then
  %20 = bitcast i8* %.pn75 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %20, %page_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %call31 = call fastcc i32 @memalloc_noreclaim_save() #17
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %21 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %call32 = call fastcc i32 @shrink_page_list(%struct.list_head* noundef nonnull %clean_pages, %struct.pglist_data* noundef %21, %struct.scan_control* noundef nonnull %sc, %struct.reclaim_stat* noundef nonnull %stat, i1 noundef true) #17
  call fastcc void @memalloc_noreclaim_restore(i32 noundef %call31) #17
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %clean_pages, %struct.list_head* noundef %page_list) #17
  %22 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %conv = zext i32 %call32 to i64
  %sub = sub nsw i64 0, %conv
  call void @mod_node_page_state(%struct.pglist_data* noundef %22, i32 noundef 8, i64 noundef %sub) #19
  %23 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %nr_lazyfree_fail = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 9
  %24 = load i32, i32* %nr_lazyfree_fail, align 4
  %conv35 = zext i32 %24 to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef %23, i32 noundef 7, i64 noundef %conv35) #19
  %25 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %26 = load i32, i32* %nr_lazyfree_fail, align 4
  %conv38 = zext i32 %26 to i64
  %sub39 = sub nsw i64 0, %conv38
  call void @mod_node_page_state(%struct.pglist_data* noundef %25, i32 noundef 8, i64 noundef %sub39) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #21
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %4) #21
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #21
  ret i32 %call32
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_is_file_lru(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 19
  %4 = and i32 %3, 1
  %5 = xor i32 %4, 1
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #17
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memalloc_noreclaim_save() unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, 2048
  %or = or i32 %2, 2048
  store i32 %or, i32* %flags1, align 4
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shrink_page_list(%struct.list_head* noundef %page_list, %struct.pglist_data* noundef %pgdat, %struct.scan_control* nocapture noundef %sc, %struct.reclaim_stat* noundef %stat, i1 noundef %ignore_references) unnamed_addr #2 {
entry:
  %ret_pages = alloca %struct.list_head, align 8
  %free_pages = alloca %struct.list_head, align 8
  %demote_pages = alloca %struct.list_head, align 8
  %dirty = alloca i8, align 4
  %writeback = alloca i8, align 4
  %0 = bitcast %struct.list_head* %ret_pages to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %ret_pages, i64 0, i32 0
  store %struct.list_head* %ret_pages, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %ret_pages, i64 0, i32 1
  store %struct.list_head* %ret_pages, %struct.list_head** %prev, align 8
  %1 = bitcast %struct.list_head* %free_pages to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #21
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %free_pages, i64 0, i32 0
  store %struct.list_head* %free_pages, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %free_pages, i64 0, i32 1
  store %struct.list_head* %free_pages, %struct.list_head** %prev2, align 8
  %2 = bitcast %struct.list_head* %demote_pages to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #21
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %demote_pages, i64 0, i32 0
  store %struct.list_head* %demote_pages, %struct.list_head** %next3, align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %demote_pages, i64 0, i32 1
  store %struct.list_head* %demote_pages, %struct.list_head** %prev4, align 8
  %3 = bitcast %struct.reclaim_stat* %stat to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 44) #19
  call fastcc void @_cond_resched() #17
  %prev11 = getelementptr inbounds %struct.list_head, %struct.list_head* %page_list, i64 0, i32 1
  %4 = bitcast %struct.list_head** %prev11 to i8**
  %nr_scanned = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 10
  %may_unmap = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %gfp_mask = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  %nr_dirty = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 0
  %nr_unqueued_dirty = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 1
  %nr_congested = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 2
  %flags = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 17
  %nr_immediate = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 4
  %nr_writeback = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 3
  %nr_ref_keep = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 7
  %nr_pageout = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 5
  %target_mem_cgroup = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 2
  %nr_unmap_fail = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 8
  %nr_lazyfree_fail = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 9
  br label %retry

retry:                                            ; preds = %if.then370, %entry
  %nr_reclaimed.0 = phi i32 [ 0, %entry ], [ %nr_reclaimed.1.lcssa, %if.then370 ]
  %call8584 = call fastcc i32 @list_empty(%struct.list_head* noundef %page_list) #17
  %tobool.not585 = icmp eq i32 %call8584, 0
  br i1 %tobool.not585, label %while.body, label %while.end

while.body:                                       ; preds = %retry, %cleanup357
  %nr_reclaimed.1586 = phi i32 [ %nr_reclaimed.2, %cleanup357 ], [ %nr_reclaimed.0, %retry ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %dirty) #21
  store i8 0, i8* %dirty, align 4, !annotation !14
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %writeback) #21
  store i8 0, i8* %writeback, align 4, !annotation !14
  call fastcc void @_cond_resched() #17
  %5 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 -8
  %6 = bitcast i8* %add.ptr to %struct.page*
  %lru = bitcast i8* %5 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #17
  %call13 = call fastcc i32 @trylock_page(%struct.page* noundef %6) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %keep, label %if.end

if.end:                                           ; preds = %while.body
  %call15 = call fastcc i64 @compound_nr(%struct.page* noundef %6) #17
  %conv = trunc i64 %call15 to i32
  %conv16 = and i64 %call15, 4294967295
  %7 = load i64, i64* %nr_scanned, align 8
  %add = add i64 %7, %conv16
  store i64 %add, i64* %nr_scanned, align 8
  %call17 = call fastcc i1 @page_evictable(%struct.page* noundef %6) #17
  br i1 %call17, label %if.end24, label %activate_locked, !prof !11

if.end24:                                         ; preds = %if.end
  %bf.load = load i16, i16* %may_unmap, align 8
  %8 = and i16 %bf.load, 32
  %tobool25.not = icmp eq i16 %8, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end24
  %call26 = call i1 @page_mapped(%struct.page* noundef %6) #19
  br i1 %call26, label %keep_locked, label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.end24
  %9 = load i32, i32* %gfp_mask, align 8
  %and = and i32 %9, 128
  %tobool30.not = icmp eq i32 %and, 0
  call fastcc void @page_check_dirty_writeback(%struct.page* noundef %6, i8* noundef nonnull %dirty, i8* noundef nonnull %writeback) #17
  %10 = load i8, i8* %dirty, align 4, !range !15
  %tobool37.not = icmp eq i8 %10, 0
  %11 = load i8, i8* %writeback, align 4
  %tobool39.not = icmp eq i8 %11, 0
  %or.cond525 = select i1 %tobool37.not, i1 %tobool39.not, i1 false
  br i1 %or.cond525, label %if.end49, label %if.end42

if.end42:                                         ; preds = %if.end29
  %12 = load i32, i32* %nr_dirty, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %nr_dirty, align 4
  %tobool43.not = icmp ne i8 %10, 0
  %or.cond526 = select i1 %tobool43.not, i1 %tobool39.not, i1 false
  br i1 %or.cond526, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end42
  %13 = load i32, i32* %nr_unqueued_dirty, align 4
  %inc48 = add i32 %13, 1
  store i32 %inc48, i32* %nr_unqueued_dirty, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end29, %if.then47, %if.end42
  %call50 = call %struct.address_space* @page_mapping(%struct.page* noundef %6) #19
  %14 = load i8, i8* %dirty, align 4, !range !15
  %tobool51.not = icmp eq i8 %14, 0
  br i1 %tobool51.not, label %lor.lhs.false53, label %land.lhs.true56

lor.lhs.false53:                                  ; preds = %if.end49
  %15 = load i8, i8* %writeback, align 4, !range !15
  %tobool54 = icmp ne i8 %15, 0
  %tobool57 = icmp ne %struct.address_space* %call50, null
  %or.cond = select i1 %tobool54, i1 %tobool57, i1 false
  br i1 %or.cond, label %land.lhs.true58, label %lor.lhs.false61

land.lhs.true56:                                  ; preds = %if.end49
  %tobool57.old.not = icmp eq %struct.address_space* %call50, null
  br i1 %tobool57.old.not, label %lor.lhs.false61thread-pre-split, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %lor.lhs.false53, %land.lhs.true56
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call50, i64 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %host, align 8
  %call59 = call fastcc i32 @inode_write_congested(%struct.inode* noundef %16) #17
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %lor.lhs.false61thread-pre-split, label %if.then67

lor.lhs.false61thread-pre-split:                  ; preds = %land.lhs.true56, %land.lhs.true58
  %.pr = load i8, i8* %writeback, align 4
  br label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false61thread-pre-split, %lor.lhs.false53
  %17 = phi i8 [ %.pr, %lor.lhs.false61thread-pre-split ], [ %15, %lor.lhs.false53 ]
  %tobool62.not = icmp eq i8 %17, 0
  br i1 %tobool62.not, label %if.end69, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %lor.lhs.false61
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %18 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %18, i64 0, i32 0
  %19 = load volatile i64, i64* %flags.i, align 8
  %20 = and i64 %19, 262144
  %tobool66.not = icmp eq i64 %20, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %land.lhs.true64, %land.lhs.true58
  %21 = load i32, i32* %nr_congested, align 4
  %inc68 = add i32 %21, 1
  store i32 %inc68, i32* %nr_congested, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %land.lhs.true64, %lor.lhs.false61
  %call.i528 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %22 = inttoptr i64 %call.i528 to %struct.page*
  %flags.i529 = getelementptr inbounds %struct.page, %struct.page* %22, i64 0, i32 0
  %23 = load volatile i64, i64* %flags.i529, align 8
  %24 = and i64 %23, 32768
  %tobool71.not = icmp eq i64 %24, 0
  br i1 %tobool71.not, label %if.end94, label %if.then72

if.then72:                                        ; preds = %if.end69
  %call73 = call fastcc i32 @current_is_kswapd() #17
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.else, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %if.then72
  %call.i531 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %25 = inttoptr i64 %call.i531 to %struct.page*
  %flags.i532 = getelementptr inbounds %struct.page, %struct.page* %25, i64 0, i32 0
  %26 = load volatile i64, i64* %flags.i532, align 8
  %27 = and i64 %26, 262144
  %tobool77.not = icmp eq i64 %27, 0
  br i1 %tobool77.not, label %if.else, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true75
  %28 = load volatile i64, i64* %flags, align 8
  %29 = and i64 %28, 2
  %tobool80.not = icmp eq i64 %29, 0
  br i1 %tobool80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %land.lhs.true78
  %30 = load i32, i32* %nr_immediate, align 4
  %inc82 = add i32 %30, 1
  store i32 %inc82, i32* %nr_immediate, align 4
  br label %activate_locked

if.else:                                          ; preds = %land.lhs.true78, %land.lhs.true75, %if.then72
  %call.i534 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %31 = inttoptr i64 %call.i534 to %struct.page*
  %flags.i535 = getelementptr inbounds %struct.page, %struct.page* %31, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 18, i64* noundef %flags.i535) #19
  %32 = load i32, i32* %nr_writeback, align 4
  %inc91 = add i32 %32, 1
  store i32 %inc91, i32* %nr_writeback, align 4
  br label %activate_locked

if.end94:                                         ; preds = %if.end69
  br i1 %ignore_references, label %if.end112, label %if.end98

if.end98:                                         ; preds = %if.end94
  %call97 = call fastcc i32 @page_check_references(%struct.page* noundef %6, %struct.scan_control* noundef %sc) #17
  switch i32 %call97, label %if.end112 [
    i32 3, label %activate_locked
    i32 2, label %keep_locked.sink.split
  ]

if.end112:                                        ; preds = %if.end94, %if.end98
  %references.0580 = phi i32 [ %call97, %if.end98 ], [ 0, %if.end94 ]
  %call.i536 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %33 = inttoptr i64 %call.i536 to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %33, i64 0, i32 1, i32 0, i32 1
  %34 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %35 = ptrtoint %struct.address_space* %34 to i64
  %36 = and i64 %35, 1
  %tobool114.not = icmp eq i64 %36, 0
  br i1 %tobool114.not, label %if.else162, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %if.end112
  %call.i537 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %37 = inttoptr i64 %call.i537 to %struct.page*
  %flags.i538 = getelementptr inbounds %struct.page, %struct.page* %37, i64 0, i32 0
  %38 = load volatile i64, i64* %flags.i538, align 8
  %39 = and i64 %38, 524288
  %tobool117.not = icmp eq i64 %39, 0
  br i1 %tobool117.not, label %if.else162, label %if.then118

if.then118:                                       ; preds = %land.lhs.true115
  %40 = load i32, i32* %gfp_mask, align 8
  %and123 = and i32 %40, 64
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %keep_locked, label %if.end126

if.end126:                                        ; preds = %if.then118
  %call127 = call fastcc i1 @page_maybe_dma_pinned(%struct.page* noundef %6) #17
  br i1 %call127, label %keep_locked, label %if.end129

if.end129:                                        ; preds = %if.end126
  %cmp331 = icmp ugt i32 %conv, 1
  br i1 %cmp331, label %if.then333, label %activate_locked

if.else162:                                       ; preds = %land.lhs.true115, %if.end112
  %cmp = icmp ugt i32 %conv, 1
  br i1 %cmp, label %land.lhs.true180, label %if.end187

land.lhs.true180:                                 ; preds = %if.else162
  %sub = add i64 %call15, 4294967295
  %conv184 = and i64 %sub, 4294967295
  %41 = load i64, i64* %nr_scanned, align 8
  %sub186 = sub i64 %41, %conv184
  store i64 %sub186, i64* %nr_scanned, align 8
  br label %if.end187

if.end187:                                        ; preds = %land.lhs.true180, %if.else162
  %nr_pages.0 = phi i32 [ 1, %land.lhs.true180 ], [ %conv, %if.else162 ]
  %call188 = call i1 @page_mapped(%struct.page* noundef %6) #19
  br i1 %call188, label %if.then189, label %if.end217

if.then189:                                       ; preds = %if.end187
  %call.i540 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %42 = inttoptr i64 %call.i540 to %struct.page*
  %flags.i541 = getelementptr inbounds %struct.page, %struct.page* %42, i64 0, i32 0
  %43 = load volatile i64, i64* %flags.i541, align 8
  call void @try_to_unmap(%struct.page* noundef %6, i32 noundef 64) #19
  %call205 = call i1 @page_mapped(%struct.page* noundef %6) #19
  br i1 %call205, label %if.then206, label %if.end217

if.then206:                                       ; preds = %if.then189
  %44 = and i64 %43, 524288
  %tobool192.not = icmp eq i64 %44, 0
  %45 = load i32, i32* %nr_unmap_fail, align 4
  %add207 = add i32 %45, %nr_pages.0
  store i32 %add207, i32* %nr_unmap_fail, align 4
  br i1 %tobool192.not, label %land.lhs.true209, label %activate_locked

land.lhs.true209:                                 ; preds = %if.then206
  %call.i543 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %46 = inttoptr i64 %call.i543 to %struct.page*
  %flags.i544 = getelementptr inbounds %struct.page, %struct.page* %46, i64 0, i32 0
  %47 = load volatile i64, i64* %flags.i544, align 8
  %48 = and i64 %47, 524288
  %tobool211.not = icmp eq i64 %48, 0
  br i1 %tobool211.not, label %activate_locked, label %if.then212

if.then212:                                       ; preds = %land.lhs.true209
  %49 = load i32, i32* %nr_lazyfree_fail, align 4
  %add213 = add i32 %49, %nr_pages.0
  store i32 %add213, i32* %nr_lazyfree_fail, align 4
  br label %activate_locked

if.end217:                                        ; preds = %if.then189, %if.end187
  %call.i546 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %50 = inttoptr i64 %call.i546 to %struct.page*
  %flags.i547 = getelementptr inbounds %struct.page, %struct.page* %50, i64 0, i32 0
  %51 = load volatile i64, i64* %flags.i547, align 8
  %52 = and i64 %51, 8
  %tobool219.not = icmp eq i64 %52, 0
  br i1 %tobool219.not, label %if.end277, label %if.then220

if.then220:                                       ; preds = %if.end217
  %call221 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %6) #17
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end234, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %if.then220
  %call224 = call fastcc i32 @current_is_kswapd() #17
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then233, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %land.lhs.true223
  %call.i549 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %53 = inttoptr i64 %call.i549 to %struct.page*
  %flags.i550 = getelementptr inbounds %struct.page, %struct.page* %53, i64 0, i32 0
  %54 = load volatile i64, i64* %flags.i550, align 8
  %55 = and i64 %54, 262144
  %tobool228.not = icmp eq i64 %55, 0
  br i1 %tobool228.not, label %if.then233, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %lor.lhs.false226
  %56 = load volatile i64, i64* %flags, align 8
  %conv.i552583 = and i64 %56, 1
  %tobool232.not = icmp eq i64 %conv.i552583, 0
  br i1 %tobool232.not, label %if.then233, label %if.end234

if.then233:                                       ; preds = %lor.lhs.false229, %lor.lhs.false226, %land.lhs.true223
  call void @inc_node_page_state(%struct.page* noundef %6, i32 noundef 30) #19
  %call.i553 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %57 = inttoptr i64 %call.i553 to %struct.page*
  %flags.i554 = getelementptr inbounds %struct.page, %struct.page* %57, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 18, i64* noundef %flags.i554) #19
  br label %activate_locked

if.end234:                                        ; preds = %lor.lhs.false229, %if.then220
  %cmp235 = icmp eq i32 %references.0580, 1
  %brmerge = select i1 %cmp235, i1 true, i1 %tobool30.not
  br i1 %brmerge, label %keep_locked, label %if.end241

if.end241:                                        ; preds = %if.end234
  %bf.load242 = load i16, i16* %may_unmap, align 8
  %58 = and i16 %bf.load242, 16
  %tobool246.not = icmp eq i16 %58, 0
  br i1 %tobool246.not, label %keep_locked, label %if.end248

if.end248:                                        ; preds = %if.end241
  %call249 = call fastcc i32 @pageout(%struct.page* noundef %6, %struct.address_space* noundef %call50) #17
  switch i32 %call249, label %if.end277 [
    i32 0, label %keep_locked
    i32 1, label %activate_locked
    i32 2, label %sw.bb252
  ]

sw.bb252:                                         ; preds = %if.end248
  %59 = load i32, i32* %nr_pageout, align 4
  %add254 = add i32 %59, 1
  store i32 %add254, i32* %nr_pageout, align 4
  %call.i555 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %60 = inttoptr i64 %call.i555 to %struct.page*
  %flags.i556 = getelementptr inbounds %struct.page, %struct.page* %60, i64 0, i32 0
  %61 = load volatile i64, i64* %flags.i556, align 8
  %62 = and i64 %61, 32768
  %tobool256.not = icmp eq i64 %62, 0
  br i1 %tobool256.not, label %if.end258, label %keep

if.end258:                                        ; preds = %sw.bb252
  %call.i558 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %63 = inttoptr i64 %call.i558 to %struct.page*
  %flags.i559 = getelementptr inbounds %struct.page, %struct.page* %63, i64 0, i32 0
  %64 = load volatile i64, i64* %flags.i559, align 8
  %65 = and i64 %64, 8
  %tobool260.not = icmp eq i64 %65, 0
  br i1 %tobool260.not, label %if.end262, label %keep

if.end262:                                        ; preds = %if.end258
  %call263 = call fastcc i32 @trylock_page(%struct.page* noundef %6) #17
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %keep, label %if.end266

if.end266:                                        ; preds = %if.end262
  %call.i561 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %66 = inttoptr i64 %call.i561 to %struct.page*
  %flags.i562 = getelementptr inbounds %struct.page, %struct.page* %66, i64 0, i32 0
  %67 = load volatile i64, i64* %flags.i562, align 8
  %68 = and i64 %67, 8
  %tobool268.not = icmp eq i64 %68, 0
  br i1 %tobool268.not, label %lor.lhs.false269, label %keep_locked

lor.lhs.false269:                                 ; preds = %if.end266
  %call.i564 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %69 = inttoptr i64 %call.i564 to %struct.page*
  %flags.i565 = getelementptr inbounds %struct.page, %struct.page* %69, i64 0, i32 0
  %70 = load volatile i64, i64* %flags.i565, align 8
  %71 = and i64 %70, 32768
  %tobool271.not = icmp eq i64 %71, 0
  br i1 %tobool271.not, label %if.end273, label %keep_locked

if.end273:                                        ; preds = %lor.lhs.false269
  %call274 = call %struct.address_space* @page_mapping(%struct.page* noundef %6) #19
  br label %if.end277

if.end277:                                        ; preds = %if.end248, %if.end273, %if.end217
  %mapping.1 = phi %struct.address_space* [ %call50, %if.end248 ], [ %call274, %if.end273 ], [ %call50, %if.end217 ]
  %call278 = call fastcc i32 @page_has_private(%struct.page* noundef %6) #17
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end298, label %if.then280

if.then280:                                       ; preds = %if.end277
  %72 = load i32, i32* %gfp_mask, align 8
  %call282 = call i32 @try_to_release_page(%struct.page* noundef %6, i32 noundef %72) #19
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %activate_locked, label %if.end285

if.end285:                                        ; preds = %if.then280
  %tobool286.not = icmp eq %struct.address_space* %mapping.1, null
  br i1 %tobool286.not, label %land.lhs.true287, label %if.end298

land.lhs.true287:                                 ; preds = %if.end285
  %call288 = call fastcc i32 @page_count(%struct.page* noundef %6) #17
  %cmp289 = icmp eq i32 %call288, 1
  br i1 %cmp289, label %if.then291, label %if.end298

if.then291:                                       ; preds = %land.lhs.true287
  call void @unlock_page(%struct.page* noundef %6) #19
  %call292 = call fastcc i32 @put_page_testzero(%struct.page* noundef %6) #17
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.else295, label %free_it

if.else295:                                       ; preds = %if.then291
  %inc296 = add i32 %nr_reclaimed.1586, 1
  br label %cleanup357

if.end298:                                        ; preds = %if.end285, %land.lhs.true287, %if.end277
  %call.i567 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %73 = inttoptr i64 %call.i567 to %struct.page*
  %mapping.i568 = getelementptr inbounds %struct.page, %struct.page* %73, i64 0, i32 1, i32 0, i32 1
  %74 = load %struct.address_space*, %struct.address_space** %mapping.i568, align 8
  %75 = ptrtoint %struct.address_space* %74 to i64
  %76 = and i64 %75, 1
  %tobool300.not = icmp eq i64 %76, 0
  br i1 %tobool300.not, label %if.else309, label %land.lhs.true301

land.lhs.true301:                                 ; preds = %if.end298
  %call.i569 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %77 = inttoptr i64 %call.i569 to %struct.page*
  %flags.i570 = getelementptr inbounds %struct.page, %struct.page* %77, i64 0, i32 0
  %78 = load volatile i64, i64* %flags.i570, align 8
  %79 = and i64 %78, 524288
  %tobool303.not = icmp eq i64 %79, 0
  br i1 %tobool303.not, label %if.then304, label %if.else309

if.then304:                                       ; preds = %land.lhs.true301
  %call305 = call fastcc i32 @page_ref_freeze(%struct.page* noundef %6, i32 noundef 1) #17
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %keep_locked, label %if.end308

if.end308:                                        ; preds = %if.then304
  call fastcc void @count_vm_event(i32 noundef 22) #17
  br label %if.end316

if.else309:                                       ; preds = %land.lhs.true301, %if.end298
  %tobool310.not = icmp eq %struct.address_space* %mapping.1, null
  br i1 %tobool310.not, label %keep_locked, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %if.else309
  %80 = load %struct.mem_cgroup*, %struct.mem_cgroup** %target_mem_cgroup, align 8
  %call312 = call fastcc i32 @__remove_mapping(%struct.address_space* noundef nonnull %mapping.1, %struct.page* noundef %6, i1 noundef true, %struct.mem_cgroup* noundef %80) #17
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %keep_locked, label %if.end316

if.end316:                                        ; preds = %lor.lhs.false311, %if.end308
  call void @unlock_page(%struct.page* noundef %6) #19
  br label %free_it

free_it:                                          ; preds = %if.then291, %if.end316
  %add317 = add i32 %nr_pages.0, %nr_reclaimed.1586
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %free_pages) #17
  br label %cleanup357

if.then333:                                       ; preds = %if.end129
  %sub334 = add i64 %call15, 4294967295
  %conv335 = and i64 %sub334, 4294967295
  %81 = load i64, i64* %nr_scanned, align 8
  %sub337 = sub i64 %81, %conv335
  store i64 %sub337, i64* %nr_scanned, align 8
  br label %activate_locked

activate_locked:                                  ; preds = %if.then206, %land.lhs.true209, %if.then212, %if.end129, %if.then333, %if.then280, %if.end248, %if.end98, %if.end, %if.then233, %if.else, %if.then81
  %nr_pages.1 = phi i32 [ %conv, %if.end ], [ %conv, %if.then81 ], [ %conv, %if.else ], [ %nr_pages.0, %if.then280 ], [ %nr_pages.0, %if.end248 ], [ %nr_pages.0, %if.then233 ], [ 1, %if.then333 ], [ %conv, %if.end129 ], [ %conv, %if.end98 ], [ %nr_pages.0, %if.then212 ], [ %nr_pages.0, %land.lhs.true209 ], [ %nr_pages.0, %if.then206 ]
  %call.i572 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %82 = inttoptr i64 %call.i572 to %struct.page*
  %flags.i573 = getelementptr inbounds %struct.page, %struct.page* %82, i64 0, i32 0
  %83 = load volatile i64, i64* %flags.i573, align 8
  %84 = and i64 %83, 2097152
  %tobool351.not = icmp eq i64 %84, 0
  br i1 %tobool351.not, label %if.then352, label %keep_locked

if.then352:                                       ; preds = %activate_locked
  %call353 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %6) #17
  %call.i575 = call fastcc i64 @_compound_head(%struct.page* noundef %6) #19
  %85 = inttoptr i64 %call.i575 to %struct.page*
  %flags.i576 = getelementptr inbounds %struct.page, %struct.page* %85, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %flags.i576) #19
  %86 = zext i32 %call353 to i64
  %arrayidx = getelementptr %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 6, i64 %86
  br label %keep_locked.sink.split

keep_locked.sink.split:                           ; preds = %if.end98, %if.then352
  %arrayidx.sink593 = phi i32* [ %arrayidx, %if.then352 ], [ %nr_ref_keep, %if.end98 ]
  %nr_pages.1.sink = phi i32 [ %nr_pages.1, %if.then352 ], [ %conv, %if.end98 ]
  %87 = load i32, i32* %arrayidx.sink593, align 4
  %add354 = add i32 %87, %nr_pages.1.sink
  store i32 %add354, i32* %arrayidx.sink593, align 4
  br label %keep_locked

keep_locked:                                      ; preds = %keep_locked.sink.split, %if.end234, %activate_locked, %if.else309, %lor.lhs.false311, %if.then304, %if.end266, %lor.lhs.false269, %if.end248, %if.end241, %if.end126, %if.then118, %land.lhs.true
  call void @unlock_page(%struct.page* noundef %6) #19
  br label %keep

keep:                                             ; preds = %if.end262, %if.end258, %sw.bb252, %while.body, %keep_locked
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %ret_pages) #17
  br label %cleanup357

cleanup357:                                       ; preds = %keep, %free_it, %if.else295
  %nr_reclaimed.2 = phi i32 [ %nr_reclaimed.1586, %keep ], [ %add317, %free_it ], [ %inc296, %if.else295 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %writeback) #21
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %dirty) #21
  %call8 = call fastcc i32 @list_empty(%struct.list_head* noundef %page_list) #17
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup357, %retry
  %nr_reclaimed.1.lcssa = phi i32 [ %nr_reclaimed.0, %retry ], [ %nr_reclaimed.2, %cleanup357 ]
  call fastcc void @demote_page_list(%struct.list_head* noundef nonnull %demote_pages, %struct.pglist_data* noundef %pgdat) #17
  %call368 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %demote_pages) #17
  %tobool369.not = icmp eq i32 %call368, 0
  br i1 %tobool369.not, label %if.then370, label %if.end371

if.then370:                                       ; preds = %while.end
  call fastcc void @list_splice_init(%struct.list_head* noundef nonnull %demote_pages, %struct.list_head* noundef %page_list) #17
  br label %retry

if.end371:                                        ; preds = %while.end
  %arrayidx373 = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 6, i64 0
  %88 = load i32, i32* %arrayidx373, align 4
  %arrayidx375 = getelementptr %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 6, i64 1
  %89 = load i32, i32* %arrayidx375, align 4
  %add376 = add i32 %89, %88
  call void @free_unref_page_list(%struct.list_head* noundef nonnull %free_pages) #19
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %ret_pages, %struct.list_head* noundef %page_list) #17
  %conv377 = zext i32 %add376 to i64
  call fastcc void @count_vm_events(i32 noundef 17, i64 noundef %conv377) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i32 %nr_reclaimed.1.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memalloc_noreclaim_restore(i32 noundef %flags) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, -2049
  %or = or i32 %and, %flags
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__isolate_lru_page_prepare(%struct.page* noundef %page, i32 noundef %mode) local_unnamed_addr #2 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 16
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call.i46 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %3 = inttoptr i64 %call.i46 to %struct.page*
  %flags.i47 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i47, align 8
  %5 = and i64 %4, 1048576
  %tobool2.not = icmp ne i64 %5, 0
  %and = and i32 %mode, 8
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool3.not, %tobool2.not
  br i1 %or.cond, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %mode, 4
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end28, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call.i49 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %6 = inttoptr i64 %call.i49 to %struct.page*
  %flags.i50 = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i50, align 8
  %8 = and i64 %7, 32768
  %tobool10.not = icmp eq i64 %8, 0
  br i1 %tobool10.not, label %if.end12, label %return

if.end12:                                         ; preds = %if.then8
  %call.i52 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %9 = inttoptr i64 %call.i52 to %struct.page*
  %flags.i53 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i53, align 8
  %11 = and i64 %10, 8
  %tobool14.not = icmp eq i64 %11, 0
  br i1 %tobool14.not, label %if.end28, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = call fastcc i32 @trylock_page(%struct.page* noundef %page) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %if.end19

if.end19:                                         ; preds = %if.then15
  %call20 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #19
  %tobool21.not = icmp eq %struct.address_space* %call20, null
  br i1 %tobool21.not, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %if.end19
  call void @unlock_page(%struct.page* noundef %page) #19
  br label %if.end28

lor.end:                                          ; preds = %if.end19
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %call20, i64 0, i32 9
  %12 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %migratepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %12, i64 0, i32 13
  %13 = load i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)** %migratepage, align 8
  %tobool22.not = icmp eq i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* %13, null
  call void @unlock_page(%struct.page* noundef %page) #19
  br i1 %tobool22.not, label %return, label %if.end28

if.end28:                                         ; preds = %lor.end.thread, %lor.end, %if.end12, %if.end5
  %and29 = and i32 %mode, 2
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end34, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %call32 = call i1 @page_mapped(%struct.page* noundef %page) #19
  br i1 %call32, label %return, label %if.end34

if.end34:                                         ; preds = %land.lhs.true31, %if.end28
  br label %return

return:                                           ; preds = %lor.end, %if.then15, %land.lhs.true31, %if.then8, %if.end, %entry, %if.end34
  %retval.1 = phi i1 [ true, %if.end34 ], [ false, %entry ], [ false, %if.end ], [ false, %if.then8 ], [ false, %land.lhs.true31 ], [ false, %if.then15 ], [ false, %lor.end ]
  ret i1 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #17
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @page_mapped(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @isolate_lru_page(%struct.page* noundef %page) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i = bitcast %union.anon.9* %0 to i64*
  %1 = load volatile i64, i64* %compound_head.i, align 8
  %conv.i58 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i58, 0
  br i1 %tobool.not, label %if.end37, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call3 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @isolate_lru_page._rs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.isolate_lru_page, i64 0, i64 0)) #19
  %tobool4.not59 = icmp eq i32 %call3, 0
  br i1 %tobool4.not59, label %if.end37, label %do.end, !prof !16

do.end:                                           ; preds = %land.rhs
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmscan.c\22; .popsection; .long 14472b - 14470b; .short 2096; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !17
  br label %if.end37

if.end37:                                         ; preds = %land.rhs, %entry, %do.end
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 4, i64* noundef %flags.i) #19
  br i1 %call1.i, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end37
  call fastcc void @get_page(%struct.page* noundef %page) #17
  call fastcc void @lock_page_lruvec_irq(%struct.page* noundef %page) #17
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #19
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %3 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i.i.i, align 8
  %5 = and i64 %4, 1048576
  %tobool.not.i.i = icmp eq i64 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then41
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #19
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %6 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i12.i.i, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 5
  %10 = and i32 %9, 1
  %11 = or i32 %10, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then41, %if.end.i.i
  %retval.0.i.i = phi i32 [ %11, %if.end.i.i ], [ 4, %if.then41 ]
  %call1.i57 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #19
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16)) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16), i32 noundef %retval.0.i.i, i32 noundef -1) #19
  %idxprom.i.i = zext i32 %call1.i57 to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #19
  call fastcc void @unlock_page_lruvec_irq(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16)) #17
  br label %if.end43

if.end43:                                         ; preds = %del_page_from_lru_list.exit, %if.end37
  %ret.0 = phi i32 [ 0, %del_page_from_lru_list.exit ], [ -16, %if.end37 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page_lruvec_irq(%struct.page* nocapture noundef readnone %page) unnamed_addr #2 {
entry:
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16, i32 1, i32 0, i32 0)) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_page_lruvec_irq(%struct.lruvec* noundef %lruvec) unnamed_addr #2 {
entry:
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @reclaim_pages(%struct.list_head* noundef %page_list) local_unnamed_addr #2 {
entry:
  %node_page_list = alloca %struct.list_head, align 8
  %dummy_stat = alloca %struct.reclaim_stat, align 4
  %sc = alloca %struct.scan_control, align 8
  %0 = bitcast %struct.list_head* %node_page_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node_page_list, i64 0, i32 0
  store %struct.list_head* %node_page_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node_page_list, i64 0, i32 1
  store %struct.list_head* %node_page_list, %struct.list_head** %prev, align 8
  %1 = bitcast %struct.reclaim_stat* %dummy_stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %1, i8 0, i64 44, i1 false), !annotation !14
  %2 = bitcast %struct.scan_control* %sc to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  %3 = bitcast %struct.scan_control* %sc to { i64, %struct.nodemask_t*, %struct.mem_cgroup*, i64, i64, i8, i8, i8, i8, i8, [3 x i8], i32, [4 x i8], i64, i64, %struct.anon.80, [4 x i8], %struct.reclaim_state }*
  %4 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %5 = bitcast i16* %4 to i8*
  store i8 112, i8* %5, align 8
  %6 = getelementptr inbounds { i64, %struct.nodemask_t*, %struct.mem_cgroup*, i64, i64, i8, i8, i8, i8, i8, [3 x i8], i32, [4 x i8], i64, i64, %struct.anon.80, [4 x i8], %struct.reclaim_state }, { i64, %struct.nodemask_t*, %struct.mem_cgroup*, i64, i64, i8, i8, i8, i8, i8, [3 x i8], i32, [4 x i8], i64, i64, %struct.anon.80, [4 x i8], %struct.reclaim_state }* %3, i64 0, i32 6
  store i8 32, i8* %6, align 1
  %7 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  store i32 3264, i32* %7, align 8
  %call = call fastcc i32 @memalloc_noreclaim_save() #17
  %call165 = call fastcc i32 @list_empty(%struct.list_head* noundef %page_list) #17
  %tobool.not66 = icmp eq i32 %call165, 0
  br i1 %tobool.not66, label %if.end.peel, label %while.end23

if.end.peel:                                      ; preds = %entry
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %page_list, i64 0, i32 1
  %8 = bitcast %struct.list_head** %prev2 to i8**
  %9 = load i8*, i8** %8, align 8
  %add.ptr.peel = getelementptr i8, i8* %9, i64 -8
  %10 = bitcast i8* %add.ptr.peel to %struct.page*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %node_page_list) #17
  %call.i.peel = call fastcc i64 @_compound_head(%struct.page* noundef %10) #19
  %11 = inttoptr i64 %call.i.peel to %struct.page*
  %flags.i.peel = getelementptr inbounds %struct.page, %struct.page* %11, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i.peel) #19
  %lru.peel = bitcast i8* %9 to %struct.list_head*
  call fastcc void @list_move(%struct.list_head* noundef %lru.peel, %struct.list_head* noundef nonnull %node_page_list) #17
  %call1.peel = call fastcc i32 @list_empty(%struct.list_head* noundef %page_list) #17
  %tobool.not.peel = icmp eq i32 %call1.peel, 0
  br i1 %tobool.not.peel, label %if.end, label %while.end23

if.end:                                           ; preds = %if.end.peel, %if.end
  %12 = load i8*, i8** %8, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 -8
  %13 = bitcast i8* %add.ptr to %struct.page*
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %13) #19
  %14 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %14, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i) #19
  %lru = bitcast i8* %12 to %struct.list_head*
  call fastcc void @list_move(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %node_page_list) #17
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %page_list) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %while.end23, !llvm.loop !18

while.end23:                                      ; preds = %if.end, %if.end.peel, %entry
  %call24 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %node_page_list) #17
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end44

if.then26:                                        ; preds = %while.end23
  %call28 = call fastcc i32 @shrink_page_list(%struct.list_head* noundef nonnull %node_page_list, %struct.pglist_data* noundef nonnull @contig_page_data, %struct.scan_control* noundef nonnull %sc, %struct.reclaim_stat* noundef nonnull %dummy_stat, i1 noundef false) #17
  %call3168 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %node_page_list) #17
  %tobool32.not69 = icmp eq i32 %call3168, 0
  br i1 %tobool32.not69, label %while.body34.lr.ph, label %if.end44

while.body34.lr.ph:                               ; preds = %if.then26
  %15 = bitcast %struct.list_head** %prev to i8**
  br label %while.body34

while.body34:                                     ; preds = %while.body34.lr.ph, %while.body34
  %16 = load i8*, i8** %15, align 8
  %add.ptr41 = getelementptr i8, i8* %16, i64 -8
  %17 = bitcast i8* %add.ptr41 to %struct.page*
  %lru42 = bitcast i8* %16 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru42) #17
  call void @putback_lru_page(%struct.page* noundef %17) #17
  %call31 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %node_page_list) #17
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.body34, label %if.end44

if.end44:                                         ; preds = %while.body34, %if.then26, %while.end23
  %nr_reclaimed.1 = phi i32 [ 0, %while.end23 ], [ %call28, %if.then26 ], [ %call28, %while.body34 ]
  call fastcc void @memalloc_noreclaim_restore(i32 noundef %call) #17
  %conv = zext i32 %nr_reclaimed.1 to i64
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #21
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @try_to_free_pages(%struct.zonelist* noundef %zonelist, i32 noundef %order, i32 noundef %gfp_mask, %struct.nodemask_t* noundef %nodemask) local_unnamed_addr #2 {
entry:
  %sc = alloca %struct.scan_control, align 8
  %0 = bitcast %struct.scan_control* %sc to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %2 = bitcast i16* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 64, i1 false), !annotation !14
  %nr_to_reclaim = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 0
  store i64 32, i64* %nr_to_reclaim, align 8
  %nodemask1 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 1
  store %struct.nodemask_t* %nodemask, %struct.nodemask_t** %nodemask1, align 8
  %target_mem_cgroup = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 2
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %target_mem_cgroup, align 8
  %anon_cost = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 3
  store i64 0, i64* %anon_cost, align 8
  %file_cost = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 4
  store i64 0, i64* %file_cost, align 8
  %may_deactivate = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %3 = load i32, i32* @laptop_mode, align 4
  %tobool.not = icmp eq i32 %3, 0
  %bf.set16 = select i1 %tobool.not, i16 112, i16 96
  store i16 %bf.set16, i16* %may_deactivate, align 8
  %order38 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 6
  %conv = trunc i32 %order to i8
  store i8 %conv, i8* %order38, align 2
  %priority = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 7
  store i8 12, i8* %priority, align 1
  %reclaim_idx = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  %call = call fastcc i32 @gfp_zone(i32 noundef %gfp_mask) #17
  %conv39 = trunc i32 %call to i8
  store i8 %conv39, i8* %reclaim_idx, align 4
  %gfp_mask40 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  %call41 = call fastcc i32 @current_gfp_context(i32 noundef %gfp_mask) #17
  store i32 %call41, i32* %gfp_mask40, align 8
  %nr_scanned = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 10
  store i64 0, i64* %nr_scanned, align 8
  %nr_reclaimed42 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 11
  store i64 0, i64* %nr_reclaimed42, align 8
  %nr = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12
  %4 = bitcast %struct.anon.80* %nr to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  %reclaim_state = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 13
  %5 = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %reclaim_state, i64 0, i32 0
  store i64 0, i64* %5, align 8
  %call50 = call fastcc i1 @throttle_direct_reclaim(i32 noundef %call41, %struct.zonelist* noundef %zonelist, %struct.nodemask_t* noundef %nodemask) #17
  br i1 %call50, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %7 = inttoptr i64 %6 to %struct.task_struct*
  call fastcc void @set_task_reclaim_state(%struct.task_struct* noundef %7, %struct.reclaim_state* noundef %reclaim_state) #17
  %call54 = call fastcc i64 @do_try_to_free_pages(%struct.zonelist* noundef %zonelist, %struct.scan_control* noundef nonnull %sc) #17
  call fastcc void @set_task_reclaim_state(%struct.task_struct* noundef %7, %struct.reclaim_state* noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call54, %if.end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @gfp_zone(i32 noundef %flags) unnamed_addr #7 {
entry:
  %and = shl i32 %flags, 1
  %mul = and i32 %and, 30
  %shr = lshr i32 20054306, %mul
  %and1 = and i32 %shr, 3
  ret i32 %and1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @current_gfp_context(i32 noundef %flags) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load volatile i32, i32* %flags1, align 4
  %and = and i32 %2, 269221888
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %and4 = and i32 %2, 524288
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %and7 = and i32 %flags, -193
  br label %if.end12

if.else:                                          ; preds = %if.then
  %and8 = and i32 %2, 262144
  %tobool9.not = icmp eq i32 %and8, 0
  %and11 = and i32 %flags, -129
  %spec.select = select i1 %tobool9.not, i32 %flags, i32 %and11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  %flags.addr.0 = phi i32 [ %and7, %if.then6 ], [ %spec.select, %if.else ]
  %and13 = and i32 %2, 268435456
  %tobool14.not = icmp eq i32 %and13, 0
  %and16 = and i32 %flags.addr.0, -9
  %spec.select26 = select i1 %tobool14.not, i32 %flags.addr.0, i32 %and16
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %entry
  %flags.addr.1 = phi i32 [ %flags, %entry ], [ %spec.select26, %if.end12 ]
  ret i32 %flags.addr.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @throttle_direct_reclaim(i32 noundef %gfp_mask, %struct.zonelist* noundef %zonelist, %struct.nodemask_t* noundef %nodemask) unnamed_addr #2 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__wq_entry76 = alloca %struct.wait_queue_entry, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %out

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @gfp_zone(i32 noundef %gfp_mask) #17, !range !20
  %call7 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %zonelist, i32 noundef %call6, %struct.nodemask_t* noundef %nodemask) #17
  %call8 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call7) #17
  %tobool9.not158 = icmp eq %struct.zone* %call8, null
  br i1 %tobool9.not158, label %out, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %tobool.not.i = icmp eq %struct.nodemask_t* %nodemask, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %next_zones_zonelist.exit
  %z.0160 = phi %struct.zoneref* [ %call7, %for.body.lr.ph ], [ %retval.0.i, %next_zones_zonelist.exit ]
  %zone.0159 = phi %struct.zone* [ %call8, %for.body.lr.ph ], [ %call18, %next_zones_zonelist.exit ]
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.0159, i64 0, i32 4
  %3 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zone* %zone.0159 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.pglist_data* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 2432
  br i1 %cmp, label %for.inc, label %if.end11

if.end11:                                         ; preds = %for.body
  %zone_pgdat.le = getelementptr inbounds %struct.zone, %struct.zone* %zone.0159, i64 0, i32 4
  %call13 = call fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef %3) #17
  %call13.not = xor i1 %call13, true
  %tobool19 = icmp ne %struct.pglist_data* %3, null
  %or.cond109 = select i1 %call13.not, i1 %tobool19, i1 false
  br i1 %or.cond109, label %if.end21, label %out

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.0160, i64 1
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !11

land.rhs.i:                                       ; preds = %for.inc
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #19
  %cmp.not.i = icmp ugt i32 %call.i, %call6
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %call6, %struct.nodemask_t* noundef %nodemask) #19
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call18 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #17
  %tobool9.not = icmp eq %struct.zone* %call18, null
  br i1 %tobool9.not, label %out, label %for.body

if.end21:                                         ; preds = %if.end11
  call fastcc void @count_vm_event(i32 noundef 31) #17
  %and22 = and i32 %gfp_mask, 128
  %tobool23.not = icmp eq i32 %and22, 0
  %call28 = call fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef nonnull %3) #17
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  br i1 %call28, label %if.end99, label %if.then36

if.then36:                                        ; preds = %if.then24
  %4 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !14
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #19
  %pfmemalloc_wait = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %3, i64 0, i32 8
  %call39165 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %pfmemalloc_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #19
  %call41166 = call fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef nonnull %3) #17
  br i1 %call41166, label %for.end62, label %if.end57

if.end57:                                         ; preds = %if.then36, %cleanup
  %spec.store.select110169 = phi i64 [ %spec.store.select110, %cleanup ], [ 250, %if.then36 ]
  %call39168 = phi i64 [ %call39, %cleanup ], [ %call39165, %if.then36 ]
  %tobool58.not = icmp eq i64 %call39168, 0
  br i1 %tobool58.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end57
  %call61 = call i64 @schedule_timeout(i64 noundef %spec.store.select110169) #19
  %call39 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %pfmemalloc_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #19
  %call41 = call fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef nonnull %3) #17
  %tobool43.not = xor i1 %call41, true
  %tobool45 = icmp ne i64 %call61, 0
  %or.cond108 = select i1 %tobool43.not, i1 true, i1 %tobool45
  %spec.store.select110 = select i1 %or.cond108, i64 %call61, i64 1
  %tobool51.not = icmp eq i64 %spec.store.select110, 0
  %5 = select i1 %call41, i1 true, i1 %tobool51.not
  br i1 %5, label %for.end62, label %if.end57

for.end62:                                        ; preds = %cleanup, %if.then36
  call void @finish_wait(%struct.wait_queue_head* noundef %pfmemalloc_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #19
  br label %__out

__out:                                            ; preds = %if.end57, %for.end62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #21
  br label %if.end99

if.else:                                          ; preds = %if.end21
  br i1 %call28, label %if.end99, label %if.then75

if.then75:                                        ; preds = %if.else
  %6 = bitcast %struct.wait_queue_entry* %__wq_entry76 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !14
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry76, i32 noundef 0) #19
  %7 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat.le, align 8
  %pfmemalloc_wait81161 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %7, i64 0, i32 8
  %call82162 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %pfmemalloc_wait81161, %struct.wait_queue_entry* noundef nonnull %__wq_entry76, i32 noundef 258) #19
  %call83163 = call fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef nonnull %3) #17
  br i1 %call83163, label %for.end92, label %if.end85

if.end85:                                         ; preds = %if.then75, %cleanup89
  %call82164 = phi i64 [ %call82, %cleanup89 ], [ %call82162, %if.then75 ]
  %tobool86.not = icmp eq i64 %call82164, 0
  br i1 %tobool86.not, label %cleanup89, label %__out95

cleanup89:                                        ; preds = %if.end85
  call void @schedule() #19
  %8 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat.le, align 8
  %pfmemalloc_wait81 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %8, i64 0, i32 8
  %call82 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %pfmemalloc_wait81, %struct.wait_queue_entry* noundef nonnull %__wq_entry76, i32 noundef 258) #19
  %call83 = call fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef nonnull %3) #17
  br i1 %call83, label %for.end92, label %if.end85

for.end92:                                        ; preds = %cleanup89, %if.then75
  %9 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat.le, align 8
  %pfmemalloc_wait94 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %9, i64 0, i32 8
  call void @finish_wait(%struct.wait_queue_head* noundef %pfmemalloc_wait94, %struct.wait_queue_entry* noundef nonnull %__wq_entry76) #19
  br label %__out95

__out95:                                          ; preds = %if.end85, %for.end92
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #21
  br label %if.end99

if.end99:                                         ; preds = %if.else, %__out95, %if.then24, %__out
  %call101 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #17
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %out, label %cleanup105

out:                                              ; preds = %next_zones_zonelist.exit, %if.end5, %if.end99, %if.end11, %if.end, %entry
  br label %cleanup105

cleanup105:                                       ; preds = %if.end99, %out
  %retval.0 = phi i1 [ false, %out ], [ true, %if.end99 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_task_reclaim_state(%struct.task_struct* nocapture noundef %task, %struct.reclaim_state* noundef %rs) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.reclaim_state* %rs, null
  %reclaim_state19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 110
  %0 = load %struct.reclaim_state*, %struct.reclaim_state** %reclaim_state19, align 64
  %tobool20.not = icmp eq %struct.reclaim_state* %0, null
  br i1 %tobool.not, label %land.rhs18, label %land.rhs

land.rhs:                                         ; preds = %entry
  br i1 %tobool20.not, label %if.end37, label %if.then, !prof !11

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmscan.c\22; .popsection; .long 14472b - 14470b; .short 183; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !21
  br label %if.end37

land.rhs18:                                       ; preds = %entry
  br i1 %tobool20.not, label %if.then36, label %if.end37, !prof !9

if.then36:                                        ; preds = %land.rhs18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmscan.c\22; .popsection; .long 14472b - 14470b; .short 186; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !22
  br label %if.end37

if.end37:                                         ; preds = %land.rhs, %if.then, %if.then36, %land.rhs18
  %reclaim_state46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 110
  store %struct.reclaim_state* %rs, %struct.reclaim_state** %reclaim_state46, align 64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_try_to_free_pages(%struct.zonelist* noundef %zonelist, %struct.scan_control* noundef %sc) unnamed_addr #2 {
entry:
  %priority = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 7
  %0 = load i8, i8* %priority, align 1
  %compaction_ready49 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %reclaim_idx = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  %nr_scanned = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 10
  %nr_reclaimed = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 11
  %nr_to_reclaim = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 0
  %nodemask = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  %1 = load i8, i8* %reclaim_idx, align 4
  %conv1 = sext i8 %1 to i32
  %add = add nsw i32 %conv1, 8
  call fastcc void @__count_vm_events(i32 noundef %add, i64 noundef 1) #17
  br label %do.body

do.body:                                          ; preds = %do.cond, %retry
  store i64 0, i64* %nr_scanned, align 8
  call fastcc void @shrink_zones(%struct.zonelist* noundef %zonelist, %struct.scan_control* noundef %sc) #17
  %2 = load i64, i64* %nr_reclaimed, align 8
  %3 = load i64, i64* %nr_to_reclaim, align 8
  %cmp.not = icmp ult i64 %2, %3
  br i1 %cmp.not, label %if.end6, label %do.end

if.end6:                                          ; preds = %do.body
  %bf.load = load i16, i16* %compaction_ready49, align 8
  %4 = and i16 %bf.load, 1024
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end8, label %do.end

if.end8:                                          ; preds = %if.end6
  %5 = load i8, i8* %priority, align 1
  %cmp11 = icmp slt i8 %5, 10
  br i1 %cmp11, label %if.then13, label %do.cond

if.then13:                                        ; preds = %if.end8
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, i16* %compaction_ready49, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end8, %if.then13
  %dec = add i8 %5, -1
  store i8 %dec, i8* %priority, align 1
  %cmp19 = icmp sgt i8 %dec, -1
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %if.end6, %do.body, %do.cond
  %6 = load i8, i8* %reclaim_idx, align 4
  %conv22 = sext i8 %6 to i32
  %7 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call23 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %zonelist, i32 noundef %conv22, %struct.nodemask_t* noundef %7) #17
  %call24 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call23) #17
  %tobool25.not142 = icmp eq %struct.zone* %call24, null
  br i1 %tobool25.not142, label %for.end, label %for.body

for.body:                                         ; preds = %do.end, %next_zones_zonelist.exit
  %zone.0145 = phi %struct.zone* [ %call43, %next_zones_zonelist.exit ], [ %call24, %do.end ]
  %z.0144 = phi %struct.zoneref* [ %retval.0.i, %next_zones_zonelist.exit ], [ %call23, %do.end ]
  %last_pgdat.0143 = phi %struct.pglist_data* [ %last_pgdat.1, %next_zones_zonelist.exit ], [ null, %do.end ]
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.0145, i64 0, i32 4
  %8 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %cmp26 = icmp eq %struct.pglist_data* %8, %last_pgdat.0143
  br i1 %cmp26, label %for.inc, label %if.end29

if.end29:                                         ; preds = %for.body
  call fastcc void @snapshot_refaults(%struct.pglist_data* noundef %8) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %for.body
  %last_pgdat.1 = phi %struct.pglist_data* [ %last_pgdat.0143, %for.body ], [ %8, %if.end29 ]
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.0144, i64 1
  %9 = load i8, i8* %reclaim_idx, align 4
  %conv40 = sext i8 %9 to i32
  %10 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %10, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !11

land.rhs.i:                                       ; preds = %for.inc
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #19
  %cmp.not.i = icmp ugt i32 %call.i, %conv40
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %conv40, %struct.nodemask_t* noundef %10) #19
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call43 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #17
  %tobool25.not = icmp eq %struct.zone* %call43, null
  br i1 %tobool25.not, label %for.end, label %for.body

for.end:                                          ; preds = %next_zones_zonelist.exit, %do.end
  %11 = load i64, i64* %nr_reclaimed, align 8
  %tobool45.not = icmp eq i64 %11, 0
  br i1 %tobool45.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %for.end
  %bf.load50 = load i16, i16* %compaction_ready49, align 8
  %12 = and i16 %bf.load50, 1024
  %tobool54.not = icmp eq i16 %12, 0
  br i1 %tobool54.not, label %if.end56, label %cleanup

if.end56:                                         ; preds = %if.end48
  %13 = and i16 %bf.load50, 8
  %tobool61.not = icmp eq i16 %13, 0
  br i1 %tobool61.not, label %if.end72, label %retry.backedge

retry.backedge:                                   ; preds = %if.end56, %if.end72
  %.sink146 = phi i16 [ -389, %if.end72 ], [ -13, %if.end56 ]
  %.sink = phi i16 [ 128, %if.end72 ], [ 4, %if.end56 ]
  store i8 %0, i8* %priority, align 1
  %bf.set67 = and i16 %bf.load50, %.sink146
  %bf.clear70 = or i16 %bf.set67, %.sink
  store i16 %bf.clear70, i16* %compaction_ready49, align 8
  br label %retry

if.end72:                                         ; preds = %if.end56
  %14 = and i16 %bf.load50, 256
  %tobool77.not = icmp eq i16 %14, 0
  br i1 %tobool77.not, label %cleanup, label %retry.backedge

cleanup:                                          ; preds = %if.end72, %if.end48, %for.end
  %retval.0 = phi i64 [ %11, %for.end ], [ 1, %if.end48 ], [ 0, %if.end72 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wakeup_kswapd(%struct.zone* noundef %zone, i32 noundef %gfp_flags, i32 noundef %order, i32 noundef %highest_zoneidx) local_unnamed_addr #2 {
entry:
  %call = call fastcc i1 @managed_zone(%struct.zone* noundef %zone) #17
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %0 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %kswapd_highest_zoneidx = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %0, i64 0, i32 11
  %1 = load volatile i32, i32* %kswapd_highest_zoneidx, align 4
  %cmp = icmp eq i32 %1, 4
  %cmp4 = icmp ult i32 %1, %highest_zoneidx
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %do.body10, label %do.end19

do.body10:                                        ; preds = %if.end
  store volatile i32 %highest_zoneidx, i32* %kswapd_highest_zoneidx, align 4
  br label %do.end19

do.end19:                                         ; preds = %if.end, %do.body10
  %kswapd_order = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %0, i64 0, i32 10
  %2 = load volatile i32, i32* %kswapd_order, align 16
  %cmp21 = icmp slt i32 %2, %order
  br i1 %cmp21, label %do.body27, label %if.end33

do.body27:                                        ; preds = %do.end19
  store volatile i32 %order, i32* %kswapd_order, align 16
  br label %if.end33

if.end33:                                         ; preds = %do.body27, %do.end19
  %kswapd_wait = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %0, i64 0, i32 7
  %call34 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %kswapd_wait) #17
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end33
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %0, i64 0, i32 12
  %3 = load i32, i32* %kswapd_failures, align 8
  %cmp37 = icmp sgt i32 %3, 15
  br i1 %cmp37, label %cleanup, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end36
  %call39 = call fastcc i1 @pgdat_balanced(%struct.pglist_data* noundef %0, i32 noundef %order, i32 noundef %highest_zoneidx) #17
  br i1 %call39, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %lor.lhs.false38
  %call40 = call fastcc i1 @pgdat_watermark_boosted(%struct.pglist_data* noundef %0, i32 noundef %highest_zoneidx) #17
  br i1 %call40, label %if.end45, label %cleanup

if.end45:                                         ; preds = %land.lhs.true, %lor.lhs.false38
  call void @__wake_up(%struct.wait_queue_head* noundef %kswapd_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true, %if.end33, %entry, %if.end45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @managed_zone(%struct.zone* noundef %zone) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #17
  %tobool = icmp ne i64 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #5 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #17
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @pgdat_balanced(%struct.pglist_data* noundef %pgdat, i32 noundef %order, i32 noundef %highest_zoneidx) unnamed_addr #2 {
entry:
  %cmp.not20 = icmp slt i32 %highest_zoneidx, 0
  br i1 %cmp.not20, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %mark.022 = phi i64 [ %mark.1, %for.inc ], [ -1, %entry ]
  %i.021 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %idx.ext = sext i32 %i.021 to i64
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idx.ext
  %call = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr) #17
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idx.ext, i32 0, i64 2
  %0 = load i64, i64* %arrayidx, align 16
  %watermark_boost = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idx.ext, i32 1
  %1 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %1, %0
  %call1 = call i1 @zone_watermark_ok_safe(%struct.zone* noundef %add.ptr, i32 noundef %order, i64 noundef %add, i32 noundef %highest_zoneidx) #19
  br i1 %call1, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %mark.1 = phi i64 [ %add, %if.end ], [ %mark.022, %for.body ]
  %inc = add i32 %i.021, 1
  %cmp.not = icmp sgt i32 %inc, %highest_zoneidx
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %mark.0.lcssa = phi i64 [ -1, %entry ], [ %mark.1, %for.inc ]
  %cmp4 = icmp eq i64 %mark.0.lcssa, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i1 [ %cmp4, %for.end ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i1 @pgdat_watermark_boosted(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx) unnamed_addr #4 {
entry:
  %cmp10 = icmp sgt i32 %highest_zoneidx, -1
  br i1 %cmp10, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %highest_zoneidx to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv
  %call = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr) #17
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %watermark_boost = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv, i32 1
  %1 = load i64, i64* %watermark_boost, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end, %for.body
  %cmp = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc, %entry
  %cmp.lcssa = phi i1 [ false, %entry ], [ false, %for.inc ], [ true, %if.end ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kswapd_run(i32 noundef %nid) local_unnamed_addr #2 {
entry:
  %0 = load %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 9), align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* noundef nonnull @kswapd, i8* noundef bitcast (%struct.pglist_data* @contig_page_data to i8*), i32 noundef -1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %nid) #19
  %1 = bitcast %struct.task_struct* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call2, label %do.body, label %if.end5

if.end5:                                          ; preds = %if.end
  %call4 = call i32 @wake_up_process(%struct.task_struct* noundef %call1) #19
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end
  store %struct.task_struct* %call1, %struct.task_struct** getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 9), align 8
  %2 = load i32, i32* @system_state, align 4
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %do.body13, label %do.end22, !prof !9

do.body13:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmscan.c\22; .popsection; .long 14472b - 14470b; .short 4444; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !23
  unreachable

do.end22:                                         ; preds = %do.body
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 noundef %nid) #22
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end22, %if.end5
  %call1.sink = phi %struct.task_struct* [ %call1, %if.end5 ], [ null, %do.end22 ]
  store %struct.task_struct* %call1.sink, %struct.task_struct** getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 9), align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)* noundef, i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kswapd(i8* noundef %p) #2 {
entry:
  %0 = bitcast i8* %p to %struct.pglist_data*
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call fastcc i1 @cpumask_empty() #17
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %2, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 8521728
  store i32 %or, i32* %flags, align 4
  %kswapd_order = getelementptr inbounds i8, i8* %p, i64 5040
  %4 = bitcast i8* %kswapd_order to i32*
  store volatile i32 0, i32* %4, align 16
  %kswapd_highest_zoneidx = getelementptr inbounds i8, i8* %p, i64 5044
  %5 = bitcast i8* %kswapd_highest_zoneidx to i32*
  store volatile i32 4, i32* %5, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end54, %if.end
  %highest_zoneidx.0 = phi i32 [ 3, %if.end ], [ %call28, %if.end54 ]
  %6 = load volatile i32, i32* %4, align 16
  %call22 = call fastcc i32 @kswapd_highest_zoneidx(%struct.pglist_data* noundef %0, i32 noundef %highest_zoneidx.0) #17
  br label %kswapd_try_sleep

kswapd_try_sleep:                                 ; preds = %if.end54, %for.cond
  %highest_zoneidx.1 = phi i32 [ %call22, %for.cond ], [ %call28, %if.end54 ]
  %reclaim_order.0 = phi i32 [ %6, %for.cond ], [ %call56, %if.end54 ]
  call fastcc void @kswapd_try_to_sleep(%struct.pglist_data* noundef %0, i32 noundef %reclaim_order.0, i32 noundef %highest_zoneidx.1) #17
  %7 = load volatile i32, i32* %4, align 16
  %call28 = call fastcc i32 @kswapd_highest_zoneidx(%struct.pglist_data* noundef %0, i32 noundef %highest_zoneidx.1) #17
  store volatile i32 0, i32* %4, align 16
  store volatile i32 4, i32* %5, align 4
  %call50 = call i1 @kthread_should_stop() #19
  br i1 %call50, label %for.end, label %if.end54

if.end54:                                         ; preds = %kswapd_try_sleep
  %call56 = call fastcc i32 @balance_pgdat(%struct.pglist_data* noundef %0, i32 noundef %7, i32 noundef %call28) #17
  %cmp = icmp ult i32 %call56, %7
  br i1 %cmp, label %kswapd_try_sleep, label %for.cond

for.end:                                          ; preds = %kswapd_try_sleep
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, -8521729
  store i32 %and, i32* %flags, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kswapd_stop(i32 noundef %nid) local_unnamed_addr #2 {
entry:
  %0 = load %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 9), align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @kthread_stop(%struct.task_struct* noundef nonnull %0) #19
  store %struct.task_struct* null, %struct.task_struct** getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 9), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @kswapd_init() #9 section ".init.text" {
entry:
  call void @swap_setup() #19
  call void @kswapd_run(i32 noundef 0) #17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @check_move_unevictable_pages(%struct.pagevec* nocapture noundef readonly %pvec) local_unnamed_addr #2 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %cmp75.not = icmp eq i8 %0, 0
  br i1 %cmp75.not, label %if.end24, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ]
  %pgrescued.078 = phi i32 [ %pgrescued.2, %cleanup ], [ 0, %entry ]
  %lruvec.076 = phi %struct.lruvec* [ %lruvec.1, %cleanup ], [ null, %entry ]
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv
  %1 = load %struct.page*, %struct.page** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 4, i64* noundef %flags.i) #19
  br i1 %call1.i, label %if.end6, label %cleanup

if.end6:                                          ; preds = %for.body
  %call7 = call fastcc %struct.lruvec* @relock_page_lruvec_irq(%struct.page* noundef %1, %struct.lruvec* noundef %lruvec.076) #17
  %call8 = call fastcc i1 @page_evictable(%struct.page* noundef %1) #17
  br i1 %call8, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %call.i52 = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %3 = inttoptr i64 %call.i52 to %struct.page*
  %flags.i53 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i53, align 8
  %5 = and i64 %4, 1048576
  %tobool11.not = icmp eq i64 %5, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #19
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %6 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i.i.i, align 8
  %8 = and i64 %7, 1048576
  %tobool.not.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then12
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %1) #19
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %9 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i12.i.i, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 5
  %13 = and i32 %12, 1
  %14 = or i32 %13, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then12, %if.end.i.i
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 4, %if.then12 ]
  %call1.i54 = call fastcc i32 @page_zonenum(%struct.page* noundef %1) #19
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %call7) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %call7, i32 noundef %retval.0.i.i, i32 noundef -1) #19
  %idxprom.i.i = zext i32 %call1.i54 to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #19
  %call.i55 = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %15 = inttoptr i64 %call.i55 to %struct.page*
  %flags.i56 = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 20, i64* noundef %flags.i56) #19
  %call.i.i.i57 = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %16 = inttoptr i64 %call.i.i.i57 to %struct.page*
  %flags.i.i.i58 = getelementptr inbounds %struct.page, %struct.page* %16, i64 0, i32 0
  %17 = load volatile i64, i64* %flags.i.i.i58, align 8
  %18 = and i64 %17, 1048576
  %tobool.not.i.i59 = icmp eq i64 %18, 0
  br i1 %tobool.not.i.i59, label %if.end.i.i65, label %add_page_to_lru_list.exit

if.end.i.i65:                                     ; preds = %del_page_from_lru_list.exit
  %call1.i.i60 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %1) #19
  %tobool2.not.i.i61 = icmp eq i32 %call1.i.i60, 0
  %cond.i.i62 = select i1 %tobool2.not.i.i61, i32 0, i32 2
  %call.i11.i.i63 = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %19 = inttoptr i64 %call.i11.i.i63 to %struct.page*
  %flags.i12.i.i64 = getelementptr inbounds %struct.page, %struct.page* %19, i64 0, i32 0
  %20 = load volatile i64, i64* %flags.i12.i.i64, align 8
  %21 = trunc i64 %20 to i32
  %22 = lshr i32 %21, 5
  %23 = and i32 %22, 1
  %24 = or i32 %23, %cond.i.i62
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %del_page_from_lru_list.exit, %if.end.i.i65
  %retval.0.i.i66 = phi i32 [ %24, %if.end.i.i65 ], [ 4, %del_page_from_lru_list.exit ]
  %call1.i67 = call fastcc i32 @page_zonenum(%struct.page* noundef %1) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %call7, i32 noundef %retval.0.i.i66, i32 noundef 1) #19
  %idxprom.i.i69 = zext i32 %call1.i67 to i64
  %arrayidx.i.i70 = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i69
  %add1.i.i71 = add nsw i32 %retval.0.i.i66, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i70, i32 noundef %add1.i.i71, i64 noundef 1) #19
  %idxprom.i = zext i32 %retval.0.i.i66 to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %call7, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add(%struct.list_head* noundef %lru.i, %struct.list_head* noundef %arrayidx.i) #19
  %add13 = add i32 %pgrescued.078, 1
  br label %if.end14

if.end14:                                         ; preds = %add_page_to_lru_list.exit, %land.lhs.true, %if.end6
  %pgrescued.1 = phi i32 [ %add13, %add_page_to_lru_list.exit ], [ %pgrescued.078, %land.lhs.true ], [ %pgrescued.078, %if.end6 ]
  %call.i72 = call fastcc i64 @_compound_head(%struct.page* noundef %1) #19
  %25 = inttoptr i64 %call.i72 to %struct.page*
  %flags.i73 = getelementptr inbounds %struct.page, %struct.page* %25, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %flags.i73) #19
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end14
  %lruvec.1 = phi %struct.lruvec* [ %call7, %if.end14 ], [ %lruvec.076, %for.body ]
  %pgrescued.2 = phi i32 [ %pgrescued.1, %if.end14 ], [ %pgrescued.078, %for.body ]
  %26 = load i8, i8* %nr, align 8
  %27 = zext i8 %26 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %27
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  %tobool16.not = icmp eq %struct.lruvec* %lruvec.1, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %for.end
  %conv18 = sext i32 %pgrescued.2 to i64
  call fastcc void @__count_vm_events(i32 noundef 48, i64 noundef %conv18) #17
  %sext = shl i64 %indvars.iv.next, 32
  %conv19 = ashr exact i64 %sext, 32
  call fastcc void @__count_vm_events(i32 noundef 47, i64 noundef %conv19) #17
  call fastcc void @unlock_page_lruvec_irq(%struct.lruvec* noundef nonnull %lruvec.1) #17
  br label %if.end24

if.else:                                          ; preds = %for.end
  %indvars83.le = trunc i64 %indvars.iv.next to i32
  %tobool20.not = icmp eq i32 %indvars83.le, 0
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.else
  %sext92 = shl i64 %indvars.iv.next, 32
  %conv22 = ashr exact i64 %sext92, 32
  call fastcc void @count_vm_events(i32 noundef 47, i64 noundef %conv22) #17
  br label %if.end24

if.end24:                                         ; preds = %entry, %if.else, %if.then21, %if.then17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.lruvec* @relock_page_lruvec_irq(%struct.page* nocapture noundef readnone %page, %struct.lruvec* noundef %locked_lruvec) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.lruvec* %locked_lruvec, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @page_matches_lruvec(%struct.page* noundef %page, %struct.lruvec* noundef nonnull %locked_lruvec) #17
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @unlock_page_lruvec_irq(%struct.lruvec* noundef nonnull %locked_lruvec) #17
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  call fastcc void @lock_page_lruvec_irq(%struct.page* noundef %page) #17
  br label %return

return:                                           ; preds = %if.then, %if.end2
  %retval.0 = phi %struct.lruvec* [ getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16), %if.end2 ], [ %locked_lruvec, %if.then ]
  ret %struct.lruvec* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @page_evictable(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #19
  %call1 = call fastcc i1 @mapping_unevictable(%struct.address_space* noundef %call) #17
  br i1 %call1, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 2097152
  %tobool.not = icmp eq i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool.not, %land.rhs ]
  call fastcc void @rcu_read_unlock() #17
  ret i1 %3
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__count_vm_events(i32 noundef %item, i64 noundef %delta) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  %add7 = add i64 %2, %delta
  store i64 %add7, i64* %1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_events(i32 noundef %item, i64 noundef %delta) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef %delta) #17
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #17
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #11 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #17
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #7 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #11 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_shrink_slab(%struct.shrink_control* noundef %shrinkctl, %struct.shrinker* noundef %shrinker, i32 noundef %priority) unnamed_addr #2 {
entry:
  %batch = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 2
  %0 = load i64, i64* %batch, align 8
  %tobool.not = icmp eq i64 %0, 0
  %spec.select = select i1 %tobool.not, i64 128, i64 %0
  %count_objects = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 0
  %1 = load i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)** %count_objects, align 8
  %call = call i64 %1(%struct.shrinker* noundef %shrinker, %struct.shrink_control* noundef %shrinkctl) #19
  switch i64 %call, label %if.end [
    i64 -2, label %cleanup65
    i64 0, label %cleanup65
  ]

if.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @xchg_nr_deferred(%struct.shrinker* noundef %shrinker, %struct.shrink_control* noundef %shrinkctl) #17
  %seeks = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 3
  %2 = load i32, i32* %seeks, align 8
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %sh_prom = zext i32 %priority to i64
  %shr = ashr i64 %call, %sh_prom
  %mul = shl i64 %shr, 2
  %conv = zext i32 %2 to i64
  %div = udiv i64 %mul, %conv
  br label %if.end10

if.else:                                          ; preds = %if.end
  %div9 = sdiv i64 %call, 2
  %.pre = zext i32 %priority to i64
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %sh_prom11.pre-phi = phi i64 [ %.pre, %if.else ], [ %sh_prom, %if.then5 ]
  %delta.0 = phi i64 [ %div9, %if.else ], [ %div, %if.then5 ]
  %shr12 = ashr i64 %call3, %sh_prom11.pre-phi
  %add = add i64 %delta.0, %shr12
  %mul13 = shl i64 %call, 1
  %cmp15 = icmp slt i64 %add, %mul13
  %cond20 = select i1 %cmp15, i64 %add, i64 %mul13
  %cmp21163 = icmp sge i64 %cond20, %spec.select
  %cmp23164 = icmp sge i64 %cond20, %call
  %3 = select i1 %cmp21163, i1 true, i1 %cmp23164
  br i1 %3, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end10
  %nr_to_scan32 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %shrinkctl, i64 0, i32 2
  %nr_scanned = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %shrinkctl, i64 0, i32 3
  %scan_objects = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %freed.0167 = phi i64 [ 0, %while.body.lr.ph ], [ %add38, %cleanup ]
  %total_scan.0166 = phi i64 [ %cond20, %while.body.lr.ph ], [ %sub, %cleanup ]
  %scanned.0165 = phi i64 [ 0, %while.body.lr.ph ], [ %add42, %cleanup ]
  %cmp26 = icmp slt i64 %spec.select, %total_scan.0166
  %cond31 = select i1 %cmp26, i64 %spec.select, i64 %total_scan.0166
  store i64 %cond31, i64* %nr_to_scan32, align 8
  store i64 %cond31, i64* %nr_scanned, align 8
  %4 = load i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)** %scan_objects, align 8
  %call33 = call i64 %4(%struct.shrinker* noundef %shrinker, %struct.shrink_control* noundef %shrinkctl) #19
  %cmp34 = icmp eq i64 %call33, -1
  br i1 %cmp34, label %while.end, label %cleanup

cleanup:                                          ; preds = %while.body
  %add38 = add i64 %call33, %freed.0167
  %5 = load i64, i64* %nr_scanned, align 8
  call fastcc void @count_vm_events(i32 noundef 37, i64 noundef %5) #17
  %6 = load i64, i64* %nr_scanned, align 8
  %sub = sub i64 %total_scan.0166, %6
  %add42 = add i64 %6, %scanned.0165
  call fastcc void @_cond_resched() #17
  %cmp21 = icmp sge i64 %sub, %spec.select
  %cmp23 = icmp sge i64 %sub, %call
  %7 = select i1 %cmp21, i1 true, i1 %cmp23
  br i1 %7, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %while.body, %if.end10
  %scanned.0.lcssa = phi i64 [ 0, %if.end10 ], [ %scanned.0165, %while.body ], [ %add42, %cleanup ]
  %freed.0.lcssa = phi i64 [ 0, %if.end10 ], [ %freed.0167, %while.body ], [ %add38, %cleanup ]
  %add46 = add i64 %delta.0, %call3
  %sub47 = sub i64 %add46, %scanned.0.lcssa
  %cmp49 = icmp sgt i64 %sub47, 0
  %cond54 = select i1 %cmp49, i64 %sub47, i64 0
  %cmp57 = icmp slt i64 %cond54, %mul13
  %cond62 = select i1 %cmp57, i64 %cond54, i64 %mul13
  call fastcc void @add_nr_deferred(i64 noundef %cond62, %struct.shrinker* noundef %shrinker, %struct.shrink_control* noundef %shrinkctl) #17
  br label %cleanup65

cleanup65:                                        ; preds = %entry, %entry, %while.end
  %retval.0 = phi i64 [ %freed.0.lcssa, %while.end ], [ %call, %entry ], [ %call, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rwsem_is_contended() unnamed_addr #5 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef getelementptr inbounds (%struct.rw_semaphore, %struct.rw_semaphore* @shrinker_rwsem, i64 0, i32 4)) #17
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #2 {
entry:
  %call = call i32 @__cond_resched() #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @xchg_nr_deferred(%struct.shrinker* nocapture noundef readonly %shrinker, %struct.shrink_control* nocapture noundef readonly %sc) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %memcg = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 4
  %1 = load %struct.mem_cgroup*, %struct.mem_cgroup** %memcg, align 8
  %tobool2.not = icmp eq %struct.mem_cgroup* %1, null
  %and4 = and i32 %0, 4
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end8, label %cleanup

if.end8:                                          ; preds = %entry
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  %nid1 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 1
  %2 = load i32, i32* %nid1, align 4
  %spec.store.select = select i1 %tobool.not, i32 0, i32 %2
  %nr_deferred = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 6
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %nr_deferred, align 8
  %idxprom = sext i32 %spec.store.select to i64
  %arrayidx = getelementptr %struct.atomic64_t, %struct.atomic64_t* %3, i64 %idxprom
  %4 = bitcast %struct.atomic64_t* %arrayidx to i8*
  %call11.i.i.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %4) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i64 [ %call11.i.i.i, %if.end8 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_nr_deferred(i64 noundef %nr, %struct.shrinker* nocapture noundef readonly %shrinker, %struct.shrink_control* nocapture noundef readonly %sc) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %memcg = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 4
  %1 = load %struct.mem_cgroup*, %struct.mem_cgroup** %memcg, align 8
  %tobool2.not = icmp eq %struct.mem_cgroup* %1, null
  %and4 = and i32 %0, 4
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end8, label %cleanup

if.end8:                                          ; preds = %entry
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  %nid1 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 1
  %2 = load i32, i32* %nid1, align 4
  %spec.store.select = select i1 %tobool.not, i32 0, i32 %2
  %nr_deferred = getelementptr inbounds %struct.shrinker, %struct.shrinker* %shrinker, i64 0, i32 6
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %nr_deferred, align 8
  %idxprom = sext i32 %spec.store.select to i64
  %arrayidx = getelementptr %struct.atomic64_t, %struct.atomic64_t* %3, i64 %idxprom
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %nr, %struct.atomic64_t* noundef %arrayidx) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #21, !srcloc !26
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #21, !srcloc !27
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %compound_nr = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 1
  %2 = bitcast %struct.address_space** %compound_nr to i32*
  %3 = load i32, i32* %2, align 8
  %conv = zext i32 %3 to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_freeze(%struct.page* noundef %page, i32 noundef %count) unnamed_addr #2 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %0 = bitcast %struct.atomic_t* %_refcount to i8*
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %0, i32 noundef %count, i32 noundef 0) #19
  %cmp = icmp eq i32 %call11.i.i, %count
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @mapping_exiting(%struct.address_space* noundef %mapping) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 4
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @workingset_eviction(%struct.page* noundef, %struct.mem_cgroup* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__delete_from_page_cache(%struct.page* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.9* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

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
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @arch_local_irq_disable() #17
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #2 {
entry:
  %call39 = call fastcc i32 @static_key_count() #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #21, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #21, !srcloc !30
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #21, !srcloc !31
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_enable() #17
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #21, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #2 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #21, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #19
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !35
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #2 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #21, !srcloc !36
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_check_dirty_writeback(%struct.page* noundef %page, i8* noundef %dirty, i8* noundef %writeback) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call.i36 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %4 = inttoptr i64 %call.i36 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 524288
  %tobool4.not = icmp eq i64 %6, 0
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i8 0, i8* %dirty, align 1
  store i8 0, i8* %writeback, align 1
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call.i37 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %7 = inttoptr i64 %call.i37 to %struct.page*
  %flags.i38 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i38, align 8
  %9 = trunc i64 %8 to i8
  %10 = lshr i8 %9, 3
  %11 = and i8 %10, 1
  store i8 %11, i8* %dirty, align 1
  %call.i40 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %12 = inttoptr i64 %call.i40 to %struct.page*
  %flags.i41 = getelementptr inbounds %struct.page, %struct.page* %12, i64 0, i32 0
  %13 = load volatile i64, i64* %flags.i41, align 8
  %14 = lshr i64 %13, 15
  %15 = trunc i64 %14 to i8
  %16 = and i8 %15, 1
  store i8 %16, i8* %writeback, align 1
  %call10 = call fastcc i32 @page_has_private(%struct.page* noundef %page) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %call14 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #19
  %tobool15.not = icmp eq %struct.address_space* %call14, null
  br i1 %tobool15.not, label %cleanup, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end13
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %call14, i64 0, i32 9
  %17 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %is_dirty_writeback = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %17, i64 0, i32 18
  %18 = load void (%struct.page*, i8*, i8*)*, void (%struct.page*, i8*, i8*)** %is_dirty_writeback, align 8
  %tobool17.not = icmp eq void (%struct.page*, i8*, i8*)* %18, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  call void %18(%struct.page* noundef %page, i8* noundef %dirty, i8* noundef %writeback) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true16, %if.then18, %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @inode_write_congested(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @inode_congested(%struct.inode* noundef %inode) #17
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @current_is_kswapd() unnamed_addr #12 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 131072
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_check_references(%struct.page* noundef %page, %struct.scan_control* nocapture noundef readonly %sc) unnamed_addr #2 {
entry:
  %vm_flags = alloca i64, align 8
  %0 = bitcast i64* %vm_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  store i64 0, i64* %vm_flags, align 8, !annotation !14
  %target_mem_cgroup = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 2
  %1 = load %struct.mem_cgroup*, %struct.mem_cgroup** %target_mem_cgroup, align 8
  %call = call i32 @page_referenced(%struct.page* noundef %page, i32 noundef 1, %struct.mem_cgroup* noundef %1, i64* noundef nonnull %vm_flags) #19
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 1, i64* noundef %flags.i) #19
  %3 = load i64, i64* %vm_flags, align 8
  %and = and i64 %3, 8192
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.end
  %call.i30 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %4 = inttoptr i64 %call.i30 to %struct.page*
  %flags.i31 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags.i31) #19
  %cmp = icmp sgt i32 %call, 1
  %or.cond = select i1 %call1.i, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then3
  %5 = load i64, i64* %vm_flags, align 8
  %and7 = and i64 %5, 4
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %call.i32 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %6 = inttoptr i64 %call.i32 to %struct.page*
  %flags.i33 = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i33, align 8
  %8 = and i64 %7, 524288
  %tobool10.not = icmp eq i64 %8, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  br i1 %call1.i, label %land.lhs.true15, label %if.end19

land.lhs.true15:                                  ; preds = %if.end13
  %call.i34 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %9 = inttoptr i64 %call.i34 to %struct.page*
  %flags.i35 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i35, align 8
  %11 = and i64 %10, 524288
  %tobool17.not = icmp eq i64 %11, 0
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %land.lhs.true15, %if.end13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true15, %land.lhs.true, %if.then3, %entry, %if.end19, %if.end12
  %retval.0 = phi i32 [ 2, %if.end12 ], [ 0, %if.end19 ], [ 0, %entry ], [ 3, %if.then3 ], [ 3, %land.lhs.true ], [ 1, %land.lhs.true15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @page_maybe_dma_pinned(%struct.page* noundef %page) unnamed_addr #5 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @try_to_unmap(%struct.page* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_node_page_state(%struct.page* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pageout(%struct.page* noundef %page, %struct.address_space* noundef %mapping) unnamed_addr #2 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  %call = call fastcc i32 @is_page_cache_freeable(%struct.page* noundef %page) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.address_space* %mapping, null
  br i1 %tobool1.not, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @page_has_private(%struct.page* noundef %page) #17
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %if.then5

if.then5:                                         ; preds = %if.then2
  %call6 = call i32 @try_to_free_buffers(%struct.page* noundef %page) #19
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.then5
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %flags.i) #19
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.pageout, i64 0, i64 0)) #22
  br label %return

if.end12:                                         ; preds = %if.end
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %writepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 0
  %2 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %writepage, align 8
  %cmp = icmp eq i32 (%struct.page*, %struct.writeback_control*)* %2, null
  br i1 %cmp, label %return, label %if.end14

if.end14:                                         ; preds = %if.end12
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %3 = load %struct.inode*, %struct.inode** %host, align 8
  %call15 = call fastcc i32 @may_write_to_inode(%struct.inode* noundef %3) #17
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %return, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @clear_page_dirty_for_io(%struct.page* noundef %page) #19
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %if.then21

if.then21:                                        ; preds = %if.end18
  %4 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #21
  %5 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 1
  %6 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 32, i1 false)
  %7 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  store i64 32, i64* %7, align 8
  %8 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 3
  store i64 9223372036854775807, i64* %8, align 8
  %9 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 5
  store i8 8, i8* %9, align 4
  %call.i56 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %10 = inttoptr i64 %call.i56 to %struct.page*
  %flags.i57 = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 18, i64* noundef %flags.i57) #19
  %11 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %writepage23 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %11, i64 0, i32 0
  %12 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %writepage23, align 8
  %call24 = call i32 %12(%struct.page* noundef %page, %struct.writeback_control* noundef nonnull %wbc) #19
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end27.thread, label %if.end27

if.end27.thread:                                  ; preds = %if.then21
  call fastcc void @handle_write_error(%struct.address_space* noundef nonnull %mapping, %struct.page* noundef %page, i32 noundef %call24) #17
  br label %if.end30

if.end27:                                         ; preds = %if.then21
  %cmp28 = icmp eq i32 %call24, 524288
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  %call.i58 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %13 = inttoptr i64 %call.i58 to %struct.page*
  %flags.i59 = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 18, i64* noundef %flags.i59) #19
  br label %cleanup

if.end30:                                         ; preds = %if.end27.thread, %if.end27
  %call.i60 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %14 = inttoptr i64 %call.i60 to %struct.page*
  %flags.i61 = getelementptr inbounds %struct.page, %struct.page* %14, i64 0, i32 0
  %15 = load volatile i64, i64* %flags.i61, align 8
  %16 = and i64 %15, 32768
  %tobool32.not = icmp eq i64 %16, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  %call.i62 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #19
  %17 = inttoptr i64 %call.i62 to %struct.page*
  %flags.i63 = getelementptr inbounds %struct.page, %struct.page* %17, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 18, i64* noundef %flags.i63) #19
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30
  call void @inc_node_page_state(%struct.page* noundef %page, i32 noundef 29) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then29
  %retval.0 = phi i32 [ 1, %if.then29 ], [ 2, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #21
  br label %return

return:                                           ; preds = %if.end18, %if.end14, %if.end12, %if.then2, %if.then5, %entry, %cleanup, %if.then8
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 3, %if.then8 ], [ 0, %entry ], [ 0, %if.then5 ], [ 0, %if.then2 ], [ 1, %if.end12 ], [ 0, %if.end14 ], [ 3, %if.end18 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_has_private(%struct.page* nocapture noundef readonly %page) unnamed_addr #11 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %and = and i64 %0, 24576
  %tobool = icmp ne i64 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(%struct.page* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_count(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 3, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_event(i32 noundef %item) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef 1) #17
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @destroy_compound_page(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %compound_dtor = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %compound_dtor to i8*
  %1 = load i8, i8* %0, align 8
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr [2 x void (%struct.page*)*], [2 x void (%struct.page*)*]* @compound_page_dtors, i64 0, i64 %idxprom
  %2 = load void (%struct.page*)*, void (%struct.page*)** %arrayidx1, align 8
  call void %2(%struct.page* noundef %page) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @demote_page_list(%struct.list_head* noundef %demote_pages, %struct.pglist_data* nocapture noundef readnone %pgdat) unnamed_addr #5 {
entry:
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %demote_pages) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #4 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page_list(%struct.list_head* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @inode_congested(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) #17
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 11
  %call1 = call fastcc i32 @wb_congested(%struct.bdi_writeback* noundef %wb) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @wb_congested(%struct.bdi_writeback* nocapture noundef readonly %wb) unnamed_addr #11 {
entry:
  %congested = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 10
  %0 = load i64, i64* %congested, align 8
  %1 = trunc i64 %0 to i32
  %conv1 = and i32 %1, 1
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i1 @sb_is_blkdev_sb(%struct.super_block* noundef %0) #17
  br i1 %call, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call %struct.block_device* @I_BDEV(%struct.inode* noundef nonnull %inode) #19
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_is_blkdev_sb(%struct.super_block* nocapture noundef readnone %sb) unnamed_addr #11 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %cmp = icmp eq %struct.super_block* %0, %sb
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #2 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #21, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_referenced(%struct.page* noundef, i32 noundef, %struct.mem_cgroup* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #2 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #19
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #21, !srcloc !40
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) unnamed_addr #5 {
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
  %compound_head.i.i = bitcast %union.anon.9* %3 to i64*
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
define internal fastcc i32 @compound_pincount(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc i32 @head_compound_pincount(%struct.page* noundef %0) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_ref_count(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.9* %2 to %struct.anon.49*
  %compound_order = getelementptr inbounds %struct.anon.49, %struct.anon.49* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @head_compound_pincount(%struct.page* noundef %head) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef %head) #17
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef readnone %page) unnamed_addr #7 {
entry:
  %hpage_pinned_refcount = getelementptr %struct.page, %struct.page* %page, i64 2, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %hpage_pinned_refcount to %struct.atomic_t*
  ret %struct.atomic_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @is_page_cache_freeable(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call1 = call fastcc i32 @page_count(%struct.page* noundef %page) #17
  %call2 = call fastcc i32 @page_has_private(%struct.page* noundef %page) #17
  %sub = sub i32 %call1, %call2
  %cmp = icmp eq i32 %sub, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @may_write_to_inode(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 8388608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @inode_write_congested(%struct.inode* noundef %inode) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) #17
  %backing_dev_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 111
  %3 = load %struct.backing_dev_info*, %struct.backing_dev_info** %backing_dev_info, align 8
  %cmp = icmp eq %struct.backing_dev_info* %call5, %3
  %. = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_page_dirty_for_io(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @handle_write_error(%struct.address_space* noundef %mapping, %struct.page* noundef %page, i32 noundef %error) unnamed_addr #2 {
entry:
  call fastcc void @lock_page(%struct.page* noundef %page) #17
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #19
  %cmp = icmp eq %struct.address_space* %call, %mapping
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @mapping_set_error(%struct.address_space* noundef %mapping, i32 noundef %error) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @unlock_page(%struct.page* noundef %page) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_set_error(%struct.address_space* noundef %mapping, i32 noundef %error) unnamed_addr #2 {
entry:
  call void @__filemap_set_wb_err(%struct.address_space* noundef %mapping, i32 noundef %error) #19
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool4.not = icmp eq %struct.inode* %0, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 43
  %call = call i32 @errseq_set(i32* noundef %s_wb_err, i32 noundef %error) #19
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry
  %cmp = icmp eq i32 %error, -28
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %. = zext i1 %cmp to i64
  call fastcc void @set_bit(i64 noundef %., i64* noundef %flags) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(%struct.address_space* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(i32* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #21, !srcloc !41
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #23, !srcloc !42
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #14 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #19
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #21, !srcloc !43
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_zonenum(%struct.page* nocapture noundef readonly %page) unnamed_addr #11 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %shr = lshr i64 %0, 62
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef readnone %lruvec) unnamed_addr #7 {
entry:
  %add.ptr = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 -38, i32 0, i64 3
  %0 = bitcast %struct.list_head* %add.ptr to %struct.pglist_data*
  ret %struct.pglist_data* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %idx, i32 noundef %val) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #17
  %conv = sext i32 %val to i64
  call void @__mod_node_page_state(%struct.pglist_data* noundef %call, i32 noundef %idx, i64 noundef %conv) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(%struct.zone* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %zonelist, i32 noundef %highest_zoneidx, %struct.nodemask_t* noundef %nodes) unnamed_addr #2 {
entry:
  %arraydecay = getelementptr inbounds %struct.zonelist, %struct.zonelist* %zonelist, i64 0, i32 0, i64 0
  %tobool.not.i = icmp eq %struct.nodemask_t* %nodes, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !11

land.rhs.i:                                       ; preds = %entry
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %arraydecay) #19
  %cmp.not.i = icmp ugt i32 %call.i, %highest_zoneidx
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %entry
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %arraydecay, i32 noundef %highest_zoneidx, %struct.nodemask_t* noundef %nodes) #19
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %arraydecay, %land.rhs.i ]
  ret %struct.zoneref* %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.zone* @zonelist_zone(%struct.zoneref* nocapture noundef readonly %zoneref) unnamed_addr #11 {
entry:
  %zone = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zoneref, i64 0, i32 0
  %0 = load %struct.zone*, %struct.zone** %zone, align 8
  ret %struct.zone* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef %pgdat) unnamed_addr #2 {
entry:
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 12
  %0 = load i32, i32* %kswapd_failures, align 8
  %cmp = icmp sgt i32 %0, 15
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  %call = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx) #17
  br i1 %call, label %if.end3, label %for.inc

if.end3:                                          ; preds = %for.body.preheader
  %call4 = call i64 @zone_reclaimable_pages(%struct.zone* noundef %arrayidx) #17
  %tobool.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %for.inc, label %if.end6

if.end6:                                          ; preds = %if.end3
  %arrayidx7 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx7, align 64
  %watermark_boost = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0, i32 1
  %2 = load i64, i64* %watermark_boost, align 8
  %add8 = add i64 %1, %2
  %call9 = call fastcc i64 @zone_page_state(%struct.zone* noundef %arrayidx, i32 noundef 0) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.preheader, %if.end6
  %pfmemalloc_reserve.1 = phi i64 [ %add8, %if.end6 ], [ 0, %if.end3 ], [ 0, %for.body.preheader ]
  %free_pages.1 = phi i64 [ %call9, %if.end6 ], [ 0, %if.end3 ], [ 0, %for.body.preheader ]
  %arrayidx.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  %call.1 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx.1) #17
  br i1 %call.1, label %if.end3.1, label %for.inc.1

if.end3.1:                                        ; preds = %for.inc
  %call4.1 = call i64 @zone_reclaimable_pages(%struct.zone* noundef %arrayidx.1) #17
  %tobool.not.1 = icmp eq i64 %call4.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.end6.1

if.end6.1:                                        ; preds = %if.end3.1
  %arrayidx7.1 = getelementptr inbounds %struct.zone, %struct.zone* %arrayidx.1, i64 0, i32 0, i64 0
  %3 = load i64, i64* %arrayidx7.1, align 64
  %watermark_boost.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1, i32 1
  %4 = load i64, i64* %watermark_boost.1, align 8
  %add.1 = add i64 %3, %pfmemalloc_reserve.1
  %add8.1 = add i64 %add.1, %4
  %call9.1 = call fastcc i64 @zone_page_state(%struct.zone* noundef %arrayidx.1, i32 noundef 0) #17
  %add10.1 = add i64 %call9.1, %free_pages.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end6.1, %if.end3.1, %for.inc
  %pfmemalloc_reserve.1.1 = phi i64 [ %add8.1, %if.end6.1 ], [ %pfmemalloc_reserve.1, %if.end3.1 ], [ %pfmemalloc_reserve.1, %for.inc ]
  %free_pages.1.1 = phi i64 [ %add10.1, %if.end6.1 ], [ %free_pages.1, %if.end3.1 ], [ %free_pages.1, %for.inc ]
  %arrayidx.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  %call.2 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx.2) #17
  br i1 %call.2, label %if.end3.2, label %for.inc.2

if.end3.2:                                        ; preds = %for.inc.1
  %call4.2 = call i64 @zone_reclaimable_pages(%struct.zone* noundef %arrayidx.2) #17
  %tobool.not.2 = icmp eq i64 %call4.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.end6.2

if.end6.2:                                        ; preds = %if.end3.2
  %arrayidx7.2 = getelementptr inbounds %struct.zone, %struct.zone* %arrayidx.2, i64 0, i32 0, i64 0
  %5 = load i64, i64* %arrayidx7.2, align 64
  %watermark_boost.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2, i32 1
  %6 = load i64, i64* %watermark_boost.2, align 8
  %add.2 = add i64 %5, %pfmemalloc_reserve.1.1
  %add8.2 = add i64 %add.2, %6
  %call9.2 = call fastcc i64 @zone_page_state(%struct.zone* noundef %arrayidx.2, i32 noundef 0) #17
  %add10.2 = add i64 %call9.2, %free_pages.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end6.2, %if.end3.2, %for.inc.1
  %pfmemalloc_reserve.1.2 = phi i64 [ %add8.2, %if.end6.2 ], [ %pfmemalloc_reserve.1.1, %if.end3.2 ], [ %pfmemalloc_reserve.1.1, %for.inc.1 ]
  %free_pages.1.2 = phi i64 [ %add10.2, %if.end6.2 ], [ %free_pages.1.1, %if.end3.2 ], [ %free_pages.1.1, %for.inc.1 ]
  %tobool11.not = icmp eq i64 %pfmemalloc_reserve.1.2, 0
  %div = lshr i64 %pfmemalloc_reserve.1.2, 1
  %cmp14 = icmp ugt i64 %free_pages.1.2, %div
  %or.cond = select i1 %tobool11.not, i1 true, i1 %cmp14
  br i1 %or.cond, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.2
  %kswapd_wait = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 7
  %call16 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %kswapd_wait) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %do.end

do.end:                                           ; preds = %land.lhs.true
  %kswapd_highest_zoneidx = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 11
  %7 = load volatile i32, i32* %kswapd_highest_zoneidx, align 4
  %cmp19 = icmp ugt i32 %7, 2
  br i1 %cmp19, label %do.body25, label %if.end31

do.body25:                                        ; preds = %do.end
  store volatile i32 2, i32* %kswapd_highest_zoneidx, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.body25, %do.end
  call void @__wake_up(%struct.wait_queue_head* noundef %kswapd_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end31, %for.inc.2, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %for.inc.2 ], [ false, %if.end31 ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef %item) unnamed_addr #5 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 26, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @zonelist_zone_idx(%struct.zoneref* nocapture noundef readonly %zoneref) unnamed_addr #11 {
entry:
  %zone_idx = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zoneref, i64 0, i32 1
  %0 = load i32, i32* %zone_idx, align 8
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shrink_zones(%struct.zonelist* noundef %zonelist, %struct.scan_control* noundef %sc) unnamed_addr #2 {
entry:
  %gfp_mask = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  %0 = load i32, i32* %gfp_mask, align 8
  %1 = load i32, i32* @buffer_heads_over_limit, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %reclaim_idx3.phi.trans.insert = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  %.pre = load i8, i8* %reclaim_idx3.phi.trans.insert, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  %or = or i32 %0, 2
  store i32 %or, i32* %gfp_mask, align 8
  %call = call fastcc i32 @gfp_zone(i32 noundef %or) #17
  %conv = trunc i32 %call to i8
  %reclaim_idx = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  store i8 %conv, i8* %reclaim_idx, align 4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi i8 [ %.pre, %entry.if.end_crit_edge ], [ %conv, %if.then ]
  %reclaim_idx3 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  %conv4 = sext i8 %2 to i32
  %nodemask = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 1
  %3 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call5 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %zonelist, i32 noundef %conv4, %struct.nodemask_t* noundef %3) #17
  %call6 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call5) #17
  %tobool7.not63 = icmp eq %struct.zone* %call6, null
  br i1 %tobool7.not63, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %next_zones_zonelist.exit
  %last_pgdat.066 = phi %struct.pglist_data* [ %last_pgdat.1, %next_zones_zonelist.exit ], [ null, %if.end ]
  %zone.065 = phi %struct.zone* [ %call33, %next_zones_zonelist.exit ], [ %call6, %if.end ]
  %z.064 = phi %struct.zoneref* [ %retval.0.i, %next_zones_zonelist.exit ], [ %call5, %if.end ]
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.065, i64 0, i32 4
  %4 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %cmp = icmp eq %struct.pglist_data* %4, %last_pgdat.066
  br i1 %cmp, label %for.inc, label %if.end26

if.end26:                                         ; preds = %for.body
  call fastcc void @shrink_node(%struct.pglist_data* noundef %4, %struct.scan_control* noundef %sc) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end26
  %last_pgdat.1 = phi %struct.pglist_data* [ %4, %if.end26 ], [ %last_pgdat.066, %for.body ]
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.064, i64 1
  %5 = load i8, i8* %reclaim_idx3, align 4
  %conv30 = sext i8 %5 to i32
  %6 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %6, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !11

land.rhs.i:                                       ; preds = %for.inc
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #19
  %cmp.not.i = icmp ugt i32 %call.i, %conv30
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %conv30, %struct.nodemask_t* noundef %6) #19
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call33 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #17
  %tobool7.not = icmp eq %struct.zone* %call33, null
  br i1 %tobool7.not, label %for.end, label %for.body

for.end:                                          ; preds = %next_zones_zonelist.exit, %if.end
  store i32 %0, i32* %gfp_mask, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @snapshot_refaults(%struct.pglist_data* noundef writeonly %pgdat) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* noundef %pgdat) #17
  %call1 = call fastcc i64 @lruvec_page_state(i32 noundef 12) #17
  %arrayidx = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call, i64 0, i32 5, i64 0
  store i64 %call1, i64* %arrayidx, align 8
  %call3 = call fastcc i64 @lruvec_page_state(i32 noundef 13) #17
  %arrayidx5 = getelementptr %struct.lruvec, %struct.lruvec* %call, i64 0, i32 5, i64 1
  store i64 %call3, i64* %arrayidx5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* noundef readnone %pgdat) unnamed_addr #7 {
entry:
  %__lruvec = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 16
  ret %struct.lruvec* %__lruvec
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shrink_node(%struct.pglist_data* noundef %pgdat, %struct.scan_control* noundef %sc) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %reclaim_state1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 110
  %2 = load %struct.reclaim_state*, %struct.reclaim_state** %reclaim_state1, align 64
  %call2 = call fastcc %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* noundef %pgdat) #17
  %nr = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12
  %3 = bitcast %struct.anon.80* %nr to i8*
  %call3 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 28) #19
  %nr_reclaimed4 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 11
  %4 = load i64, i64* %nr_reclaimed4, align 8
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call2, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %anon_cost = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call2, i64 0, i32 2
  %5 = load i64, i64* %anon_cost, align 8
  %anon_cost6 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 3
  store i64 %5, i64* %anon_cost6, align 8
  %file_cost = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call2, i64 0, i32 3
  %6 = load i64, i64* %file_cost, align 8
  %file_cost7 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 4
  store i64 %6, i64* %file_cost7, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %force_deactivate = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %bf.load = load i16, i16* %force_deactivate, align 8
  %7 = and i16 %bf.load, 4
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else56

if.then:                                          ; preds = %entry
  %call9 = call fastcc i64 @lruvec_page_state(i32 noundef 12) #17
  %arrayidx = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call2, i64 0, i32 5, i64 0
  %8 = load i64, i64* %arrayidx, align 8
  %cmp.not = icmp eq i64 %call9, %8
  br i1 %cmp.not, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  %call11 = call fastcc i1 @inactive_is_low(i32 noundef 0) #17
  br i1 %call11, label %if.then12, label %if.else

if.then12:                                        ; preds = %lor.lhs.false, %if.then
  %bf.load13 = load i16, i16* %force_deactivate, align 8
  %bf.set = or i16 %bf.load13, 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %bf.load19 = load i16, i16* %force_deactivate, align 8
  %bf.set25 = and i16 %bf.load19, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %storemerge = phi i16 [ %bf.set25, %if.else ], [ %bf.set, %if.then12 ]
  store i16 %storemerge, i16* %force_deactivate, align 8
  %call27 = call fastcc i64 @lruvec_page_state(i32 noundef 13) #17
  %arrayidx29 = getelementptr %struct.lruvec, %struct.lruvec* %call2, i64 0, i32 5, i64 1
  %9 = load i64, i64* %arrayidx29, align 8
  %cmp30.not = icmp eq i64 %call27, %9
  br i1 %cmp30.not, label %lor.lhs.false31, label %if.then33

lor.lhs.false31:                                  ; preds = %if.end
  %call32 = call fastcc i1 @inactive_is_low(i32 noundef 2) #17
  br i1 %call32, label %if.then33, label %if.else44

if.then33:                                        ; preds = %lor.lhs.false31, %if.end
  %bf.load35 = load i16, i16* %force_deactivate, align 8
  %bf.set42 = or i16 %bf.load35, 2
  br label %if.end61

if.else44:                                        ; preds = %lor.lhs.false31
  %bf.load46 = load i16, i16* %force_deactivate, align 8
  %bf.set53 = and i16 %bf.load46, -3
  br label %if.end61

if.else56:                                        ; preds = %entry
  %bf.set60 = or i16 %bf.load, 3
  br label %if.end61

if.end61:                                         ; preds = %if.then33, %if.else44, %if.else56
  %storemerge286 = phi i16 [ %bf.set60, %if.else56 ], [ %bf.set53, %if.else44 ], [ %bf.set42, %if.then33 ]
  store i16 %storemerge286, i16* %force_deactivate, align 8
  %call62 = call fastcc i64 @lruvec_page_state(i32 noundef 2) #17
  %priority = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 7
  %10 = load i8, i8* %priority, align 1
  %conv = sext i8 %10 to i64
  %sh_prom = and i64 %conv, 4294967295
  %shr = lshr i64 %call62, %sh_prom
  %tobool63.not = icmp ne i64 %shr, 0
  %bf.load76.pre = load i16, i16* %force_deactivate, align 8
  %11 = and i16 %bf.load76.pre, 2
  %tobool69.not = icmp eq i16 %11, 0
  %or.cond = select i1 %tobool63.not, i1 %tobool69.not, i1 false
  %bf.clear77 = and i16 %bf.load76.pre, -2049
  %masksel = select i1 %or.cond, i16 2048, i16 0
  %storemerge287 = or i16 %bf.clear77, %masksel
  store i16 %storemerge287, i16* %force_deactivate, align 8
  %call82 = call fastcc i64 @global_zone_page_state() #17
  %call83 = call fastcc i64 @global_node_page_state(i32 noundef 3) #17
  %call84 = call fastcc i64 @global_node_page_state(i32 noundef 2) #17
  %arrayidx87 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  %call88 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx87) #17
  br i1 %call88, label %if.end90, label %cleanup

if.end90:                                         ; preds = %if.end61
  %arrayidx91 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0, i32 0, i64 2
  %12 = load i64, i64* %arrayidx91, align 16
  %watermark_boost = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0, i32 1
  %13 = load i64, i64* %watermark_boost, align 8
  %add93 = add i64 %12, %13
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end90
  %total_high_wmark.1 = phi i64 [ %add93, %if.end90 ], [ 0, %if.end61 ]
  %arrayidx87.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  %call88.1 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx87.1) #17
  br i1 %call88.1, label %if.end90.1, label %cleanup.1

if.end90.1:                                       ; preds = %cleanup
  %arrayidx91.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1, i32 0, i64 2
  %14 = load i64, i64* %arrayidx91.1, align 16
  %watermark_boost.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1, i32 1
  %15 = load i64, i64* %watermark_boost.1, align 8
  %add92.1 = add i64 %14, %total_high_wmark.1
  %add93.1 = add i64 %add92.1, %15
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end90.1, %cleanup
  %total_high_wmark.1.1 = phi i64 [ %add93.1, %if.end90.1 ], [ %total_high_wmark.1, %cleanup ]
  %arrayidx87.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  %call88.2 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx87.2) #17
  br i1 %call88.2, label %if.end90.2, label %cleanup.2

if.end90.2:                                       ; preds = %cleanup.1
  %arrayidx91.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2, i32 0, i64 2
  %16 = load i64, i64* %arrayidx91.2, align 16
  %watermark_boost.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2, i32 1
  %17 = load i64, i64* %watermark_boost.2, align 8
  %add92.2 = add i64 %16, %total_high_wmark.1.1
  %add93.2 = add i64 %add92.2, %17
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end90.2, %cleanup.1
  %total_high_wmark.1.2 = phi i64 [ %add93.2, %if.end90.2 ], [ %total_high_wmark.1.1, %cleanup.1 ]
  %arrayidx87.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3
  %call88.3 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx87.3) #17
  br i1 %call88.3, label %if.end90.3, label %cleanup.3

if.end90.3:                                       ; preds = %cleanup.2
  %arrayidx91.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3, i32 0, i64 2
  %18 = load i64, i64* %arrayidx91.3, align 16
  %watermark_boost.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3, i32 1
  %19 = load i64, i64* %watermark_boost.3, align 8
  %add92.3 = add i64 %18, %total_high_wmark.1.2
  %add93.3 = add i64 %add92.3, %19
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end90.3, %cleanup.2
  %total_high_wmark.1.3 = phi i64 [ %add93.3, %if.end90.3 ], [ %total_high_wmark.1.2, %cleanup.2 ]
  %call94 = call fastcc i64 @global_node_page_state(i32 noundef 0) #17
  %add = add i64 %call83, %call82
  %add95 = add i64 %add, %call84
  %cmp96.not = icmp ule i64 %add95, %total_high_wmark.1.3
  %bf.load110.pre = load i16, i16* %force_deactivate, align 8
  %20 = and i16 %bf.load110.pre, 1
  %tobool104.not = icmp eq i16 %20, 0
  %or.cond295 = select i1 %cmp96.not, i1 %tobool104.not, i1 false
  br i1 %or.cond295, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cleanup.3
  %21 = load i8, i8* %priority, align 1
  %conv106 = sext i8 %21 to i64
  %sh_prom107 = and i64 %conv106, 4294967295
  %shr108 = lshr i64 %call94, %sh_prom107
  %tobool109.not = icmp eq i64 %shr108, 0
  %phi.sel = select i1 %tobool109.not, i16 0, i16 4096
  br label %land.end

land.end:                                         ; preds = %cleanup.3, %land.rhs
  %22 = phi i16 [ %phi.sel, %land.rhs ], [ 0, %cleanup.3 ]
  %bf.clear112 = and i16 %bf.load110.pre, -4097
  %bf.set113 = or i16 %bf.clear112, %22
  store i16 %bf.set113, i16* %force_deactivate, align 8
  call fastcc void @shrink_node_memcgs(%struct.pglist_data* noundef %pgdat, %struct.scan_control* noundef %sc) #17
  %tobool116.not = icmp eq %struct.reclaim_state* %2, null
  br i1 %tobool116.not, label %if.end121, label %if.then117

if.then117:                                       ; preds = %land.end
  %reclaimed_slab = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %2, i64 0, i32 0
  %23 = load i64, i64* %reclaimed_slab, align 8
  %24 = load i64, i64* %nr_reclaimed4, align 8
  %add119 = add i64 %24, %23
  store i64 %add119, i64* %nr_reclaimed4, align 8
  store i64 0, i64* %reclaimed_slab, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %land.end
  %25 = load i64, i64* %nr_reclaimed4, align 8
  %tobool128.not = icmp eq i64 %25, %4
  %call131 = call fastcc i32 @current_is_kswapd() #17
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end156, label %if.then133

if.then133:                                       ; preds = %if.end121
  %writeback = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 3
  %26 = load i32, i32* %writeback, align 4
  %tobool135.not = icmp eq i32 %26, 0
  br i1 %tobool135.not, label %if.end143, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.then133
  %taken = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 6
  %27 = load i32, i32* %taken, align 8
  %cmp140 = icmp eq i32 %26, %27
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %land.lhs.true136
  %flags = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 17
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags) #17
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %land.lhs.true136, %if.then133
  %unqueued_dirty = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 1
  %28 = load i32, i32* %unqueued_dirty, align 4
  %file_taken = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 5
  %29 = load i32, i32* %file_taken, align 4
  %cmp146 = icmp eq i32 %28, %29
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.end143
  %flags149 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 17
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %flags149) #17
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end143
  %immediate = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 4
  %30 = load i32, i32* %immediate, align 8
  %tobool152.not = icmp eq i32 %30, 0
  br i1 %tobool152.not, label %if.end156, label %if.then153

if.then153:                                       ; preds = %if.end150
  %call154 = call i64 @congestion_wait(i32 noundef 0, i64 noundef 25) #19
  br label %if.end156

if.end156:                                        ; preds = %if.end150, %if.then153, %if.end121
  %call157 = call fastcc i32 @current_is_kswapd() #17
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end176, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %if.end156
  %dirty = getelementptr inbounds %struct.anon.80, %struct.anon.80* %nr, i64 0, i32 0
  %31 = load i32, i32* %dirty, align 8
  %tobool167.not = icmp eq i32 %31, 0
  br i1 %tobool167.not, label %if.end176, label %land.lhs.true168

land.lhs.true168:                                 ; preds = %land.lhs.true165
  %congested = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 2
  %32 = load i32, i32* %congested, align 8
  %cmp172 = icmp eq i32 %31, %32
  br i1 %cmp172, label %if.then174, label %if.end176

if.then174:                                       ; preds = %land.lhs.true168
  %flags175 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call2, i64 0, i32 6
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %flags175) #17
  br label %if.end176

if.end176:                                        ; preds = %if.end156, %if.then174, %land.lhs.true168, %land.lhs.true165
  %call177 = call fastcc i32 @current_is_kswapd() #17
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %land.lhs.true179, label %if.end194

land.lhs.true179:                                 ; preds = %if.end176
  %call180 = call fastcc i32 @current_may_throttle() #17
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end194, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %land.lhs.true179
  %bf.load183 = load i16, i16* %force_deactivate, align 8
  %33 = and i16 %bf.load183, 512
  %tobool187.not = icmp eq i16 %33, 0
  br i1 %tobool187.not, label %land.lhs.true188, label %if.end194

land.lhs.true188:                                 ; preds = %land.lhs.true182
  %flags189 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call2, i64 0, i32 6
  %34 = load volatile i64, i64* %flags189, align 8
  %conv.i289 = and i64 %34, 1
  %tobool191.not = icmp eq i64 %conv.i289, 0
  br i1 %tobool191.not, label %if.end194, label %if.then192

if.then192:                                       ; preds = %land.lhs.true188
  %call193 = call i64 @wait_iff_congested(i32 noundef 0, i64 noundef 25) #19
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %land.lhs.true188, %land.lhs.true182, %land.lhs.true179, %if.end176
  br i1 %tobool128.not, label %if.end202, label %if.then201

if.then201:                                       ; preds = %if.end194
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 12
  store i32 0, i32* %kswapd_failures, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @lruvec_page_state(i32 noundef %idx) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @global_node_page_state(i32 noundef %idx) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @inactive_is_low(i32 noundef %inactive_lru) unnamed_addr #2 {
entry:
  %add = add i32 %inactive_lru, 1
  %call = call fastcc i64 @lruvec_page_state(i32 noundef %inactive_lru) #17
  %call3 = call fastcc i64 @lruvec_page_state(i32 noundef %add) #17
  %add4 = add i64 %call3, %call
  %tobool.not = icmp ult i64 %add4, 262144
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %shr = lshr i64 %add4, 18
  %mul = mul nuw nsw i64 %shr, 10
  %call5 = call i64 @int_sqrt(i64 noundef %mul) #19
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %inactive_ratio.0 = phi i64 [ %call5, %if.then ], [ 1, %entry ]
  %mul6 = mul i64 %inactive_ratio.0, %call
  %cmp = icmp ult i64 %mul6, %call3
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_zone_page_state() unnamed_addr #5 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 0, i32 0), align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state(i32 noundef %item) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @global_node_page_state_pages(i32 noundef %item) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shrink_node_memcgs(%struct.pglist_data* noundef %pgdat, %struct.scan_control* nocapture noundef %sc) unnamed_addr #2 {
entry:
  %call1 = call fastcc %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* noundef %pgdat) #17
  call fastcc void @_cond_resched() #17
  call fastcc void @shrink_lruvec(%struct.lruvec* noundef %call1, %struct.scan_control* noundef %sc) #17
  %gfp_mask = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  %0 = load i32, i32* %gfp_mask, align 8
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 6
  %1 = load i32, i32* %node_id, align 16
  %priority = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 7
  %2 = load i8, i8* %priority, align 1
  %conv = sext i8 %2 to i32
  %3 = call fastcc i64 @shrink_slab(i32 noundef %0, i32 noundef %1, i32 noundef %conv) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @congestion_wait(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @current_may_throttle() unnamed_addr #12 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1048576
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %backing_dev_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 111
  %3 = load %struct.backing_dev_info*, %struct.backing_dev_info** %backing_dev_info, align 8
  %cmp = icmp eq %struct.backing_dev_info* %3, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @bdi_write_congested(%struct.backing_dev_info* noundef nonnull %3) #17
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_iff_congested(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @int_sqrt(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state_pages(i32 noundef %item) unnamed_addr #5 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shrink_lruvec(%struct.lruvec* noundef %lruvec, %struct.scan_control* nocapture noundef %sc) unnamed_addr #2 {
entry:
  %nr = alloca [5 x i64], align 8
  %targets = alloca [5 x i64], align 8
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast [5 x i64]* %nr to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !14
  %1 = bitcast [5 x i64]* %targets to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !14
  %nr_to_reclaim1 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 0
  %2 = load i64, i64* %nr_to_reclaim1, align 8
  %3 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !14
  %arraydecay = getelementptr inbounds [5 x i64], [5 x i64]* %nr, i64 0, i64 0
  call fastcc void @get_scan_count(%struct.lruvec* noundef %lruvec, %struct.scan_control* noundef %sc, i64* noundef nonnull %arraydecay) #17
  %arraydecay2 = getelementptr inbounds [5 x i64], [5 x i64]* %targets, i64 0, i64 0
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef 40) #19
  %call5 = call fastcc i32 @current_is_kswapd() #17
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %priority = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 7
  %4 = load i8, i8* %priority, align 1
  %cmp = icmp eq i8 %4, 12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #19
  %arrayidx8 = getelementptr inbounds [5 x i64], [5 x i64]* %nr, i64 0, i64 3
  %arrayidx10 = getelementptr inbounds [5 x i64], [5 x i64]* %nr, i64 0, i64 2
  %6 = load i64, i64* %arraydecay, align 8
  %tobool7203 = icmp ne i64 %6, 0
  %7 = load i64, i64* %arrayidx8, align 8
  %tobool9204 = icmp ne i64 %7, 0
  %or.cond205 = select i1 %tobool7203, i1 true, i1 %tobool9204
  %8 = load i64, i64* %arrayidx10, align 8
  %tobool11206 = icmp ne i64 %8, 0
  %or.cond129207 = select i1 %or.cond205, i1 true, i1 %tobool11206
  br i1 %or.cond129207, label %for.cond.preheader.lr.ph, label %while.end

for.cond.preheader.lr.ph:                         ; preds = %land.end
  %arrayidx36 = getelementptr inbounds [5 x i64], [5 x i64]* %nr, i64 0, i64 1
  %arrayidx51 = getelementptr inbounds [5 x i64], [5 x i64]* %targets, i64 0, i64 2
  %arrayidx52 = getelementptr inbounds [5 x i64], [5 x i64]* %targets, i64 0, i64 3
  %arrayidx47 = getelementptr inbounds [5 x i64], [5 x i64]* %targets, i64 0, i64 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %cleanup
  %9 = phi i64 [ %6, %for.cond.preheader.lr.ph ], [ %26, %cleanup ]
  %nr_reclaimed.0209 = phi i64 [ 0, %for.cond.preheader.lr.ph ], [ %nr_reclaimed.2.3, %cleanup ]
  %scan_adjusted.0.off0208 = phi i1 [ %5, %for.cond.preheader.lr.ph ], [ %scan_adjusted.1.off0, %cleanup ]
  %tobool15.not = icmp eq i64 %9, 0
  br i1 %tobool15.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.cond.preheader
  %cmp18 = icmp ult i64 %9, 32
  %cond = select i1 %cmp18, i64 %9, i64 32
  %sub = sub i64 %9, %cond
  store i64 %sub, i64* %arraydecay, align 8
  %call22 = call fastcc i64 @shrink_list(i32 noundef 0, i64 noundef %cond, %struct.lruvec* noundef %lruvec, %struct.scan_control* noundef %sc) #17
  %add = add i64 %call22, %nr_reclaimed.0209
  br label %for.inc

for.inc:                                          ; preds = %for.cond.preheader, %if.then
  %nr_reclaimed.2 = phi i64 [ %add, %if.then ], [ %nr_reclaimed.0209, %for.cond.preheader ]
  %10 = load i64, i64* %arrayidx36, align 8
  %tobool15.not.1 = icmp eq i64 %10, 0
  br i1 %tobool15.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %cmp18.1 = icmp ult i64 %10, 32
  %cond.1 = select i1 %cmp18.1, i64 %10, i64 32
  %sub.1 = sub i64 %10, %cond.1
  store i64 %sub.1, i64* %arrayidx36, align 8
  %call22.1 = call fastcc i64 @shrink_list(i32 noundef 1, i64 noundef %cond.1, %struct.lruvec* noundef %lruvec, %struct.scan_control* noundef %sc) #17
  %add.1 = add i64 %call22.1, %nr_reclaimed.2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %nr_reclaimed.2.1 = phi i64 [ %add.1, %if.then.1 ], [ %nr_reclaimed.2, %for.inc ]
  %11 = load i64, i64* %arrayidx10, align 8
  %tobool15.not.2 = icmp eq i64 %11, 0
  br i1 %tobool15.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %cmp18.2 = icmp ult i64 %11, 32
  %cond.2 = select i1 %cmp18.2, i64 %11, i64 32
  %sub.2 = sub i64 %11, %cond.2
  store i64 %sub.2, i64* %arrayidx10, align 8
  %call22.2 = call fastcc i64 @shrink_list(i32 noundef 2, i64 noundef %cond.2, %struct.lruvec* noundef %lruvec, %struct.scan_control* noundef %sc) #17
  %add.2 = add i64 %call22.2, %nr_reclaimed.2.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %nr_reclaimed.2.2 = phi i64 [ %add.2, %if.then.2 ], [ %nr_reclaimed.2.1, %for.inc.1 ]
  %12 = load i64, i64* %arrayidx8, align 8
  %tobool15.not.3 = icmp eq i64 %12, 0
  br i1 %tobool15.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %cmp18.3 = icmp ult i64 %12, 32
  %cond.3 = select i1 %cmp18.3, i64 %12, i64 32
  %sub.3 = sub i64 %12, %cond.3
  store i64 %sub.3, i64* %arrayidx8, align 8
  %call22.3 = call fastcc i64 @shrink_list(i32 noundef 3, i64 noundef %cond.3, %struct.lruvec* noundef %lruvec, %struct.scan_control* noundef %sc) #17
  %add.3 = add i64 %call22.3, %nr_reclaimed.2.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %nr_reclaimed.2.3 = phi i64 [ %add.3, %if.then.3 ], [ %nr_reclaimed.2.2, %for.inc.2 ]
  call fastcc void @_cond_resched() #17
  %cmp25 = icmp ult i64 %nr_reclaimed.2.3, %2
  %brmerge = select i1 %cmp25, i1 true, i1 %scan_adjusted.0.off0208
  br i1 %brmerge, label %cleanup, label %if.end31

if.end31:                                         ; preds = %for.inc.3
  %13 = load i64, i64* %arrayidx10, align 8
  %14 = load i64, i64* %arrayidx8, align 8
  %add34 = add i64 %14, %13
  %15 = load i64, i64* %arraydecay, align 8
  %16 = load i64, i64* %arrayidx36, align 8
  %add37 = add i64 %16, %15
  %tobool38 = icmp ne i64 %add34, 0
  %tobool40 = icmp ne i64 %add37, 0
  %or.cond128 = select i1 %tobool38, i1 %tobool40, i1 false
  br i1 %or.cond128, label %if.end42, label %while.end

if.end42:                                         ; preds = %if.end31
  %cmp43 = icmp ugt i64 %add34, %add37
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end42
  %17 = load i64, i64* %arraydecay2, align 8
  br label %if.end57

if.else:                                          ; preds = %if.end42
  %18 = load i64, i64* %arrayidx51, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then45
  %arrayidx52.sink = phi i64* [ %arrayidx52, %if.else ], [ %arrayidx47, %if.then45 ]
  %.sink212 = phi i64 [ %18, %if.else ], [ %17, %if.then45 ]
  %add34.sink = phi i64 [ %add34, %if.else ], [ %add37, %if.then45 ]
  %cond65 = phi i32 [ 0, %if.else ], [ 2, %if.then45 ]
  %lru.1 = phi i32 [ 2, %if.else ], [ 0, %if.then45 ]
  %19 = load i64, i64* %arrayidx52.sink, align 8
  %add53 = add i64 %.sink212, 1
  %add54 = add i64 %add53, %19
  %mul55 = mul i64 %add34.sink, 100
  %div56 = udiv i64 %mul55, %add54
  %idxprom58 = zext i32 %lru.1 to i64
  %arrayidx59 = getelementptr [5 x i64], [5 x i64]* %nr, i64 0, i64 %idxprom58
  store i64 0, i64* %arrayidx59, align 8
  %add60 = or i32 %lru.1, 1
  %idxprom61 = zext i32 %add60 to i64
  %arrayidx62 = getelementptr [5 x i64], [5 x i64]* %nr, i64 0, i64 %idxprom61
  store i64 0, i64* %arrayidx62, align 8
  %idxprom66 = zext i32 %cond65 to i64
  %arrayidx67 = getelementptr [5 x i64], [5 x i64]* %targets, i64 0, i64 %idxprom66
  %20 = load i64, i64* %arrayidx67, align 8
  %arrayidx69 = getelementptr [5 x i64], [5 x i64]* %nr, i64 0, i64 %idxprom66
  %21 = load i64, i64* %arrayidx69, align 8
  %sub70 = sub i64 %20, %21
  %sub73 = sub i64 100, %div56
  %mul74 = mul i64 %20, %sub73
  %div75 = udiv i64 %mul74, 100
  %22 = call i64 @llvm.usub.sat.i64(i64 %div75, i64 %sub70)
  store i64 %22, i64* %arrayidx69, align 8
  %add90 = or i32 %cond65, 1
  %idxprom91 = zext i32 %add90 to i64
  %arrayidx92 = getelementptr [5 x i64], [5 x i64]* %targets, i64 0, i64 %idxprom91
  %23 = load i64, i64* %arrayidx92, align 8
  %arrayidx94 = getelementptr [5 x i64], [5 x i64]* %nr, i64 0, i64 %idxprom91
  %24 = load i64, i64* %arrayidx94, align 8
  %sub95 = sub i64 %23, %24
  %mul99 = mul i64 %23, %sub73
  %div100 = udiv i64 %mul99, 100
  %25 = call i64 @llvm.usub.sat.i64(i64 %div100, i64 %sub95)
  store i64 %25, i64* %arrayidx94, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.end57
  %scan_adjusted.1.off0 = phi i1 [ true, %if.end57 ], [ %scan_adjusted.0.off0208, %for.inc.3 ]
  %26 = load i64, i64* %arraydecay, align 8
  %tobool7 = icmp ne i64 %26, 0
  %27 = load i64, i64* %arrayidx8, align 8
  %tobool9 = icmp ne i64 %27, 0
  %or.cond = select i1 %tobool7, i1 true, i1 %tobool9
  %28 = load i64, i64* %arrayidx10, align 8
  %tobool11 = icmp ne i64 %28, 0
  %or.cond129 = select i1 %or.cond, i1 true, i1 %tobool11
  br i1 %or.cond129, label %for.cond.preheader, label %while.end

while.end:                                        ; preds = %cleanup, %if.end31, %land.end
  %nr_reclaimed.3 = phi i64 [ 0, %land.end ], [ %nr_reclaimed.2.3, %if.end31 ], [ %nr_reclaimed.2.3, %cleanup ]
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #19
  %nr_reclaimed118 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 11
  %29 = load i64, i64* %nr_reclaimed118, align 8
  %add119 = add i64 %29, %nr_reclaimed.3
  store i64 %add119, i64* %nr_reclaimed118, align 8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #21
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @get_scan_count(%struct.lruvec* noundef %lruvec, %struct.scan_control* nocapture noundef %sc, i64* nocapture noundef writeonly %nr) unnamed_addr #0 {
entry:
  %low = alloca i64, align 8
  %min = alloca i64, align 8
  %may_swap = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %0 = bitcast i64* %low to i8*
  %1 = bitcast i64* %min to i8*
  %reclaim_idx = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  %priority80 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %entry, %if.end79
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end79 ]
  %2 = trunc i64 %indvars.iv to i32
  %call44 = call fastcc i1 @is_file_lru(i32 noundef %2) #17
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  store i64 0, i64* %low, align 8, !annotation !14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #21
  store i64 0, i64* %min, align 8, !annotation !14
  %3 = load i8, i8* %reclaim_idx, align 4
  %conv46 = sext i8 %3 to i32
  %call47 = call fastcc i64 @lruvec_lru_size(%struct.lruvec* noundef %lruvec, i32 noundef %2, i32 noundef %conv46) #17
  call fastcc void @mem_cgroup_protection(i64* noundef nonnull %min, i64* noundef nonnull %low) #17
  %4 = load i64, i64* %min, align 8
  %tobool48 = icmp ne i64 %4, 0
  %5 = load i64, i64* %low, align 8
  %tobool50 = icmp ne i64 %5, 0
  %or.cond123 = select i1 %tobool48, i1 true, i1 %tobool50
  br i1 %or.cond123, label %if.then51, label %if.end79

if.then51:                                        ; preds = %for.body
  %bf.load53 = load i16, i16* %may_swap, align 8
  %6 = and i16 %bf.load53, 128
  %tobool57.not = icmp eq i16 %6, 0
  %cmp59 = icmp ugt i64 %5, %4
  %or.cond = select i1 %tobool57.not, i1 %cmp59, i1 false
  br i1 %or.cond, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.then51
  %bf.set = or i16 %bf.load53, 256
  store i16 %bf.set, i16* %may_swap, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %if.then61
  %protection.0 = phi i64 [ %5, %if.then61 ], [ %4, %if.then51 ]
  %mul67 = mul i64 %protection.0, %call47
  %add68 = add i64 %protection.0, 1
  %div69 = udiv i64 %mul67, %add68
  %sub70 = sub i64 %call47, %div69
  %cmp72 = icmp ugt i64 %sub70, 32
  %cond77 = select i1 %cmp72, i64 %sub70, i64 32
  br label %if.end79

if.end79:                                         ; preds = %for.body, %if.end64
  %scan.0 = phi i64 [ %cond77, %if.end64 ], [ %call47, %for.body ]
  %7 = load i8, i8* %priority80, align 1
  %conv81 = sext i8 %7 to i64
  %sh_prom = and i64 %conv81, 4294967295
  %shr = lshr i64 %scan.0, %sh_prom
  %spec.select = select i1 %call44, i64 %shr, i64 0
  %arrayidx121 = getelementptr i64, i64* %nr, i64 %indvars.iv
  store i64 %spec.select, i64* %arrayidx121, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @shrink_list(i32 noundef %lru, i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.scan_control* nocapture noundef %sc) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @is_active_lru(i32 noundef %lru) #17
  br i1 %call, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %may_deactivate = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %bf.load = load i16, i16* %may_deactivate, align 8
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %call1 = call fastcc i1 @is_file_lru(i32 noundef %lru) #17
  %conv = zext i1 %call1 to i32
  %shl = shl nuw nsw i32 1, %conv
  %and = and i32 %shl, %bf.cast
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call fastcc void @shrink_active_list(i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.scan_control* noundef %sc, i32 noundef %lru) #17
  br label %return

if.else:                                          ; preds = %if.then
  %bf.set = or i16 %bf.load, 8
  store i16 %bf.set, i16* %may_deactivate, align 8
  br label %return

if.end5:                                          ; preds = %entry
  %call6 = call fastcc i64 @shrink_inactive_list(i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.scan_control* noundef %sc, i32 noundef %lru) #17
  br label %return

return:                                           ; preds = %if.then2, %if.else, %if.end5
  %retval.0 = phi i64 [ %call6, %if.end5 ], [ 0, %if.else ], [ 0, %if.then2 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shrink_active_list(i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.scan_control* nocapture noundef readonly %sc, i32 noundef %lru) unnamed_addr #2 {
entry:
  %nr_scanned = alloca i64, align 8
  %vm_flags = alloca i64, align 8
  %l_hold = alloca %struct.list_head, align 8
  %l_active = alloca %struct.list_head, align 8
  %l_inactive = alloca %struct.list_head, align 8
  %0 = bitcast i64* %nr_scanned to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  store i64 0, i64* %nr_scanned, align 8, !annotation !14
  %1 = bitcast i64* %vm_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #21
  store i64 0, i64* %vm_flags, align 8, !annotation !14
  %2 = bitcast %struct.list_head* %l_hold to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %l_hold, i64 0, i32 0
  store %struct.list_head* %l_hold, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %l_hold, i64 0, i32 1
  store %struct.list_head* %l_hold, %struct.list_head** %prev, align 8
  %3 = bitcast %struct.list_head* %l_active to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #21
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %l_active, i64 0, i32 0
  store %struct.list_head* %l_active, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %l_active, i64 0, i32 1
  store %struct.list_head* %l_active, %struct.list_head** %prev2, align 8
  %4 = bitcast %struct.list_head* %l_inactive to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #21
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %l_inactive, i64 0, i32 0
  store %struct.list_head* %l_inactive, %struct.list_head** %next3, align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %l_inactive, i64 0, i32 1
  store %struct.list_head* %l_inactive, %struct.list_head** %prev4, align 8
  %call = call fastcc i1 @is_file_lru(i32 noundef %lru) #17
  %call5 = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #17
  call void @lru_add_drain() #19
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call6 = call fastcc i64 @isolate_lru_pages(i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.list_head* noundef nonnull %l_hold, i64* noundef nonnull %nr_scanned, %struct.scan_control* noundef %sc, i32 noundef %lru) #17
  %add = select i1 %call, i32 8, i32 7
  call void @__mod_node_page_state(%struct.pglist_data* noundef %call5, i32 noundef %add, i64 noundef %call6) #19
  %5 = load i64, i64* %nr_scanned, align 8
  call fastcc void @__count_vm_events(i32 noundef 23, i64 noundef %5) #17
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call10119121 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %l_hold) #17
  %tobool.not120122 = icmp eq i32 %call10119121, 0
  br i1 %tobool.not120122, label %while.body.lr.ph.lr.ph, label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %6 = bitcast %struct.list_head** %prev to i8**
  %target_mem_cgroup = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.lr.ph.lr.ph
  call fastcc void @_cond_resched() #17
  %7 = load i8*, i8** %6, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 -8
  %8 = bitcast i8* %add.ptr to %struct.page*
  %lru14 = bitcast i8* %7 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru14) #17
  %call15 = call fastcc i1 @page_evictable(%struct.page* noundef %8) #17
  br i1 %call15, label %if.end22, label %if.then21, !prof !11

if.then21:                                        ; preds = %while.body
  call void @putback_lru_page(%struct.page* noundef %8) #17
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then21, %if.end56
  %call10 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %l_hold) #17
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %while.body.backedge, label %while.end

while.body.backedge:                              ; preds = %while.cond.backedge, %if.then51
  br label %while.body

if.end22:                                         ; preds = %while.body
  %9 = load i32, i32* @buffer_heads_over_limit, align 4
  %tobool23.not = icmp eq i32 %9, 0
  br i1 %tobool23.not, label %if.end43, label %if.then31, !prof !11

if.then31:                                        ; preds = %if.end22
  %call32 = call fastcc i32 @page_has_private(%struct.page* noundef %8) #17
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then31
  %call34 = call fastcc i32 @trylock_page(%struct.page* noundef %8) #17
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end43, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  %call37 = call fastcc i32 @page_has_private(%struct.page* noundef %8) #17
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.then36
  %call40 = call i32 @try_to_release_page(%struct.page* noundef %8, i32 noundef 0) #19
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then36
  call void @unlock_page(%struct.page* noundef %8) #19
  br label %if.end43

if.end43:                                         ; preds = %if.then31, %land.lhs.true, %if.end41, %if.end22
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %target_mem_cgroup, align 8
  %call44 = call i32 @page_referenced(%struct.page* noundef %8, i32 noundef 0, %struct.mem_cgroup* noundef %10, i64* noundef nonnull %vm_flags) #19
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end56, label %if.then46

if.then46:                                        ; preds = %if.end43
  %11 = load i64, i64* %vm_flags, align 8
  %and = and i64 %11, 4
  %tobool47.not = icmp eq i64 %and, 0
  br i1 %tobool47.not, label %if.end56, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.then46
  %call49 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %8) #17
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  %lru14.le = bitcast i8* %7 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %lru14.le, %struct.list_head* noundef nonnull %l_active) #17
  %call10119 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %l_hold) #17
  %tobool.not120 = icmp eq i32 %call10119, 0
  br i1 %tobool.not120, label %while.body.backedge, label %while.end

if.end56:                                         ; preds = %if.then46, %land.lhs.true48, %if.end43
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %8) #19
  %12 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %12, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i) #19
  %call.i115 = call fastcc i64 @_compound_head(%struct.page* noundef %8) #19
  %13 = inttoptr i64 %call.i115 to %struct.page*
  %flags.i116 = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 6, i64* noundef %flags.i116) #19
  call fastcc void @list_add(%struct.list_head* noundef %lru14, %struct.list_head* noundef nonnull %l_inactive) #17
  br label %while.cond.backedge

while.end:                                        ; preds = %if.then51, %while.cond.backedge, %entry
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call59 = call fastcc i32 @move_pages_to_lru(%struct.lruvec* noundef %lruvec, %struct.list_head* noundef nonnull %l_active) #17
  %call60 = call fastcc i32 @move_pages_to_lru(%struct.lruvec* noundef %lruvec, %struct.list_head* noundef nonnull %l_inactive) #17
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %l_inactive, %struct.list_head* noundef nonnull %l_active) #17
  %conv61 = zext i32 %call60 to i64
  call fastcc void @__count_vm_events(i32 noundef 18, i64 noundef %conv61) #17
  %sub = sub i64 0, %call6
  call void @__mod_node_page_state(%struct.pglist_data* noundef %call5, i32 noundef %add, i64 noundef %sub) #19
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @free_unref_page_list(%struct.list_head* noundef nonnull %l_active) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_file_lru(i32 noundef %lru) unnamed_addr #7 {
entry:
  %0 = and i32 %lru, -2
  %1 = icmp eq i32 %0, 2
  ret i1 %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i64 @lruvec_lru_size(%struct.lruvec* noundef %lruvec, i32 noundef %lru, i32 noundef %zone_idx) unnamed_addr #4 {
entry:
  %cmp24 = icmp sgt i32 %zone_idx, -1
  br i1 %cmp24, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %call = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #17
  %add6 = add i32 %lru, 1
  %umin = call i32 @llvm.umin.i32(i32 %zone_idx, i32 3)
  %0 = add nuw nsw i32 %umin, 1
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  %call2 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx) #17
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body.lr.ph
  %call7 = call fastcc i64 @zone_page_state(%struct.zone* noundef %arrayidx, i32 noundef %add6) #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.lr.ph, %if.end
  %size.2 = phi i64 [ %call7, %if.end ], [ 0, %for.body.lr.ph ]
  %exitcond.not = icmp eq i32 %umin, 0
  br i1 %exitcond.not, label %for.end, label %for.body.1

for.body.1:                                       ; preds = %cleanup
  %arrayidx.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 1
  %call2.1 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx.1) #17
  br i1 %call2.1, label %if.end.1, label %cleanup.1

if.end.1:                                         ; preds = %for.body.1
  %call7.1 = call fastcc i64 @zone_page_state(%struct.zone* noundef %arrayidx.1, i32 noundef %add6) #17
  %add8.1 = add i64 %call7.1, %size.2
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %for.body.1
  %size.2.1 = phi i64 [ %add8.1, %if.end.1 ], [ %size.2, %for.body.1 ]
  %exitcond.not.1 = icmp eq i32 %0, 2
  br i1 %exitcond.not.1, label %for.end, label %for.body.2

for.body.2:                                       ; preds = %cleanup.1
  %arrayidx.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 2
  %call2.2 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx.2) #17
  br i1 %call2.2, label %if.end.2, label %cleanup.2

if.end.2:                                         ; preds = %for.body.2
  %call7.2 = call fastcc i64 @zone_page_state(%struct.zone* noundef %arrayidx.2, i32 noundef %add6) #17
  %add8.2 = add i64 %call7.2, %size.2.1
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %for.body.2
  %size.2.2 = phi i64 [ %add8.2, %if.end.2 ], [ %size.2.1, %for.body.2 ]
  %exitcond.not.2 = icmp eq i32 %0, 3
  br i1 %exitcond.not.2, label %for.end, label %for.body.3

for.body.3:                                       ; preds = %cleanup.2
  %arrayidx.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 3
  %call2.3 = call fastcc i1 @managed_zone(%struct.zone* noundef %arrayidx.3) #17
  br i1 %call2.3, label %if.end.3, label %for.end

if.end.3:                                         ; preds = %for.body.3
  %call7.3 = call fastcc i64 @zone_page_state(%struct.zone* noundef %arrayidx.3, i32 noundef %add6) #17
  %add8.3 = add i64 %call7.3, %size.2.2
  br label %for.end

for.end:                                          ; preds = %cleanup, %cleanup.1, %cleanup.2, %if.end.3, %for.body.3, %entry
  %size.0.lcssa = phi i64 [ 0, %entry ], [ %size.2, %cleanup ], [ %size.2.1, %cleanup.1 ], [ %size.2.2, %cleanup.2 ], [ %add8.3, %if.end.3 ], [ %size.2.2, %for.body.3 ]
  ret i64 %size.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @mem_cgroup_protection(i64* nocapture noundef writeonly %min, i64* nocapture noundef writeonly %low) unnamed_addr #15 {
entry:
  store i64 0, i64* %low, align 8
  store i64 0, i64* %min, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_active_lru(i32 noundef %lru) unnamed_addr #7 {
entry:
  %0 = and i32 %lru, -3
  %1 = icmp eq i32 %0, 1
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @shrink_inactive_list(i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.scan_control* nocapture noundef %sc, i32 noundef %lru) unnamed_addr #2 {
entry:
  %page_list = alloca %struct.list_head, align 8
  %nr_scanned = alloca i64, align 8
  %stat = alloca %struct.reclaim_stat, align 4
  %0 = bitcast %struct.list_head* %page_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %page_list, i64 0, i32 0
  store %struct.list_head* %page_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %page_list, i64 0, i32 1
  store %struct.list_head* %page_list, %struct.list_head** %prev, align 8
  %1 = bitcast i64* %nr_scanned to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #21
  store i64 0, i64* %nr_scanned, align 8, !annotation !14
  %2 = bitcast %struct.reclaim_stat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %2) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %2, i8 0, i64 44, i1 false), !annotation !14
  %call = call fastcc i1 @is_file_lru(i32 noundef %lru) #17
  %call1 = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #17
  %conv = zext i1 %call to i32
  %call2 = call fastcc i32 @too_many_isolated(i32 noundef %conv, %struct.scan_control* noundef %sc) #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.end, label %while.body, !prof !11

while.body:                                       ; preds = %entry
  call void @msleep(i32 noundef 100) #19
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call9 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %4) #17
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %while.cond.1, label %cleanup

while.cond.1:                                     ; preds = %while.body
  %call2.1 = call fastcc i32 @too_many_isolated(i32 noundef %conv, %struct.scan_control* noundef %sc) #17
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %while.end, label %cleanup, !prof !11

while.end:                                        ; preds = %while.cond.1, %entry
  call void @lru_add_drain() #19
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call13 = call fastcc i64 @isolate_lru_pages(i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.list_head* noundef nonnull %page_list, i64* noundef nonnull %nr_scanned, %struct.scan_control* noundef %sc, i32 noundef %lru) #17
  %add = select i1 %call, i32 8, i32 7
  call void @__mod_node_page_state(%struct.pglist_data* noundef %call1, i32 noundef %add, i64 noundef %call13) #19
  %call16 = call fastcc i32 @current_is_kswapd() #17
  %tobool17.not = icmp eq i32 %call16, 0
  %cond = select i1 %tobool17.not, i32 30, i32 29
  %5 = load i64, i64* %nr_scanned, align 8
  call fastcc void @__count_vm_events(i32 noundef %cond, i64 noundef %5) #17
  %add24 = select i1 %call, i32 33, i32 32
  call fastcc void @__count_vm_events(i32 noundef %add24, i64 noundef %5) #17
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %cmp = icmp eq i64 %call13, 0
  br i1 %cmp, label %cleanup, label %if.end28

if.end28:                                         ; preds = %while.end
  %call29 = call fastcc i32 @shrink_page_list(%struct.list_head* noundef nonnull %page_list, %struct.pglist_data* noundef %call1, %struct.scan_control* noundef %sc, %struct.reclaim_stat* noundef nonnull %stat, i1 noundef false) #17
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call31 = call fastcc i32 @move_pages_to_lru(%struct.lruvec* noundef %lruvec, %struct.list_head* noundef nonnull %page_list) #17
  %sub = sub i64 0, %call13
  call void @__mod_node_page_state(%struct.pglist_data* noundef %call1, i32 noundef %add, i64 noundef %sub) #19
  %call35 = call fastcc i32 @current_is_kswapd() #17
  %tobool36.not = icmp eq i32 %call35, 0
  %cond37 = select i1 %tobool36.not, i32 26, i32 25
  %conv40 = zext i32 %call29 to i64
  call fastcc void @__count_vm_events(i32 noundef %cond37, i64 noundef %conv40) #17
  %add46 = select i1 %call, i32 35, i32 34
  call fastcc void @__count_vm_events(i32 noundef %add46, i64 noundef %conv40) #17
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %nr_pageout = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 5
  %6 = load i32, i32* %nr_pageout, align 4
  call void @lru_note_cost(%struct.lruvec* noundef %lruvec, i1 noundef %call, i32 noundef %6) #19
  call void @free_unref_page_list(%struct.list_head* noundef nonnull %page_list) #19
  %nr_unqueued_dirty = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 1
  %7 = load i32, i32* %nr_unqueued_dirty, align 4
  %conv50 = zext i32 %7 to i64
  %cmp51 = icmp eq i64 %call13, %conv50
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end28
  call void @wakeup_flusher_threads(i32 noundef 1) #19
  %.pre = load i32, i32* %nr_unqueued_dirty, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end28
  %8 = phi i32 [ %.pre, %if.then53 ], [ %7, %if.end28 ]
  %nr_dirty = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 0
  %9 = load i32, i32* %nr_dirty, align 4
  %dirty = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 0
  %10 = load i32, i32* %dirty, align 8
  %add55 = add i32 %10, %9
  store i32 %add55, i32* %dirty, align 8
  %nr_congested = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 2
  %11 = load i32, i32* %nr_congested, align 4
  %congested = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 2
  %12 = load i32, i32* %congested, align 8
  %add57 = add i32 %12, %11
  store i32 %add57, i32* %congested, align 8
  %unqueued_dirty = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 1
  %13 = load i32, i32* %unqueued_dirty, align 4
  %add60 = add i32 %13, %8
  store i32 %add60, i32* %unqueued_dirty, align 4
  %nr_writeback = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 3
  %14 = load i32, i32* %nr_writeback, align 4
  %writeback = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 3
  %15 = load i32, i32* %writeback, align 4
  %add62 = add i32 %15, %14
  store i32 %add62, i32* %writeback, align 4
  %nr_immediate = getelementptr inbounds %struct.reclaim_stat, %struct.reclaim_stat* %stat, i64 0, i32 4
  %16 = load i32, i32* %nr_immediate, align 4
  %immediate = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 4
  %17 = load i32, i32* %immediate, align 8
  %add64 = add i32 %17, %16
  store i32 %add64, i32* %immediate, align 8
  %taken = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 6
  %18 = load i32, i32* %taken, align 8
  %19 = trunc i64 %call13 to i32
  %conv68 = add i32 %18, %19
  store i32 %conv68, i32* %taken, align 8
  br i1 %call, label %if.then70, label %cleanup

if.then70:                                        ; preds = %if.end54
  %file_taken = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 12, i32 5
  %20 = load i32, i32* %file_taken, align 4
  %conv74 = add i32 %20, %19
  store i32 %conv74, i32* %file_taken, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.body, %while.cond.1, %if.end54, %if.then70, %while.end
  %retval.0 = phi i64 [ 0, %while.end ], [ %conv40, %if.then70 ], [ %conv40, %if.end54 ], [ 32, %while.body ], [ 0, %while.cond.1 ]
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %2) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @too_many_isolated(i32 noundef %file, %struct.scan_control* nocapture noundef readonly %sc) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @current_is_kswapd() #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq i32 %file, 0
  %. = select i1 %tobool4.not, i32 0, i32 2
  %.2 = select i1 %tobool4.not, i32 7, i32 8
  %call8 = call fastcc i64 @global_node_page_state(i32 noundef %.) #17
  %call9 = call fastcc i64 @global_node_page_state(i32 noundef %.2) #17
  %gfp_mask = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  %0 = load i32, i32* %gfp_mask, align 8
  %and = and i32 %0, 192
  %cmp = icmp eq i32 %and, 192
  %shr = lshr i64 %call8, 3
  %spec.select = select i1 %cmp, i64 %shr, i64 %call8
  %cmp13 = icmp ugt i64 %call9, %spec.select
  %conv = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @isolate_lru_pages(i64 noundef %nr_to_scan, %struct.lruvec* noundef %lruvec, %struct.list_head* noundef %dst, i64* nocapture noundef writeonly %nr_scanned, %struct.scan_control* nocapture noundef readonly %sc, i32 noundef %lru) unnamed_addr #2 {
entry:
  %nr_zone_taken = alloca [4 x i64], align 8
  %nr_skipped = alloca [4 x i64], align 8
  %pages_skipped = alloca %struct.list_head, align 8
  %idxprom = zext i32 %lru to i64
  %arrayidx = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom
  %0 = bitcast [4 x i64]* %nr_zone_taken to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %1 = bitcast [4 x i64]* %nr_skipped to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %2 = bitcast %struct.list_head* %pages_skipped to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %pages_skipped, i64 0, i32 0
  store %struct.list_head* %pages_skipped, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %pages_skipped, i64 0, i32 1
  store %struct.list_head* %pages_skipped, %struct.list_head** %prev, align 8
  %may_unmap = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %bf.load = load i16, i16* %may_unmap, align 8
  %3 = lshr i16 %bf.load, 4
  %4 = and i16 %3, 2
  %5 = xor i16 %4, 2
  %6 = zext i16 %5 to i32
  %cmp142.not = icmp eq i64 %nr_to_scan, 0
  br i1 %cmp142.not, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %prev2 = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom, i32 1
  %7 = bitcast %struct.list_head** %prev2 to i8**
  %reclaim_idx = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %cleanup
  %nr_taken.0145 = phi i64 [ 0, %land.rhs.lr.ph ], [ %nr_taken.1, %cleanup ]
  %scan.0144 = phi i64 [ 0, %land.rhs.lr.ph ], [ %scan.1, %cleanup ]
  %total_scan.0143 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add, %cleanup ]
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = load i8*, i8** %7, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 -8
  %9 = bitcast i8* %add.ptr to %struct.page*
  %lru4 = bitcast i8* %8 to %struct.list_head*
  %prev5 = getelementptr inbounds i8, i8* %8, i64 8
  %10 = bitcast i8* %prev5 to %struct.list_head**
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8
  %cmp6.not = icmp eq %struct.list_head* %11, %arrayidx
  br i1 %cmp6.not, label %do.end17, label %if.then

if.then:                                          ; preds = %while.body
  %add.ptr15 = getelementptr %struct.list_head, %struct.list_head* %11, i64 -1, i32 1
  %12 = bitcast %struct.list_head** %add.ptr15 to i8*
  call fastcc void @prefetchw(i8* noundef %12) #17
  br label %do.end17

do.end17:                                         ; preds = %if.then, %while.body
  %call18 = call fastcc i64 @compound_nr(%struct.page* noundef %9) #17
  %add = add i64 %call18, %total_scan.0143
  %call19 = call fastcc i32 @page_zonenum(%struct.page* noundef %9) #17
  %13 = load i8, i8* %reclaim_idx, align 4
  %conv = sext i8 %13 to i32
  %cmp20 = icmp ugt i32 %call19, %conv
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %do.end17
  call fastcc void @list_move(%struct.list_head* noundef %lru4, %struct.list_head* noundef nonnull %pages_skipped) #17
  %call24 = call fastcc i32 @page_zonenum(%struct.page* noundef %9) #17
  %idxprom25 = zext i32 %call24 to i64
  %arrayidx26 = getelementptr [4 x i64], [4 x i64]* %nr_skipped, i64 0, i64 %idxprom25
  %14 = load i64, i64* %arrayidx26, align 8
  %add27 = add i64 %14, %call18
  store i64 %add27, i64* %arrayidx26, align 8
  br label %cleanup

if.end28:                                         ; preds = %do.end17
  %add29 = add i64 %call18, %scan.0144
  %call30 = call i1 @__isolate_lru_page_prepare(%struct.page* noundef %9, i32 noundef %6) #17
  br i1 %call30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call fastcc void @list_move(%struct.list_head* noundef %lru4, %struct.list_head* noundef %arrayidx) #17
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call34 = call fastcc i32 @get_page_unless_zero(%struct.page* noundef %9) #17
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then41, label %if.end43, !prof !9

if.then41:                                        ; preds = %if.end33
  call fastcc void @list_move(%struct.list_head* noundef %lru4, %struct.list_head* noundef %arrayidx) #17
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %9) #19
  %15 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 4, i64* noundef %flags.i) #19
  br i1 %call1.i, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end43
  call fastcc void @put_page(%struct.page* noundef %9) #17
  call fastcc void @list_move(%struct.list_head* noundef %lru4, %struct.list_head* noundef %arrayidx) #17
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %add49 = add i64 %call18, %nr_taken.0145
  %call50 = call fastcc i32 @page_zonenum(%struct.page* noundef %9) #17
  %idxprom51 = zext i32 %call50 to i64
  %arrayidx52 = getelementptr [4 x i64], [4 x i64]* %nr_zone_taken, i64 0, i64 %idxprom51
  %16 = load i64, i64* %arrayidx52, align 8
  %add53 = add i64 %16, %call18
  store i64 %add53, i64* %arrayidx52, align 8
  call fastcc void @list_move(%struct.list_head* noundef %lru4, %struct.list_head* noundef %dst) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then46, %if.then41, %if.then31, %if.then22
  %scan.1 = phi i64 [ %scan.0144, %if.then22 ], [ %add29, %if.then41 ], [ %add29, %if.end48 ], [ %add29, %if.then46 ], [ %add29, %if.then31 ]
  %nr_taken.1 = phi i64 [ %nr_taken.0145, %if.then22 ], [ %nr_taken.0145, %if.then41 ], [ %add49, %if.end48 ], [ %nr_taken.0145, %if.then46 ], [ %nr_taken.0145, %if.then31 ]
  %cmp = icmp ult i64 %scan.1, %nr_to_scan
  br i1 %cmp, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %cleanup, %entry
  %total_scan.0.lcssa = phi i64 [ 0, %entry ], [ %add, %cleanup ], [ %total_scan.0143, %land.rhs ]
  %nr_taken.0.lcssa = phi i64 [ 0, %entry ], [ %nr_taken.1, %cleanup ], [ %nr_taken.0145, %land.rhs ]
  %call55 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %pages_skipped) #17
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end71

if.then57:                                        ; preds = %while.end
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %pages_skipped, %struct.list_head* noundef %arrayidx) #17
  %arrayidx61 = getelementptr inbounds [4 x i64], [4 x i64]* %nr_skipped, i64 0, i64 0
  %17 = load i64, i64* %arrayidx61, align 8
  %tobool62.not = icmp eq i64 %17, 0
  br i1 %tobool62.not, label %for.inc, label %if.end64

if.end64:                                         ; preds = %if.then57
  call fastcc void @__count_vm_events(i32 noundef 12, i64 noundef %17) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %if.end64
  %arrayidx61.1 = getelementptr inbounds [4 x i64], [4 x i64]* %nr_skipped, i64 0, i64 1
  %18 = load i64, i64* %arrayidx61.1, align 8
  %tobool62.not.1 = icmp eq i64 %18, 0
  br i1 %tobool62.not.1, label %for.inc.1, label %if.end64.1

if.end64.1:                                       ; preds = %for.inc
  call fastcc void @__count_vm_events(i32 noundef 13, i64 noundef %18) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end64.1, %for.inc
  %arrayidx61.2 = getelementptr inbounds [4 x i64], [4 x i64]* %nr_skipped, i64 0, i64 2
  %19 = load i64, i64* %arrayidx61.2, align 8
  %tobool62.not.2 = icmp eq i64 %19, 0
  br i1 %tobool62.not.2, label %for.inc.2, label %if.end64.2

if.end64.2:                                       ; preds = %for.inc.1
  call fastcc void @__count_vm_events(i32 noundef 14, i64 noundef %19) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end64.2, %for.inc.1
  %arrayidx61.3 = getelementptr inbounds [4 x i64], [4 x i64]* %nr_skipped, i64 0, i64 3
  %20 = load i64, i64* %arrayidx61.3, align 8
  %tobool62.not.3 = icmp eq i64 %20, 0
  br i1 %tobool62.not.3, label %if.end71, label %if.end64.3

if.end64.3:                                       ; preds = %for.inc.2
  call fastcc void @__count_vm_events(i32 noundef 15, i64 noundef %20) #17
  br label %if.end71

if.end71:                                         ; preds = %for.inc.2, %if.end64.3, %while.end
  store i64 %total_scan.0.lcssa, i64* %nr_scanned, align 8
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %nr_zone_taken, i64 0, i64 0
  %add1.i.i = add i32 %lru, 1
  %21 = load i64, i64* %arraydecay, align 8
  %tobool.not.i = icmp eq i64 %21, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %if.end71
  %22 = trunc i64 %21 to i32
  %conv.i141 = sub i32 0, %22
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %lru, i32 noundef %conv.i141) #19
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 0
  %conv.i.i = sext i32 %conv.i141 to i64
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef %conv.i.i) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.end71
  %arrayidx.1.i = getelementptr inbounds [4 x i64], [4 x i64]* %nr_zone_taken, i64 0, i64 1
  %23 = load i64, i64* %arrayidx.1.i, align 8
  %tobool.not.1.i = icmp eq i64 %23, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %if.end.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %24 = trunc i64 %23 to i32
  %conv.1.i = sub i32 0, %24
  %call.i.1.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %lru, i32 noundef %conv.1.i) #19
  %arrayidx.i.1.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.1.i, i64 0, i32 0, i64 1
  %conv.i.1.i = sext i32 %conv.1.i to i64
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.1.i, i32 noundef %add1.i.i, i64 noundef %conv.i.1.i) #19
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i
  %arrayidx.2.i = getelementptr inbounds [4 x i64], [4 x i64]* %nr_zone_taken, i64 0, i64 2
  %25 = load i64, i64* %arrayidx.2.i, align 8
  %tobool.not.2.i = icmp eq i64 %25, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %if.end.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %26 = trunc i64 %25 to i32
  %conv.2.i = sub i32 0, %26
  %call.i.2.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %lru, i32 noundef %conv.2.i) #19
  %arrayidx.i.2.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.2.i, i64 0, i32 0, i64 2
  %conv.i.2.i = sext i32 %conv.2.i to i64
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.2.i, i32 noundef %add1.i.i, i64 noundef %conv.i.2.i) #19
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i, %for.inc.1.i
  %arrayidx.3.i = getelementptr inbounds [4 x i64], [4 x i64]* %nr_zone_taken, i64 0, i64 3
  %27 = load i64, i64* %arrayidx.3.i, align 8
  %tobool.not.3.i = icmp eq i64 %27, 0
  br i1 %tobool.not.3.i, label %update_lru_sizes.exit, label %if.end.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %28 = trunc i64 %27 to i32
  %conv.3.i = sub i32 0, %28
  %call.i.3.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %lru, i32 noundef %conv.3.i) #19
  %arrayidx.i.3.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.3.i, i64 0, i32 0, i64 3
  %conv.i.3.i = sext i32 %conv.3.i to i64
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.3.i, i32 noundef %add1.i.i, i64 noundef %conv.i.3.i) #19
  br label %update_lru_sizes.exit

update_lru_sizes.exit:                            ; preds = %for.inc.2.i, %if.end.3.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #21
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret i64 %nr_taken.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @move_pages_to_lru(%struct.lruvec* noundef %lruvec, %struct.list_head* noundef %list) unnamed_addr #2 {
entry:
  %pages_to_free = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %pages_to_free to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %pages_to_free, i64 0, i32 0
  store %struct.list_head* %pages_to_free, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %pages_to_free, i64 0, i32 1
  store %struct.list_head* %pages_to_free, %struct.list_head** %prev, align 8
  %call7376 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool.not7477 = icmp eq i32 %call7376, 0
  br i1 %tobool.not7477, label %while.body.lr.ph.lr.ph, label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = bitcast %struct.list_head** %prev1 to i8**
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 1, i32 0, i32 0
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.end38
  %nr_moved.0.ph78 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %add, %if.end38 ]
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -8
  %3 = bitcast i8* %add.ptr to %struct.page*
  %lru = bitcast i8* %2 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #17
  %call2 = call fastcc i1 @page_evictable(%struct.page* noundef %3) #17
  br i1 %call2, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %while.body
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @putback_lru_page(%struct.page* noundef %3) #17
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then27, %if.else, %if.then
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

if.end:                                           ; preds = %while.body
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %3) #19
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %flags.i) #19
  %call8 = call fastcc i32 @put_page_testzero(%struct.page* noundef %3) #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end32, label %if.then17, !prof !11

if.then17:                                        ; preds = %if.end
  %call.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %3) #19
  %5 = inttoptr i64 %call.i.i to %struct.page*
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load i64, i64* %flags.i.i, align 8
  %and.i.i.i = and i64 %6, -17
  store i64 %and.i.i.i, i64* %flags.i.i, align 8
  %call.i7.i = call fastcc i64 @_compound_head(%struct.page* noundef %3) #19
  %7 = inttoptr i64 %call.i7.i to %struct.page*
  %flags.i8.i = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i8.i, align 8
  %9 = and i64 %8, 32
  %tobool.not.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then17
  %call.i9.i = call fastcc i64 @_compound_head(%struct.page* noundef %3) #19
  %10 = inttoptr i64 %call.i9.i to %struct.page*
  %flags.i10.i = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 0
  %11 = load volatile i64, i64* %flags.i10.i, align 8
  %12 = and i64 %11, 1048576
  %tobool2.not.i = icmp eq i64 %12, 0
  br i1 %tobool2.not.i, label %if.end.i, label %__clear_page_lru_flags.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then17
  %call.i12.i = call fastcc i64 @_compound_head(%struct.page* noundef %3) #19
  %13 = inttoptr i64 %call.i12.i to %struct.page*
  %flags.i13.i = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  %14 = load i64, i64* %flags.i13.i, align 8
  %and.i.i14.i = and i64 %14, -33
  store i64 %and.i.i14.i, i64* %flags.i13.i, align 8
  %call.i15.i = call fastcc i64 @_compound_head(%struct.page* noundef %3) #19
  %15 = inttoptr i64 %call.i15.i to %struct.page*
  %flags.i16.i = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  %16 = load i64, i64* %flags.i16.i, align 8
  %and.i.i17.i = and i64 %16, -1048577
  store i64 %and.i.i17.i, i64* %flags.i16.i, align 8
  br label %__clear_page_lru_flags.exit

__clear_page_lru_flags.exit:                      ; preds = %land.lhs.true.i, %if.end.i
  %flags.i64 = bitcast i8* %add.ptr to i64*
  %17 = load volatile i64, i64* %flags.i64, align 8
  %18 = and i64 %17, 65536
  %tobool.not.i65 = icmp eq i64 %18, 0
  br i1 %tobool.not.i65, label %PageCompound.exit, label %if.then27

PageCompound.exit:                                ; preds = %__clear_page_lru_flags.exit
  %compound_head.i.i = bitcast i8* %2 to i64*
  %19 = load volatile i64, i64* %compound_head.i.i, align 8
  %20 = and i64 %19, 1
  %tobool19.not = icmp eq i64 %20, 0
  br i1 %tobool19.not, label %if.else, label %if.then27, !prof !11

if.then27:                                        ; preds = %__clear_page_lru_flags.exit, %PageCompound.exit
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @destroy_compound_page(%struct.page* noundef %3) #17
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %while.cond.backedge

if.else:                                          ; preds = %PageCompound.exit
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %pages_to_free) #17
  br label %while.cond.backedge

if.end32:                                         ; preds = %if.end
  %21 = bitcast i8* %add.ptr to %struct.page*
  %lru.le = bitcast i8* %2 to %struct.list_head*
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %21) #19
  %22 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %22, i64 0, i32 0
  %23 = load volatile i64, i64* %flags.i.i.i, align 8
  %24 = and i64 %23, 1048576
  %tobool.not.i.i = icmp eq i64 %24, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %add_page_to_lru_list.exit

if.end.i.i:                                       ; preds = %if.end32
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %21) #19
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %21) #19
  %25 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %25, i64 0, i32 0
  %26 = load volatile i64, i64* %flags.i12.i.i, align 8
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 5
  %29 = and i32 %28, 1
  %30 = or i32 %29, %cond.i.i
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %if.end32, %if.end.i.i
  %retval.0.i.i = phi i32 [ %30, %if.end.i.i ], [ 4, %if.end32 ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %21) #19
  %call.i.i68 = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #19
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef 1) #19
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i68, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef 1) #19
  %idxprom.i = zext i32 %retval.0.i.i to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add(%struct.list_head* noundef %lru.le, %struct.list_head* noundef %arrayidx.i) #19
  %add = add i32 %nr_moved.0.ph78, 1
  %call.i69 = call fastcc i64 @_compound_head(%struct.page* noundef %21) #19
  %31 = inttoptr i64 %call.i69 to %struct.page*
  %flags.i70 = getelementptr inbounds %struct.page, %struct.page* %31, i64 0, i32 0
  %32 = load volatile i64, i64* %flags.i70, align 8
  %33 = and i64 %32, 32
  %tobool35.not = icmp eq i64 %33, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %add_page_to_lru_list.exit
  call void @workingset_age_nonresident(%struct.lruvec* noundef %lruvec, i64 noundef 1) #19
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %add_page_to_lru_list.exit
  %call73 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool.not74 = icmp eq i32 %call73, 0
  br i1 %tobool.not74, label %while.body.lr.ph, label %while.end

while.end:                                        ; preds = %if.end38, %while.cond.backedge, %entry
  %nr_moved.0.ph.lcssa = phi i32 [ 0, %entry ], [ %nr_moved.0.ph78, %while.cond.backedge ], [ %add, %if.end38 ]
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %pages_to_free, %struct.list_head* noundef %list) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i32 %nr_moved.0.ph.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_note_cost(%struct.lruvec* noundef, i1 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetchw(i8* noundef %ptr) unnamed_addr #2 {
entry:
  call void asm sideeffect "prfm pstl1keep, ${0:a}\0A", "r"(i8* %ptr) #21, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_page_unless_zero(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @page_ref_add_unless(%struct.page* noundef %page) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_add_unless(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %_refcount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %_refcount to i8*
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i, %entry
  %c.0.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i, %do.cond.i.i.i ]
  %cmp.i.i.i = icmp eq i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %atomic_add_unless.exit, label %do.cond.i.i.i, !prof !9

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %c.0.i.i.i, 1
  %call11.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i, i32 noundef %add.i.i.i) #19
  %cmp.not.i.i.i.i = icmp eq i32 %c.0.i.i.i, %call11.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %atomic_add_unless.exit, label %do.body.i.i.i, !prof !11

atomic_add_unless.exit:                           ; preds = %do.body.i.i.i, %do.cond.i.i.i
  %2 = xor i1 %cmp.i.i.i, true
  %conv = zext i1 %2 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_age_nonresident(%struct.lruvec* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdi_write_congested(%struct.backing_dev_info* nocapture noundef readonly %bdi) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @bdi_congested(%struct.backing_dev_info* noundef %bdi) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdi_congested(%struct.backing_dev_info* nocapture noundef readonly %bdi) unnamed_addr #11 {
entry:
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11
  %call = call fastcc i32 @wb_congested(%struct.bdi_writeback* noundef %wb) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @compact_gap(i32 noundef %order) unnamed_addr #7 {
entry:
  %sh_prom = zext i32 %order to i64
  %shl = shl i64 2, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 10, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @zone_watermark_ok_safe(%struct.zone* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty() unnamed_addr #2 {
entry:
  %call = call fastcc i1 @bitmap_empty() #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @kswapd_highest_zoneidx(%struct.pglist_data* noundef %pgdat, i32 noundef %prev_highest_zoneidx) unnamed_addr #5 {
entry:
  %kswapd_highest_zoneidx = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 11
  %0 = load volatile i32, i32* %kswapd_highest_zoneidx, align 4
  %cmp = icmp eq i32 %0, 4
  %cond = select i1 %cmp, i32 %prev_highest_zoneidx, i32 %0
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kswapd_try_to_sleep(%struct.pglist_data* noundef %pgdat, i32 noundef %reclaim_order, i32 noundef %highest_zoneidx) unnamed_addr #2 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #21
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %call6 = call i1 @kthread_should_stop() #19
  br i1 %call6, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kswapd_wait = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 7
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %kswapd_wait, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1) #19
  %call7 = call fastcc i1 @prepare_kswapd_sleep(%struct.pglist_data* noundef %pgdat, i32 noundef %reclaim_order, i32 noundef %highest_zoneidx) #17
  br i1 %call7, label %if.then8, label %land.lhs.true

if.then8:                                         ; preds = %if.end
  %call9 = call i64 @schedule_timeout(i64 noundef 25) #19
  %tobool.not = icmp eq i64 %call9, 0
  br i1 %tobool.not, label %land.lhs.true.critedge, label %do.body12

do.body12:                                        ; preds = %if.then8
  %call13 = call fastcc i32 @kswapd_highest_zoneidx(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx) #17
  %kswapd_highest_zoneidx = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 11
  store volatile i32 %call13, i32* %kswapd_highest_zoneidx, align 4
  %kswapd_order = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 10
  %5 = load volatile i32, i32* %kswapd_order, align 16
  %cmp = icmp slt i32 %5, %reclaim_order
  br i1 %cmp, label %do.body26, label %if.then44

do.body26:                                        ; preds = %do.body12
  store volatile i32 %reclaim_order, i32* %kswapd_order, align 16
  br label %if.then44

land.lhs.true.critedge:                           ; preds = %if.then8
  call void @finish_wait(%struct.wait_queue_head* noundef %kswapd_wait, %struct.wait_queue_entry* noundef nonnull %wait) #19
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %kswapd_wait, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1) #19
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.critedge, %if.end
  %call38 = call fastcc i1 @prepare_kswapd_sleep(%struct.pglist_data* noundef %pgdat, i32 noundef %reclaim_order, i32 noundef %highest_zoneidx) #17
  br i1 %call38, label %if.then39, label %if.else45

if.then39:                                        ; preds = %land.lhs.true
  call void @set_pgdat_percpu_threshold(%struct.pglist_data* noundef %pgdat, i32 (%struct.zone*)* noundef nonnull @calculate_normal_threshold) #19
  %call40 = call i1 @kthread_should_stop() #19
  br i1 %call40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.then39
  call void @schedule() #19
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then39
  call void @set_pgdat_percpu_threshold(%struct.pglist_data* noundef %pgdat, i32 (%struct.zone*)* noundef nonnull @calculate_pressure_threshold) #19
  br label %if.end47

if.then44:                                        ; preds = %do.body12, %do.body26
  call void @finish_wait(%struct.wait_queue_head* noundef %kswapd_wait, %struct.wait_queue_entry* noundef nonnull %wait) #19
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %kswapd_wait, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1) #19
  call fastcc void @count_vm_event(i32 noundef 39) #17
  br label %if.end47

if.else45:                                        ; preds = %land.lhs.true
  call fastcc void @count_vm_event(i32 noundef 40) #17
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else45, %if.end42
  call void @finish_wait(%struct.wait_queue_head* noundef %kswapd_wait, %struct.wait_queue_entry* noundef nonnull %wait) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end47
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @balance_pgdat(%struct.pglist_data* noundef %pgdat, i32 noundef %order, i32 noundef %highest_zoneidx) unnamed_addr #2 {
__here:
  %zone_boosts = alloca [4 x i64], align 8
  %sc = alloca %struct.scan_control, align 8
  %0 = bitcast [4 x i64]* %zone_boosts to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %1 = bitcast %struct.scan_control* %sc to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #21
  %may_unmap = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 5
  %2 = bitcast %struct.scan_control* %sc to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  store i16 32, i16* %may_unmap, align 8
  %order1 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 6
  %conv = trunc i32 %order to i8
  store i8 %conv, i8* %order1, align 2
  %gfp_mask = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 9
  store i32 3264, i32* %gfp_mask, align 8
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !8
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %reclaim_state = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 13
  call fastcc void @set_task_reclaim_state(%struct.task_struct* noundef %4, %struct.reclaim_state* noundef %reclaim_state) #17
  call fastcc void @count_vm_event(i32 noundef 41) #17
  %cmp.not272 = icmp slt i32 %highest_zoneidx, 0
  br i1 %cmp.not272, label %for.end, label %for.body

for.body:                                         ; preds = %__here, %for.inc
  %i.0274 = phi i32 [ %inc, %for.inc ], [ 0, %__here ]
  %nr_boost_reclaim.0273 = phi i64 [ %nr_boost_reclaim.1, %for.inc ], [ 0, %__here ]
  %idx.ext = sext i32 %i.0274 to i64
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idx.ext
  %call3 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr) #17
  br i1 %call3, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %watermark_boost = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idx.ext, i32 1
  %5 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %5, %nr_boost_reclaim.0273
  %arrayidx = getelementptr [4 x i64], [4 x i64]* %zone_boosts, i64 0, i64 %idx.ext
  store i64 %5, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %nr_boost_reclaim.1 = phi i64 [ %add, %if.end ], [ %nr_boost_reclaim.0273, %for.body ]
  %inc = add i32 %i.0274, 1
  %cmp.not = icmp sgt i32 %inc, %highest_zoneidx
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %__here
  %nr_boost_reclaim.0.lcssa = phi i64 [ 0, %__here ], [ %nr_boost_reclaim.1, %for.inc ]
  %tobool.not = icmp eq i64 %nr_boost_reclaim.0.lcssa, 0
  %priority = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 7
  %nr_reclaimed5 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 11
  %conv6 = trunc i32 %highest_zoneidx to i8
  %reclaim_idx = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  %nr_scanned = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 10
  %pfmemalloc_wait = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 8
  %add.ptr16 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3
  %add.ptr16.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  %add.ptr16.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  %add.ptr16.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  br label %restart

restart:                                          ; preds = %if.end24, %for.end
  %nr_boost_reclaim.2 = phi i64 [ %nr_boost_reclaim.0.lcssa, %for.end ], [ 0, %if.end24 ]
  call fastcc void @set_reclaim_active(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx) #17
  store i8 12, i8* %priority, align 1
  %.pre = load i64, i64* %nr_reclaimed5, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %restart
  %6 = phi i64 [ %.pre, %restart ], [ %.pre281, %do.cond ]
  %nr_boost_reclaim.3 = phi i64 [ %nr_boost_reclaim.2, %restart ], [ %13, %do.cond ]
  store i8 %conv6, i8* %reclaim_idx, align 4
  %7 = load i32, i32* @buffer_heads_over_limit, align 4
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end24, label %for.body12.preheader

for.body12.preheader:                             ; preds = %do.body
  %call17 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr16) #17
  br i1 %call17, label %if.end19, label %for.inc22

if.end19:                                         ; preds = %for.inc22.2, %for.inc22.1, %for.inc22, %for.body12.preheader
  %i.1275.lcssa.wide = phi i8 [ 3, %for.body12.preheader ], [ 2, %for.inc22 ], [ 1, %for.inc22.1 ], [ 0, %for.inc22.2 ]
  store i8 %i.1275.lcssa.wide, i8* %reclaim_idx, align 4
  br label %if.end24

for.inc22:                                        ; preds = %for.body12.preheader
  %call17.1 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr16.1) #17
  br i1 %call17.1, label %if.end19, label %for.inc22.1

for.inc22.1:                                      ; preds = %for.inc22
  %call17.2 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr16.2) #17
  br i1 %call17.2, label %if.end19, label %for.inc22.2

for.inc22.2:                                      ; preds = %for.inc22.1
  %call17.3 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr16.3) #17
  br i1 %call17.3, label %if.end19, label %if.end24

if.end24:                                         ; preds = %for.inc22.2, %if.end19, %do.body
  %8 = load i8, i8* %order1, align 2
  %conv26 = sext i8 %8 to i32
  %call27 = call fastcc i1 @pgdat_balanced(%struct.pglist_data* noundef %pgdat, i32 noundef %conv26, i32 noundef %highest_zoneidx) #17
  %tobool29.not = xor i1 %call27, true
  %tobool30 = icmp ne i64 %nr_boost_reclaim.3, 0
  %or.cond = select i1 %tobool29.not, i1 %tobool30, i1 false
  br i1 %or.cond, label %restart, label %if.end32

if.end32:                                         ; preds = %if.end24
  %brmerge = select i1 %tobool30, i1 true, i1 %tobool29.not
  br i1 %brmerge, label %if.end38, label %out

if.end38:                                         ; preds = %if.end32
  %9 = load i8, i8* %priority, align 1
  %cmp43 = icmp eq i8 %9, 10
  %10 = load i32, i32* @laptop_mode, align 4
  %tobool47.not = icmp eq i32 %10, 0
  %lnot = xor i1 %tobool30, true
  %11 = select i1 %tobool47.not, i1 %lnot, i1 false
  %bf.load50 = load i16, i16* %may_unmap, align 8
  %bf.clear51 = and i16 %bf.load50, -81
  %bf.shl58 = select i1 %tobool30, i16 0, i16 64
  %bf.set52 = or i16 %bf.clear51, %bf.shl58
  %cmp64 = icmp slt i8 %9, 10
  %12 = select i1 %cmp64, i1 true, i1 %11
  %spec.select.v = select i1 %12, i16 16, i16 0
  %spec.select = or i16 %bf.set52, %spec.select.v
  store i16 %spec.select, i16* %may_unmap, align 8
  store i64 0, i64* %nr_scanned, align 8
  %call78 = call fastcc i1 @kswapd_shrink_node(%struct.pglist_data* noundef %pgdat, %struct.scan_control* noundef nonnull %sc) #17
  %call81 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %pfmemalloc_wait) #17
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %__here93, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %if.end38
  %call84 = call fastcc i1 @allow_direct_reclaim(%struct.pglist_data* noundef %pgdat) #17
  br i1 %call84, label %if.then86, label %__here93

if.then86:                                        ; preds = %land.lhs.true83
  call void @__wake_up(%struct.wait_queue_head* noundef %pfmemalloc_wait, i32 noundef 3, i32 noundef 0, i8* noundef null) #19
  br label %__here93

__here93:                                         ; preds = %if.then86, %land.lhs.true83, %if.end38
  %call97 = call i1 @kthread_should_stop() #19
  %.pre281 = load i64, i64* %nr_reclaimed5, align 8
  br i1 %call97, label %do.end, label %if.end100

if.end100:                                        ; preds = %__here93
  %sub = sub i64 %.pre281, %6
  %13 = call i64 @llvm.usub.sat.i64(i64 %nr_boost_reclaim.3, i64 %sub)
  %tobool108 = icmp ne i64 %sub, 0
  %14 = icmp eq i64 %nr_boost_reclaim.3, 0
  %15 = or i1 %14, %tobool108
  br i1 %15, label %if.end110, label %do.end

if.end110:                                        ; preds = %if.end100
  %or.cond188.not = select i1 %tobool30, i1 %cmp43, i1 false
  %tobool111.not = select i1 %call78, i1 true, i1 %or.cond188.not
  %or.cond190 = select i1 %tobool111.not, i1 %tobool108, i1 false
  %.pr = load i8, i8* %priority, align 1
  br i1 %or.cond190, label %do.cond, label %if.then115

if.then115:                                       ; preds = %if.end110
  %dec117 = add i8 %.pr, -1
  store i8 %dec117, i8* %priority, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end110, %if.then115
  %16 = phi i8 [ %dec117, %if.then115 ], [ %.pr, %if.end110 ]
  %cmp124 = icmp sgt i8 %16, 0
  br i1 %cmp124, label %do.body, label %do.end

do.end:                                           ; preds = %if.end100, %do.cond, %__here93
  %tobool127.not = icmp eq i64 %.pre281, 0
  br i1 %tobool127.not, label %if.then128, label %out

if.then128:                                       ; preds = %do.end
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 12
  %17 = load i32, i32* %kswapd_failures, align 8
  %inc129 = add i32 %17, 1
  store i32 %inc129, i32* %kswapd_failures, align 8
  br label %out

out:                                              ; preds = %if.end32, %do.end, %if.then128
  call fastcc void @clear_reclaim_active(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx) #17
  %or.cond278 = or i1 %tobool.not, %cmp.not272
  br i1 %or.cond278, label %cleanup179, label %for.body136

for.body136:                                      ; preds = %out, %for.inc170
  %i.2277 = phi i32 [ %inc171, %for.inc170 ], [ 0, %out ]
  %idxprom137 = sext i32 %i.2277 to i64
  %arrayidx138 = getelementptr [4 x i64], [4 x i64]* %zone_boosts, i64 0, i64 %idxprom137
  %18 = load i64, i64* %arrayidx138, align 8
  %tobool139.not = icmp eq i64 %18, 0
  br i1 %tobool139.not, label %for.inc170, label %if.end141

if.end141:                                        ; preds = %for.body136
  %rlock.i = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idxprom137, i32 19, i32 0, i32 0
  %call152 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %watermark_boost157 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idxprom137, i32 1
  %19 = load i64, i64* %watermark_boost157, align 8
  %20 = call i64 @llvm.usub.sat.i64(i64 %19, i64 %18)
  store i64 %20, i64* %watermark_boost157, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call152) #19
  br label %for.inc170

for.inc170:                                       ; preds = %for.body136, %if.end141
  %inc171 = add i32 %i.2277, 1
  %cmp134.not = icmp sgt i32 %inc171, %highest_zoneidx
  br i1 %cmp134.not, label %cleanup179, label %for.body136

cleanup179:                                       ; preds = %for.inc170, %out
  call fastcc void @snapshot_refaults(%struct.pglist_data* noundef %pgdat) #17
  call fastcc void @set_task_reclaim_state(%struct.task_struct* noundef %4, %struct.reclaim_state* noundef null) #17
  %21 = load i8, i8* %order1, align 2
  %conv178 = sext i8 %21 to i32
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret i32 %conv178
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty() unnamed_addr #2 {
entry:
  %call = call fastcc i64 @find_first_bit() #17
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit() unnamed_addr #2 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i64 noundef 256) #19
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @prepare_kswapd_sleep(%struct.pglist_data* noundef %pgdat, i32 noundef %order, i32 noundef %highest_zoneidx) unnamed_addr #2 {
entry:
  %pfmemalloc_wait = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 8
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %pfmemalloc_wait) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__wake_up(%struct.wait_queue_head* noundef %pfmemalloc_wait, i32 noundef 3, i32 noundef 0, i8* noundef null) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 12
  %0 = load i32, i32* %kswapd_failures, align 8
  %cmp = icmp sgt i32 %0, 15
  br i1 %cmp, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @pgdat_balanced(%struct.pglist_data* noundef %pgdat, i32 noundef %order, i32 noundef %highest_zoneidx) #17
  br i1 %call4, label %if.then5, label %return

if.then5:                                         ; preds = %if.end3
  call fastcc void @clear_pgdat_congested(%struct.pglist_data* noundef %pgdat) #17
  br label %return

return:                                           ; preds = %if.end3, %if.end, %if.then5
  %retval.0 = phi i1 [ true, %if.then5 ], [ true, %if.end ], [ false, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pgdat_percpu_threshold(%struct.pglist_data* noundef, i32 (%struct.zone*)* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calculate_normal_threshold(%struct.zone* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calculate_pressure_threshold(%struct.zone* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_pgdat_congested(%struct.pglist_data* noundef %pgdat) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* noundef %pgdat) #17
  %flags = getelementptr inbounds %struct.lruvec, %struct.lruvec* %call, i64 0, i32 6
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags) #17
  %flags1 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 17
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags1) #17
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_reclaim_active(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx) unnamed_addr #2 {
entry:
  call fastcc void @update_reclaim_active(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx, i1 noundef true) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @kswapd_shrink_node(%struct.pglist_data* noundef %pgdat, %struct.scan_control* noundef %sc) unnamed_addr #2 {
entry:
  %nr_to_reclaim = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 0
  store i64 0, i64* %nr_to_reclaim, align 8
  %reclaim_idx = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 8
  %0 = load i8, i8* %reclaim_idx, align 4
  %cmp.not39 = icmp slt i8 %0, 0
  br i1 %cmp.not39, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv
  %call = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr) #17
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv, i32 0, i64 2
  %1 = load i64, i64* %arrayidx, align 16
  %watermark_boost = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv, i32 1
  %2 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %2, %1
  %cmp2 = icmp ugt i64 %add, 32
  %cond = select i1 %cmp2, i64 %add, i64 32
  %3 = load i64, i64* %nr_to_reclaim, align 8
  %add5 = add i64 %cond, %3
  store i64 %add5, i64* %nr_to_reclaim, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i8, i8* %reclaim_idx, align 4
  %5 = sext i8 %4 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %5
  br i1 %cmp.not.not, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @shrink_node(%struct.pglist_data* noundef %pgdat, %struct.scan_control* noundef %sc) #17
  %order = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 6
  %6 = load i8, i8* %order, align 2
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %conv6 = sext i8 %6 to i32
  %nr_reclaimed = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 11
  %7 = load i64, i64* %nr_reclaimed, align 8
  %call9 = call fastcc i64 @compact_gap(i32 noundef %conv6) #17
  %cmp10.not = icmp ult i64 %7, %call9
  br i1 %cmp10.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  store i8 0, i8* %order, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %for.end
  %nr_scanned = getelementptr inbounds %struct.scan_control, %struct.scan_control* %sc, i64 0, i32 10
  %8 = load i64, i64* %nr_scanned, align 8
  %9 = load i64, i64* %nr_to_reclaim, align 8
  %cmp16 = icmp uge i64 %8, %9
  ret i1 %cmp16
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_reclaim_active(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx) unnamed_addr #2 {
entry:
  call fastcc void @update_reclaim_active(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx, i1 noundef false) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #17
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !46
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_reclaim_active(%struct.pglist_data* noundef %pgdat, i32 noundef %highest_zoneidx, i1 noundef %active) unnamed_addr #2 {
entry:
  %cmp.not10 = icmp slt i32 %highest_zoneidx, 0
  br i1 %cmp.not10, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.011 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %idx.ext = sext i32 %i.011 to i64
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idx.ext
  %call = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr) #17
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %flags = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %idx.ext, i32 18
  br i1 %active, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags) #17
  br label %for.inc

if.else:                                          ; preds = %if.end
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then1, %if.else, %for.body
  %inc = add i32 %i.011, 1
  %cmp.not = icmp sgt i32 %inc, %highest_zoneidx
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #2 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #17
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #21, !srcloc !47
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #2 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #21, !srcloc !48
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #17
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #2 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #21, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_setup() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @page_matches_lruvec(%struct.page* nocapture noundef readnone %page, %struct.lruvec* noundef readnone %lruvec) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #17
  %cmp = icmp eq %struct.pglist_data* %call, @contig_page_data
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @mapping_unevictable(%struct.address_space* noundef %mapping) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.address_space* %mapping, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 8
  %tobool1 = icmp ne i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !52
  call void @rcu_read_unlock_strict() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind }
attributes #22 = { cold nobuiltin nounwind "no-builtins" }
attributes #23 = { nounwind readonly }

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
!8 = !{i64 1485643}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155686080}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155687444}
!13 = !{i64 2148365698}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 4004000, i32 1}
!17 = !{i64 2155707820}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
!20 = !{i32 0, i32 4}
!21 = !{i64 2155664210}
!22 = !{i64 2155665861}
!23 = !{i64 2155794467}
!24 = !{i64 2152636792}
!25 = !{i64 2152637744}
!26 = !{i64 2148217301, i64 2148217333, i64 2148217377, i64 2148217424, i64 2148217450}
!27 = !{i64 2148123957, i64 2148128666, i64 2148128696, i64 2148128727, i64 2148128759, i64 2148128794, i64 2148128819}
!28 = !{i64 2149661432}
!29 = !{i64 2149217263, i64 2149217310, i64 2149217316, i64 2149217353, i64 2149217371, i64 2149218712, i64 2149218760, i64 2149218808, i64 2149218871, i64 2149218920, i64 2149217449, i64 2149217474, i64 2149217500, i64 2149217506, i64 2149218378, i64 2149218418, i64 2149218436, i64 2149218468, i64 2149218496, i64 2149218550, i64 2149218570, i64 2149218667, i64 2149217529, i64 2149217543, i64 2149217549, i64 2149217599, i64 2149217645, i64 2149217678}
!30 = !{i64 2148182346, i64 2148182379, i64 2148182432, i64 2148182491, i64 2148182525, i64 2148182580, i64 2148182609, i64 2148182629}
!31 = !{i64 2148195493, i64 2148195526, i64 2148195578, i64 2148195637, i64 2148195671, i64 2148195727, i64 2148195756, i64 2148195783}
!32 = !{i64 2149686285}
!33 = !{i64 2149471651}
!34 = !{i64 2149207807, i64 2149207854, i64 2149207860, i64 2149207897, i64 2149207915, i64 2149209255, i64 2149209303, i64 2149209351, i64 2149209414, i64 2149209463, i64 2149207993, i64 2149208018, i64 2149208044, i64 2149208050, i64 2149208921, i64 2149208961, i64 2149208979, i64 2149209011, i64 2149209039, i64 2149209093, i64 2149209113, i64 2149209210, i64 2149208073, i64 2149208087, i64 2149208093, i64 2149208143, i64 2149208189, i64 2149208222}
!35 = !{i64 2148092996, i64 2148093644, i64 2148093674, i64 2148093706, i64 2148093740, i64 2148093776, i64 2148093801}
!36 = !{i64 2148162073, i64 2148162594, i64 2148162624, i64 2148162650, i64 2148162682, i64 2148162711}
!37 = !{i64 2152625253}
!38 = !{i64 2152626205}
!39 = !{i64 2148151503, i64 2148152014, i64 2148152044, i64 2148152070, i64 2148152102, i64 2148152131}
!40 = !{i64 2148162926, i64 2148163588, i64 2148163618, i64 2148163649, i64 2148163681, i64 2148163716, i64 2148163741}
!41 = !{i64 2149271231, i64 2149271272, i64 2149271328, i64 2149271380}
!42 = !{i64 2149245285, i64 2149245332, i64 2149245338, i64 2149245375, i64 2149245393, i64 2149246320, i64 2149246368, i64 2149246416, i64 2149246479, i64 2149246528, i64 2149245471, i64 2149245496, i64 2149245522, i64 2149245528, i64 2149245565, i64 2149245571, i64 2149245621, i64 2149245667, i64 2149245700}
!43 = !{i64 2148154391, i64 2148155061, i64 2148155091, i64 2148155123, i64 2148155155, i64 2148155189, i64 2148155214}
!44 = !{i64 2148082423, i64 2148082939, i64 2148082969, i64 2148082996, i64 2148083030, i64 2148083060}
!45 = !{i64 2003593}
!46 = !{i64 2149657139}
!47 = !{i64 2149222966, i64 2149223013, i64 2149223019, i64 2149223056, i64 2149223074, i64 2149224385, i64 2149224433, i64 2149224481, i64 2149224544, i64 2149224593, i64 2149223152, i64 2149223177, i64 2149223203, i64 2149223209, i64 2149224051, i64 2149224091, i64 2149224109, i64 2149224141, i64 2149224169, i64 2149224223, i64 2149224243, i64 2149224340, i64 2149223232, i64 2149223246, i64 2149223252, i64 2149223302, i64 2149223348, i64 2149223381}
!48 = !{i64 2149225145, i64 2149225192, i64 2149225198, i64 2149225235, i64 2149225253, i64 2149226196, i64 2149226244, i64 2149226292, i64 2149226355, i64 2149226404, i64 2149225331, i64 2149225356, i64 2149225382, i64 2149225388, i64 2149225425, i64 2149225431, i64 2149225481, i64 2149225527, i64 2149225560}
!49 = !{i64 2149682982}
!50 = !{i64 2149228979, i64 2149229026, i64 2149229032, i64 2149229069, i64 2149229087, i64 2149230398, i64 2149230446, i64 2149230494, i64 2149230557, i64 2149230606, i64 2149229165, i64 2149229190, i64 2149229216, i64 2149229222, i64 2149230064, i64 2149230104, i64 2149230122, i64 2149230154, i64 2149230182, i64 2149230236, i64 2149230256, i64 2149230353, i64 2149229245, i64 2149229259, i64 2149229265, i64 2149229315, i64 2149229361, i64 2149229394}
!51 = !{i64 2150137570}
!52 = !{i64 2150137787}
