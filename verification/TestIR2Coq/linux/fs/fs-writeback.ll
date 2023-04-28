; ModuleID = 'fs/fs-writeback.c'
source_filename = "fs/fs-writeback.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_fs_writeback__443_2341_start_dirtytime_writeback6:\09\09\09"
module asm ".long\09start_dirtytime_writeback - .\09"
module asm ".previous\09\09\09\09\09"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.swap_info_struct = type opaque
%union.anon.79 = type { %struct.pipe_inode_info* }
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
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i64, i64, i64 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.wb_completion = type { %struct.atomic_t, %struct.wait_queue_head* }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { i8*, i32, i64 }
%struct.wb_writeback_work = type { i64, %struct.super_block*, i32, i8, i32, %struct.list_head, %struct.wb_completion* }

@dirtytime_expire_interval = dso_local local_unnamed_addr global i32 43200, align 4
@.str = private unnamed_addr constant [9 x i8] c"flush-%s\00", align 1
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@bdi_list = external dso_local global %struct.list_head, align 8
@__UNIQUE_ID___addressable_start_dirtytime_writeback444 = internal global i8* bitcast (i32 ()* @start_dirtytime_writeback to i8*), section ".discard.addressable", align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@dirtytime_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @dirtytime_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @dirtytime_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @wakeup_dirtytime_writeback }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@bdi_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@blockdev_superblock = external dso_local local_unnamed_addr global %struct.super_block*, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@dirty_expire_interval = external dso_local local_unnamed_addr global i32, align 4
@global_wb_domain = external dso_local local_unnamed_addr global %struct.wb_domain, align 8
@vm_node_stat = external dso_local global [38 x %struct.atomic64_t], align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_start_dirtytime_writeback444 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wb_wait_for_completion(%struct.wb_completion* noundef %done) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %cnt = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %done, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %cnt) #11
  %counter.i = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %done, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end12, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !7
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #11
  %waitq = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %done, i64 0, i32 1
  %2 = load %struct.wait_queue_head*, %struct.wait_queue_head** %waitq, align 8
  %call522 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %2, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %3 = load volatile i32, i32* %counter.i, align 4
  %tobool8.not23 = icmp eq i32 %3, 0
  br i1 %tobool8.not23, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #11
  %4 = load %struct.wait_queue_head*, %struct.wait_queue_head** %waitq, align 8
  %call5 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %4, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %5 = load volatile i32, i32* %counter.i, align 4
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  %6 = load %struct.wait_queue_head*, %struct.wait_queue_head** %waitq, align 8
  call void @finish_wait(%struct.wait_queue_head* noundef %6, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  br label %do.end12

do.end12:                                         ; preds = %entry, %for.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wb_start_background_writeback(%struct.bdi_writeback* noundef %wb) local_unnamed_addr #0 {
entry:
  call fastcc void @wb_wakeup(%struct.bdi_writeback* noundef %wb) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_wakeup(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 21, i32 0, i32 0
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %rlock.i) #11
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %conv.i7 = and i64 %0, 1
  %tobool.not = icmp eq i64 %conv.i7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** @bdi_wq, align 8
  %dwork = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23
  call fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %1, %struct.delayed_work* noundef %dwork) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_io_list_del(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bdi_writeback* @inode_to_wb_and_lock_list(%struct.inode* noundef %inode) #13
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, -131073
  store i64 %and, i64* %i_state, align 8
  %i_io_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 25
  call fastcc void @list_del_init(%struct.list_head* noundef %i_io_list) #13
  call fastcc void @wb_io_lists_depopulated(%struct.bdi_writeback* noundef %call) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %rlock.i9 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i9) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bdi_writeback* @inode_to_wb_and_lock_list(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %inode) #13
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret %struct.bdi_writeback* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_io_lists_depopulated(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @wb_has_dirty_io(%struct.bdi_writeback* noundef %wb) #13
  br i1 %call, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %entry
  %b_dirty = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 3
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_dirty) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end24, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %b_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_io) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end24, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %b_more_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 5
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_more_io) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end24, label %if.then

if.then:                                          ; preds = %land.lhs.true5
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  call fastcc void @clear_bit(i64 noundef 2, i64* noundef %state) #13
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 15
  %0 = load i64, i64* %avg_write_bandwidth, align 8
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  %1 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %tot_write_bandwidth = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %1, i64 0, i32 10
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(i64 noundef %0, %struct.atomic64_t* noundef %tot_write_bandwidth) #11
  %cmp = icmp slt i64 %call.i.i.i, 0
  br i1 %cmp, label %if.then16, label %if.end24, !prof !8

if.then16:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 104; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !9
  br label %if.end24

if.end24:                                         ; preds = %if.then, %if.then16, %land.lhs.true5, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sb_mark_inode_writeback(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %i_wb_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 28
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %i_wb_list) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %do.body1

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 56, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %call7 = call fastcc i32 @list_empty(%struct.list_head* noundef %i_wb_list) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %if.then9

if.then9:                                         ; preds = %do.body1
  %s_inodes_wb = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 57
  call fastcc void @list_add_tail(%struct.list_head* noundef %i_wb_list, %struct.list_head* noundef %s_inodes_wb) #13
  br label %if.end

if.end:                                           ; preds = %if.then9, %do.body1
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #11
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  ret void
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #13
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sb_clear_inode_writeback(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %i_wb_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 28
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %i_wb_list) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %if.end12

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 56, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %call7 = call fastcc i32 @list_empty(%struct.list_head* noundef %i_wb_list) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end

if.then9:                                         ; preds = %do.body1
  call fastcc void @list_del_init(%struct.list_head* noundef %i_wb_list) #13
  br label %if.end

if.end:                                           ; preds = %if.then9, %do.body1
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #11
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_wait_for_writeback(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  call fastcc void @__inode_wait_for_writeback(%struct.inode* noundef %inode) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__inode_wait_for_writeback(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %wq = alloca %struct.wait_bit_queue_entry, align 8
  %0 = bitcast %struct.wait_bit_queue_entry* %wq to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wq, i64 0, i32 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 24, i1 false), !annotation !7
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %3 = bitcast i64* %i_state to i8*
  %4 = bitcast %struct.wait_bit_queue_entry* %wq to i64**
  store i64* %i_state, i64** %4, align 8
  %bit_nr = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wq, i64 0, i32 0, i32 1
  store i32 7, i32* %bit_nr, align 8
  %flags1 = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wq, i64 0, i32 1, i32 0
  store i32 0, i32* %flags1, align 8
  %private = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wq, i64 0, i32 1, i32 1
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = bitcast i8** %private to %struct.task_struct**
  store %struct.task_struct* %6, %struct.task_struct** %7, align 8
  %func = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wq, i64 0, i32 1, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @wake_bit_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry2 = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wq, i64 0, i32 1, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry2, i64 0, i32 0
  store %struct.list_head* %entry2, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wq, i64 0, i32 1, i32 3, i32 1
  store %struct.list_head* %entry2, %struct.list_head** %prev, align 8
  %call8 = call %struct.wait_queue_head* @bit_waitqueue(i8* noundef %3, i32 noundef 7) #11
  %8 = load i64, i64* %i_state, align 8
  %and18 = and i64 %8, 128
  %tobool.not19 = icmp eq i64 %and18, 0
  br i1 %tobool.not19, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %call10 = call i32 @__wait_on_bit(%struct.wait_queue_head* noundef %call8, %struct.wait_bit_queue_entry* noundef nonnull %wq, i32 (%struct.wait_bit_key*, i32)* noundef nonnull @bit_wait, i32 noundef 2) #11
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %9 = load i64, i64* %i_state, align 8
  %and = and i64 %9, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wb_workfn(%struct.work_struct* noundef %work) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef %work) #13
  %add.ptr = getelementptr %struct.delayed_work, %struct.delayed_work* %call, i64 -4, i32 1
  %0 = bitcast %struct.timer_list* %add.ptr to %struct.bdi_writeback*
  %bdi = bitcast %struct.timer_list* %add.ptr to %struct.backing_dev_info**
  %1 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %call1 = call i8* @bdi_dev_name(%struct.backing_dev_info* noundef %1) #11
  call void (i8*, ...) @set_worker_desc(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %call1) #11
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4
  %or = or i32 %4, 8388608
  store i32 %or, i32* %flags, align 4
  %call3 = call i1 @current_is_workqueue_rescuer() #11
  br i1 %call3, label %lor.rhs, label %do.body8.preheader

lor.rhs:                                          ; preds = %entry
  %state = getelementptr %struct.delayed_work, %struct.delayed_work* %call, i64 -4, i32 1, i32 0, i32 1
  %5 = bitcast %struct.hlist_node*** %state to i64*
  %6 = load volatile i64, i64* %5, align 8
  %conv.i42 = and i64 %6, 1
  %tobool.not = icmp eq i64 %conv.i42, 0
  br i1 %tobool.not, label %do.body8.preheader, label %if.else, !prof !12

do.body8.preheader:                               ; preds = %lor.rhs, %entry
  %work_list = getelementptr inbounds %struct.timer_list, %struct.timer_list* %add.ptr, i64 7, i32 2
  %7 = bitcast void (%struct.timer_list*)** %work_list to %struct.list_head*
  br label %do.body8

do.body8:                                         ; preds = %do.body8.preheader, %do.body8
  call fastcc void @wb_do_writeback(%struct.bdi_writeback* noundef %0) #13
  %call11 = call fastcc i32 @list_empty(%struct.list_head* noundef %7) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body8, label %if.end

