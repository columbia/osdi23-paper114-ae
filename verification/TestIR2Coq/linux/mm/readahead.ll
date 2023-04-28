; ModuleID = 'mm/readahead.c'
source_filename = "mm/readahead.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.25, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.25 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.26, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.26 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.75, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.75 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.27, %union.anon.28, %union.anon.29, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.34, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.27 = type { %struct.hlist_node }
%union.anon.28 = type { %struct.rb_node }
%union.anon.29 = type { %struct.anon.33 }
%struct.anon.33 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.34 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.35 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.61, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.36 }
%union.anon.36 = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.60, i32, [12 x i8] }
%union.anon.60 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.62, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.62 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.uid_gid_map = type { i32, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44, [48 x i8] }
%struct.anon.44 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.45, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.65 }
%union.anon.65 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.66, %union.anon.67 }
%union.anon.66 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.67 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.71 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.69, %struct.qspinlock }
%union.anon.69 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.71 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.47 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.47 = type { %struct.callback_head }
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
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }

@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@blockdev_superblock = external dso_local local_unnamed_addr global %struct.super_block*, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @file_ra_state_init(%struct.file_ra_state* nocapture noundef writeonly %ra, %struct.address_space* nocapture noundef readonly %mapping) local_unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %0) #12
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 3
  %1 = load i64, i64* %ra_pages, align 8
  %conv = trunc i64 %1 to i32
  %ra_pages1 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %ra, i64 0, i32 3
  store i32 %conv, i32* %ra_pages1, align 8
  %prev_pos = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %ra, i64 0, i32 5
  store i64 -1, i64* %prev_pos, align 8
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
  %call = call fastcc i1 @sb_is_blkdev_sb(%struct.super_block* noundef %0) #12
  br i1 %call, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call %struct.block_device* @I_BDEV(%struct.inode* noundef nonnull %inode) #13
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @read_cache_pages(%struct.address_space* noundef %mapping, %struct.list_head* noundef %pages, i32 (i8*, %struct.page*)* nocapture noundef readonly %filler, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call25 = call fastcc i32 @list_empty(%struct.list_head* noundef %pages) #12
  %tobool.not26 = icmp eq i32 %call25, 0
  br i1 %tobool.not26, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %pages, i64 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -8
  %2 = bitcast i8* %add.ptr to %struct.page*
  %lru = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #12
  %index = getelementptr inbounds i8, i8* %1, i64 24
  %3 = bitcast i8* %index to i64*
  %4 = load i64, i64* %3, align 8
  %call1 = call fastcc i32 @readahead_gfp_mask(%struct.address_space* noundef %mapping) #12, !range !8
  %call2 = call i32 @add_to_page_cache_lru(%struct.page* noundef %2, %struct.address_space* noundef %mapping, i64 noundef %4, i32 noundef %call1) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call fastcc void @read_cache_pages_invalidate_page(%struct.address_space* noundef %mapping, %struct.page* noundef %2) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then, %if.end
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %pages) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

if.end:                                           ; preds = %while.body
  call fastcc void @put_page(%struct.page* noundef %2) #12
  %call4 = call i32 %filler(i8* noundef %data, %struct.page* noundef %2) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond.backedge, label %if.then9, !prof !9

if.then9:                                         ; preds = %if.end
  call fastcc void @read_cache_pages_invalidate_pages(%struct.address_space* noundef %mapping, %struct.list_head* noundef %pages) #12
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge, %entry, %if.then9
  %ret.1 = phi i32 [ %call4, %if.then9 ], [ 0, %entry ], [ 0, %while.cond.backedge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(%struct.page* noundef, %struct.address_space* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @readahead_gfp_mask(%struct.address_space* nocapture noundef readonly %x) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %x) #12
  %or1 = or i32 %call, 73728
  ret i32 %or1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_cache_pages_invalidate_page(%struct.address_space* noundef %mapping, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_has_private(%struct.page* noundef %page) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @trylock_page(%struct.page* noundef %page) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.end

do.body:                                          ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/readahead.c\22; .popsection; .long 14472b - 14470b; .short 53; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  unreachable

if.end:                                           ; preds = %if.then
  %mapping6 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  store %struct.address_space* %mapping, %struct.address_space** %mapping6, align 8
  call void @do_invalidatepage(%struct.page* noundef %page, i32 noundef 0, i32 noundef 4096) #13
  store %struct.address_space* null, %struct.address_space** %mapping6, align 8
  call void @unlock_page(%struct.page* noundef %page) #13
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  call fastcc void @put_page(%struct.page* noundef %page) #12
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
  call void @__put_page(%struct.page* noundef %0) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_cache_pages_invalidate_pages(%struct.address_space* noundef %mapping, %struct.list_head* noundef %pages) unnamed_addr #0 {
entry:
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %pages) #12
  %tobool.not6 = icmp eq i32 %call5, 0
  br i1 %tobool.not6, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %pages, i64 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -8
  %2 = bitcast i8* %add.ptr to %struct.page*
  %lru = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #12
  call fastcc void @read_cache_pages_invalidate_page(%struct.address_space* noundef %mapping, %struct.page* noundef %2) #12
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %pages) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_cache_ra_unbounded(%struct.readahead_control* noundef %ractl, i64 noundef %nr_to_read, i64 noundef %lookahead_size) local_unnamed_addr #0 {
entry:
  %page_pool = alloca %struct.list_head, align 8
  %mapping1 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %call = call fastcc i64 @readahead_index(%struct.readahead_control* noundef %ractl) #12
  %1 = bitcast %struct.list_head* %page_pool to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %page_pool, i64 0, i32 0
  store %struct.list_head* %page_pool, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %page_pool, i64 0, i32 1
  store %struct.list_head* %page_pool, %struct.list_head** %prev, align 8
  %call2 = call fastcc i32 @readahead_gfp_mask(%struct.address_space* noundef %0) #12
  %call3 = call fastcc i32 @memalloc_nofs_save() #12
  call fastcc void @filemap_invalidate_lock_shared(%struct.address_space* noundef %0) #12
  %cmp79.not = icmp eq i64 %nr_to_read, 0
  br i1 %cmp79.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 1
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 3
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 4
  %2 = xor i64 %call, -1
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %sub29 = sub i64 %nr_to_read, %lookahead_size
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.080 = phi i64 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc ]
  %add = add i64 %i.080, %call
  %call4 = call i8* @xa_load(%struct.xarray* noundef %i_pages, i64 noundef %add) #13
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call5 = call fastcc i1 @xa_is_value(i8* noundef nonnull %call4) #12
  br i1 %call5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @read_pages(%struct.readahead_control* noundef %ractl, %struct.list_head* noundef nonnull %page_pool, i1 noundef true) #12
  %3 = load i64, i64* %_index, align 8
  %4 = load i32, i32* %_nr_pages, align 8
  %conv = zext i32 %4 to i64
  %add6 = add i64 %3, %2
  %sub7 = add i64 %add6, %conv
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call8 = call fastcc %struct.page* @__page_cache_alloc(i32 noundef %call2) #12
  %tobool9.not = icmp eq %struct.page* %call8, null
  br i1 %tobool9.not, label %for.end, label %if.end11