if.else:                                          ; preds = %lor.rhs
  call fastcc void @writeback_inodes_wb(%struct.bdi_writeback* noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %do.body8, %if.else
  %work_list17 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %add.ptr, i64 7, i32 2
  %8 = bitcast void (%struct.timer_list*)** %work_list17 to %struct.list_head*
  %call18 = call fastcc i32 @list_empty(%struct.list_head* noundef %8) #13
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end
  call fastcc void @wb_wakeup(%struct.bdi_writeback* noundef %0) #13
  br label %if.end27

if.else21:                                        ; preds = %if.end
  %call22 = call fastcc i1 @wb_has_dirty_io(%struct.bdi_writeback* noundef %0) #13
  %9 = load i32, i32* @dirty_writeback_interval, align 4
  %tobool24 = icmp ne i32 %9, 0
  %or.cond = select i1 %call22, i1 %tobool24, i1 false
  br i1 %or.cond, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.else21
  call void @wb_wakeup_delayed(%struct.bdi_writeback* noundef %0) #11
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.then25, %if.then20
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, -8388609
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef readnone %work) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.work_struct* %work to %struct.delayed_work*
  ret %struct.delayed_work* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_worker_desc(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bdi_dev_name(%struct.backing_dev_info* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @current_is_workqueue_rescuer() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_do_writeback(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %state) #13
  %call3 = call fastcc %struct.wb_writeback_work* @get_next_work_item(%struct.bdi_writeback* noundef %wb) #13
  %cmp.not4 = icmp eq %struct.wb_writeback_work* %call3, null
  br i1 %cmp.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call5 = phi %struct.wb_writeback_work* [ %call, %while.body ], [ %call3, %entry ]
  %call1 = call fastcc i64 @wb_writeback(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef nonnull %call5) #13
  call fastcc void @finish_writeback_work(%struct.wb_writeback_work* noundef nonnull %call5) #13
  %call = call fastcc %struct.wb_writeback_work* @get_next_work_item(%struct.bdi_writeback* noundef %wb) #13
  %cmp.not = icmp eq %struct.wb_writeback_work* %call, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %call2 = call fastcc i64 @wb_check_start_all(%struct.bdi_writeback* noundef %wb) #13
  %call4 = call fastcc i64 @wb_check_old_data_flush(%struct.bdi_writeback* noundef %wb) #13
  %call6 = call fastcc i64 @wb_check_background_flush(%struct.bdi_writeback* noundef %wb) #13
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %state) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @writeback_inodes_wb(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %work = alloca %struct.wb_writeback_work, align 8
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.wb_writeback_work* %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false), !annotation !7
  %nr_pages1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  store i64 1024, i64* %nr_pages1, align 8
  %sb = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  store %struct.super_block* null, %struct.super_block** %sb, align 8
  %tagged_writepages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  store i8 4, i8* %tagged_writepages, align 4
  %reason17 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 4
  store i32 6, i32* %reason17, align 8
  %list = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 5
  %3 = bitcast %struct.blk_plug* %plug to i8*
  %4 = bitcast %struct.list_head* %list to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !7
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #11
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %b_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %b_io) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load volatile i64, i64* @jiffies, align 64
  call fastcc void @queue_io(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef nonnull %work, i64 noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call18 = call fastcc i64 @__writeback_inodes_wb(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef nonnull %work) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @wb_has_dirty_io(%struct.bdi_writeback* noundef %wb) unnamed_addr #5 {
entry:
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 4
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_wakeup_delayed(%struct.bdi_writeback* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wakeup_flusher_threads_bdi(%struct.backing_dev_info* noundef %bdi, i32 noundef %reason) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #11
  call fastcc void @__wakeup_flusher_threads_bdi(%struct.backing_dev_info* noundef %bdi, i32 noundef %reason) #13
  call fastcc void @rcu_read_unlock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__wakeup_flusher_threads_bdi(%struct.backing_dev_info* noundef %bdi, i32 noundef %reason) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @bdi_has_dirty_io(%struct.backing_dev_info* noundef %bdi) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %wb_list = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 12
  %.pn.in25 = getelementptr inbounds %struct.list_head, %struct.list_head* %wb_list, i64 0, i32 0
  %.pn26 = load volatile %struct.list_head*, %struct.list_head** %.pn.in25, align 8
  %wb.0.in27 = getelementptr %struct.list_head, %struct.list_head* %.pn26, i64 -32, i32 1
  %bdi_node28 = getelementptr inbounds %struct.list_head*, %struct.list_head** %wb.0.in27, i64 63
  %0 = bitcast %struct.list_head** %bdi_node28 to %struct.list_head*
  %cmp.not29 = icmp eq %struct.list_head* %wb_list, %0
  br i1 %cmp.not29, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %1 = phi %struct.list_head* [ %2, %for.body ], [ %0, %if.end ]
  %wb.0.in30 = phi %struct.list_head** [ %wb.0.in, %for.body ], [ %wb.0.in27, %if.end ]
  %wb.0 = bitcast %struct.list_head** %wb.0.in30 to %struct.bdi_writeback*
  call fastcc void @wb_start_writeback(%struct.bdi_writeback* noundef %wb.0, i32 noundef %reason) #13
  %.pn.in = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %wb.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -32, i32 1
  %bdi_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %wb.0.in, i64 63
  %2 = bitcast %struct.list_head** %bdi_node to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %wb_list, %2
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wakeup_flusher_threads(i32 noundef %reason) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i1 @blk_needs_flush_plug(%struct.task_struct* noundef %1) #13
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @blk_schedule_flush_plug(%struct.task_struct* noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__rcu_read_lock() #11
  %.pn25 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @bdi_list, i64 0, i32 0), align 8
  %cmp.not26 = icmp eq %struct.list_head* %.pn25, @bdi_list
  br i1 %cmp.not26, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %.pn27 = phi %struct.list_head* [ %.pn, %for.body ], [ %.pn25, %if.end ]
  %bdi.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn27, i64 -2
  %bdi.0 = bitcast %struct.list_head* %bdi.0.in to %struct.backing_dev_info*
  call fastcc void @__wakeup_flusher_threads_bdi(%struct.backing_dev_info* noundef %bdi.0, i32 noundef %reason) #13
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn27, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %.pn, @bdi_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call fastcc void @rcu_read_unlock() #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_needs_flush_plug(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #5 {
entry:
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 109
  %0 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %0, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mq_list) #13
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %cb_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %0, i64 0, i32 1
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %cb_list) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ %tobool4.not, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_schedule_flush_plug(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #0 {
entry:
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 109
  %0 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @blk_flush_plug_list(%struct.blk_plug* noundef nonnull %0, i1 noundef true) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @start_dirtytime_writeback() #7 section ".init.text" {
entry:
  %0 = load i32, i32* @dirtytime_expire_interval, align 4
  %mul = mul i32 %0, 250
  %conv = zext i32 %mul to i64
  call fastcc void @schedule_delayed_work(i64 noundef %conv) #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dirtytime_interval_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #11
  %cmp = icmp eq i32 %call, 0
  %tobool = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %0, %struct.delayed_work* noundef nonnull @dirtytime_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork) unnamed_addr #0 {
entry:
  %call = call i1 @mod_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef 0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 3
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %dirty_inode = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 3
  %2 = load void (%struct.inode*, i32)*, void (%struct.inode*, i32)** %dirty_inode, align 8
  %tobool1.not = icmp eq void (%struct.inode*, i32)* %2, null
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void %2(%struct.inode* noundef %inode, i32 noundef %and) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %and6 = and i32 %flags, -2049
  br label %if.end25

if.else:                                          ; preds = %entry
  %and7 = and i32 %flags, 2048
  %tobool8 = icmp ne i32 %and7, 0
  %cmp = icmp ne i32 %flags, 2048
  %3 = and i1 %cmp, %tobool8
  br i1 %3, label %if.then16, label %if.end25, !prof !8

if.then16:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2410; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !13
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16, %if.end
  %dirtytime.0 = phi i32 [ 0, %if.end ], [ 1, %if.then16 ], [ %and7, %if.else ]
  %flags.addr.0 = phi i32 [ %and6, %if.end ], [ %flags, %if.then16 ], [ %flags, %if.else ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %4 = load i64, i64* %i_state, align 8
  %conv26 = sext i32 %flags.addr.0 to i64
  %and27 = and i64 %4, %conv26
  %cmp29 = icmp eq i64 %and27, %conv26
  br i1 %cmp29, label %cleanup104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %tobool31.not = icmp eq i32 %dirtytime.0, 0
  %and33 = and i64 %4, 3
  %tobool34.not = icmp eq i64 %and33, 0
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool34.not
  br i1 %or.cond, label %if.end36, label %cleanup104

if.end36:                                         ; preds = %lor.lhs.false
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %.pre = load i64, i64* %i_state, align 8
  %and40 = and i64 %.pre, 3
  %tobool41.not = icmp ne i64 %and40, 0
  %not.tobool31.not = xor i1 %tobool31.not, true
  %or.cond166 = select i1 %not.tobool31.not, i1 %tobool41.not, i1 false
  %and46 = and i64 %.pre, %conv26
  %cmp48.not = icmp eq i64 %and46, %conv26
  %or.cond167 = select i1 %or.cond166, i1 true, i1 %cmp48.not
  br i1 %or.cond167, label %out_unlock_inode, label %if.then50

if.then50:                                        ; preds = %if.end36
  %and54 = and i32 %flags.addr.0, 3
  %tobool55.not = icmp eq i32 %and54, 0
  %and58 = and i64 %.pre, -2049
  %spec.select = select i1 %tobool55.not, i64 %.pre, i64 %and58
  %or = or i64 %spec.select, %conv26
  store i64 %or, i64* %i_state, align 8
  %and63 = and i64 %or, 131072
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.end66, label %out_unlock_inode

if.end66:                                         ; preds = %if.then50
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %5 = load i16, i16* %i_mode, align 8
  %6 = and i16 %5, -4096
  %cmp69 = icmp eq i16 %6, 24576
  br i1 %cmp69, label %if.end75, label %if.then71

if.then71:                                        ; preds = %if.end66
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %inode) #13
  %tobool72.not = icmp eq i32 %call, 0
  %and77 = and i64 %or, 32
  %tobool78.not = icmp eq i64 %and77, 0
  %or.cond165 = select i1 %tobool72.not, i1 %tobool78.not, i1 false
  br i1 %or.cond165, label %if.end80, label %out_unlock_inode

if.end75:                                         ; preds = %if.end66
  %and77.old = and i64 %or, 32
  %tobool78.not.old = icmp eq i64 %and77.old, 0
  br i1 %tobool78.not.old, label %if.end80, label %out_unlock_inode

if.end80:                                         ; preds = %if.then71, %if.end75
  %conv53161 = and i64 %.pre, 7
  %tobool81.not = icmp eq i64 %conv53161, 0
  br i1 %tobool81.not, label %if.then82, label %out_unlock_inode

if.then82:                                        ; preds = %if.end80
  %call83 = call fastcc %struct.bdi_writeback* @locked_inode_to_wb_and_lock_list(%struct.inode* noundef %inode) #13
  %7 = load volatile i64, i64* @jiffies, align 64
  %dirtied_when = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 22
  store i64 %7, i64* %dirtied_when, align 8
  br i1 %tobool31.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.then82
  %8 = load volatile i64, i64* @jiffies, align 64
  %dirtied_time_when = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 23
  store i64 %8, i64* %dirtied_time_when, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then82
  %9 = load i64, i64* %i_state, align 8
  %and88 = and i64 %9, 7
  %tobool89.not = icmp eq i64 %and88, 0
  %b_dirty = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call83, i64 0, i32 3
  %b_dirty_time = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call83, i64 0, i32 6
  %dirty_list.0 = select i1 %tobool89.not, %struct.list_head* %b_dirty_time, %struct.list_head* %b_dirty
  %call93 = call fastcc i1 @inode_io_list_move_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %call83, %struct.list_head* noundef %dirty_list.0) #13
  %rlock.i162 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call83, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i162) #11
  br i1 %call93, label %land.lhs.true96, label %cleanup104

land.lhs.true96:                                  ; preds = %if.end86
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call83, i64 0, i32 0
  %10 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %10, i64 0, i32 6
  %11 = load i32, i32* %capabilities, align 4
  %and97 = and i32 %11, 1
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %cleanup104, label %if.then99

if.then99:                                        ; preds = %land.lhs.true96
  call void @wb_wakeup_delayed(%struct.bdi_writeback* noundef %call83) #11
  br label %cleanup104

out_unlock_inode:                                 ; preds = %if.end36, %if.end80, %if.end75, %if.then71, %if.then50
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %cleanup104

cleanup104:                                       ; preds = %if.then99, %land.lhs.true96, %if.end86, %if.end25, %lor.lhs.false, %out_unlock_inode
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @inode_unhashed(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #8 {
entry:
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %i_hash) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bdi_writeback* @locked_inode_to_wb_and_lock_list(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %inode) #13
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %rlock.i4 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i4) #11
  ret %struct.bdi_writeback* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @inode_io_list_move_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 122; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !15
  unreachable

do.end7:                                          ; preds = %entry
  %i_io_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 25
  call fastcc void @list_move(%struct.list_head* noundef %i_io_list, %struct.list_head* noundef %head) #13
  %b_dirty_time = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 6
  %cmp.not = icmp eq %struct.list_head* %b_dirty_time, %head
  br i1 %cmp.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end7
  %call10 = call fastcc i1 @wb_io_lists_populated(%struct.bdi_writeback* noundef %wb) #13
  br label %return

if.end11:                                         ; preds = %do.end7
  call fastcc void @wb_io_lists_depopulated(%struct.bdi_writeback* noundef %wb) #13
  br label %return

return:                                           ; preds = %if.end11, %if.then9
  %retval.0 = phi i1 [ %call10, %if.then9 ], [ false, %if.end11 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @writeback_inodes_sb_nr(%struct.super_block* noundef %sb, i64 noundef %nr, i32 noundef %reason) local_unnamed_addr #0 {
entry:
  call fastcc void @__writeback_inodes_sb_nr(%struct.super_block* noundef %sb, i64 noundef %nr, i32 noundef %reason, i1 noundef false) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__writeback_inodes_sb_nr(%struct.super_block* noundef %sb, i64 noundef %nr, i32 noundef %reason, i1 noundef %skip_if_busy) unnamed_addr #0 {
entry:
  %done = alloca %struct.wb_completion, align 8
  %work = alloca %struct.wb_writeback_work, align 8
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 21
  %0 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi, align 8
  %1 = bitcast %struct.wb_completion* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.wb_completion* %done to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %counter = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %done, i64 0, i32 0, i32 0
  store i32 1, i32* %counter, align 8
  %waitq = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %done, i64 0, i32 1
  %wb_waitq = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %0, i64 0, i32 13
  store %struct.wait_queue_head* %wb_waitq, %struct.wait_queue_head** %waitq, align 8
  %3 = bitcast %struct.wb_writeback_work* %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12
  %4 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  %5 = bitcast i32* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 16, i1 false), !annotation !7
  %nr_pages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  store i64 %nr, i64* %nr_pages, align 8
  %sb1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  store %struct.super_block* %sb, %struct.super_block** %sb1, align 8
  %tagged_writepages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  store i8 1, i8* %tagged_writepages, align 4
  %reason17 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 4
  store i32 %reason, i32* %reason17, align 8
  %list = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 5
  %6 = bitcast %struct.list_head* %list to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %done18 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 6
  store %struct.wb_completion* %done, %struct.wb_completion** %done18, align 8
  %call = call fastcc i1 @bdi_has_dirty_io(%struct.backing_dev_info* noundef %0) #13
  %cmp = icmp ne %struct.backing_dev_info* %0, @noop_backing_dev_info
  %7 = and i1 %cmp, %call
  br i1 %7, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  %call19 = call fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %s_umount) #13
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then28, label %if.end29, !prof !8

if.then28:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2609; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !16
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end
  %8 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi, align 8
  call fastcc void @bdi_split_work_to_wbs(%struct.backing_dev_info* noundef %8, %struct.wb_writeback_work* noundef nonnull %work, i1 noundef %skip_if_busy) #13
  call void @wb_wait_for_completion(%struct.wb_completion* noundef nonnull %done) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end29
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @writeback_inodes_sb(%struct.super_block* noundef %sb, i32 noundef %reason) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_nr_dirty_pages() #13
  call void @writeback_inodes_sb_nr(%struct.super_block* noundef %sb, i64 noundef %call, i32 noundef %reason) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_nr_dirty_pages() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @global_node_page_state() #13
  %call1 = call i64 @get_nr_dirty_inodes() #11
  %add = add i64 %call1, %call
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @try_to_writeback_inodes_sb(%struct.super_block* noundef %sb, i32 noundef %reason) local_unnamed_addr #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %s_umount) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @get_nr_dirty_pages() #13
  call fastcc void @__writeback_inodes_sb_nr(%struct.super_block* noundef %sb, i64 noundef %call1, i32 noundef %reason, i1 noundef true) #13
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sync_inodes_sb(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %done = alloca %struct.wb_completion, align 8
  %work = alloca %struct.wb_writeback_work, align 8
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 21
  %0 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi, align 8
  %1 = bitcast %struct.wb_completion* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.wb_completion* %done to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %counter = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %done, i64 0, i32 0, i32 0
  store i32 1, i32* %counter, align 8
  %waitq = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %done, i64 0, i32 1
  %wb_waitq = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %0, i64 0, i32 13
  store %struct.wait_queue_head* %wb_waitq, %struct.wait_queue_head** %waitq, align 8
  %3 = bitcast %struct.wb_writeback_work* %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12
  %4 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  %5 = bitcast i32* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 16, i1 false), !annotation !7
  %nr_pages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  store i64 9223372036854775807, i64* %nr_pages, align 8
  %sb1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  store %struct.super_block* %sb, %struct.super_block** %sb1, align 8
  %sync_mode = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  store i32 1, i32* %sync_mode, align 8
  %tagged_writepages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  store i8 16, i8* %tagged_writepages, align 4
  %reason = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 4
  store i32 2, i32* %reason, align 8
  %list = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 5
  %6 = bitcast %struct.list_head* %list to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %done17 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 6
  store %struct.wb_completion* %done, %struct.wb_completion** %done17, align 8
  %cmp = icmp eq %struct.backing_dev_info* %0, @noop_backing_dev_info
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  %call = call fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %s_umount) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then26, label %if.end27, !prof !8

if.then26:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2693; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !17
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end
  call fastcc void @bdi_split_work_to_wbs(%struct.backing_dev_info* noundef %0, %struct.wb_writeback_work* noundef nonnull %work, i1 noundef false) #13
  call void @wb_wait_for_completion(%struct.wb_completion* noundef nonnull %done) #13
  call fastcc void @wait_sb_inodes(%struct.super_block* noundef %sb) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end27
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %sem) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp ne i64 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bdi_split_work_to_wbs(%struct.backing_dev_info* noundef %bdi, %struct.wb_writeback_work* noundef %base_work, i1 noundef %skip_if_busy) unnamed_addr #0 {
entry:
  br i1 %skip_if_busy, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11
  %call = call fastcc i1 @writeback_in_progress(%struct.bdi_writeback* noundef %wb) #13
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %auto_free = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %base_work, i64 0, i32 3
  %bf.load = load i8, i8* %auto_free, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, i8* %auto_free, align 4
  %wb3 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11
  call fastcc void @wb_queue_work(%struct.bdi_writeback* noundef %wb3, %struct.wb_writeback_work* noundef %base_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_sb_inodes(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %sync_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %sync_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sync_list, i64 0, i32 0
  store %struct.list_head* %sync_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %sync_list, i64 0, i32 1
  store %struct.list_head* %sync_list, %struct.list_head** %prev, align 8
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  %call = call fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %s_umount) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 2516; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %s_sync_lock = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 51
  call void @mutex_lock(%struct.mutex* noundef %s_sync_lock) #11
  call fastcc void @__rcu_read_lock() #11
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 56, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #11
  %s_inodes_wb = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 57
  call fastcc void @list_splice_init(%struct.list_head* noundef %s_inodes_wb, %struct.list_head* noundef nonnull %sync_list) #13
  %call1669 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %sync_list) #13
  %tobool17.not70 = icmp eq i32 %call1669, 0
  br i1 %tobool17.not70, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %1 = bitcast %struct.list_head* %sync_list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -256
  %3 = bitcast i8* %add.ptr to %struct.inode*
  %i_mapping = getelementptr i8, i8* %2, i64 -224
  %4 = bitcast i8* %i_mapping to %struct.address_space**
  %5 = load %struct.address_space*, %struct.address_space** %4, align 8
  %6 = bitcast i8* %2 to %struct.list_head*
  call fastcc void @list_move_tail(%struct.list_head* noundef %6, %struct.list_head* noundef %s_inodes_wb) #13
  %call23 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef %5, i32 noundef 1) #13
  br i1 %call23, label %if.end25, label %cleanup