if.end11:                                         ; preds = %if.end
  %5 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %readpages = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %5, i64 0, i32 4
  %6 = load i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)** %readpages, align 8
  %tobool12.not = icmp eq i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* %6, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %index15 = getelementptr inbounds %struct.page, %struct.page* %call8, i64 0, i32 1, i32 0, i32 2
  store i64 %add, i64* %index15, align 8
  %lru = getelementptr inbounds %struct.page, %struct.page* %call8, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %page_pool) #12
  br label %if.end28

if.else:                                          ; preds = %if.end11
  %call17 = call i32 @add_to_page_cache_lru(%struct.page* noundef nonnull %call8, %struct.address_space* noundef %0, i64 noundef %add, i32 noundef %call2) #13
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.else
  call fastcc void @put_page(%struct.page* noundef nonnull %call8) #12
  call fastcc void @read_pages(%struct.readahead_control* noundef %ractl, %struct.list_head* noundef nonnull %page_pool, i1 noundef true) #12
  %7 = load i64, i64* %_index, align 8
  %8 = load i32, i32* %_nr_pages, align 8
  %conv23 = zext i32 %8 to i64
  %add24 = add i64 %7, %2
  %sub26 = add i64 %add24, %conv23
  br label %for.inc

if.end28:                                         ; preds = %if.else, %if.then13
  %cmp30 = icmp eq i64 %i.080, %sub29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %call8, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags.i) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %9 = load i32, i32* %_nr_pages, align 8
  %inc = add i32 %9, 1
  store i32 %inc, i32* %_nr_pages, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.then20, %if.then
  %i.1.ph = phi i64 [ %sub7, %if.then ], [ %sub26, %if.then20 ], [ %i.080, %if.end33 ]
  %inc35 = add i64 %i.1.ph, 1
  %cmp = icmp ult i64 %inc35, %nr_to_read
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end, %entry
  call fastcc void @read_pages(%struct.readahead_control* noundef %ractl, %struct.list_head* noundef nonnull %page_pool, i1 noundef false) #12
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %0) #12
  call fastcc void @memalloc_nofs_restore(i32 noundef %call3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @readahead_index(%struct.readahead_control* nocapture noundef readonly %rac) unnamed_addr #5 {
entry:
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 3
  %0 = load i64, i64* %_index, align 8
  ret i64 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memalloc_nofs_save() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, 262144
  %or = or i32 %2, 262144
  store i32 %or, i32* %flags1, align 4
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_invalidate_lock_shared(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 2
  call void @down_read(%struct.rw_semaphore* noundef %invalidate_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_pages(%struct.readahead_control* noundef %rac, %struct.list_head* noundef %pages, i1 noundef %skip_page) unnamed_addr #0 {
entry:
  %plug = alloca %struct.blk_plug, align 8
  %mapping = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %2 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !12
  %call = call fastcc i32 @readahead_count(%struct.readahead_control* noundef %rac) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #13
  %readahead = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 5
  %3 = load void (%struct.readahead_control*)*, void (%struct.readahead_control*)** %readahead, align 8
  %tobool1.not = icmp eq void (%struct.readahead_control*)* %3, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void %3(%struct.readahead_control* noundef %rac) #13
  %call487 = call fastcc %struct.page* @readahead_page(%struct.readahead_control* noundef %rac) #12
  %tobool5.not88 = icmp eq %struct.page* %call487, null
  br i1 %tobool5.not88, label %if.end22, label %while.body

while.body:                                       ; preds = %if.then2, %while.body
  %call489 = phi %struct.page* [ %call4, %while.body ], [ %call487, %if.then2 ]
  call void @unlock_page(%struct.page* noundef nonnull %call489) #13
  call fastcc void @put_page(%struct.page* noundef nonnull %call489) #12
  %call4 = call fastcc %struct.page* @readahead_page(%struct.readahead_control* noundef %rac) #12
  %tobool5.not = icmp eq %struct.page* %call4, null
  br i1 %tobool5.not, label %if.end22, label %while.body

if.else:                                          ; preds = %if.end
  %readpages = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 4
  %4 = load i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)** %readpages, align 8
  %tobool6.not = icmp eq i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* %4, null
  br i1 %tobool6.not, label %while.cond14.preheader, label %if.then7

while.cond14.preheader:                           ; preds = %if.else
  %call1590 = call fastcc %struct.page* @readahead_page(%struct.readahead_control* noundef %rac) #12
  %tobool16.not91 = icmp eq %struct.page* %call1590, null
  br i1 %tobool16.not91, label %if.end22, label %while.body17.lr.ph

while.body17.lr.ph:                               ; preds = %while.cond14.preheader
  %readpage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 1
  %file18 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 0
  br label %while.body17

if.then7:                                         ; preds = %if.else
  %file = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 0
  %5 = load %struct.file*, %struct.file** %file, align 8
  %6 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %call10 = call fastcc i32 @readahead_count(%struct.readahead_control* noundef %rac) #12
  %call11 = call i32 %4(%struct.file* noundef %5, %struct.address_space* noundef %6, %struct.list_head* noundef %pages, i32 noundef %call10) #13
  call void @put_pages_list(%struct.list_head* noundef %pages) #13
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 4
  %7 = load i32, i32* %_nr_pages, align 8
  %conv = zext i32 %7 to i64
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 3
  %8 = load i64, i64* %_index, align 8
  %add = add i64 %8, %conv
  store i64 %add, i64* %_index, align 8
  store i32 0, i32* %_nr_pages, align 8
  br label %if.end22

while.body17:                                     ; preds = %while.body17.lr.ph, %while.body17
  %call1592 = phi %struct.page* [ %call1590, %while.body17.lr.ph ], [ %call15, %while.body17 ]
  %9 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %readpage, align 8
  %10 = load %struct.file*, %struct.file** %file18, align 8
  %call19 = call i32 %9(%struct.file* noundef %10, %struct.page* noundef nonnull %call1592) #13
  call fastcc void @put_page(%struct.page* noundef nonnull %call1592) #12
  %call15 = call fastcc %struct.page* @readahead_page(%struct.readahead_control* noundef %rac) #12
  %tobool16.not = icmp eq %struct.page* %call15, null
  br i1 %tobool16.not, label %if.end22, label %while.body17

if.end22:                                         ; preds = %while.body, %while.body17, %if.then2, %while.cond14.preheader, %if.then7
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #13
  %call23 = call fastcc i32 @list_empty(%struct.list_head* noundef %pages) #12
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body30, label %do.body37, !prof !13

do.body30:                                        ; preds = %if.end22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/readahead.c\22; .popsection; .long 14472b - 14470b; .short 152; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  unreachable

do.body37:                                        ; preds = %if.end22
  %call38 = call fastcc i32 @readahead_count(%struct.readahead_control* noundef %rac) #12
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %out, label %do.body48, !prof !9

do.body48:                                        ; preds = %do.body37
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/readahead.c\22; .popsection; .long 14472b - 14470b; .short 153; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  unreachable

out:                                              ; preds = %do.body37, %entry
  br i1 %skip_page, label %if.then58, label %if.end60

if.then58:                                        ; preds = %out
  %_index59 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 3
  %11 = load i64, i64* %_index59, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %_index59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %out
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__page_cache_alloc(i32 noundef %gfp) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page* @alloc_pages(i32 noundef %gfp) #12
  ret %struct.page* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 2
  call void @up_read(%struct.rw_semaphore* noundef %invalidate_lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memalloc_nofs_restore(i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, -262145
  %or = or i32 %and, %flags
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_page_cache_ra(%struct.readahead_control* noundef %ractl, i64 noundef %nr_to_read, i64 noundef %lookahead_size) local_unnamed_addr #0 {
entry:
  %mapping = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc i64 @readahead_index(%struct.readahead_control* noundef %ractl) #12
  %call1 = call fastcc i64 @i_size_read(%struct.inode* noundef %1) #12
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i64 %call1, -1
  %shr = ashr i64 %sub, 12
  %cmp2 = icmp ult i64 %shr, %call
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %sub5 = sub i64 %shr, %call
  %cmp6 = icmp ult i64 %sub5, %nr_to_read
  %add = add i64 %sub5, 1
  %spec.select = select i1 %cmp6, i64 %add, i64 %nr_to_read
  call void @page_cache_ra_unbounded(%struct.readahead_control* noundef %ractl, i64 noundef %spec.select, i64 noundef %lookahead_size) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @force_page_cache_ra(%struct.readahead_control* noundef %ractl, i64 noundef %nr_to_read) local_unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %ra2 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  %1 = load %struct.file_ra_state*, %struct.file_ra_state** %ra2, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %2) #12
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %3 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %readpage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %3, i64 0, i32 1
  %4 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %readpage, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.page*)* %4, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %readpages = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %3, i64 0, i32 4
  %5 = load i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)** %readpages, align 8
  %tobool4.not = icmp eq i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* %5, null
  br i1 %tobool4.not, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %readahead = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %3, i64 0, i32 5
  %6 = load void (%struct.readahead_control*)*, void (%struct.readahead_control*)** %readahead, align 8
  %tobool6.not = icmp eq void (%struct.readahead_control*)* %6, null
  br i1 %tobool6.not, label %cleanup, label %if.end, !prof !13

if.end:                                           ; preds = %entry, %land.lhs.true, %land.rhs
  %io_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 4
  %7 = load i64, i64* %io_pages, align 8
  %ra_pages = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %1, i64 0, i32 3
  %8 = load i32, i32* %ra_pages, align 8
  %conv11 = zext i32 %8 to i64
  %cmp = icmp ugt i64 %7, %conv11
  %cond = select i1 %cmp, i64 %7, i64 %conv11
  %cmp14 = icmp ugt i64 %cond, %nr_to_read
  %cond19 = select i1 %cmp14, i64 %nr_to_read, i64 %cond
  %tobool20.not59 = icmp eq i64 %cond19, 0
  br i1 %tobool20.not59, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %call10 = call fastcc i64 @readahead_index(%struct.readahead_control* noundef %ractl) #12
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %nr_to_read.addr.061 = phi i64 [ %cond19, %while.body.lr.ph ], [ %sub, %while.body ]
  %index.060 = phi i64 [ %call10, %while.body.lr.ph ], [ %add, %while.body ]
  %cmp21 = icmp ult i64 %nr_to_read.addr.061, 512
  %spec.select = select i1 %cmp21, i64 %nr_to_read.addr.061, i64 512
  store i64 %index.060, i64* %_index, align 8
  call void @do_page_cache_ra(%struct.readahead_control* noundef %ractl, i64 noundef %spec.select, i64 noundef 0) #12
  %add = add i64 %spec.select, %index.060
  %sub = sub i64 %nr_to_read.addr.061, %spec.select
  %tobool20.not = icmp eq i64 %sub, 0
  br i1 %tobool20.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %land.rhs
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_cache_sync_ra(%struct.readahead_control* noundef %ractl, i64 noundef %req_count) local_unnamed_addr #0 {
entry:
  %file = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %file, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %land.end, label %land.end.thread

land.end:                                         ; preds = %entry
  %ra = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  %1 = load %struct.file_ra_state*, %struct.file_ra_state** %ra, align 8
  %ra_pages = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %1, i64 0, i32 3
  %2 = load i32, i32* %ra_pages, align 8
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end10

land.end.thread:                                  ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %3 = load i32, i32* %f_mode, align 4
  %and = and i32 %3, 4096
  %tobool2 = icmp ne i32 %and, 0
  %ra17 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  %4 = load %struct.file_ra_state*, %struct.file_ra_state** %ra17, align 8
  %ra_pages18 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %4, i64 0, i32 3
  %5 = load i32, i32* %ra_pages18, align 8
  %tobool3.not19 = icmp eq i32 %5, 0
  %brmerge = select i1 %tobool3.not19, i1 true, i1 %tobool2
  br i1 %brmerge, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.end.thread
  %.mux = select i1 %tobool3.not19, i64 1, i64 %req_count
  call void @force_page_cache_ra(%struct.readahead_control* noundef %ractl, i64 noundef %.mux) #12
  br label %cleanup

if.end10:                                         ; preds = %land.end.thread, %land.end
  call fastcc void @ondemand_readahead(%struct.readahead_control* noundef %ractl, i1 noundef false, i64 noundef %req_count) #12
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.end10, %if.then9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ondemand_readahead(%struct.readahead_control* noundef %ractl, i1 noundef %hit_readahead_marker, i64 noundef %req_size) unnamed_addr #0 {
entry:
  %mapping = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %1) #12
  %ra1 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  %2 = load %struct.file_ra_state*, %struct.file_ra_state** %ra1, align 8
  %ra_pages = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 3
  %3 = load i32, i32* %ra_pages, align 8
  %conv = zext i32 %3 to i64
  %call2 = call fastcc i64 @readahead_index(%struct.readahead_control* noundef %ractl) #12
  %cmp = icmp ult i64 %conv, %req_size
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %io_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 4
  %4 = load i64, i64* %io_pages, align 8
  %cmp4 = icmp ugt i64 %4, %conv
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %cmp7 = icmp ugt i64 %4, %req_size
  %cond = select i1 %cmp7, i64 %req_size, i64 %4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %max_pages.0 = phi i64 [ %cond, %if.then ], [ %conv, %land.lhs.true ], [ %conv, %entry ]
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %readit.thread, label %if.end10