if.end25:                                         ; preds = %while.body
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #11
  %i_lock = getelementptr i8, i8* %2, i64 -144
  %rlock.i63 = bitcast i8* %i_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i63) #11
  %i_state = getelementptr i8, i8* %2, i64 -128
  %7 = bitcast i8* %i_state to i64*
  %8 = load i64, i64* %7, align 8
  %and = and i64 %8, 56
  %tobool27.not = icmp eq i64 %and, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end25
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i63) #11
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end25
  call void @__iget(%struct.inode* noundef %3) #11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i63) #11
  call fastcc void @rcu_read_unlock() #13
  %call33 = call i32 @filemap_fdatawait_keep_errors(%struct.address_space* noundef %5) #11
  call fastcc void @_cond_resched() #13
  call void @iput(%struct.inode* noundef %3) #11
  call fastcc void @__rcu_read_lock() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then28, %if.end31
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body
  %call16 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %sync_list) #13
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %if.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #11
  call fastcc void @rcu_read_unlock() #13
  call void @mutex_unlock(%struct.mutex* noundef %s_sync_lock) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @write_inode_now(%struct.inode* noundef %inode, i32 noundef %sync) local_unnamed_addr #0 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  %0 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %nr_to_write = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  store i64 9223372036854775807, i64* %nr_to_write, align 8
  %pages_skipped = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 1
  store i64 0, i64* %pages_skipped, align 8
  %range_start = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 2
  store i64 0, i64* %range_start, align 8
  %range_end = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 3
  store i64 9223372036854775807, i64* %range_end, align 8
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %tobool.not = icmp ne i32 %sync, 0
  %cond = zext i1 %tobool.not to i32
  store i32 %cond, i32* %sync_mode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %3 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef %3) #13
  br i1 %call, label %do.end25, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %nr_to_write, align 8
  br label %do.end25

do.end25:                                         ; preds = %if.then, %entry
  %call26 = call fastcc i32 @writeback_single_inode(%struct.inode* noundef %inode, %struct.writeback_control* noundef nonnull %wbc) #13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #12
  ret i32 %call26
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mapping_can_writeback(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %0) #13
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 6
  %1 = load i32, i32* %capabilities, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @writeback_single_inode(%struct.inode* noundef %inode, %struct.writeback_control* noundef %wbc) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 32, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %1 = load i64, i64* %i_state, align 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i64 %1, 48
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.then10, label %if.end44, !prof !8

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1699; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !19
  br label %if.end44

if.else:                                          ; preds = %entry
  %and20 = and i64 %1, 16
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.end44, label %if.then34, !prof !12

if.then34:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1701; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !20
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then34, %if.then, %if.then10
  %i_state45 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %2 = load i64, i64* %i_state45, align 8
  %and46 = and i64 %2, 128
  %tobool47.not = icmp eq i64 %and46, 0
  br i1 %tobool47.not, label %if.end70, label %if.then48

if.then48:                                        ; preds = %if.end44
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %3 = load i32, i32* %sync_mode, align 8
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end52, label %out

if.end52:                                         ; preds = %if.then48
  call fastcc void @__inode_wait_for_writeback(%struct.inode* noundef %inode) #13
  %.pre = load i64, i64* %i_state45, align 8
  %.pre132 = and i64 %.pre, 128
  %tobool56.not = icmp eq i64 %.pre132, 0
  br i1 %tobool56.not, label %if.end70, label %if.then69, !prof !12

if.then69:                                        ; preds = %if.end52
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1714; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !21
  %.pre131 = load i64, i64* %i_state45, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end44, %if.then69, %if.end52
  %4 = phi i64 [ %.pre131, %if.then69 ], [ %.pre, %if.end52 ], [ %2, %if.end44 ]
  %and80 = and i64 %4, 2055
  %tobool81.not = icmp eq i64 %and80, 0
  br i1 %tobool81.not, label %land.lhs.true, label %if.end87

land.lhs.true:                                    ; preds = %if.end70
  %sync_mode82 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %5 = load i32, i32* %sync_mode82, align 8
  %cmp83.not = icmp eq i32 %5, 1
  br i1 %cmp83.not, label %lor.lhs.false, label %out

lor.lhs.false:                                    ; preds = %land.lhs.true
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %6 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call85 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef %6, i32 noundef 1) #13
  br i1 %call85, label %if.end87, label %out

if.end87:                                         ; preds = %lor.lhs.false, %if.end70
  %or = or i64 %4, 128
  store i64 %or, i64* %i_state45, align 8
  call fastcc void @wbc_attach_and_unlock_inode(%struct.inode* noundef %inode) #13
  %call89 = call fastcc i32 @__writeback_single_inode(%struct.inode* noundef %inode, %struct.writeback_control* noundef %wbc) #13
  %call90 = call fastcc %struct.bdi_writeback* @inode_to_wb_and_lock_list(%struct.inode* noundef %inode) #13
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %7 = load i64, i64* %i_state45, align 8
  %and93 = and i64 %7, 2055
  %tobool94.not = icmp eq i64 %and93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end87
  call fastcc void @inode_cgwb_move_to_attached(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %call90) #13
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end87
  %rlock.i129 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call90, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i129) #11
  call fastcc void @inode_sync_complete(%struct.inode* noundef %inode) #13
  br label %out

out:                                              ; preds = %land.lhs.true, %lor.lhs.false, %if.then48, %if.end96
  %ret.0 = phi i32 [ 0, %if.then48 ], [ %call89, %if.end96 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sync_inode_metadata(%struct.inode* noundef %inode, i32 noundef %wait) local_unnamed_addr #0 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  %0 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #12
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %tobool.not = icmp ne i32 %wait, 0
  %cond = zext i1 %tobool.not to i32
  %1 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  store i32 %cond, i32* %sync_mode, align 8
  %call = call fastcc i32 @writeback_single_inode(%struct.inode* noundef %inode, %struct.writeback_control* noundef nonnull %wbc) #13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @__preempt_count_add() #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.25* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !24
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
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
  call void @__local_bh_enable_ip(i64 noundef %cond, i32 noundef 512) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) #13
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 11
  ret %struct.bdi_writeback* %wb
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i1 @sb_is_blkdev_sb(%struct.super_block* noundef %0) #13
  br i1 %call, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call %struct.block_device* @I_BDEV(%struct.inode* noundef nonnull %inode) #11
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
define internal fastcc i1 @sb_is_blkdev_sb(%struct.super_block* nocapture noundef readnone %sb) unnamed_addr #8 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %cmp = icmp eq %struct.super_block* %0, %sb
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !28
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #13
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #12, !srcloc !30
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #12, !srcloc !31
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
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
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.wait_queue_head* @bit_waitqueue(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__wait_on_bit(%struct.wait_queue_head* noundef, %struct.wait_bit_queue_entry* noundef, i32 (%struct.wait_bit_key*, i32)* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(%struct.wait_bit_key* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.wb_writeback_work* @get_next_work_item(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 21, i32 0, i32 0
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %rlock.i) #11
  %work_list = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 22
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %work_list) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.list_head* %work_list to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -32
  %2 = bitcast i8* %add.ptr to %struct.wb_writeback_work*
  %3 = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %work.0 = phi %struct.wb_writeback_work* [ null, %entry ], [ %2, %if.then ]
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %rlock.i) #11
  ret %struct.wb_writeback_work* %work.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @wb_writeback(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* nocapture noundef %work) unnamed_addr #0 {
entry:
  %plug = alloca %struct.blk_plug, align 8
  %nr_pages1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  %0 = load i64, i64* %nr_pages1, align 8
  %1 = load volatile i64, i64* @jiffies, align 64
  %2 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !7
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #11
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %work_list = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 22
  %b_more_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 5
  %3 = load i64, i64* %nr_pages1, align 8
  %cmp101 = icmp slt i64 %3, 1
  br i1 %cmp101, label %for.end, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %for_background = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  %b_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4
  %sb = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  %prev = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 5, i32 1
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %for.cond.backedge
  %dirtied_before.0102 = phi i64 [ %1, %if.end.lr.ph ], [ %dirtied_before.1, %for.cond.backedge ]
  %bf.load = load i8, i8* %for_background, align 4
  %4 = and i8 %bf.load, 10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %work_list) #13
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %for.end, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  %bf.load12.pre = load i8, i8* %for_background, align 4
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end
  %bf.load12 = phi i8 [ %bf.load12.pre, %land.lhs.true.if.end10_crit_edge ], [ %bf.load, %if.end ]
  %6 = and i8 %bf.load12, 8
  %tobool16.not = icmp eq i8 %6, 0
  br i1 %tobool16.not, label %if.end20, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end10
  %call18 = call i1 @wb_over_bg_thresh(%struct.bdi_writeback* noundef %wb) #11
  br i1 %call18, label %land.lhs.true17.if.end20_crit_edge, label %for.end

land.lhs.true17.if.end20_crit_edge:               ; preds = %land.lhs.true17
  %bf.load22.pre = load i8, i8* %for_background, align 4
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true17.if.end20_crit_edge, %if.end10
  %bf.load22 = phi i8 [ %bf.load22.pre, %land.lhs.true17.if.end20_crit_edge ], [ %bf.load12, %if.end10 ]
  %7 = and i8 %bf.load22, 2
  %tobool26.not = icmp eq i8 %7, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end20
  %8 = load volatile i64, i64* @jiffies, align 64
  %9 = load i32, i32* @dirty_expire_interval, align 4
  %mul = mul i32 %9, 10
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %mul) #11
  %sub = sub i64 %8, %call2.i
  br label %if.end37

if.else:                                          ; preds = %if.end20
  %10 = and i8 %bf.load22, 8
  %tobool34.not = icmp eq i8 %10, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.else
  %11 = load volatile i64, i64* @jiffies, align 64
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then35, %if.then27
  %dirtied_before.1 = phi i64 [ %sub, %if.then27 ], [ %11, %if.then35 ], [ %dirtied_before.0102, %if.else ]
  %call38 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_io) #13
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call fastcc void @queue_io(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef %work, i64 noundef %dirtied_before.1) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %12 = load %struct.super_block*, %struct.super_block** %sb, align 8
  %tobool42.not = icmp eq %struct.super_block* %12, null
  br i1 %tobool42.not, label %if.else46, label %if.then43

if.then43:                                        ; preds = %if.end41
  %call45 = call fastcc i64 @writeback_sb_inodes(%struct.super_block* noundef nonnull %12, %struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef %work) #13
  br label %if.end48

if.else46:                                        ; preds = %if.end41
  %call47 = call fastcc i64 @__writeback_inodes_wb(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef %work) #13
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then43
  %progress.0 = phi i64 [ %call45, %if.then43 ], [ %call47, %if.else46 ]
  %tobool49.not = icmp eq i64 %progress.0, 0
  br i1 %tobool49.not, label %if.end51, label %for.cond.backedge

if.end51:                                         ; preds = %if.end48
  %call52 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_more_io) #13
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %for.end

if.end55:                                         ; preds = %if.end51
  %13 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %call57 = call fastcc %struct.inode* @wb_inode(%struct.list_head* noundef %13) #13
  %rlock.i97 = getelementptr inbounds %struct.inode, %struct.inode* %call57, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i97) #11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  call fastcc void @inode_sleep_on_writeback(%struct.inode* noundef %call57) #13
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end55, %if.end48
  %14 = load i64, i64* %nr_pages1, align 8
  %cmp = icmp slt i64 %14, 1
  br i1 %cmp, label %for.end, label %if.end

for.end:                                          ; preds = %for.cond.backedge, %land.lhs.true, %land.lhs.true17, %if.end51, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #11
  %15 = load i64, i64* %nr_pages1, align 8
  %sub62 = sub i64 %0, %15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #12
  ret i64 %sub62
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @finish_writeback_work(%struct.wb_writeback_work* noundef %work) unnamed_addr #0 {
entry:
  %done1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 6
  %0 = load %struct.wb_completion*, %struct.wb_completion** %done1, align 8
  %auto_free = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  %bf.load = load i8, i8* %auto_free, align 4
  %1 = and i8 %bf.load, 32
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.wb_writeback_work* %work to i8*
  call void @kfree(i8* noundef %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool2.not = icmp eq %struct.wb_completion* %0, null
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %waitq4 = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %0, i64 0, i32 1
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %waitq4, align 8
  %cnt = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %0, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %cnt) #11
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__wake_up(%struct.wait_queue_head* noundef %3, i32 noundef 3, i32 noundef 0, i8* noundef null) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then5, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @wb_check_start_all(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %work = alloca %struct.wb_writeback_work, align 8
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @get_nr_dirty_pages() #13
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %if.end22, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = bitcast %struct.wb_writeback_work* %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #12
  %3 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  %4 = bitcast i32* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 16, i1 false), !annotation !7
  %nr_pages4 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  store i64 %call1, i64* %nr_pages4, align 8
  %sb = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  store %struct.super_block* null, %struct.super_block** %sb, align 8
  %tagged_writepages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  store i8 4, i8* %tagged_writepages, align 4
  %reason = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 4
  %start_all_reason = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 20
  %5 = load i32, i32* %start_all_reason, align 4
  store i32 %5, i32* %reason, align 8
  %list = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 5
  %6 = bitcast %struct.list_head* %list to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %call21 = call fastcc i64 @wb_writeback(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef nonnull %work) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then3, %if.end
  %nr_pages.0 = phi i64 [ %call21, %if.then3 ], [ 0, %if.end ]
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %state) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end22
  %retval.0 = phi i64 [ %nr_pages.0, %if.end22 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @wb_check_old_data_flush(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %work = alloca %struct.wb_writeback_work, align 8
  %0 = load i32, i32* @dirty_writeback_interval, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %last_old_flush = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 2
  %1 = load i64, i64* %last_old_flush, align 8
  %mul = mul i32 %0, 10
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %mul) #11
  %2 = load volatile i64, i64* @jiffies, align 64
  %3 = add i64 %call2.i, %1
  %sub = sub i64 %2, %3
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %4 = load volatile i64, i64* @jiffies, align 64
  store i64 %4, i64* %last_old_flush, align 8
  %call4 = call fastcc i64 @get_nr_dirty_pages() #13
  %tobool5.not = icmp eq i64 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end2
  %5 = bitcast %struct.wb_writeback_work* %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12
  %6 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  %7 = bitcast i32* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 16, i1 false), !annotation !7
  %nr_pages7 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  store i64 %call4, i64* %nr_pages7, align 8
  %sb = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  store %struct.super_block* null, %struct.super_block** %sb, align 8
  %tagged_writepages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  store i8 6, i8* %tagged_writepages, align 4
  %reason = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 4
  store i32 3, i32* %reason, align 8
  %list = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 5
  %8 = bitcast %struct.list_head* %list to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %call23 = call fastcc i64 @wb_writeback(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef nonnull %work) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.then6
  %retval.0 = phi i64 [ %call23, %if.then6 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end2 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @wb_check_background_flush(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %work = alloca %struct.wb_writeback_work, align 8
  %call = call i1 @wb_over_bg_thresh(%struct.bdi_writeback* noundef %wb) #11
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.wb_writeback_work* %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  %2 = bitcast %struct.super_block** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 48, i1 false)
  %3 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  store i64 9223372036854775807, i64* %3, align 8
  %4 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  store i8 12, i8* %4, align 4
  %call1 = call fastcc i64 @wb_writeback(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef nonnull %work) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call1, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @wb_over_bg_thresh(%struct.bdi_writeback* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_io(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* nocapture noundef readonly %work, i64 noundef %dirtied_before) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1451; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !36
  unreachable

do.end9:                                          ; preds = %entry
  %b_more_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 5
  %b_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4
  call fastcc void @list_splice_init(%struct.list_head* noundef %b_more_io, %struct.list_head* noundef %b_io) #13
  %b_dirty = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 3
  %call11 = call fastcc i32 @move_expired_inodes(%struct.list_head* noundef %b_dirty, %struct.list_head* noundef %b_io, i64 noundef %dirtied_before) #13
  %for_sync = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  %bf.load = load i8, i8* %for_sync, align 4
  %1 = and i8 %bf.load, 16
  %tobool12.not = icmp eq i8 %1, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.end9
  %2 = load volatile i64, i64* @jiffies, align 64
  %3 = load i32, i32* @dirtytime_expire_interval, align 4
  %mul = mul i32 %3, 250
  %conv14 = zext i32 %mul to i64
  %sub = sub i64 %2, %conv14
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end9
  %time_expire_jif.0 = phi i64 [ %dirtied_before, %do.end9 ], [ %sub, %if.then13 ]
  %b_dirty_time = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 6
  %call17 = call fastcc i32 @move_expired_inodes(%struct.list_head* noundef %b_dirty_time, %struct.list_head* noundef %b_io, i64 noundef %time_expire_jif.0) #13
  %add = sub i32 0, %call17
  %tobool18.not = icmp eq i32 %call11, %add
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end15
  %call20 = call fastcc i1 @wb_io_lists_populated(%struct.bdi_writeback* noundef %wb) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @writeback_sb_inodes(%struct.super_block* noundef readnone %sb, %struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* nocapture noundef %work) unnamed_addr #0 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  %0 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #12
  %nr_to_write = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  %pages_skipped = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 1
  %range_end = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 3
  %1 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  store i64 9223372036854775807, i64* %range_end, align 8
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %sync_mode1 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  %2 = load i32, i32* %sync_mode1, align 8
  store i32 %2, i32* %sync_mode, align 8
  %for_kupdate = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 5
  %for_kupdate2 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  %bf.load = load i8, i8* %for_kupdate2, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %3 = lshr i8 %bf.load, 2
  %bf.shl = and i8 %3, 2
  %bf.set13 = or i8 %bf.clear, %bf.shl
  %bf.clear16 = shl i8 %bf.load, 2
  %bf.shl33 = and i8 %bf.clear16, 16
  %bf.clear16.masked = and i8 %bf.clear16, 4
  %bf.clear34 = or i8 %bf.set13, %bf.clear16.masked
  %bf.set35 = or i8 %bf.clear34, %bf.shl33
  %4 = shl i8 %bf.load, 1
  %bf.shl43 = and i8 %4, 32
  %bf.set45 = or i8 %bf.set35, %bf.shl43
  store i8 %bf.set45, i8* %for_kupdate, align 4
  %5 = load volatile i64, i64* @jiffies, align 64
  %sb54 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 1
  %add108 = add i64 %5, 25
  %b_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4
  %call188 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_io) #13
  %tobool.not189 = icmp eq i32 %call188, 0
  br i1 %tobool.not189, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4, i32 1
  %rlock.i177 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0
  %nr_pages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %wrote.0190 = phi i64 [ 0, %while.body.lr.ph ], [ %wrote.2, %cleanup ]
  %6 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %call53 = call fastcc %struct.inode* @wb_inode(%struct.list_head* noundef %6) #13
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call53, i64 0, i32 6
  %7 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %cmp.not = icmp eq %struct.super_block* %7, %sb
  br i1 %cmp.not, label %if.end57, label %if.then

if.then:                                          ; preds = %while.body
  %8 = load %struct.super_block*, %struct.super_block** %sb54, align 8
  %tobool55.not = icmp eq %struct.super_block* %8, null
  br i1 %tobool55.not, label %while.end, label %if.then56

if.then56:                                        ; preds = %if.then
  call fastcc void @redirty_tail(%struct.inode* noundef %call53, %struct.bdi_writeback* noundef %wb) #13
  br label %cleanup

if.end57:                                         ; preds = %while.body
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %call53, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call53, i64 0, i32 20
  %9 = load i64, i64* %i_state, align 8
  %and = and i64 %9, 56
  %tobool58.not = icmp eq i64 %and, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end57
  call fastcc void @redirty_tail_locked(%struct.inode* noundef %call53, %struct.bdi_writeback* noundef %wb) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %and63 = and i64 %9, 128
  %tobool64 = icmp ne i64 %and63, 0
  %10 = load i32, i32* %sync_mode, align 8
  %cmp66 = icmp ne i32 %10, 1
  %or.cond = select i1 %tobool64, i1 %cmp66, i1 false
  br i1 %or.cond, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end61
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  call fastcc void @requeue_io(%struct.inode* noundef %call53, %struct.bdi_writeback* noundef %wb) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end61
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i177) #11
  %11 = load i64, i64* %i_state, align 8
  %and71 = and i64 %11, 128
  %tobool72.not = icmp eq i64 %and71, 0
  br i1 %tobool72.not, label %if.end75, label %if.then73

if.then73:                                        ; preds = %if.end69
  call fastcc void @inode_sleep_on_writeback(%struct.inode* noundef %call53) #13
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i177) #11
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  %or = or i64 %11, 128
  store i64 %or, i64* %i_state, align 8
  call fastcc void @wbc_attach_and_unlock_inode(%struct.inode* noundef %call53) #13
  %call77 = call fastcc i64 @writeback_chunk_size(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef %work) #13
  store i64 %call77, i64* %nr_to_write, align 8
  store i64 0, i64* %pages_skipped, align 8
  %call80 = call fastcc i32 @__writeback_single_inode(%struct.inode* noundef %call53, %struct.writeback_control* noundef nonnull %wbc) #13
  %12 = load i64, i64* %nr_to_write, align 8
  %sub.neg = sub i64 %12, %call77
  %13 = load i64, i64* %nr_pages, align 8
  %sub82 = add i64 %sub.neg, %13
  store i64 %sub82, i64* %nr_pages, align 8
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %15 = inttoptr i64 %14 to %struct.task_struct*
  %16 = getelementptr %struct.task_struct, %struct.task_struct* %15, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %16) #11
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end89, label %if.then86