if.end10:                                         ; preds = %if.end
  %start = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 0
  %5 = load i64, i64* %start, align 8
  %size = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 1
  %6 = load i32, i32* %size, align 8
  %conv11 = zext i32 %6 to i64
  %add = add i64 %5, %conv11
  %async_size = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 2
  %7 = load i32, i32* %async_size, align 4
  %conv12 = zext i32 %7 to i64
  %sub = sub i64 %add, %conv12
  %cmp13 = icmp eq i64 %call2, %sub
  %cmp19 = icmp eq i64 %call2, %add
  %or.cond = or i1 %cmp19, %cmp13
  br i1 %or.cond, label %if.then21, label %if.end31

if.then21:                                        ; preds = %if.end10
  store i64 %add, i64* %start, align 8
  %call26 = call fastcc i64 @get_next_ra_size(%struct.file_ra_state* noundef %2, i64 noundef %max_pages.0) #12
  %conv27 = trunc i64 %call26 to i32
  store i32 %conv27, i32* %size, align 8
  store i32 %conv27, i32* %async_size, align 4
  br label %readit

if.end31:                                         ; preds = %if.end10
  br i1 %hit_readahead_marker, label %if.then33, label %if.end58

if.then33:                                        ; preds = %if.end31
  call fastcc void @__rcu_read_lock() #13
  %8 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %add36 = add i64 %call2, 1
  %call37 = call i64 @page_cache_next_miss(%struct.address_space* noundef %8, i64 noundef %add36, i64 noundef %max_pages.0) #13
  call fastcc void @rcu_read_unlock() #12
  %tobool38.not = icmp eq i64 %call37, 0
  br i1 %tobool38.not, label %cleanup126, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.then33
  %sub40 = sub i64 %call37, %call2
  %cmp41 = icmp ugt i64 %sub40, %max_pages.0
  br i1 %cmp41, label %cleanup126, label %if.end44