if.then86:                                        ; preds = %if.end75
  call fastcc void @blk_flush_plug(%struct.task_struct* noundef %15) #13
  call fastcc void @_cond_resched() #13
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end75
  %call90 = call fastcc %struct.bdi_writeback* @inode_to_wb_and_lock_list(%struct.inode* noundef %call53) #13
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %17 = load i64, i64* %i_state, align 8
  %and93 = and i64 %17, 2055
  %tobool94.not = icmp eq i64 %and93, 0
  %inc = zext i1 %tobool94.not to i64
  %sub84 = add i64 %call77, %wrote.0190
  %add = sub i64 %sub84, %12
  %spec.select = add i64 %add, %inc
  call fastcc void @requeue_inode(%struct.inode* noundef %call53, %struct.bdi_writeback* noundef %call90, %struct.writeback_control* noundef nonnull %wbc) #13
  call fastcc void @inode_sync_complete(%struct.inode* noundef %call53) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %cmp98.not = icmp eq %struct.bdi_writeback* %call90, %wb
  br i1 %cmp98.not, label %if.end105, label %if.then102, !prof !12

if.then102:                                       ; preds = %if.end89
  %rlock.i181 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %call90, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i181) #11
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i177) #11
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end89
  %tobool106.not = icmp eq i64 %spec.select, 0
  br i1 %tobool106.not, label %cleanup, label %if.then107

if.then107:                                       ; preds = %if.end105
  %18 = load volatile i64, i64* @jiffies, align 64
  %sub109 = sub i64 %add108, %18
  %cmp110 = icmp slt i64 %sub109, 0
  br i1 %cmp110, label %while.end, label %if.end113

if.end113:                                        ; preds = %if.then107
  %19 = load i64, i64* %nr_pages, align 8
  %cmp115 = icmp slt i64 %19, 1
  br i1 %cmp115, label %while.end, label %cleanup

cleanup:                                          ; preds = %if.end105, %if.end113, %if.then73, %if.then67, %if.then59, %if.then56
  %wrote.2 = phi i64 [ %wrote.0190, %if.then56 ], [ %wrote.0190, %if.then59 ], [ %wrote.0190, %if.then67 ], [ %wrote.0190, %if.then73 ], [ %spec.select, %if.end113 ], [ 0, %if.end105 ]
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %b_io) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %if.then, %if.then107, %if.end113, %entry
  %wrote.3 = phi i64 [ 0, %entry ], [ %spec.select, %if.end113 ], [ %spec.select, %if.then107 ], [ %wrote.0190, %if.then ], [ %wrote.2, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #12
  ret i64 %wrote.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__writeback_inodes_wb(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* nocapture noundef %work) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %add7 = add i64 %0, 25
  %nr_pages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  %b_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4
  %call34 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_io) #13
  %tobool.not35 = icmp eq i32 %call34, 0
  br i1 %tobool.not35, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %wrote.036 = phi i64 [ 0, %while.body.lr.ph ], [ %wrote.1, %cleanup ]
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %call2 = call fastcc %struct.inode* @wb_inode(%struct.list_head* noundef %1) #13
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call3 = call i1 @trylock_super(%struct.super_block* noundef %2) #11
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call fastcc void @redirty_tail(%struct.inode* noundef %call2, %struct.bdi_writeback* noundef %wb) #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call4 = call fastcc i64 @writeback_sb_inodes(%struct.super_block* noundef %2, %struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef %work) #13
  %add = add i64 %call4, %wrote.036
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 14
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #11
  %tobool5.not = icmp eq i64 %add, 0
  br i1 %tobool5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end
  %3 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add7, %3
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %while.end, label %if.end9

if.end9:                                          ; preds = %if.then6
  %4 = load i64, i64* %nr_pages, align 8
  %cmp10 = icmp slt i64 %4, 1
  br i1 %cmp10, label %while.end, label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9, %if.then
  %wrote.1 = phi i64 [ %wrote.036, %if.then ], [ %add, %if.end9 ], [ 0, %if.end ]
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %b_io) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %if.then6, %if.end9, %entry
  %wrote.2 = phi i64 [ 0, %entry ], [ %add, %if.end9 ], [ %add, %if.then6 ], [ %wrote.1, %cleanup ]
  ret i64 %wrote.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.inode* @wb_inode(%struct.list_head* noundef readnone %head) unnamed_addr #6 {
entry:
  %add.ptr2 = getelementptr %struct.list_head, %struct.list_head* %head, i64 -13
  %0 = bitcast %struct.list_head* %add.ptr2 to %struct.inode*
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_sleep_on_writeback(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #12
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
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
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %5 = bitcast i64* %i_state to i8*
  %call4 = call %struct.wait_queue_head* @bit_waitqueue(i8* noundef %5, i32 noundef 7) #11
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %call4, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #11
  %6 = load i64, i64* %i_state, align 8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %conv11 = and i64 %6, 128
  %tobool.not = icmp eq i64 %conv11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @schedule() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @finish_wait(%struct.wait_queue_head* noundef %call4, %struct.wait_queue_entry* noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @move_expired_inodes(%struct.list_head* noundef %delaying_queue, %struct.list_head* noundef %dispatch_queue, i64 noundef %dirtied_before) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp, i64 0, i32 0
  store %struct.list_head* %tmp, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp, i64 0, i32 1
  store %struct.list_head* %tmp, %struct.list_head** %prev, align 8
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %delaying_queue, i64 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end7, %entry
  %sb.0.ph = phi %struct.super_block* [ %3, %if.end7 ], [ null, %entry ]
  %do_sb_sort.0.ph = phi i32 [ %do_sb_sort.1, %if.end7 ], [ 0, %entry ]
  %moved.0.ph = phi i32 [ %inc, %if.end7 ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end
  %moved.0 = phi i32 [ %inc, %if.end ], [ %moved.0.ph, %while.cond.outer ]
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %delaying_queue) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.list_head*, %struct.list_head** %prev1, align 8
  %call2 = call fastcc %struct.inode* @wb_inode(%struct.list_head* noundef %1) #13
  %call3 = call fastcc i1 @inode_dirtied_after(%struct.inode* noundef %call2, i64 noundef %dirtied_before) #13
  br i1 %call3, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %i_io_list = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 25
  call fastcc void @list_move(%struct.list_head* noundef %i_io_list, %struct.list_head* noundef nonnull %tmp) #13
  %inc = add i32 %moved.0, 1
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 20
  %2 = load i64, i64* %i_state, align 8
  %or = or i64 %2, 131072
  store i64 %or, i64* %i_state, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call5 = call fastcc i1 @sb_is_blkdev_sb(%struct.super_block* noundef %3) #13
  br i1 %call5, label %while.cond, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq %struct.super_block* %sb.0.ph, null
  %cmp.not = icmp eq %struct.super_block* %sb.0.ph, %3
  %4 = or i1 %tobool8.not, %cmp.not
  %do_sb_sort.1 = select i1 %4, i32 %do_sb_sort.0.ph, i32 1
  br label %while.cond.outer

while.end:                                        ; preds = %while.body, %while.cond
  %tobool13.not = icmp eq i32 %do_sb_sort.0.ph, 0
  br i1 %tobool13.not, label %if.then14, label %while.cond16.preheader

while.cond16.preheader:                           ; preds = %while.end
  %call1765 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %tmp) #13
  %tobool18.not66 = icmp eq i32 %call1765, 0
  br i1 %tobool18.not66, label %while.body20, label %out

if.then14:                                        ; preds = %while.end
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %tmp, %struct.list_head* noundef %dispatch_queue) #13
  br label %out

while.cond16.loopexit:                            ; preds = %for.inc, %while.body20
  %call17 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %tmp) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %while.body20, label %out

while.body20:                                     ; preds = %while.cond16.preheader, %while.cond16.loopexit
  %5 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %call22 = call fastcc %struct.inode* @wb_inode(%struct.list_head* noundef %5) #13
  %i_sb23 = getelementptr inbounds %struct.inode, %struct.inode* %call22, i64 0, i32 6
  %6 = load %struct.super_block*, %struct.super_block** %i_sb23, align 8
  %cmp26.not62 = icmp eq %struct.list_head* %5, %tmp
  br i1 %cmp26.not62, label %while.cond16.loopexit, label %for.body

for.body:                                         ; preds = %while.body20, %for.inc
  %pos.063 = phi %struct.list_head* [ %node.064, %for.inc ], [ %5, %while.body20 ]
  %node.064.in = getelementptr inbounds %struct.list_head, %struct.list_head* %pos.063, i64 0, i32 1
  %node.064 = load %struct.list_head*, %struct.list_head** %node.064.in, align 8
  %call27 = call fastcc %struct.inode* @wb_inode(%struct.list_head* noundef %pos.063) #13
  %i_sb28 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 6
  %7 = load %struct.super_block*, %struct.super_block** %i_sb28, align 8
  %cmp29 = icmp eq %struct.super_block* %7, %6
  br i1 %cmp29, label %if.then30, label %for.inc

if.then30:                                        ; preds = %for.body
  %i_io_list31 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 25
  call fastcc void @list_move(%struct.list_head* noundef %i_io_list31, %struct.list_head* noundef %dispatch_queue) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then30
  %cmp26.not = icmp eq %struct.list_head* %node.064, %tmp
  br i1 %cmp26.not, label %while.cond16.loopexit, label %for.body

out:                                              ; preds = %while.cond16.loopexit, %while.cond16.preheader, %if.then14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %moved.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @wb_io_lists_populated(%struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @wb_has_dirty_io(%struct.bdi_writeback* noundef %wb) #13
  br i1 %call, label %return, label %if.else

if.else:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %state) #13
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 15
  %0 = load i64, i64* %avg_write_bandwidth, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then9, label %if.end, !prof !8