if.end44:                                         ; preds = %lor.lhs.false39
  store i64 %call37, i64* %start, align 8
  %add51 = add i64 %sub40, %req_size
  %conv52 = trunc i64 %add51 to i32
  store i32 %conv52, i32* %size, align 8
  %call53 = call fastcc i64 @get_next_ra_size(%struct.file_ra_state* noundef %2, i64 noundef %max_pages.0) #12
  %conv54 = trunc i64 %call53 to i32
  store i32 %conv54, i32* %size, align 8
  store i32 %conv54, i32* %async_size, align 4
  br label %readit

if.end58:                                         ; preds = %if.end31
  %cmp59 = icmp ult i64 %max_pages.0, %req_size
  br i1 %cmp59, label %readit.thread, label %if.end62

if.end62:                                         ; preds = %if.end58
  %prev_pos = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 5
  %9 = load i64, i64* %prev_pos, align 8
  %shr = lshr i64 %9, 12
  %sub63 = sub i64 %call2, %shr
  %cmp64 = icmp ult i64 %sub63, 2
  br i1 %cmp64, label %readit.thread, label %if.end67

if.end67:                                         ; preds = %if.end62
  %10 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %call69 = call fastcc i32 @try_context_readahead(%struct.address_space* noundef %10, %struct.file_ra_state* noundef %2, i64 noundef %call2, i64 noundef %req_size, i64 noundef %max_pages.0) #12
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.readit_crit_edge