if.then9:                                         ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 91; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !37
  %.pre = load i64, i64* %avg_write_bandwidth, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  %1 = phi i64 [ %.pre, %if.then9 ], [ %0, %if.else ]
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  %2 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %tot_write_bandwidth = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %2, i64 0, i32 10
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %1, %struct.atomic64_t* noundef %tot_write_bandwidth) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %3 = xor i1 %call, true
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @inode_dirtied_after(%struct.inode* nocapture noundef readonly %inode, i64 noundef %t) unnamed_addr #8 {
entry:
  %dirtied_when = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 22
  %0 = load i64, i64* %dirtied_when, align 8
  %sub = sub i64 %t, %0
  %cmp = icmp slt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #13
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @redirty_tail(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  call fastcc void @redirty_tail_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @redirty_tail_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1329; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !39
  unreachable

do.end7:                                          ; preds = %entry
  %b_dirty = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 3
  %call8 = call fastcc i32 @list_empty(%struct.list_head* noundef %b_dirty) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end18

if.then10:                                        ; preds = %do.end7
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %b_dirty, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  %call12 = call fastcc %struct.inode* @wb_inode(%struct.list_head* noundef %1) #13
  %dirtied_when = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 22
  %2 = load i64, i64* %dirtied_when, align 8
  %dirtied_when13 = getelementptr inbounds %struct.inode, %struct.inode* %call12, i64 0, i32 22
  %3 = load i64, i64* %dirtied_when13, align 8
  %sub = sub i64 %2, %3
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.then10
  %4 = load volatile i64, i64* @jiffies, align 64
  store i64 %4, i64* %dirtied_when, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.then15, %do.end7
  %call20 = call fastcc i1 @inode_io_list_move_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb, %struct.list_head* noundef %b_dirty) #13
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %5 = load i64, i64* %i_state, align 8
  %and = and i64 %5, -131073
  store i64 %and, i64* %i_state, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @requeue_io(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %b_more_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 5
  %call = call fastcc i1 @inode_io_list_move_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb, %struct.list_head* noundef %b_more_io) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wbc_attach_and_unlock_inode(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @writeback_chunk_size(%struct.bdi_writeback* nocapture noundef readonly %wb, %struct.wb_writeback_work* nocapture noundef readonly %work) unnamed_addr #8 {
entry:
  %sync_mode = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 2
  %0 = load i32, i32* %sync_mode, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tagged_writepages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 3
  %bf.load = load i8, i8* %tagged_writepages, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 15
  %1 = load i64, i64* %avg_write_bandwidth, align 8
  %div = lshr i64 %1, 1
  %2 = load i64, i64* getelementptr inbounds (%struct.wb_domain, %struct.wb_domain* @global_wb_domain, i64 0, i32 5), align 8
  %div1 = lshr i64 %2, 3
  %cmp2 = icmp ult i64 %div, %div1
  %cond = select i1 %cmp2, i64 %div, i64 %div1
  %nr_pages = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 0
  %3 = load i64, i64* %nr_pages, align 8
  %cmp4 = icmp slt i64 %cond, %3
  %cond8 = select i1 %cmp4, i64 %cond, i64 %3
  %add = add nsw i64 %cond8, 1024
  %and = and i64 %add, -1024
  br label %if.end

if.end:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %pages.0 = phi i64 [ %and, %if.else ], [ 9223372036854775807, %lor.lhs.false ], [ 9223372036854775807, %entry ]
  ret i64 %pages.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__writeback_single_inode(%struct.inode* noundef %inode, %struct.writeback_control* noundef %wbc) unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %1 = load i64, i64* %i_state, align 8
  %and = and i64 %1, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1612; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @do_writepages(%struct.address_space* noundef %0, %struct.writeback_control* noundef %wbc) #11
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %2 = load i32, i32* %sync_mode, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %for_sync = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 5
  %bf.load = load i8, i8* %for_sync, align 4
  %3 = and i8 %bf.load, 32
  %tobool18.not = icmp eq i8 %3, 0
  br i1 %tobool18.not, label %if.then19, label %if.end25

if.then19:                                        ; preds = %land.lhs.true
  %call20 = call fastcc i32 @filemap_fdatawait(%struct.address_space* noundef %0) #13
  %cmp21 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp21, i32 %call20, i32 %call
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %land.lhs.true, %if.end
  %ret.1 = phi i32 [ %call, %land.lhs.true ], [ %spec.select, %if.then19 ], [ %call, %if.end ]
  %4 = load i64, i64* %i_state, align 8
  %and27 = and i64 %4, 2048
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.end37, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end25
  %5 = load i32, i32* %sync_mode, align 8
  %cmp31 = icmp eq i32 %5, 1
  br i1 %cmp31, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true29
  %dirtied_time_when = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 23
  %6 = load i64, i64* %dirtied_time_when, align 8
  %7 = load i32, i32* @dirtytime_expire_interval, align 4
  %mul = mul i32 %7, 250
  %conv33 = zext i32 %mul to i64
  %8 = load volatile i64, i64* @jiffies, align 64
  %add = sub i64 %6, %8
  %sub = add i64 %add, %conv33
  %cmp34 = icmp slt i64 %sub, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %land.lhs.true29
  call fastcc void @mark_inode_dirty_sync(%struct.inode* noundef %inode) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %lor.lhs.false, %if.end25
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %9 = load i64, i64* %i_state, align 8
  %conv40 = and i64 %9, 7
  %neg = xor i64 %conv40, 4294967295
  %and43 = and i64 %neg, %9
  store i64 %and43, i64* %i_state, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !41
  %call44 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef %0, i32 noundef 0) #13
  br i1 %call44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end37
  %10 = load i64, i64* %i_state, align 8
  %or = or i64 %10, 4
  store i64 %or, i64* %i_state, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end37
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %and4993 = and i64 %9, 3
  %tobool50.not = icmp eq i64 %and4993, 0
  br i1 %tobool50.not, label %if.end58, label %if.then51

if.then51:                                        ; preds = %if.end47
  %call53 = call fastcc i32 @write_inode(%struct.inode* noundef %inode, %struct.writeback_control* noundef %wbc) #13
  %cmp54 = icmp eq i32 %ret.1, 0
  %spec.select94 = select i1 %cmp54, i32 %call53, i32 %ret.1
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.end47
  %ret.3 = phi i32 [ %spec.select94, %if.then51 ], [ %ret.1, %if.end47 ]
  ret i32 %ret.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_flush_plug(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #0 {
entry:
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 109
  %0 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @blk_flush_plug_list(%struct.blk_plug* noundef nonnull %0, i1 noundef false) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @requeue_inode(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb, %struct.writeback_control* nocapture noundef readonly %wbc) unnamed_addr #0 {
entry:
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end31

if.end:                                           ; preds = %entry
  %and2 = and i64 %0, 7
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %1 = load i32, i32* %sync_mode, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tagged_writepages = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 5
  %bf.load = load i8, i8* %tagged_writepages, align 4
  %2 = and i8 %bf.load, 4
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load volatile i64, i64* @jiffies, align 64
  %dirtied_when = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 22
  store i64 %3, i64* %dirtied_when, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false, %if.end
  %pages_skipped = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 1
  %4 = load i64, i64* %pages_skipped, align 8
  %tobool7.not = icmp eq i64 %4, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  call fastcc void @redirty_tail_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) #13
  br label %if.end31

if.end9:                                          ; preds = %if.end6
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %5 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc i1 @mapping_tagged(%struct.address_space* noundef %5, i32 noundef 0) #13
  br i1 %call, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.end9
  %nr_to_write = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  %6 = load i64, i64* %nr_to_write, align 8
  %cmp11 = icmp slt i64 %6, 1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  call fastcc void @requeue_io(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) #13
  br label %if.end31

if.else:                                          ; preds = %if.then10
  call fastcc void @redirty_tail_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) #13
  br label %if.end31

if.else14:                                        ; preds = %if.end9
  br i1 %tobool3.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.else14
  call fastcc void @redirty_tail_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) #13
  br label %if.end31

if.else19:                                        ; preds = %if.else14
  %and21 = and i64 %0, 2048
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.else28, label %if.then23

if.then23:                                        ; preds = %if.else19
  %7 = load volatile i64, i64* @jiffies, align 64
  %dirtied_when24 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 22
  store i64 %7, i64* %dirtied_when24, align 8
  %b_dirty_time = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 6
  %call25 = call fastcc i1 @inode_io_list_move_locked(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb, %struct.list_head* noundef %b_dirty_time) #13
  %8 = load i64, i64* %i_state, align 8
  %and27 = and i64 %8, -131073
  store i64 %and27, i64* %i_state, align 8
  br label %if.end31