if.end67.readit_crit_edge:                        ; preds = %if.end67
  %.pre = load i64, i64* %start, align 8
  br label %readit

if.end72:                                         ; preds = %if.end67
  call void @do_page_cache_ra(%struct.readahead_control* noundef %ractl, i64 noundef %req_size, i64 noundef 0) #12
  br label %cleanup126

readit.thread:                                    ; preds = %if.end, %if.end58, %if.end62
  %start73 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 0
  store i64 %call2, i64* %start73, align 8
  %call74 = call fastcc i64 @get_init_ra_size(i64 noundef %req_size, i64 noundef %max_pages.0) #12
  %conv75 = trunc i64 %call74 to i32
  %size76 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 1
  store i32 %conv75, i32* %size76, align 8
  %conv78 = and i64 %call74, 4294967295
  %cmp79 = icmp ugt i64 %conv78, %req_size
  %sub84 = select i1 %cmp79, i64 %req_size, i64 0
  %cond89 = sub i64 %call74, %sub84
  %conv90 = trunc i64 %cond89 to i32
  %async_size91 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 2
  store i32 %conv90, i32* %async_size91, align 4
  br label %land.lhs.true95

readit:                                           ; preds = %if.end67.readit_crit_edge, %if.end44, %if.then21
  %11 = phi i64 [ %.pre, %if.end67.readit_crit_edge ], [ %call37, %if.end44 ], [ %add, %if.then21 ]
  %cmp93 = icmp eq i64 %call2, %11
  br i1 %cmp93, label %land.lhs.true95, label %if.end120

land.lhs.true95:                                  ; preds = %readit.thread, %readit
  %12 = phi i64 [ %call2, %readit.thread ], [ %11, %readit ]
  %size96 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 1
  %13 = load i32, i32* %size96, align 8
  %async_size97 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 2
  %14 = load i32, i32* %async_size97, align 4
  %cmp98 = icmp eq i32 %13, %14
  br i1 %cmp98, label %if.then100, label %if.end120

if.then100:                                       ; preds = %land.lhs.true95
  %call101 = call fastcc i64 @get_next_ra_size(%struct.file_ra_state* noundef %2, i64 noundef %max_pages.0) #12
  %conv103 = zext i32 %13 to i64
  %add104 = add i64 %call101, %conv103
  %cmp105.not = icmp ugt i64 %add104, %max_pages.0
  br i1 %cmp105.not, label %if.else, label %if.then107

if.then107:                                       ; preds = %if.then100
  %conv108 = trunc i64 %call101 to i32
  store i32 %conv108, i32* %async_size97, align 4
  %conv113 = add i32 %13, %conv108
  store i32 %conv113, i32* %size96, align 8
  br label %if.end120

if.else:                                          ; preds = %if.then100
  %conv114 = trunc i64 %max_pages.0 to i32
  store i32 %conv114, i32* %size96, align 8
  %shr116 = lshr i64 %max_pages.0, 1
  %conv117 = trunc i64 %shr116 to i32
  store i32 %conv117, i32* %async_size97, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then107, %if.else, %land.lhs.true95, %readit
  %15 = phi i64 [ %12, %if.then107 ], [ %12, %if.else ], [ %12, %land.lhs.true95 ], [ %11, %readit ]
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 3
  store i64 %15, i64* %_index, align 8
  %size122 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 1
  %16 = load i32, i32* %size122, align 8
  %conv123 = zext i32 %16 to i64
  %async_size124 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %2, i64 0, i32 2
  %17 = load i32, i32* %async_size124, align 4
  %conv125 = zext i32 %17 to i64
  call void @do_page_cache_ra(%struct.readahead_control* noundef %ractl, i64 noundef %conv123, i64 noundef %conv125) #12
  br label %cleanup126