if.else28:                                        ; preds = %if.else19
  call fastcc void @inode_cgwb_move_to_attached(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then18, %if.else28, %if.then23, %if.then12, %if.else, %entry, %if.then8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_sync_complete(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, -129
  store i64 %and, i64* %i_state, align 8
  call void @inode_add_lru(%struct.inode* noundef %inode) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !42
  %1 = bitcast i64* %i_state to i8*
  call void @wake_up_bit(i8* noundef %1, i32 noundef 7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_writepages(%struct.address_space* noundef, %struct.writeback_control* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_fdatawait(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %call = call i32 @filemap_fdatawait_range(%struct.address_space* noundef %mapping, i64 noundef 0, i64 noundef 9223372036854775807) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty_sync(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mapping_tagged(%struct.address_space* nocapture noundef readonly %mapping, i32 noundef %tag) unnamed_addr #8 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call fastcc i1 @xa_marked(%struct.xarray* noundef %i_pages, i32 noundef %tag) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @write_inode(%struct.inode* noundef %inode, %struct.writeback_control* noundef %wbc) unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %write_inode = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 4
  %2 = load i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*, %struct.writeback_control*)** %write_inode, align 8
  %tobool.not = icmp eq i32 (%struct.inode*, %struct.writeback_control*)* %2, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i1 @is_bad_inode(%struct.inode* noundef %inode) #11
  br i1 %call, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_op2 = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 6
  %4 = load %struct.super_operations*, %struct.super_operations** %s_op2, align 16
  %write_inode3 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %4, i64 0, i32 4
  %5 = load i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*, %struct.writeback_control*)** %write_inode3, align 8
  %call4 = call i32 %5(%struct.inode* noundef %inode, %struct.writeback_control* noundef %wbc) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_marked(%struct.xarray* nocapture noundef readonly %xa, i32 noundef %mark) unnamed_addr #8 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %shl = shl i32 33554432, %mark
  %and = and i32 %0, %shl
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_bad_inode(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_flush_plug_list(%struct.blk_plug* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_cgwb_move_to_attached(%struct.inode* noundef %inode, %struct.bdi_writeback* noundef %wb) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.body8, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1164; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !43
  unreachable

do.body8:                                         ; preds = %entry
  %counter.i.i32 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i.i32, align 4
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %do.body23, label %do.end28, !prof !8

do.body23:                                        ; preds = %do.body8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs-writeback.c\22; .popsection; .long 14472b - 14470b; .short 1165; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !44
  unreachable

do.end28:                                         ; preds = %do.body8
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %2 = load i64, i64* %i_state, align 8
  %and = and i64 %2, -131073
  store i64 %and, i64* %i_state, align 8
  %i_io_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 25
  call fastcc void @list_del_init(%struct.list_head* noundef %i_io_list) #13
  call fastcc void @wb_io_lists_depopulated(%struct.bdi_writeback* noundef %wb) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_lru(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @trylock_super(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !45
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @bdi_has_dirty_io(%struct.backing_dev_info* noundef %bdi) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 10, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %tobool = icmp ne i64 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_start_writeback(%struct.bdi_writeback* noundef %wb, i32 noundef %reason) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @wb_has_dirty_io(%struct.bdi_writeback* noundef %wb) #13
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call fastcc i1 @test_and_set_bit(i64* noundef %state) #13
  br i1 %call3, label %return, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %start_all_reason = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 20
  store i32 %reason, i32* %start_all_reason, align 4
  call fastcc void @wb_wakeup(%struct.bdi_writeback* noundef %wb) #13
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %entry, %if.end5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 8
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #11
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #12, !srcloc !47
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work(i64 noundef %delay) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0, i64 noundef %delay) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, i64 noundef %delay) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef nonnull @dirtytime_work, i64 noundef %delay) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mod_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @wakeup_dirtytime_writeback(%struct.work_struct* nocapture noundef readnone %w) #0 {
entry:
  call fastcc void @__rcu_read_lock() #11
  %.pn69 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @bdi_list, i64 0, i32 0), align 8
  %cmp.not70 = icmp eq %struct.list_head* %.pn69, @bdi_list
  br i1 %cmp.not70, label %for.end44, label %for.body

for.body:                                         ; preds = %entry, %for.end
  %.pn71 = phi %struct.list_head* [ %.pn, %for.end ], [ %.pn69, %entry ]
  %wb_list = getelementptr %struct.list_head, %struct.list_head* %.pn71, i64 36, i32 1
  %.pn6061 = load volatile %struct.list_head*, %struct.list_head** %wb_list, align 8
  %wb.0.in62 = getelementptr %struct.list_head, %struct.list_head* %.pn6061, i64 -32, i32 1
  %bdi_node64 = getelementptr inbounds %struct.list_head*, %struct.list_head** %wb.0.in62, i64 63
  %cmp17.not65 = icmp eq %struct.list_head** %bdi_node64, %wb_list
  br i1 %cmp17.not65, label %for.end, label %for.body18

for.body18:                                       ; preds = %for.body, %for.inc
  %bdi_node68 = phi %struct.list_head** [ %bdi_node, %for.inc ], [ %bdi_node64, %for.body ]
  %wb.0.in66 = phi %struct.list_head** [ %wb.0.in, %for.inc ], [ %wb.0.in62, %for.body ]
  %b_dirty_time = getelementptr inbounds %struct.list_head*, %struct.list_head** %wb.0.in66, i64 9
  %0 = bitcast %struct.list_head** %b_dirty_time to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %0) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body18
  %wb.067 = bitcast %struct.list_head** %wb.0.in66 to %struct.bdi_writeback*
  call fastcc void @wb_wakeup(%struct.bdi_writeback* noundef %wb.067) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body18, %if.then
  %.pn60 = load volatile %struct.list_head*, %struct.list_head** %bdi_node68, align 8
  %wb.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn60, i64 -32, i32 1
  %bdi_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %wb.0.in, i64 63
  %cmp17.not = icmp eq %struct.list_head** %bdi_node, %wb_list
  br i1 %cmp17.not, label %for.end, label %for.body18

for.end:                                          ; preds = %for.inc, %for.body
  %next38 = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn71, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %next38, align 8
  %cmp.not = icmp eq %struct.list_head* %.pn, @bdi_list
  br i1 %cmp.not, label %for.end44, label %for.body

for.end44:                                        ; preds = %for.end, %entry
  call fastcc void @rcu_read_unlock() #13
  %1 = load i32, i32* @dirtytime_expire_interval, align 4
  %mul = mul i32 %1, 250
  %conv = zext i32 %mul to i64
  call fastcc void @schedule_delayed_work(i64 noundef %conv) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #8 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state() unnamed_addr #5 {
entry:
  %call = call fastcc i64 @global_node_page_state_pages() #13
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_nr_dirty_inodes() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state_pages() unnamed_addr #5 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 20, i32 0), align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @writeback_in_progress(%struct.bdi_writeback* noundef %wb) unnamed_addr #5 {
entry:
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 2
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_queue_work(%struct.bdi_writeback* noundef %wb, %struct.wb_writeback_work* noundef %work) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 6
  %0 = load %struct.wb_completion*, %struct.wb_completion** %done, align 8
  %tobool.not = icmp eq %struct.wb_completion* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cnt = getelementptr inbounds %struct.wb_completion, %struct.wb_completion* %0, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %cnt) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 21, i32 0, i32 0
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %rlock.i) #11
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %1 = load volatile i64, i64* %state, align 8
  %conv.i18 = and i64 %1, 1
  %tobool2.not = icmp eq i64 %conv.i18, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %list = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %work, i64 0, i32 5
  %work_list = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 22
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %work_list) #13
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @bdi_wq, align 8
  %dwork = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23
  call fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %2, %struct.delayed_work* noundef %dwork) #13
  br label %if.end5

if.else:                                          ; preds = %if.end
  call fastcc void @finish_writeback_work(%struct.wb_writeback_work* noundef %work) #13
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #13
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_keep_errors(%struct.address_space* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call fastcc void @arch_local_irq_enable() #13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #12, !srcloc !52
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155341232}
!10 = !{i64 2149421330}
!11 = !{i64 1247596}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155532002}
!14 = !{i64 2155532355}
!15 = !{i64 2155342940}
!16 = !{i64 2155538639}
!17 = !{i64 2155540777}
!18 = !{i64 2155534339}
!19 = !{i64 2155358502}
!20 = !{i64 2155360112}
!21 = !{i64 2155361750}
!22 = !{i64 2147809936, i64 2147810452, i64 2147810482, i64 2147810509, i64 2147810543, i64 2147810573}
!23 = !{i64 2149084837}
!24 = !{i64 2147896077, i64 2147896110, i64 2147896163, i64 2147896222, i64 2147896256, i64 2147896311, i64 2147896340, i64 2147896360}
!25 = !{i64 2149235842}
!26 = !{i64 2149436331}
!27 = !{i64 2147879865, i64 2147880386, i64 2147880416, i64 2147880442, i64 2147880474, i64 2147880503}
!28 = !{i64 2147855482, i64 2147856130, i64 2147856160, i64 2147856191, i64 2147856223, i64 2147856258, i64 2147856283}
!29 = !{i64 2149443612}
!30 = !{i64 2148987157, i64 2148987204, i64 2148987210, i64 2148987247, i64 2148987265, i64 2148988576, i64 2148988624, i64 2148988672, i64 2148988735, i64 2148988784, i64 2148987343, i64 2148987368, i64 2148987394, i64 2148987400, i64 2148988242, i64 2148988282, i64 2148988300, i64 2148988332, i64 2148988360, i64 2148988414, i64 2148988434, i64 2148988531, i64 2148987423, i64 2148987437, i64 2148987443, i64 2148987493, i64 2148987539, i64 2148987572}
!31 = !{i64 2148989336, i64 2148989383, i64 2148989389, i64 2148989426, i64 2148989444, i64 2148990387, i64 2148990435, i64 2148990483, i64 2148990546, i64 2148990595, i64 2148989522, i64 2148989547, i64 2148989573, i64 2148989579, i64 2148989616, i64 2148989622, i64 2148989672, i64 2148989718, i64 2148989751}
!32 = !{i64 2148981454, i64 2148981501, i64 2148981507, i64 2148981544, i64 2148981562, i64 2148982903, i64 2148982951, i64 2148982999, i64 2148983062, i64 2148983111, i64 2148981640, i64 2148981665, i64 2148981691, i64 2148981697, i64 2148982569, i64 2148982609, i64 2148982627, i64 2148982659, i64 2148982687, i64 2148982741, i64 2148982761, i64 2148982858, i64 2148981720, i64 2148981734, i64 2148981740, i64 2148981790, i64 2148981836, i64 2148981869}
!33 = !{i64 2149447173}
!34 = !{i64 2148993170, i64 2148993217, i64 2148993223, i64 2148993260, i64 2148993278, i64 2148998650, i64 2148998698, i64 2148998746, i64 2148998809, i64 2148998858, i64 2148993356, i64 2148993381, i64 2148993407, i64 2148993413, i64 2148998316, i64 2148998356, i64 2148998374, i64 2148998406, i64 2148998434, i64 2148998488, i64 2148998508, i64 2148998605, i64 2148993436, i64 2148993450, i64 2148993456, i64 2148993506, i64 2148993552, i64 2148993585}
!35 = !{i64 2147869295, i64 2147869806, i64 2147869836, i64 2147869862, i64 2147869894, i64 2147869923}
!36 = !{i64 2155353447}
!37 = !{i64 2155339492}
!38 = !{i64 2147840901, i64 2147841415, i64 2147841445, i64 2147841471, i64 2147841503, i64 2147841532}
!39 = !{i64 2155350555}
!40 = !{i64 2155356121}
!41 = !{i64 2155357088}
!42 = !{i64 2155351410}
!43 = !{i64 2155346037}
!44 = !{i64 2155347754}
!45 = !{i64 2147810788, i64 2147811436, i64 2147811466, i64 2147811498, i64 2147811532, i64 2147811568, i64 2147811593}
!46 = !{i64 2149998892}
!47 = !{i64 2147870141, i64 2147870793, i64 2147870823, i64 2147870854, i64 2147870886, i64 2147870921, i64 2147870946}
!48 = !{i64 2149999109}
!49 = !{i64 2147800215, i64 2147800731, i64 2147800761, i64 2147800788, i64 2147800822, i64 2147800852}
!50 = !{i64 2149425623}
!51 = !{i64 2149450476}
!52 = !{i64 2148971998, i64 2148972045, i64 2148972051, i64 2148972088, i64 2148972106, i64 2148973446, i64 2148973494, i64 2148973542, i64 2148973605, i64 2148973654, i64 2148972184, i64 2148972209, i64 2148972235, i64 2148972241, i64 2148973112, i64 2148973152, i64 2148973170, i64 2148973202, i64 2148973230, i64 2148973284, i64 2148973304, i64 2148973401, i64 2148972264, i64 2148972278, i64 2148972284, i64 2148972334, i64 2148972380, i64 2148972413}