cleanup126:                                       ; preds = %lor.lhs.false39, %if.then33, %if.end120, %if.end72
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_cache_async_ra(%struct.readahead_control* noundef %ractl, %struct.page* noundef %page, i64 noundef %req_count) local_unnamed_addr #0 {
entry:
  %ra = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  %0 = load %struct.file_ra_state*, %struct.file_ra_state** %ra, align 8
  %ra_pages = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %0, i64 0, i32 3
  %1 = load i32, i32* %ra_pages, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 32768
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %flags.i14 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags.i14) #13
  %mapping = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  %5 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i64 0, i32 0
  %6 = load %struct.inode*, %struct.inode** %host, align 8
  %call4 = call fastcc i32 @inode_read_congested(%struct.inode* noundef %6) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end3
  call fastcc void @ondemand_readahead(%struct.readahead_control* noundef %ractl, i1 noundef true, i64 noundef %req_count) #12
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry, %if.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @inode_read_congested(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @inode_congested(%struct.inode* noundef %inode) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ksys_readahead(i32 noundef %fd, i64 noundef %offset, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 1
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %out, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %tobool4.not = icmp eq %struct.address_space* %2, null
  br i1 %tobool4.not, label %out, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 9
  %3 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %tobool8.not = icmp eq %struct.address_space_operations* %3, null
  br i1 %tobool8.not, label %out, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call11 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %0) #12
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call11, i64 0, i32 0
  %4 = load i16, i16* %i_mode, align 8
  %5 = and i16 %4, -4096
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.end15, label %out

if.end15:                                         ; preds = %lor.lhs.false9
  %call17 = call i32 @vfs_fadvise(%struct.file* noundef nonnull %0, i64 noundef %offset, i64 noundef %count, i32 noundef 3) #13
  %conv18 = sext i32 %call17 to i64
  br label %out

out:                                              ; preds = %if.end, %lor.lhs.false5, %lor.lhs.false9, %entry, %lor.lhs.false, %if.end15
  %ret.0 = phi i64 [ %conv18, %if.end15 ], [ -22, %lor.lhs.false9 ], [ -22, %lor.lhs.false5 ], [ -22, %if.end ], [ -9, %lor.lhs.false ], [ -9, %entry ]
  call fastcc void @fdput([2 x i64] %call) #12
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #13
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #12
  ret [2 x i64] %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fadvise(%struct.file* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_readahead(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_readahead(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_readahead(i64 noundef %fd, i64 noundef %offset, i64 noundef %count) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %call = call fastcc i64 @__do_sys_readahead(i32 noundef %conv, i64 noundef %offset, i64 noundef %count) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @readahead_expand(%struct.readahead_control* nocapture noundef %ractl, i64 noundef %new_start, i64 noundef %new_len) local_unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %ra2 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  %1 = load %struct.file_ra_state*, %struct.file_ra_state** %ra2, align 8
  %call = call fastcc i32 @readahead_gfp_mask(%struct.address_space* noundef %0) #12
  %div = lshr i64 %new_start, 12
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 3
  %2 = load i64, i64* %_index, align 8
  %cmp117 = icmp ugt i64 %2, %div
  br i1 %cmp117, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  %_nr_pages23.phi.trans.insert = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 4
  %.pre = load i32, i32* %_nr_pages23.phi.trans.insert, align 8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 1
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end13
  %3 = phi i64 [ %2, %while.body.lr.ph ], [ %5, %if.end13 ]
  %sub = add i64 %3, -1
  %call4 = call i8* @xa_load(%struct.xarray* noundef %i_pages, i64 noundef %sub) #13
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call5 = call fastcc i1 @xa_is_value(i8* noundef nonnull %call4) #12
  br i1 %call5, label %if.end, label %cleanup61

if.end:                                           ; preds = %land.lhs.true, %while.body
  %call6 = call fastcc %struct.page* @__page_cache_alloc(i32 noundef %call) #12
  %tobool7.not = icmp eq %struct.page* %call6, null
  br i1 %tobool7.not, label %cleanup61, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @add_to_page_cache_lru(%struct.page* noundef nonnull %call6, %struct.address_space* noundef %0, i64 noundef %sub, i32 noundef %call) #13
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %cleanup61.sink.split, label %if.end13

if.end13:                                         ; preds = %if.end9
  %4 = load i32, i32* %_nr_pages, align 8
  %inc = add i32 %4, 1
  store i32 %inc, i32* %_nr_pages, align 8
  %index14 = getelementptr inbounds %struct.page, %struct.page* %call6, i64 0, i32 1, i32 0, i32 2
  %5 = load i64, i64* %index14, align 8
  store i64 %5, i64* %_index, align 8
  %cmp = icmp ugt i64 %5, %div
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end13, %entry.while.end_crit_edge
  %6 = phi i64 [ %2, %entry.while.end_crit_edge ], [ %5, %if.end13 ]
  %7 = phi i32 [ %.pre, %entry.while.end_crit_edge ], [ %inc, %if.end13 ]
  %call17 = call fastcc i64 @readahead_pos(%struct.readahead_control* noundef %ractl) #12
  %sub18 = add i64 %new_start, 4095
  %add = add i64 %sub18, %new_len
  %sub20 = sub i64 %add, %call17
  %div21 = lshr i64 %sub20, 12
  %_nr_pages23 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 4
  %conv118 = zext i32 %7 to i64
  %cmp24119 = icmp ugt i64 %div21, %conv118
  br i1 %cmp24119, label %while.body26.lr.ph, label %cleanup61

while.body26.lr.ph:                               ; preds = %while.end
  %i_pages33 = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 1
  %tobool51.not = icmp eq %struct.file_ra_state* %1, null
  %size = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %1, i64 0, i32 1
  %async_size = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %1, i64 0, i32 2
  br label %while.body26

while.body26:                                     ; preds = %cleanup56.while.body26_crit_edge, %while.body26.lr.ph
  %8 = phi i64 [ %6, %while.body26.lr.ph ], [ %.pre123, %cleanup56.while.body26_crit_edge ]
  %conv120 = phi i64 [ %conv118, %while.body26.lr.ph ], [ %conv, %cleanup56.while.body26_crit_edge ]
  %add31 = add i64 %8, %conv120
  %call34 = call i8* @xa_load(%struct.xarray* noundef %i_pages33, i64 noundef %add31) #13
  %tobool35.not = icmp eq i8* %call34, null
  br i1 %tobool35.not, label %if.end39, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %while.body26
  %call37 = call fastcc i1 @xa_is_value(i8* noundef nonnull %call34) #12
  br i1 %call37, label %if.end39, label %cleanup61

if.end39:                                         ; preds = %land.lhs.true36, %while.body26
  %call40 = call fastcc %struct.page* @__page_cache_alloc(i32 noundef %call) #12
  %tobool41.not = icmp eq %struct.page* %call40, null
  br i1 %tobool41.not, label %cleanup61, label %if.end43

if.end43:                                         ; preds = %if.end39
  %call44 = call i32 @add_to_page_cache_lru(%struct.page* noundef nonnull %call40, %struct.address_space* noundef %0, i64 noundef %add31, i32 noundef %call) #13
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %cleanup61.sink.split, label %if.end48

if.end48:                                         ; preds = %if.end43
  %9 = load i32, i32* %_nr_pages23, align 8
  %inc50 = add i32 %9, 1
  store i32 %inc50, i32* %_nr_pages23, align 8
  br i1 %tobool51.not, label %cleanup56, label %if.then52

if.then52:                                        ; preds = %if.end48
  %10 = load i32, i32* %size, align 8
  %inc53 = add i32 %10, 1
  store i32 %inc53, i32* %size, align 8
  %11 = load i32, i32* %async_size, align 4
  %inc54 = add i32 %11, 1
  store i32 %inc54, i32* %async_size, align 4
  %.pre124 = load i32, i32* %_nr_pages23, align 8
  br label %cleanup56

cleanup56:                                        ; preds = %if.end48, %if.then52
  %12 = phi i32 [ %inc50, %if.end48 ], [ %.pre124, %if.then52 ]
  %conv = zext i32 %12 to i64
  %cmp24 = icmp ugt i64 %div21, %conv
  br i1 %cmp24, label %cleanup56.while.body26_crit_edge, label %cleanup61

cleanup56.while.body26_crit_edge:                 ; preds = %cleanup56
  %.pre123 = load i64, i64* %_index, align 8
  br label %while.body26

cleanup61.sink.split:                             ; preds = %if.end9, %if.end43
  %call40.lcssa.sink = phi %struct.page* [ %call40, %if.end43 ], [ %call6, %if.end9 ]
  call fastcc void @put_page(%struct.page* noundef nonnull %call40.lcssa.sink) #12
  br label %cleanup61

cleanup61:                                        ; preds = %land.lhs.true, %if.end, %cleanup56, %land.lhs.true36, %if.end39, %cleanup61.sink.split, %while.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @readahead_pos(%struct.readahead_control* nocapture noundef readonly %rac) unnamed_addr #5 {
entry:
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 3
  %0 = load i64, i64* %_index, align 8
  %mul = shl i64 %0, 12
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_is_blkdev_sb(%struct.super_block* nocapture noundef readnone %sb) unnamed_addr #5 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %cmp = icmp eq %struct.super_block* %0, %sb
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_mask(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #5 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 3
  %0 = load i32, i32* %gfp_mask, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_has_private(%struct.page* nocapture noundef readonly %page) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %and = and i64 %0, 24576
  %tobool = icmp ne i64 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #12
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_invalidatepage(%struct.page* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

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
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #13
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #14, !srcloc !16
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
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
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #13
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @readahead_count(%struct.readahead_control* nocapture noundef readonly %rac) unnamed_addr #5 {
entry:
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 4
  %0 = load i32, i32* %_nr_pages, align 8
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @readahead_page(%struct.readahead_control* nocapture noundef %rac) unnamed_addr #0 {
entry:
  %_batch_count = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 5
  %0 = load i32, i32* %_batch_count, align 4
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 4
  %1 = load i32, i32* %_nr_pages, align 8
  %cmp = icmp ult i32 %1, %0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !13

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/pagemap.h\22; .popsection; .long 14472b - 14470b; .short 922; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !18
  unreachable

do.end7:                                          ; preds = %entry
  %sub = sub i32 %1, %0
  store i32 %sub, i32* %_nr_pages, align 8
  %conv11 = zext i32 %0 to i64
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 3
  %2 = load i64, i64* %_index, align 8
  %add = add i64 %2, %conv11
  store i64 %add, i64* %_index, align 8
  %tobool13.not = icmp eq i32 %sub, 0
  br i1 %tobool13.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %do.end7
  %mapping = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 1
  %3 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %3, i64 0, i32 1
  %call = call i8* @xa_load(%struct.xarray* noundef %i_pages, i64 noundef %add) #13
  %4 = bitcast i8* %call to %struct.page*
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end16
  %storemerge = phi i32 [ 1, %if.end16 ], [ 0, %do.end7 ]
  %retval.0 = phi %struct.page* [ %4, %if.end16 ], [ null, %do.end7 ]
  store i32 %storemerge, i32* %_batch_count, align 4
  ret %struct.page* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pages_list(%struct.list_head* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #12
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) #12
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask) #12
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #8 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #13
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !19
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
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
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 262144, i64* elementtype(i64) %counter) #14, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_next_ra_size(%struct.file_ra_state* nocapture noundef readonly %ra, i64 noundef %max) unnamed_addr #5 {
entry:
  %size = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %ra, i64 0, i32 1
  %0 = load i32, i32* %size, align 8
  %conv = zext i32 %0 to i64
  %div = lshr i64 %max, 4
  %cmp = icmp ugt i64 %div, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = shl nuw nsw i64 %conv, 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %div2 = lshr i64 %max, 1
  %cmp3.not = icmp ult i64 %div2, %conv
  %mul6 = shl nuw nsw i64 %conv, 1
  %spec.select = select i1 %cmp3.not, i64 %max, i64 %mul6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %mul, %if.then ], [ %spec.select, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @page_cache_next_miss(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_context_readahead(%struct.address_space* noundef %mapping, %struct.file_ra_state* nocapture noundef writeonly %ra, i64 noundef %index, i64 noundef %req_size, i64 noundef %max) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @count_history_pages(%struct.address_space* noundef %mapping, i64 noundef %index, i64 noundef %max) #12
  %cmp.not = icmp ugt i64 %call, %req_size
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp uge i64 %call, %index
  %mul = zext i1 %cmp1.not to i64
  %spec.select = shl i64 %call, %mul
  %start = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %ra, i64 0, i32 0
  store i64 %index, i64* %start, align 8
  %add = add i64 %spec.select, %req_size
  %cmp4 = icmp ult i64 %add, %max
  %cond = select i1 %cmp4, i64 %add, i64 %max
  %conv = trunc i64 %cond to i32
  %size5 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %ra, i64 0, i32 1
  store i32 %conv, i32* %size5, align 8
  %async_size = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %ra, i64 0, i32 2
  store i32 1, i32* %async_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @get_init_ra_size(i64 noundef %size, i64 noundef %max) unnamed_addr #10 {
entry:
  %call16 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %size) #17
  %div = lshr i64 %max, 5
  %cmp19.not = icmp ugt i64 %call16, %div
  br i1 %cmp19.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mul = shl i64 %call16, 2
  br label %if.end25

if.else:                                          ; preds = %entry
  %div20 = lshr i64 %max, 2
  %cmp21.not = icmp ugt i64 %call16, %div20
  %mul23 = shl i64 %call16, 1
  %spec.select = select i1 %cmp21.not, i64 %max, i64 %mul23
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then
  %newsize.0 = phi i64 [ %mul, %if.then ], [ %spec.select, %if.else ]
  ret i64 %newsize.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  call void @rcu_read_unlock_strict() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @count_history_pages(%struct.address_space* noundef %mapping, i64 noundef %index, i64 noundef %max) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #13
  %sub = add i64 %index, -1
  %call = call i64 @page_cache_prev_miss(%struct.address_space* noundef %mapping, i64 noundef %sub, i64 noundef %max) #13
  call fastcc void @rcu_read_unlock() #12
  %sub2 = sub i64 %sub, %call
  ret i64 %sub2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @page_cache_prev_miss(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #10 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #12
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #10 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #14, !range !23
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 262144, i64* elementtype(i64) %counter) #14, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @inode_congested(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) #12
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 11
  %call1 = call fastcc i32 @wb_congested(%struct.bdi_writeback* noundef %wb) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @wb_congested(%struct.bdi_writeback* nocapture noundef readonly %wb) unnamed_addr #5 {
entry:
  %congested = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 10
  %0 = load i64, i64* %congested, align 8
  %1 = trunc i64 %0 to i32
  %conv1 = and i32 %1, 2
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #7 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_readahead(i32 noundef %fd, i64 noundef %offset, i64 noundef %count) unnamed_addr #0 {
entry:
  %call = call i64 @ksys_readahead(i32 noundef %fd, i64 noundef %offset, i64 noundef %count) #12
  ret i64 %call
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{i32 65536, i32 0}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155539913}
!11 = !{i64 1369669}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2155545894}
!15 = !{i64 2155547250}
!16 = !{i64 2147811357, i64 2147812027, i64 2147812057, i64 2147812089, i64 2147812121, i64 2147812155, i64 2147812180}
!17 = !{i64 2147749962, i64 2147750610, i64 2147750640, i64 2147750672, i64 2147750706, i64 2147750742, i64 2147750767}
!18 = !{i64 2154938144}
!19 = !{i64 2149131549, i64 2149131596, i64 2149131602, i64 2149131639, i64 2149131657, i64 2149132584, i64 2149132632, i64 2149132680, i64 2149132743, i64 2149132792, i64 2149131735, i64 2149131760, i64 2149131786, i64 2149131792, i64 2149131829, i64 2149131835, i64 2149131885, i64 2149131931, i64 2149131964}
!20 = !{i64 2147808469, i64 2147808980, i64 2147809010, i64 2147809036, i64 2147809068, i64 2147809097}
!21 = !{i64 2149792102}
!22 = !{i64 2149792319}
!23 = !{i64 0, i64 65}
!24 = !{i64 2147819039, i64 2147819560, i64 2147819590, i64 2147819616, i64 2147819648, i64 2147819677}
