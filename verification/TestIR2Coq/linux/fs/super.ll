; ModuleID = 'fs/super.c'
source_filename = "fs/super.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.36, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.36 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, {}*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon, i64, i32 }
%union.anon = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, {}*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, {}*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.74, i32 }
%union.anon.74 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i16, i16, i32, i32, i32 }
%struct.iomap = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.37, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.37 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.10, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.78, %union.anon.79, %union.anon.80, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.83, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { %struct.rb_node }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.83 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.38, %union.anon.39, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.53, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.26 = type { %struct.pte_t }
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
%struct.kernel_siginfo = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.52, i32, [12 x i8] }
%union.anon.52 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.54, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.54 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [48 x i8] }
%struct.anon.3 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
%struct.lockref = type { %union.anon.70 }
%union.anon.70 = type { i64 }
%union.anon.72 = type { %struct.list_head }
%union.anon.73 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.69, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.62 = type { i32 }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
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
%union.anon.69 = type { %struct.pipe_inode_info* }
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
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
%struct.ida = type { %struct.xarray }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@sb_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [87 x i8] c"VFS: Busy inodes after unmount of %s. Self-destruct in 5 seconds.  Have a nice day...\0A\00", align 1
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@super_blocks = internal global %struct.list_head { %struct.list_head* @super_blocks, %struct.list_head* @super_blocks }, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"forced remount of a %s fs returned %i\0A\00", align 1
@unnamed_dev_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"No source specified\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: Can't open blockdev\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%pg: Can't mount, blockdev is frozen\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%pg: Can't mount, would change RO state\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%pg\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013Filesystem %s get_tree() didn't set fc->root\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"%s set sb->s_maxbytes to negative value (%lld)\0A\00", align 1
@super_setup_bdi.bdi_seq = internal global %struct.atomic64_t zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"%.28s-%ld\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\013VFS:Filesystem freeze failed\0A\00", align 1
@alloc_super.default_op = internal constant %struct.super_operations zeroinitializer, align 8
@alloc_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"&s->s_umount\00", align 1
@alloc_super.__key.12 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"&s->s_writers.wait_unfrozen\00", align 1
@alloc_super.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"&s->s_sync_lock\00", align 1
@alloc_super.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"&s->s_vfs_rename_mutex\00", align 1
@alloc_super.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"&s->s_dquot.dqio_sem\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"sb_writers\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"sb_pagefaults\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"sb_internal\00", align 1
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.23 = private unnamed_addr constant [28 x i8] c"Emergency Remount complete\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.24 = private unnamed_addr constant [27 x i8] c"\014Emergency Thaw complete\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"\013VFS:Filesystem thaw failed\0A\00", align 1
@switch.table.vfs_get_super = private unnamed_addr constant [4 x i32 (%struct.super_block*, %struct.fs_context*)*] [i32 (%struct.super_block*, %struct.fs_context*)* @test_single_super, i32 (%struct.super_block*, %struct.fs_context*)* @test_single_super, i32 (%struct.super_block*, %struct.fs_context*)* @test_keyed_super, i32 (%struct.super_block*, %struct.fs_context*)* null], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #13
  call fastcc void @__put_super(%struct.super_block* noundef %sb) #14
  call fastcc void @__raw_spin_unlock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__put_super(%struct.super_block* noundef %s) unnamed_addr #0 {
entry:
  %s_count = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 15
  %0 = load i32, i32* %s_count, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %s_count, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end68

if.then:                                          ; preds = %entry
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %s_list) #14
  %node = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 47, i32 0
  %1 = load %struct.list_lru_node*, %struct.list_lru_node** %node, align 32
  %tobool1.not = icmp eq %struct.list_lru_node* %1, null
  br i1 %tobool1.not, label %if.end, label %if.then9, !prof !7

if.then9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 292; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %node18 = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 48, i32 0
  %2 = load %struct.list_lru_node*, %struct.list_lru_node** %node18, align 8
  %tobool19.not = icmp eq %struct.list_lru_node* %2, null
  br i1 %tobool19.not, label %if.end33, label %if.then32, !prof !7

if.then32:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 293; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end
  %s_mounts = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 19
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %s_mounts) #14
  %tobool43.not = icmp eq i32 %call, 0
  br i1 %tobool43.not, label %if.then58, label %if.end59, !prof !10

if.then58:                                        ; preds = %if.end33
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 294; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !11
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end33
  %s_subtype = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 36
  %3 = load i8*, i8** %s_subtype, align 32
  call void @kfree(i8* noundef %3) #13
  %rcu = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 49
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @destroy_super_rcu) #13
  br label %if.end68

if.end68:                                         ; preds = %if.end59, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @deactivate_locked_super(%struct.super_block* noundef %s) local_unnamed_addr #0 {
entry:
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 5
  %0 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 16
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %s_active) #13
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %s_shrink = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 39
  call void @unregister_shrinker(%struct.shrinker* noundef %s_shrink) #13
  %kill_sb = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %0, i64 0, i32 5
  %kill_sb1 = bitcast {}** %kill_sb to void (%struct.super_block*)**
  %1 = load void (%struct.super_block*)*, void (%struct.super_block*)** %kill_sb1, align 8
  call void %1(%struct.super_block* noundef %s) #13
  %s_dentry_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 47
  call void @list_lru_destroy(%struct.list_lru* noundef %s_dentry_lru) #13
  %s_inode_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 48
  call void @list_lru_destroy(%struct.list_lru* noundef %s_inode_lru) #13
  call void @put_filesystem(%struct.file_system_type* noundef %0) #13
  call void @put_super(%struct.super_block* noundef %s) #14
  br label %if.end

if.else:                                          ; preds = %entry
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(%struct.shrinker* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(%struct.list_lru* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @deactivate_super(%struct.super_block* noundef %s) local_unnamed_addr #0 {
entry:
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 16
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %s_active, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %s_active to i8*
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i, %entry
  %c.0.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i, %do.cond.i.i.i ]
  %cmp.i.i.i = icmp eq i32 %c.0.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %do.cond.i.i.i, !prof !10

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %c.0.i.i.i, -1
  %call11.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i, i32 noundef %add.i.i.i) #13
  %cmp.not.i.i.i.i = icmp eq i32 %c.0.i.i.i, %call11.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end, label %do.body.i.i.i, !prof !7

if.then:                                          ; preds = %do.body.i.i.i
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  call void @deactivate_locked_super(%struct.super_block* noundef %s) #14
  br label %if.end

if.end:                                           ; preds = %do.cond.i.i.i, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @trylock_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %s_umount) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %s_instances = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 23
  %call1 = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %s_instances) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool3.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %1 = load i64, i64* %s_flags, align 16
  %and = and i64 %1, 536870912
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %if.then
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #13
  br label %return

return:                                           ; preds = %entry, %if.end, %land.lhs.true4
  %retval.0 = phi i1 [ true, %land.lhs.true4 ], [ false, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #3 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @generic_shutdown_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %0 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %1 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool.not = icmp eq %struct.dentry* %1, null
  br i1 %tobool.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  call void @shrink_dcache_for_umount(%struct.super_block* noundef %sb) #13
  %call = call i32 @sync_filesystem(%struct.super_block* noundef %sb) #13
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %2 = load i64, i64* %s_flags, align 16
  %and = and i64 %2, -1073741825
  store i64 %and, i64* %s_flags, align 16
  call void @evict_inodes(%struct.super_block* noundef %sb) #13
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 44
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** %s_dio_done_wq, align 8
  %tobool1.not = icmp eq %struct.workqueue_struct* %3, null
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @destroy_workqueue(%struct.workqueue_struct* noundef nonnull %3) #13
  store %struct.workqueue_struct* null, %struct.workqueue_struct** %s_dio_done_wq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %put_super = getelementptr inbounds %struct.super_operations, %struct.super_operations* %0, i64 0, i32 7
  %put_super5 = bitcast {}** %put_super to void (%struct.super_block*)**
  %4 = load void (%struct.super_block*)*, void (%struct.super_block*)** %put_super5, align 8
  %tobool6.not = icmp eq void (%struct.super_block*)* %4, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  call void %4(%struct.super_block* noundef %sb) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %s_inodes = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 55
  %call11 = call fastcc i32 @list_empty(%struct.list_head* noundef %s_inodes) #14
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end10
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 31, i64 0
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay) #16
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %do.end, %entry
  call fastcc void @__raw_spin_lock() #13
  %s_instances = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 23
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %s_instances) #14
  call fastcc void @__raw_spin_unlock() #13
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 21
  %5 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi, align 8
  %cmp.not = icmp eq %struct.backing_dev_info* %5, @noop_backing_dev_info
  br i1 %cmp.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end16
  call void @bdi_put(%struct.backing_dev_info* noundef %5) #13
  store %struct.backing_dev_info* @noop_backing_dev_info, %struct.backing_dev_info** %s_bdi, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_for_umount(%struct.super_block* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(%struct.super_block* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evict_inodes(%struct.super_block* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(%struct.workqueue_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #14
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(%struct.backing_dev_info* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @mount_capable(%struct.fs_context* nocapture noundef readonly %fc) local_unnamed_addr #0 {
entry:
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %0 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %0, i64 0, i32 1
  %1 = load i32, i32* %fs_flags, align 8
  %and = and i32 %1, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i1 @capable(i32 noundef 21) #13
  br label %return

if.else:                                          ; preds = %entry
  %user_ns = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 6
  %2 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %2, i32 noundef 21) #13
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i1 [ %call1, %if.else ], [ %call, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.super_block* @sget_fc(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef readonly %test, i32 (%struct.super_block*, %struct.fs_context*)* nocapture noundef readonly %set) local_unnamed_addr #0 {
entry:
  %global = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %0 = bitcast i24* %global to i32*
  %bf.load = load i32, i32* %0, align 8
  %1 = and i32 %bf.load, 131072
  %bf.cast.not = icmp eq i32 %1, 0
  br i1 %bf.cast.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %user_ns1 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 6
  %2 = load %struct.user_namespace*, %struct.user_namespace** %user_ns1, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.user_namespace* [ %2, %cond.false ], [ @init_user_ns, %entry ]
  %tobool.not = icmp eq i32 (%struct.super_block*, %struct.fs_context*)* %test, null
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  br label %retry.outer

retry.outer:                                      ; preds = %if.then26, %cond.end
  %s.0.ph = phi %struct.super_block* [ %call28, %if.then26 ], [ null, %cond.end ]
  br label %retry

retry:                                            ; preds = %retry.outer, %if.end55
  call fastcc void @__raw_spin_lock() #13
  br i1 %tobool.not, label %if.end24, label %if.then

if.then:                                          ; preds = %retry
  %3 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %first = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %3, i64 0, i32 8, i32 0
  %4 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool2.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -14, i32 1
  %tobool8.not117125 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool8.not117 = or i1 %tobool2.not, %tobool8.not117125
  br i1 %tobool8.not117, label %if.end24, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %5 = bitcast %struct.hlist_node*** %add.ptr to %struct.super_block*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %old.0118 = phi %struct.super_block* [ %spec.select110, %for.inc ], [ %5, %for.body.preheader ]
  %call = call i32 %test(%struct.super_block* noundef nonnull %old.0118, %struct.fs_context* noundef %fc) #13
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %for.inc, label %share_extant_sb

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.super_block, %struct.super_block* %old.0118, i64 0, i32 23, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool13.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr20 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -14, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr20 to %struct.super_block*
  %spec.select110 = select i1 %tobool13.not, %struct.super_block* null, %struct.super_block* %7
  %tobool8.not = icmp eq %struct.super_block* %spec.select110, null
  br i1 %tobool8.not, label %if.end24, label %for.body

if.end24:                                         ; preds = %retry, %if.then, %for.inc
  %tobool25.not = icmp eq %struct.super_block* %s.0.ph, null
  br i1 %tobool25.not, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end24
  call fastcc void @__raw_spin_unlock() #13
  %8 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %9 = load i32, i32* %sb_flags, align 8
  %call28 = call fastcc %struct.super_block* @alloc_super(%struct.file_system_type* noundef %8, i32 noundef %9) #14
  %tobool29.not = icmp eq %struct.super_block* %call28, null
  br i1 %tobool29.not, label %if.then30, label %retry.outer

if.then30:                                        ; preds = %if.then26
  %call31 = call fastcc i8* @ERR_PTR(i64 noundef -12) #14
  %10 = bitcast i8* %call31 to %struct.super_block*
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %s_fs_info = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 12
  %11 = load i8*, i8** %s_fs_info, align 8
  %s_fs_info34 = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 27
  store i8* %11, i8** %s_fs_info34, align 8
  %call35 = call i32 %set(%struct.super_block* noundef nonnull %s.0.ph, %struct.fs_context* noundef %fc) #13
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end33
  store i8* null, i8** %s_fs_info34, align 8
  call fastcc void @__raw_spin_unlock() #13
  call fastcc void @destroy_unused_super(%struct.super_block* noundef nonnull %s.0.ph) #14
  %conv = sext i32 %call35 to i64
  %call39 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #14
  %12 = bitcast i8* %call39 to %struct.super_block*
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  store i8* null, i8** %s_fs_info, align 8
  %13 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 5
  store %struct.file_system_type* %13, %struct.file_system_type** %s_type, align 8
  %s_iflags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 15
  %14 = load i32, i32* %s_iflags, align 8
  %conv43 = zext i32 %14 to i64
  %s_iflags44 = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 11
  %15 = load i64, i64* %s_iflags44, align 8
  %or = or i64 %15, %conv43
  store i64 %or, i64* %s_iflags44, align 8
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 31, i64 0
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %13, i64 0, i32 0
  %16 = load i8*, i8** %name, align 8
  %call46 = call i64 @strlcpy(i8* noundef %arraydecay, i8* noundef %16, i64 noundef 32) #13
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %s_list) #14
  %s_instances47 = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 23
  %17 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %fs_supers49 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %17, i64 0, i32 8
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %s_instances47, %struct.hlist_head* noundef %fs_supers49) #14
  call fastcc void @__raw_spin_unlock() #13
  %18 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %call51 = call %struct.file_system_type* @get_filesystem(%struct.file_system_type* noundef %18) #13
  %s_shrink = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 39
  call void @register_shrinker_prepared(%struct.shrinker* noundef %s_shrink) #13
  br label %cleanup

share_extant_sb:                                  ; preds = %for.body
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %old.0118, i64 0, i32 46
  %19 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %cmp.not = icmp eq %struct.user_namespace* %cond, %19
  br i1 %cmp.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %share_extant_sb
  call fastcc void @__raw_spin_unlock() #13
  call fastcc void @destroy_unused_super(%struct.super_block* noundef %s.0.ph) #14
  %call54 = call fastcc i8* @ERR_PTR(i64 noundef -16) #14
  %20 = bitcast i8* %call54 to %struct.super_block*
  br label %cleanup

if.end55:                                         ; preds = %share_extant_sb
  %call56 = call fastcc i32 @grab_super(%struct.super_block* noundef nonnull %old.0118) #14
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %retry, label %if.end59

if.end59:                                         ; preds = %if.end55
  call fastcc void @destroy_unused_super(%struct.super_block* noundef %s.0.ph) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then53, %if.end40, %if.then37, %if.then30
  %retval.0 = phi %struct.super_block* [ %20, %if.then53 ], [ %old.0118, %if.end59 ], [ %12, %if.then37 ], [ %s.0.ph, %if.end40 ], [ %10, %if.then30 ]
  ret %struct.super_block* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.super_block* @alloc_super(%struct.file_system_type* noundef %type, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #14
  %0 = bitcast i8* %call to %struct.super_block*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %s_mounts = getelementptr inbounds i8, i8* %call, i64 176
  %1 = bitcast i8* %s_mounts to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %1) #14
  %s_user_ns = getelementptr inbounds i8, i8* %call, i64 1112
  %2 = bitcast i8* %s_user_ns to %struct.user_namespace**
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %2, align 8
  %s_umount = getelementptr inbounds i8, i8* %call, i64 112
  %3 = bitcast i8* %s_umount to %struct.rw_semaphore*
  call void @__init_rwsem(%struct.rw_semaphore* noundef %3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_super.__key) #13
  call void @down_write(%struct.rw_semaphore* noundef %3) #13
  %rw_sem = getelementptr inbounds i8, i8* %call, i64 584
  %arrayidx13 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %type, i64 0, i32 12, i64 0
  %arrayidx = bitcast i8* %rw_sem to %struct.percpu_rw_semaphore*
  %call14 = call i32 @__percpu_init_rwsem(%struct.percpu_rw_semaphore* noundef %arrayidx, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), %struct.lock_class_key* noundef %arrayidx13) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %fail

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr i8, i8* %call, i64 680
  %4 = bitcast i8* %arrayidx.1 to %struct.percpu_rw_semaphore*
  %call14.1 = call i32 @__percpu_init_rwsem(%struct.percpu_rw_semaphore* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), %struct.lock_class_key* noundef %arrayidx13) #13
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %for.cond.1, label %fail

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, i8* %call, i64 776
  %5 = bitcast i8* %arrayidx.2 to %struct.percpu_rw_semaphore*
  %call14.2 = call i32 @__percpu_init_rwsem(%struct.percpu_rw_semaphore* noundef %5, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), %struct.lock_class_key* noundef %arrayidx13) #13
  %tobool15.not.2 = icmp eq i32 %call14.2, 0
  br i1 %tobool15.not.2, label %for.cond.2, label %fail

for.cond.2:                                       ; preds = %for.cond.1
  %wait_unfrozen = getelementptr inbounds i8, i8* %call, i64 560
  %6 = bitcast i8* %wait_unfrozen to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %6, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_super.__key.12) #13
  %s_bdi = getelementptr inbounds i8, i8* %call, i64 200
  %7 = bitcast i8* %s_bdi to %struct.backing_dev_info**
  store %struct.backing_dev_info* @noop_backing_dev_info, %struct.backing_dev_info** %7, align 8
  %conv = sext i32 %flags to i64
  %s_flags = getelementptr inbounds i8, i8* %call, i64 80
  %8 = bitcast i8* %s_flags to i64*
  store i64 %conv, i64* %8, align 16
  %9 = load %struct.user_namespace*, %struct.user_namespace** %2, align 8
  %cmp23.not = icmp eq %struct.user_namespace* %9, @init_user_ns
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.cond.2
  %s_iflags = getelementptr inbounds i8, i8* %call, i64 88
  %10 = bitcast i8* %s_iflags to i64*
  %11 = load i64, i64* %10, align 8
  %or = or i64 %11, 4
  store i64 %or, i64* %10, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.cond.2
  %s_instances = getelementptr inbounds i8, i8* %call, i64 216
  %12 = bitcast i8* %s_instances to %struct.hlist_node*
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %12) #14
  %s_roots = getelementptr inbounds i8, i8* %call, i64 168
  %first = bitcast i8* %s_roots to %struct.hlist_bl_node**
  store %struct.hlist_bl_node* null, %struct.hlist_bl_node** %first, align 8
  %s_sync_lock = getelementptr inbounds i8, i8* %call, i64 1184
  %13 = bitcast i8* %s_sync_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_super.__key.14) #13
  %s_inodes = getelementptr inbounds i8, i8* %call, i64 1288
  %14 = bitcast i8* %s_inodes to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %14) #14
  %s_inode_list_lock = getelementptr inbounds i8, i8* %call, i64 1280
  %15 = bitcast i8* %s_inode_list_lock to i32*
  store i32 0, i32* %15, align 64
  %s_inodes_wb = getelementptr inbounds i8, i8* %call, i64 1312
  %16 = bitcast i8* %s_inodes_wb to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %16) #14
  %s_inode_wblist_lock = getelementptr inbounds i8, i8* %call, i64 1304
  %17 = bitcast i8* %s_inode_wblist_lock to i32*
  store i32 0, i32* %17, align 8
  %s_count = getelementptr inbounds i8, i8* %call, i64 152
  %18 = bitcast i8* %s_count to i32*
  store i32 1, i32* %18, align 8
  %s_active = getelementptr inbounds i8, i8* %call, i64 156
  %counter.i = bitcast i8* %s_active to i32*
  store volatile i32 1, i32* %counter.i, align 4
  %s_vfs_rename_mutex = getelementptr inbounds i8, i8* %call, i64 960
  %19 = bitcast i8* %s_vfs_rename_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %19, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_super.__key.16) #13
  %dqio_sem = getelementptr inbounds i8, i8* %call, i64 248
  %20 = bitcast i8* %dqio_sem to %struct.rw_semaphore*
  call void @__init_rwsem(%struct.rw_semaphore* noundef %20, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_super.__key.18) #13
  %s_maxbytes = getelementptr inbounds i8, i8* %call, i64 32
  %21 = bitcast i8* %s_maxbytes to i64*
  store i64 2147483647, i64* %21, align 32
  %s_op = getelementptr inbounds i8, i8* %call, i64 48
  %22 = bitcast i8* %s_op to %struct.super_operations**
  store %struct.super_operations* @alloc_super.default_op, %struct.super_operations** %22, align 16
  %s_time_gran = getelementptr inbounds i8, i8* %call, i64 880
  %23 = bitcast i8* %s_time_gran to i32*
  store i32 1000000000, i32* %23, align 16
  %s_time_min = getelementptr inbounds i8, i8* %call, i64 888
  %24 = bitcast i8* %s_time_min to i64*
  store i64 -9223372036854775808, i64* %24, align 8
  %s_time_max = getelementptr inbounds i8, i8* %call, i64 896
  %25 = bitcast i8* %s_time_max to i64*
  store i64 9223372036854775807, i64* %25, align 64
  %cleancache_poolid = getelementptr inbounds i8, i8* %call, i64 1008
  %26 = bitcast i8* %cleancache_poolid to i32*
  store i32 -1, i32* %26, align 16
  %s_shrink = getelementptr inbounds i8, i8* %call, i64 1016
  %27 = bitcast i8* %s_shrink to %struct.shrinker*
  %seeks = getelementptr inbounds i8, i8* %call, i64 1040
  %28 = bitcast i8* %seeks to i32*
  store i32 2, i32* %28, align 8
  %scan_objects = getelementptr inbounds i8, i8* %call, i64 1024
  %29 = bitcast i8* %scan_objects to i64 (%struct.shrinker*, %struct.shrink_control*)**
  store i64 (%struct.shrinker*, %struct.shrink_control*)* @super_cache_scan, i64 (%struct.shrinker*, %struct.shrink_control*)** %29, align 8
  %count_objects = bitcast i8* %s_shrink to i64 (%struct.shrinker*, %struct.shrink_control*)**
  store i64 (%struct.shrinker*, %struct.shrink_control*)* @super_cache_count, i64 (%struct.shrinker*, %struct.shrink_control*)** %count_objects, align 8
  %batch = getelementptr inbounds i8, i8* %call, i64 1032
  %30 = bitcast i8* %batch to i64*
  store i64 1024, i64* %30, align 8
  %flags58 = getelementptr inbounds i8, i8* %call, i64 1044
  %31 = bitcast i8* %flags58 to i32*
  store i32 6, i32* %31, align 4
  %call60 = call i32 @prealloc_shrinker(%struct.shrinker* noundef %27) #13
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %fail

if.end63:                                         ; preds = %if.end26
  %s_dentry_lru = getelementptr inbounds i8, i8* %call, i64 1120
  %32 = bitcast i8* %s_dentry_lru to %struct.list_lru*
  %call65 = call i32 @__list_lru_init(%struct.list_lru* noundef %32, i1 noundef true, %struct.lock_class_key* noundef null, %struct.shrinker* noundef %27) #13
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %fail

if.end68:                                         ; preds = %if.end63
  %s_inode_lru = getelementptr inbounds i8, i8* %call, i64 1128
  %33 = bitcast i8* %s_inode_lru to %struct.list_lru*
  %call70 = call i32 @__list_lru_init(%struct.list_lru* noundef %33, i1 noundef true, %struct.lock_class_key* noundef null, %struct.shrinker* noundef %27) #13
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %cleanup, label %fail

fail:                                             ; preds = %if.end, %for.cond, %for.cond.1, %if.end68, %if.end63, %if.end26
  call fastcc void @destroy_unused_super(%struct.super_block* noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %entry, %fail
  %retval.0 = phi %struct.super_block* [ null, %fail ], [ null, %entry ], [ %0, %if.end68 ]
  ret %struct.super_block* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @destroy_unused_super(%struct.super_block* noundef %s) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.super_block* %s, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  %s_dentry_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 47
  call void @list_lru_destroy(%struct.list_lru* noundef %s_dentry_lru) #13
  %s_inode_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 48
  call void @list_lru_destroy(%struct.list_lru* noundef %s_inode_lru) #13
  %s_subtype = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 36
  %0 = load i8*, i8** %s_subtype, align 32
  call void @kfree(i8* noundef %0) #13
  %s_shrink = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 39
  call void @free_prealloced_shrinker(%struct.shrinker* noundef %s_shrink) #13
  %destroy_work = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 50
  call void @destroy_super_work(%struct.work_struct* noundef %destroy_work) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #6 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @super_blocks, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #6 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file_system_type* @get_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_shrinker_prepared(%struct.shrinker* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @grab_super(%struct.super_block* noundef %s) unnamed_addr #0 {
entry:
  %s_count = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 15
  %0 = load i32, i32* %s_count, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %s_count, align 8
  call fastcc void @__raw_spin_unlock() #13
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 10
  %1 = load i64, i64* %s_flags, align 16
  %and = and i64 %1, 536870912
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 16
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %s_active, i64 0, i32 0
  %2 = load volatile i32, i32* %counter.i.i.i.i, align 4
  %3 = bitcast %struct.atomic_t* %s_active to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %land.lhs.true
  %c.0.i.i.i.i = phi i32 [ %2, %land.lhs.true ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end, label %do.cond.i.i.i.i, !prof !10

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %3, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #13
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %return, label %do.body.i.i.i.i, !prof !7

if.end:                                           ; preds = %do.body.i.i.i.i, %entry
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %return

return:                                           ; preds = %do.cond.i.i.i.i, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %do.cond.i.i.i.i ]
  call void @put_super(%struct.super_block* noundef %s) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.super_block* @sget(%struct.file_system_type* noundef %type, i32 (%struct.super_block*, i8*)* noundef readonly %test, i32 (%struct.super_block*, i8*)* nocapture noundef readonly %set, i32 noundef %flags, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %tobool1.not = icmp eq i32 (%struct.super_block*, i8*)* %test, null
  %first = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %type, i64 0, i32 8, i32 0
  %and33 = and i32 %flags, -67108865
  br label %retry.outer

retry.outer:                                      ; preds = %if.then32, %entry
  %s.0.ph = phi %struct.super_block* [ %call34, %if.then32 ], [ null, %entry ]
  br label %retry

retry:                                            ; preds = %retry.outer, %if.end12
  call fastcc void @__raw_spin_lock() #13
  br i1 %tobool1.not, label %if.end30, label %if.then2

if.then2:                                         ; preds = %retry
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool3.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -14, i32 1
  %tobool5.not97105 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool5.not97 = or i1 %tobool3.not, %tobool5.not97105
  br i1 %tobool5.not97, label %if.end30, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then2
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.super_block*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %old.098 = phi %struct.super_block* [ %spec.select90, %for.inc ], [ %1, %for.body.preheader ]
  %call6 = call i32 %test(%struct.super_block* noundef nonnull %old.098, i8* noundef %data) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %if.end9

if.end9:                                          ; preds = %for.body
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %old.098, i64 0, i32 46
  %2 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %cmp.not = icmp eq %struct.user_namespace* %2, @init_user_ns
  br i1 %cmp.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end9
  call fastcc void @__raw_spin_unlock() #13
  call fastcc void @destroy_unused_super(%struct.super_block* noundef %s.0.ph) #14
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -16) #14
  %3 = bitcast i8* %call11 to %struct.super_block*
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = call fastcc i32 @grab_super(%struct.super_block* noundef nonnull %old.098) #14
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %retry, label %if.end16

if.end16:                                         ; preds = %if.end12
  call fastcc void @destroy_unused_super(%struct.super_block* noundef %s.0.ph) #14
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.super_block, %struct.super_block* %old.098, i64 0, i32 23, i32 0
  %4 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool19.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr26 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -14, i32 1
  %5 = bitcast %struct.hlist_node*** %add.ptr26 to %struct.super_block*
  %spec.select90 = select i1 %tobool19.not, %struct.super_block* null, %struct.super_block* %5
  %tobool5.not = icmp eq %struct.super_block* %spec.select90, null
  br i1 %tobool5.not, label %if.end30, label %for.body

if.end30:                                         ; preds = %retry, %if.then2, %for.inc
  %tobool31.not = icmp eq %struct.super_block* %s.0.ph, null
  br i1 %tobool31.not, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end30
  call fastcc void @__raw_spin_unlock() #13
  %call34 = call fastcc %struct.super_block* @alloc_super(%struct.file_system_type* noundef %type, i32 noundef %and33) #14
  %tobool35.not = icmp eq %struct.super_block* %call34, null
  br i1 %tobool35.not, label %if.then36, label %retry.outer

if.then36:                                        ; preds = %if.then32
  %call37 = call fastcc i8* @ERR_PTR(i64 noundef -12) #14
  %6 = bitcast i8* %call37 to %struct.super_block*
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %call40 = call i32 %set(%struct.super_block* noundef nonnull %s.0.ph, i8* noundef %data) #13
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end39
  call fastcc void @__raw_spin_unlock() #13
  call fastcc void @destroy_unused_super(%struct.super_block* noundef nonnull %s.0.ph) #14
  %conv = sext i32 %call40 to i64
  %call43 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #14
  %7 = bitcast i8* %call43 to %struct.super_block*
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 5
  store %struct.file_system_type* %type, %struct.file_system_type** %s_type, align 8
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 31, i64 0
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %type, i64 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %call45 = call i64 @strlcpy(i8* noundef %arraydecay, i8* noundef %8, i64 noundef 32) #13
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %s_list) #14
  %s_instances46 = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 23
  %fs_supers47 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %type, i64 0, i32 8
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %s_instances46, %struct.hlist_head* noundef %fs_supers47) #14
  call fastcc void @__raw_spin_unlock() #13
  %call48 = call %struct.file_system_type* @get_filesystem(%struct.file_system_type* noundef %type) #13
  %s_shrink = getelementptr inbounds %struct.super_block, %struct.super_block* %s.0.ph, i64 0, i32 39
  call void @register_shrinker_prepared(%struct.shrinker* noundef %s_shrink) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then42, %if.then36, %if.end16, %if.then10
  %retval.0 = phi %struct.super_block* [ %3, %if.then10 ], [ %old.098, %if.end16 ], [ %7, %if.then42 ], [ %s.0.ph, %if.end44 ], [ %6, %if.then36 ]
  ret %struct.super_block* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drop_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #13
  call void @put_super(%struct.super_block* noundef %sb) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drop_super_exclusive(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  call void @put_super(%struct.super_block* noundef %sb) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iterate_supers(void (%struct.super_block*, i8*)* nocapture noundef readonly %f, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #13
  %sb.035 = load %struct.super_block*, %struct.super_block** bitcast (%struct.list_head* @super_blocks to %struct.super_block**), align 8
  %s_list36 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.035, i64 0, i32 0
  %cmp.not37 = icmp eq %struct.list_head* %s_list36, @super_blocks
  br i1 %cmp.not37, label %if.end18, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %sb.039 = phi %struct.super_block* [ %sb.0, %for.inc ], [ %sb.035, %entry ]
  %p.038 = phi %struct.super_block* [ %p.1, %for.inc ], [ null, %entry ]
  %s_instances = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.039, i64 0, i32 23
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %s_instances) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %s_count = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.039, i64 0, i32 15
  %0 = load i32, i32* %s_count, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %s_count, align 8
  call fastcc void @__raw_spin_unlock() #13
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.039, i64 0, i32 14
  call void @down_read(%struct.rw_semaphore* noundef %s_umount) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.039, i64 0, i32 13
  %1 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool1.not = icmp eq %struct.dentry* %1, null
  br i1 %tobool1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.039, i64 0, i32 10
  %2 = load i64, i64* %s_flags, align 16
  %and = and i64 %2, 536870912
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  call void %f(%struct.super_block* noundef %sb.039, i8* noundef %arg) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #13
  call fastcc void @__raw_spin_lock() #13
  %tobool6.not = icmp eq %struct.super_block* %p.038, null
  br i1 %tobool6.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.end4
  call fastcc void @__put_super(%struct.super_block* noundef nonnull %p.038) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %if.then7, %for.body
  %p.1 = phi %struct.super_block* [ %p.038, %for.body ], [ %sb.039, %if.then7 ], [ %sb.039, %if.end4 ]
  %3 = bitcast %struct.super_block* %sb.039 to %struct.super_block**
  %sb.0 = load %struct.super_block*, %struct.super_block** %3, align 8
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %s_list, @super_blocks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool16.not = icmp eq %struct.super_block* %p.1, null
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %for.end
  call fastcc void @__put_super(%struct.super_block* noundef nonnull %p.1) #14
  br label %if.end18

if.end18:                                         ; preds = %entry, %if.then17, %for.end
  call fastcc void @__raw_spin_unlock() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iterate_supers_type(%struct.file_system_type* nocapture noundef readonly %type, void (%struct.super_block*, i8*)* nocapture noundef readonly %f, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #13
  %first = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %type, i64 0, i32 8, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -14, i32 1
  %tobool2.not4750 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool2.not47 = or i1 %tobool.not, %tobool2.not4750
  br i1 %tobool2.not47, label %if.end24, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.super_block*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end8
  %sb.049 = phi %struct.super_block* [ %spec.select46, %if.end8 ], [ %1, %for.body.preheader ]
  %p.048 = phi %struct.super_block* [ %sb.049, %if.end8 ], [ null, %for.body.preheader ]
  %s_count = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.049, i64 0, i32 15
  %2 = load i32, i32* %s_count, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %s_count, align 8
  call fastcc void @__raw_spin_unlock() #13
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.049, i64 0, i32 14
  call void @down_read(%struct.rw_semaphore* noundef %s_umount) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.049, i64 0, i32 13
  %3 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool3.not = icmp eq %struct.dentry* %3, null
  br i1 %tobool3.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.049, i64 0, i32 10
  %4 = load i64, i64* %s_flags, align 16
  %and = and i64 %4, 536870912
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %f(%struct.super_block* noundef nonnull %sb.049, i8* noundef %arg) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #13
  call fastcc void @__raw_spin_lock() #13
  %tobool6.not = icmp eq %struct.super_block* %p.048, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call fastcc void @__put_super(%struct.super_block* noundef nonnull %p.048) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %next = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.049, i64 0, i32 23, i32 0
  %5 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool11.not = icmp eq %struct.hlist_node* %5, null
  %add.ptr18 = getelementptr %struct.hlist_node, %struct.hlist_node* %5, i64 -14, i32 1
  %6 = bitcast %struct.hlist_node*** %add.ptr18 to %struct.super_block*
  %spec.select46 = select i1 %tobool11.not, %struct.super_block* null, %struct.super_block* %6
  %tobool2.not = icmp eq %struct.super_block* %spec.select46, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end8
  %tobool22.not = icmp eq %struct.super_block* %sb.049, null
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %for.end
  call fastcc void @__put_super(%struct.super_block* noundef nonnull %sb.049) #14
  br label %if.end24

if.end24:                                         ; preds = %entry, %if.then23, %for.end
  call fastcc void @__raw_spin_unlock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.super_block* @get_super(%struct.block_device* noundef readnone %bdev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.block_device* %bdev, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock() #13
  %sb.03540 = load %struct.super_block*, %struct.super_block** bitcast (%struct.list_head* @super_blocks to %struct.super_block**), align 8
  %s_list3641 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.03540, i64 0, i32 0
  %cmp.not3742 = icmp eq %struct.list_head* %s_list3641, @super_blocks
  br i1 %cmp.not3742, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body.backedge
  %sb.038 = phi %struct.super_block* [ %sb.038.be, %for.body.backedge ], [ %sb.03540, %if.end ]
  %s_instances = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.038, i64 0, i32 23
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %s_instances) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %for.inc

if.end3:                                          ; preds = %for.body
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.038, i64 0, i32 20
  %0 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %cmp4 = icmp eq %struct.block_device* %0, %bdev
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %if.end3
  %s_count = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.038, i64 0, i32 15
  %1 = load i32, i32* %s_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %s_count, align 8
  call fastcc void @__raw_spin_unlock() #13
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.038, i64 0, i32 14
  call void @down_read(%struct.rw_semaphore* noundef %s_umount) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.038, i64 0, i32 13
  %2 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool6.not = icmp eq %struct.dentry* %2, null
  br i1 %tobool6.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then5
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.038, i64 0, i32 10
  %3 = load i64, i64* %s_flags, align 16
  %and = and i64 %3, 536870912
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %land.lhs.true, %if.then5
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #13
  call fastcc void @__raw_spin_lock() #13
  call fastcc void @__put_super(%struct.super_block* noundef %sb.038) #14
  %sb.035 = load %struct.super_block*, %struct.super_block** bitcast (%struct.list_head* @super_blocks to %struct.super_block**), align 8
  %s_list36 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.035, i64 0, i32 0
  %cmp.not37 = icmp eq %struct.list_head* %s_list36, @super_blocks
  br i1 %cmp.not37, label %for.end, label %for.body.backedge

for.inc:                                          ; preds = %if.end3, %for.body
  %4 = bitcast %struct.super_block* %sb.038 to %struct.super_block**
  %sb.0 = load %struct.super_block*, %struct.super_block** %4, align 8
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %s_list, @super_blocks
  br i1 %cmp.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %if.end9
  %sb.038.be = phi %struct.super_block* [ %sb.0, %for.inc ], [ %sb.035, %if.end9 ]
  br label %for.body

for.end:                                          ; preds = %if.end9, %for.inc, %if.end
  call fastcc void @__raw_spin_unlock() #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %for.end
  %retval.0 = phi %struct.super_block* [ null, %for.end ], [ null, %entry ], [ %sb.038, %land.lhs.true ]
  ret %struct.super_block* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.super_block* @get_active_super(%struct.block_device* noundef readnone %bdev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.block_device* %bdev, null
  br i1 %tobool.not, label %cleanup, label %restart

restart:                                          ; preds = %entry, %if.then5
  call fastcc void @__raw_spin_lock() #13
  %sb.029 = load %struct.super_block*, %struct.super_block** bitcast (%struct.list_head* @super_blocks to %struct.super_block**), align 8
  %s_list30 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.029, i64 0, i32 0
  %cmp.not31 = icmp eq %struct.list_head* %s_list30, @super_blocks
  br i1 %cmp.not31, label %for.end, label %for.body

for.body:                                         ; preds = %restart, %for.inc
  %sb.032 = phi %struct.super_block* [ %sb.0, %for.inc ], [ %sb.029, %restart ]
  %s_instances = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.032, i64 0, i32 23
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %s_instances) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %for.inc

if.end3:                                          ; preds = %for.body
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.032, i64 0, i32 20
  %0 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %cmp4 = icmp eq %struct.block_device* %0, %bdev
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %if.end3
  %call6 = call fastcc i32 @grab_super(%struct.super_block* noundef %sb.032) #14
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %restart, label %if.end9

if.end9:                                          ; preds = %if.then5
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.032, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %cleanup

for.inc:                                          ; preds = %if.end3, %for.body
  %1 = bitcast %struct.super_block* %sb.032 to %struct.super_block**
  %sb.0 = load %struct.super_block*, %struct.super_block** %1, align 8
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %s_list, @super_blocks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %restart, %for.inc
  call fastcc void @__raw_spin_unlock() #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.end9
  %retval.0 = phi %struct.super_block* [ %sb.032, %if.end9 ], [ null, %for.end ], [ null, %entry ]
  ret %struct.super_block* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.super_block* @user_get_super(i32 noundef %dev, i1 noundef %excl) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #13
  %sb.04449 = load %struct.super_block*, %struct.super_block** bitcast (%struct.list_head* @super_blocks to %struct.super_block**), align 8
  %s_list4550 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.04449, i64 0, i32 0
  %cmp.not4651 = icmp eq %struct.list_head* %s_list4550, @super_blocks
  br i1 %cmp.not4651, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body.backedge
  %sb.047 = phi %struct.super_block* [ %sb.047.be, %for.body.backedge ], [ %sb.04449, %entry ]
  %s_instances = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.047, i64 0, i32 23
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %s_instances) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.047, i64 0, i32 1
  %0 = load i32, i32* %s_dev, align 16
  %cmp1 = icmp eq i32 %0, %dev
  br i1 %cmp1, label %if.then2, label %for.inc

if.then2:                                         ; preds = %if.end
  %s_count = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.047, i64 0, i32 15
  %1 = load i32, i32* %s_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %s_count, align 8
  call fastcc void @__raw_spin_unlock() #13
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.047, i64 0, i32 14
  br i1 %excl, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %if.end6

if.else:                                          ; preds = %if.then2
  call void @down_read(%struct.rw_semaphore* noundef %s_umount) #13
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.047, i64 0, i32 13
  %2 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool7.not = icmp eq %struct.dentry* %2, null
  br i1 %tobool7.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.047, i64 0, i32 10
  %3 = load i64, i64* %s_flags, align 16
  %and = and i64 %3, 536870912
  %tobool8.not = icmp eq i64 %and, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %if.end6
  %s_umount13 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.047, i64 0, i32 14
  br i1 %excl, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.end10
  call void @up_write(%struct.rw_semaphore* noundef %s_umount13) #13
  br label %if.end16

if.else14:                                        ; preds = %if.end10
  call void @up_read(%struct.rw_semaphore* noundef %s_umount13) #13
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then12
  call fastcc void @__raw_spin_lock() #13
  call fastcc void @__put_super(%struct.super_block* noundef %sb.047) #14
  %sb.044 = load %struct.super_block*, %struct.super_block** bitcast (%struct.list_head* @super_blocks to %struct.super_block**), align 8
  %s_list45 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.044, i64 0, i32 0
  %cmp.not46 = icmp eq %struct.list_head* %s_list45, @super_blocks
  br i1 %cmp.not46, label %for.end, label %for.body.backedge

for.inc:                                          ; preds = %if.end, %for.body
  %4 = bitcast %struct.super_block* %sb.047 to %struct.super_block**
  %sb.0 = load %struct.super_block*, %struct.super_block** %4, align 8
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %s_list, @super_blocks
  br i1 %cmp.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %if.end16
  %sb.047.be = phi %struct.super_block* [ %sb.0, %for.inc ], [ %sb.044, %if.end16 ]
  br label %for.body

for.end:                                          ; preds = %if.end16, %for.inc, %entry
  call fastcc void @__raw_spin_unlock() #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %for.end
  %retval.0 = phi %struct.super_block* [ null, %for.end ], [ %sb.047, %land.lhs.true ]
  ret %struct.super_block* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @reconfigure_super(%struct.fs_context* noundef %fc) local_unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %2 = load i32, i32* %sb_flags, align 8
  %and = and i32 %2, 134217728
  %tobool.not = icmp eq i32 %and, 0
  %sb_flags_mask = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 14
  %3 = load i32, i32* %sb_flags_mask, align 4
  %and2 = and i32 %3, -41943122
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %frozen = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 26, i32 0
  %4 = load i32, i32* %frozen, align 8
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %and10 = and i32 %3, 1
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end48.thread, label %if.then12

if.then12:                                        ; preds = %if.end5
  %and14 = and i32 %2, 1
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.then12
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 20
  %5 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %tobool16.not = icmp eq %struct.block_device* %5, null
  br i1 %tobool16.not, label %if.end48.thread, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true
  %call19 = call i32 @bdev_read_only(%struct.block_device* noundef nonnull %5) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %land.lhs.true17
  %.pre = load i32, i32* %sb_flags, align 8
  %.pre179 = and i32 %.pre, 1
  %tobool25.not = icmp eq i32 %.pre179, 0
  br i1 %tobool25.not, label %if.end48.thread, label %if.end28

if.end28:                                         ; preds = %if.then12, %if.end22
  %call26 = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %1) #14
  br i1 %call26, label %if.end48.thread, label %if.then30

if.then30:                                        ; preds = %if.end28
  %s_pins = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 45
  %call31 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %s_pins) #14
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end48.thread176

if.end48.thread176:                               ; preds = %if.then30
  call void @shrink_dcache_sb(%struct.super_block* noundef %1) #13
  br label %if.then50

if.then33:                                        ; preds = %if.then30
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  call void @group_pin_kill(%struct.hlist_head* noundef %s_pins) #13
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 13
  %6 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool36.not = icmp eq %struct.dentry* %6, null
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.then33
  %7 = load i32, i32* %frozen, align 8
  %cmp41.not = icmp eq i32 %7, 0
  br i1 %cmp41.not, label %if.end48, label %cleanup

if.end48.thread:                                  ; preds = %land.lhs.true, %if.end28, %if.end5, %if.end22
  call void @shrink_dcache_sb(%struct.super_block* noundef %1) #13
  br label %if.end58

if.end48:                                         ; preds = %if.end38
  %call44 = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %1) #14
  call void @shrink_dcache_sb(%struct.super_block* noundef %1) #13
  br i1 %call44, label %if.end58, label %if.then50

if.then50:                                        ; preds = %if.end48.thread176, %if.end48
  br i1 %tobool.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.then50
  %s_readonly_remount = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 42
  store i32 1, i32* %s_readonly_remount, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !12
  br label %if.end58

if.else:                                          ; preds = %if.then50
  %call53 = call i32 @sb_prepare_remount_readonly(%struct.super_block* noundef %1) #13
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end58, label %cleanup

if.end58:                                         ; preds = %if.end48.thread, %if.then52, %if.else, %if.end48
  %remount_ro.1.off0175 = phi i1 [ false, %if.end48.thread ], [ true, %if.then52 ], [ true, %if.else ], [ false, %if.end48 ]
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  %8 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %reconfigure = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %8, i64 0, i32 5
  %reconfigure59 = bitcast {}** %reconfigure to i32 (%struct.fs_context*)**
  %9 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %reconfigure59, align 8
  %tobool60.not = icmp eq i32 (%struct.fs_context*)* %9, null
  br i1 %tobool60.not, label %do.body96, label %if.then61

if.then61:                                        ; preds = %if.end58
  %call65 = call i32 %9(%struct.fs_context* noundef %fc) #13
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body96, label %if.then67

if.then67:                                        ; preds = %if.then61
  br i1 %tobool.not, label %cancel_readonly, label %do.end

do.end:                                           ; preds = %if.then67
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 5
  %10 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %10, i64 0, i32 0
  %11 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* noundef %11, i32 noundef %call65) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 912; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !13
  br label %do.body96

do.body96:                                        ; preds = %if.end58, %do.end, %if.then61
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 10
  %12 = load i64, i64* %s_flags, align 16
  %13 = load i32, i32* %sb_flags_mask, align 4
  %neg = xor i32 %13, -1
  %conv98 = zext i32 %neg to i64
  %and99 = and i64 %12, %conv98
  %14 = load i32, i32* %sb_flags, align 8
  %and102 = and i32 %14, %13
  %conv103 = zext i32 %and102 to i64
  %or = or i64 %and99, %conv103
  store volatile i64 %or, i64* %s_flags, align 16
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %s_readonly_remount109 = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 42
  store i32 0, i32* %s_readonly_remount109, align 64
  br i1 %remount_ro.1.off0175, label %land.lhs.true112, label %cleanup

land.lhs.true112:                                 ; preds = %do.body96
  %s_bdev113 = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 20
  %15 = load %struct.block_device*, %struct.block_device** %s_bdev113, align 64
  %tobool114.not = icmp eq %struct.block_device* %15, null
  br i1 %tobool114.not, label %cleanup, label %if.then115

if.then115:                                       ; preds = %land.lhs.true112
  call void @invalidate_bdev(%struct.block_device* noundef nonnull %15) #13
  br label %cleanup

cancel_readonly:                                  ; preds = %if.then67
  %s_readonly_remount118 = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 42
  store i32 0, i32* %s_readonly_remount118, align 64
  br label %cleanup

cleanup:                                          ; preds = %do.body96, %land.lhs.true112, %if.then115, %if.else, %if.end38, %if.then33, %land.lhs.true17, %if.end, %entry, %cancel_readonly
  %retval.0 = phi i32 [ %call65, %cancel_readonly ], [ -22, %entry ], [ -16, %if.end ], [ -13, %land.lhs.true17 ], [ 0, %if.then33 ], [ -16, %if.end38 ], [ %call53, %if.else ], [ 0, %if.then115 ], [ 0, %land.lhs.true112 ], [ 0, %do.body96 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_only(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_rdonly(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #3 {
entry:
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #4 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @group_pin_kill(%struct.hlist_head* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(%struct.super_block* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_prepare_remount_readonly(%struct.super_block* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @emergency_remount() local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 2592) #13
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  %1 = bitcast i8* %call.i.i to %struct.work_struct*
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call.i.i to i64*
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry1 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %2 = bitcast i8* %entry1 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #14
  %func = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %3 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @do_emergency_remount, void (%struct.work_struct*)** %3, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @do_emergency_remount(%struct.work_struct* noundef %work) #0 {
entry:
  call fastcc void @__iterate_supers(void (%struct.super_block*)* noundef nonnull @do_emergency_remount_callback) #14
  %0 = bitcast %struct.work_struct* %work to i8*
  call void @kfree(i8* noundef %0) #13
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0)) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @emergency_thaw_all() local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 2592) #13
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  %1 = bitcast i8* %call.i.i to %struct.work_struct*
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call.i.i to i64*
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry1 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %2 = bitcast i8* %entry1 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #14
  %func = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %3 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @do_thaw_all, void (%struct.work_struct*)** %3, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @do_thaw_all(%struct.work_struct* noundef %work) #0 {
entry:
  call fastcc void @__iterate_supers(void (%struct.super_block*)* noundef nonnull @do_thaw_all_callback) #14
  %0 = bitcast %struct.work_struct* %work to i8*
  call void @kfree(i8* noundef %0) #13
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0)) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_anon_bdev(i32* nocapture noundef writeonly %p) local_unnamed_addr #0 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @unnamed_dev_ida, i32 noundef 1, i32 noundef 1048575, i32 noundef 2592) #13
  %cmp = icmp eq i32 %call, -28
  %spec.store.select = select i1 %cmp, i32 -24, i32 %call
  %cmp1 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  store i32 %spec.store.select, i32* %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %spec.store.select, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_anon_bdev(i32 noundef %dev) local_unnamed_addr #0 {
entry:
  %and = and i32 %dev, 1048575
  call void @ida_free(%struct.ida* noundef nonnull @unnamed_dev_ida, i32 noundef %and) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_anon_super(%struct.super_block* nocapture noundef writeonly %s, i8* nocapture readnone %data) #0 {
entry:
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 1
  %call = call i32 @get_anon_bdev(i32* noundef %s_dev) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kill_anon_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 1
  %0 = load i32, i32* %s_dev, align 16
  call void @generic_shutdown_super(%struct.super_block* noundef %sb) #14
  call void @free_anon_bdev(i32 noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kill_litter_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @d_genocide(%struct.dentry* noundef nonnull %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @kill_anon_super(%struct.super_block* noundef %sb) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_genocide(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_anon_super_fc(%struct.super_block* nocapture noundef writeonly %sb, %struct.fs_context* nocapture readnone %fc) #0 {
entry:
  %call = call i32 @set_anon_super(%struct.super_block* noundef %sb, i8* undef) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_get_super(%struct.fs_context* noundef %fc, i32 noundef %keying, i32 (%struct.super_block*, %struct.fs_context*)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %0 = icmp ult i32 %keying, 4
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 1132; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !15
  unreachable

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %keying to i64
  %switch.gep = getelementptr inbounds [4 x i32 (%struct.super_block*, %struct.fs_context*)*], [4 x i32 (%struct.super_block*, %struct.fs_context*)*]* @switch.table.vfs_get_super, i64 0, i64 %1
  %switch.load = load i32 (%struct.super_block*, %struct.fs_context*)*, i32 (%struct.super_block*, %struct.fs_context*)** %switch.gep, align 8
  %call = call %struct.super_block* @sget_fc(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef %switch.load, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @set_anon_super_fc) #14
  %2 = bitcast %struct.super_block* %call to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %2) #14
  br i1 %call6, label %if.then, label %if.end

if.then:                                          ; preds = %switch.lookup
  %call7 = call fastcc i64 @PTR_ERR(i8* noundef %2) #14
  %conv = trunc i64 %call7 to i32
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %call, i64 0, i32 13
  %3 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool.not = icmp eq %struct.dentry* %3, null
  br i1 %tobool.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %call9 = call i32 %fill_super(%struct.super_block* noundef %call, %struct.fs_context* noundef %fc) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %error

if.end12:                                         ; preds = %if.then8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %call, i64 0, i32 10
  %4 = load i64, i64* %s_flags, align 16
  %or = or i64 %4, 1073741824
  store i64 %or, i64* %s_flags, align 16
  %5 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call14 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %5) #14
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  store %struct.dentry* %5, %struct.dentry** %root, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call16 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef nonnull %3) #14
  %root17 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  store %struct.dentry* %3, %struct.dentry** %root17, align 8
  %cmp = icmp eq i32 %keying, 1
  br i1 %cmp, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.else
  %call20 = call i32 @reconfigure_super(%struct.fs_context* noundef %fc) #14
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.then19
  %6 = load %struct.dentry*, %struct.dentry** %root17, align 8
  call void @dput(%struct.dentry* noundef %6) #13
  store %struct.dentry* null, %struct.dentry** %root17, align 8
  br label %error

error:                                            ; preds = %if.then8, %if.then23
  %err.0 = phi i32 [ %call20, %if.then23 ], [ %call9, %if.then8 ]
  call void @deactivate_locked_super(%struct.super_block* noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then19, %if.else, %error, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %err.0, %error ], [ 0, %if.else ], [ 0, %if.then19 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @test_single_super(%struct.super_block* nocapture noundef readnone %s, %struct.fs_context* nocapture noundef readnone %fc) #7 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @test_keyed_super(%struct.super_block* nocapture noundef readonly %sb, %struct.fs_context* nocapture noundef readonly %fc) #3 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = load i8*, i8** %s_fs_info, align 8
  %s_fs_info1 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 12
  %1 = load i8*, i8** %s_fs_info1, align 8
  %cmp = icmp eq i8* %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_tree_nodev(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %call = call i32 @vfs_get_super(%struct.fs_context* noundef %fc, i32 noundef 3, i32 (%struct.super_block*, %struct.fs_context*)* noundef %fill_super) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_tree_single(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %call = call i32 @vfs_get_super(%struct.fs_context* noundef %fc, i32 noundef 0, i32 (%struct.super_block*, %struct.fs_context*)* noundef %fill_super) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_tree_single_reconf(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %call = call i32 @vfs_get_super(%struct.fs_context* noundef %fc, i32 noundef 1, i32 (%struct.super_block*, %struct.fs_context*)* noundef %fill_super) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_tree_keyed(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* nocapture noundef readonly %fill_super, i8* noundef %key) local_unnamed_addr #0 {
entry:
  %s_fs_info = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 12
  store i8* %key, i8** %s_fs_info, align 8
  %call = call i32 @vfs_get_super(%struct.fs_context* noundef %fc, i32 noundef 2, i32 (%struct.super_block*, %struct.fs_context*)* noundef %fill_super) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_tree_bdev(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %0 = load i32, i32* %sb_flags, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 131, i32 129
  %source = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 10
  %1 = load i8*, i8** %source, align 8
  %tobool1.not = icmp eq i8* %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  %log3 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %2 = load %struct.fc_log*, %struct.fc_log** %log3, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %2, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %3 = bitcast %struct.file_system_type** %fs_type to i8**
  %4 = load i8*, i8** %3, align 8
  %call = call %struct.block_device* @blkdev_get_by_path(i8* noundef nonnull %1, i32 noundef %spec.select, i8* noundef %4) #13
  %5 = bitcast %struct.block_device* %call to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %5) #14
  br i1 %call6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  %log9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %6 = load %struct.fc_log*, %struct.fc_log** %log9, align 8
  %7 = load i8*, i8** %source, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %6, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7) #13
  %call11 = call fastcc i64 @PTR_ERR(i8* noundef %5) #14
  %conv = trunc i64 %call11 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 18
  call void @mutex_lock(%struct.mutex* noundef %bd_fsfreeze_mutex) #13
  %bd_fsfreeze_count = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 17
  %8 = load i32, i32* %bd_fsfreeze_count, align 8
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end12
  call void @mutex_unlock(%struct.mutex* noundef %bd_fsfreeze_mutex) #13
  %log17 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %9 = load %struct.fc_log*, %struct.fc_log** %log17, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %9, i8* noundef null, i8 noundef 119, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.block_device* noundef %call) #13
  call void @blkdev_put(%struct.block_device* noundef %call, i32 noundef %spec.select) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %10 = load i32, i32* %sb_flags, align 8
  %or20 = or i32 %10, 268435456
  store i32 %or20, i32* %sb_flags, align 8
  %sget_key = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 4
  %11 = bitcast i8** %sget_key to %struct.block_device**
  store %struct.block_device* %call, %struct.block_device** %11, align 8
  %call21 = call %struct.super_block* @sget_fc(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @test_bdev_super_fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @set_bdev_super_fc) #14
  call void @mutex_unlock(%struct.mutex* noundef %bd_fsfreeze_mutex) #13
  %12 = bitcast %struct.super_block* %call21 to i8*
  %call23 = call fastcc i1 @IS_ERR(i8* noundef %12) #14
  br i1 %call23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @blkdev_put(%struct.block_device* noundef %call, i32 noundef %spec.select) #13
  %call25 = call fastcc i64 @PTR_ERR(i8* noundef %12) #14
  %conv26 = trunc i64 %call25 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %call21, i64 0, i32 13
  %13 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool28.not = icmp eq %struct.dentry* %13, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  %14 = load i32, i32* %sb_flags, align 8
  %conv31 = zext i32 %14 to i64
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %call21, i64 0, i32 10
  %15 = load i64, i64* %s_flags, align 16
  %xor = xor i64 %15, %conv31
  %and32 = and i64 %xor, 1
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.then29
  %log36 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %16 = load %struct.fc_log*, %struct.fc_log** %log36, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %16, i8* noundef null, i8 noundef 119, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), %struct.block_device* noundef %call) #13
  call void @deactivate_locked_super(%struct.super_block* noundef %call21) #14
  call void @blkdev_put(%struct.block_device* noundef %call, i32 noundef %spec.select) #13
  br label %cleanup

if.end37:                                         ; preds = %if.then29
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %call21, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  call void @blkdev_put(%struct.block_device* noundef %call, i32 noundef %spec.select) #13
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %do.body

if.else:                                          ; preds = %if.end27
  %s_mode = getelementptr inbounds %struct.super_block, %struct.super_block* %call21, i64 0, i32 34
  store i32 %spec.select, i32* %s_mode, align 4
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %call21, i64 0, i32 31, i64 0
  %call39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.block_device* noundef %call) #13
  %call40 = call fastcc i32 @block_size(%struct.block_device* noundef %call) #14
  %call41 = call i32 @sb_set_blocksize(%struct.super_block* noundef %call21, i32 noundef %call40) #13
  %call42 = call i32 %fill_super(%struct.super_block* noundef %call21, %struct.fs_context* noundef %fc) #13
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.else
  call void @deactivate_locked_super(%struct.super_block* noundef %call21) #14
  br label %cleanup

if.end45:                                         ; preds = %if.else
  %s_flags46 = getelementptr inbounds %struct.super_block, %struct.super_block* %call21, i64 0, i32 10
  %17 = load i64, i64* %s_flags46, align 16
  %or47 = or i64 %17, 1073741824
  store i64 %or47, i64* %s_flags46, align 16
  %bd_super = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 7
  store %struct.super_block* %call21, %struct.super_block** %bd_super, align 8
  br label %do.body

do.body:                                          ; preds = %if.end37, %if.end45
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %18 = load %struct.dentry*, %struct.dentry** %root, align 8
  %tobool49.not = icmp eq %struct.dentry* %18, null
  br i1 %tobool49.not, label %do.end60, label %do.body54, !prof !7

do.body54:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 1303; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !16
  unreachable

do.end60:                                         ; preds = %do.body
  %19 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call62 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %19) #14
  store %struct.dentry* %19, %struct.dentry** %root, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then44, %if.then34, %if.then24, %if.then14, %if.then7, %if.then2
  %retval.0 = phi i32 [ %conv, %if.then7 ], [ -16, %if.then14 ], [ %conv26, %if.then24 ], [ -16, %if.then34 ], [ 0, %do.end60 ], [ %call42, %if.then44 ], [ -22, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(%struct.fc_log* noundef, i8* noundef, i8 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @blkdev_get_by_path(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @test_bdev_super_fc(%struct.super_block* nocapture noundef readonly %s, %struct.fs_context* nocapture noundef readonly %fc) #3 {
entry:
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 20
  %0 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %sget_key = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 4
  %1 = bitcast i8** %sget_key to %struct.block_device**
  %2 = load %struct.block_device*, %struct.block_device** %1, align 8
  %cmp = icmp eq %struct.block_device* %0, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @set_bdev_super_fc(%struct.super_block* nocapture noundef %s, %struct.fs_context* nocapture noundef readonly %fc) #0 {
entry:
  %sget_key = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 4
  %0 = load i8*, i8** %sget_key, align 8
  %call = call i32 @set_bdev_super(%struct.super_block* noundef %s, i8* noundef %0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(%struct.super_block* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 17
  %1 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @mount_bdev(%struct.file_system_type* noundef %fs_type, i32 noundef %flags, i8* noundef %dev_name, i8* noundef %data, i32 (%struct.super_block*, i8*, i32)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 131, i32 129
  %0 = bitcast %struct.file_system_type* %fs_type to i8*
  %call = call %struct.block_device* @blkdev_get_by_path(i8* noundef %dev_name, i32 noundef %spec.select, i8* noundef %0) #13
  %1 = bitcast %struct.block_device* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #14
  br i1 %call1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  %2 = bitcast %struct.block_device* %call to %struct.dentry*
  br label %cleanup

if.end4:                                          ; preds = %entry
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 18
  call void @mutex_lock(%struct.mutex* noundef %bd_fsfreeze_mutex) #13
  %bd_fsfreeze_count = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 17
  %3 = load i32, i32* %bd_fsfreeze_count, align 8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  call void @mutex_unlock(%struct.mutex* noundef %bd_fsfreeze_mutex) #13
  br label %error_bdev

if.end7:                                          ; preds = %if.end4
  %or8 = or i32 %flags, 268435456
  %call9 = call %struct.super_block* @sget(%struct.file_system_type* noundef %fs_type, i32 (%struct.super_block*, i8*)* noundef nonnull @test_bdev_super, i32 (%struct.super_block*, i8*)* noundef nonnull @set_bdev_super, i32 noundef %or8, i8* noundef %1) #14
  call void @mutex_unlock(%struct.mutex* noundef %bd_fsfreeze_mutex) #13
  %4 = bitcast %struct.super_block* %call9 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %4) #14
  br i1 %call11, label %error_s, label %if.end13

if.end13:                                         ; preds = %if.end7
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %call9, i64 0, i32 13
  %5 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool14.not = icmp eq %struct.dentry* %5, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %conv81 = zext i32 %flags to i64
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %call9, i64 0, i32 10
  %6 = load i64, i64* %s_flags, align 16
  %xor = xor i64 %6, %conv81
  %and16 = and i64 %xor, 1
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @deactivate_locked_super(%struct.super_block* noundef %call9) #14
  br label %error_bdev

if.end19:                                         ; preds = %if.then15
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %call9, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  call void @blkdev_put(%struct.block_device* noundef %call, i32 noundef %spec.select) #13
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %if.end32

if.else:                                          ; preds = %if.end13
  %s_mode = getelementptr inbounds %struct.super_block, %struct.super_block* %call9, i64 0, i32 34
  store i32 %spec.select, i32* %s_mode, align 4
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %call9, i64 0, i32 31, i64 0
  %call21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.block_device* noundef %call) #13
  %call22 = call fastcc i32 @block_size(%struct.block_device* noundef %call) #14
  %call23 = call i32 @sb_set_blocksize(%struct.super_block* noundef %call9, i32 noundef %call22) #13
  %and24 = lshr i32 %flags, 15
  %and24.lobit = and i32 %and24, 1
  %call26 = call i32 %fill_super(%struct.super_block* noundef %call9, i8* noundef %data, i32 noundef %and24.lobit) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @deactivate_locked_super(%struct.super_block* noundef %call9) #14
  br label %error37

if.end29:                                         ; preds = %if.else
  %s_flags30 = getelementptr inbounds %struct.super_block, %struct.super_block* %call9, i64 0, i32 10
  %7 = load i64, i64* %s_flags30, align 16
  %or31 = or i64 %7, 1073741824
  store i64 %or31, i64* %s_flags30, align 16
  %bd_super = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 7
  store %struct.super_block* %call9, %struct.super_block** %bd_super, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end19
  %8 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call34 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %8) #14
  br label %cleanup

error_s:                                          ; preds = %if.end7
  %call35 = call fastcc i64 @PTR_ERR(i8* noundef %4) #14
  %conv36 = trunc i64 %call35 to i32
  br label %error_bdev

error_bdev:                                       ; preds = %error_s, %if.then18, %if.then5
  %error.0 = phi i32 [ -16, %if.then5 ], [ %conv36, %error_s ], [ -16, %if.then18 ]
  call void @blkdev_put(%struct.block_device* noundef %call, i32 noundef %spec.select) #13
  br label %error37

error37:                                          ; preds = %error_bdev, %if.then28
  %error.1 = phi i32 [ %error.0, %error_bdev ], [ %call26, %if.then28 ]
  %conv38 = sext i32 %error.1 to i64
  %call39 = call fastcc i8* @ERR_PTR(i64 noundef %conv38) #14
  %9 = bitcast i8* %call39 to %struct.dentry*
  br label %cleanup

cleanup:                                          ; preds = %error37, %if.end32, %if.then2
  %retval.0 = phi %struct.dentry* [ %2, %if.then2 ], [ %9, %error37 ], [ %8, %if.end32 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @test_bdev_super(%struct.super_block* nocapture noundef readonly %s, i8* noundef readnone %data) #3 {
entry:
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 20
  %0 = bitcast %struct.block_device** %s_bdev to i8**
  %1 = load i8*, i8** %0, align 64
  %cmp = icmp eq i8* %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @set_bdev_super(%struct.super_block* nocapture noundef %s, i8* noundef %data) #0 {
entry:
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 20
  %0 = bitcast %struct.block_device** %s_bdev to i8**
  store i8* %data, i8** %0, align 64
  %bd_dev = getelementptr inbounds i8, i8* %data, i64 28
  %1 = bitcast i8* %bd_dev to i32*
  %2 = load i32, i32* %1, align 4
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 1
  store i32 %2, i32* %s_dev, align 16
  %bd_disk = getelementptr inbounds i8, i8* %data, i64 568
  %3 = bitcast i8* %bd_disk to %struct.gendisk**
  %4 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i64 0, i32 15
  %5 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %call = call fastcc %struct.backing_dev_info* @bdi_get(%struct.backing_dev_info* noundef %5) #14
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 21
  store %struct.backing_dev_info* %5, %struct.backing_dev_info** %s_bdi, align 8
  %6 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %bd_disk4 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i64 0, i32 16
  %7 = load %struct.gendisk*, %struct.gendisk** %bd_disk4, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i64 0, i32 9
  %8 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i64 0, i32 11
  %9 = load volatile i64, i64* %queue_flags, align 8
  %10 = and i64 %9, 32768
  %tobool.not = icmp eq i64 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 11
  %11 = load i64, i64* %s_iflags, align 8
  %or = or i64 %11, 8
  store i64 %or, i64* %s_iflags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kill_block_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 20
  %0 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %s_mode = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 34
  %1 = load i32, i32* %s_mode, align 4
  %bd_super = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 7
  store %struct.super_block* null, %struct.super_block** %bd_super, align 8
  call void @generic_shutdown_super(%struct.super_block* noundef %sb) #14
  %call = call i32 @sync_blockdev(%struct.block_device* noundef %0) #13
  %and = and i32 %1, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 1397; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %or = or i32 %1, 128
  call void @blkdev_put(%struct.block_device* noundef %0, i32 noundef %or) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @mount_nodev(%struct.file_system_type* noundef %fs_type, i32 noundef %flags, i8* noundef %data, i32 (%struct.super_block*, i8*, i32)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %call = call %struct.super_block* @sget(%struct.file_system_type* noundef %fs_type, i32 (%struct.super_block*, i8*)* noundef null, i32 (%struct.super_block*, i8*)* noundef nonnull @set_anon_super, i32 noundef %flags, i8* noundef null) #14
  %0 = bitcast %struct.super_block* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #14
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.super_block* %call to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %flags, 15
  %and.lobit = and i32 %and, 1
  %call3 = call i32 %fill_super(%struct.super_block* noundef %call, i8* noundef %data, i32 noundef %and.lobit) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @deactivate_locked_super(%struct.super_block* noundef %call) #14
  %conv = sext i32 %call3 to i64
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #14
  %2 = bitcast i8* %call6 to %struct.dentry*
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %call, i64 0, i32 10
  %3 = load i64, i64* %s_flags, align 16
  %or = or i64 %3, 1073741824
  store i64 %or, i64* %s_flags, align 16
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %call, i64 0, i32 13
  %4 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call8 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi %struct.dentry* [ %1, %if.then ], [ %2, %if.then5 ], [ %4, %if.end7 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @mount_single(%struct.file_system_type* noundef %fs_type, i32 noundef %flags, i8* noundef %data, i32 (%struct.super_block*, i8*, i32)* nocapture noundef readonly %fill_super) local_unnamed_addr #0 {
entry:
  %call = call %struct.super_block* @sget(%struct.file_system_type* noundef %fs_type, i32 (%struct.super_block*, i8*)* noundef nonnull @compare_single, i32 (%struct.super_block*, i8*)* noundef nonnull @set_anon_super, i32 noundef %flags, i8* noundef null) #14
  %0 = bitcast %struct.super_block* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #14
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.super_block* %call to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %call, i64 0, i32 13
  %2 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool.not = icmp eq %struct.dentry* %2, null
  br i1 %tobool.not, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %and = lshr i32 %flags, 15
  %and.lobit = and i32 %and, 1
  %call5 = call i32 %fill_super(%struct.super_block* noundef %call, i8* noundef %data, i32 noundef %and.lobit) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10.thread, label %if.then14

if.end10.thread:                                  ; preds = %if.then3
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %call, i64 0, i32 10
  %3 = load i64, i64* %s_flags, align 16
  %or = or i64 %3, 1073741824
  store i64 %or, i64* %s_flags, align 16
  br label %if.end17

if.end10:                                         ; preds = %if.end
  %call9 = call fastcc i32 @reconfigure_single(%struct.super_block* noundef %call, i32 noundef %flags, i8* noundef %data) #14
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end17, label %if.then14, !prof !7

if.then14:                                        ; preds = %if.then3, %if.end10
  %error.040 = phi i32 [ %call9, %if.end10 ], [ %call5, %if.then3 ]
  call void @deactivate_locked_super(%struct.super_block* noundef %call) #14
  %conv15 = sext i32 %error.040 to i64
  %call16 = call fastcc i8* @ERR_PTR(i64 noundef %conv15) #14
  %4 = bitcast i8* %call16 to %struct.dentry*
  br label %cleanup

if.end17:                                         ; preds = %if.end10.thread, %if.end10
  %5 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call19 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then
  %retval.0 = phi %struct.dentry* [ %1, %if.then ], [ %4, %if.then14 ], [ %5, %if.end17 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @compare_single(%struct.super_block* nocapture noundef readnone %s, i8* nocapture noundef readnone %p) #7 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @reconfigure_single(%struct.super_block* nocapture noundef readonly %s, i32 noundef %flags, i8* noundef %data) unnamed_addr #0 {
entry:
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call = call %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef %0, i32 noundef %flags, i32 noundef 41943121) #13
  %1 = bitcast %struct.fs_context* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #14
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %1) #14
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @parse_monolithic_mount_data(%struct.fs_context* noundef %call, i8* noundef %data) #13
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %out, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @reconfigure_super(%struct.fs_context* noundef %call) #14
  br label %out

out:                                              ; preds = %if.end, %if.end6
  %ret.0 = phi i32 [ %call3, %if.end ], [ %call7, %if.end6 ]
  call void @put_fs_context(%struct.fs_context* noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_get_tree(%struct.fs_context* noundef %fc) local_unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %tobool.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  %1 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %get_tree = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %1, i64 0, i32 4
  %get_tree1 = bitcast {}** %get_tree to i32 (%struct.fs_context*)**
  %2 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %get_tree1, align 8
  %call = call i32 %2(%struct.fs_context* noundef %fc) #13
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %3 = load %struct.dentry*, %struct.dentry** %root, align 8
  %tobool5.not = icmp eq %struct.dentry* %3, null
  br i1 %tobool5.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end3
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %4 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %4, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* noundef %5) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 1508; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !18
  unreachable

if.end14:                                         ; preds = %if.end3
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 9
  %6 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 21
  %7 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi, align 8
  %tobool16.not = icmp eq %struct.backing_dev_info* %7, null
  br i1 %tobool16.not, label %if.then25, label %if.end26, !prof !10

if.then25:                                        ; preds = %if.end14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 1512; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !19
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end14
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !20
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 10
  %8 = load i64, i64* %s_flags, align 16
  %or = or i64 %8, 536870912
  store i64 %or, i64* %s_flags, align 16
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 4
  %9 = load i64, i64* %s_maxbytes, align 32
  %cmp47 = icmp slt i64 %9, 0
  br i1 %cmp47, label %do.end65, label %cleanup, !prof !10

do.end65:                                         ; preds = %if.end26
  %fs_type66 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %10 = load %struct.file_system_type*, %struct.file_system_type** %fs_type66, align 8
  %name67 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %10, i64 0, i32 0
  %11 = load i8*, i8** %name67, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11, i64 noundef %9) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 1536; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end65, %if.end, %entry
  %retval.0 = phi i32 [ -16, %entry ], [ %call, %if.end ], [ 0, %do.end65 ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @super_setup_bdi_name(%struct.super_block* nocapture noundef %sb, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !22
  %call = call %struct.backing_dev_info* @bdi_alloc(i32 noundef -1) #13
  %tobool.not = icmp eq %struct.backing_dev_info* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call2 = call i32 @bdi_register_va(%struct.backing_dev_info* noundef nonnull %call, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.va_end(i8* nonnull %0)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @bdi_put(%struct.backing_dev_info* noundef nonnull %call) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 21
  %2 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi, align 8
  %cmp.not = icmp eq %struct.backing_dev_info* %2, @noop_backing_dev_info
  br i1 %cmp.not, label %if.end15, label %if.then14, !prof !7

if.then14:                                        ; preds = %if.end6
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/super.c\22; .popsection; .long 14472b - 14470b; .short 1563; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !23
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end6
  store %struct.backing_dev_info* %call, %struct.backing_dev_info** %s_bdi, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15, %if.then5
  %retval.0 = phi i32 [ %call2, %if.then5 ], [ 0, %if.end15 ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.backing_dev_info* @bdi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_register_va(%struct.backing_dev_info* noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @super_setup_bdi(%struct.super_block* nocapture noundef %sb) local_unnamed_addr #0 {
entry:
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 5
  %0 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return() #13
  %call1 = call i32 (%struct.super_block*, i8*, ...) @super_setup_bdi_name(%struct.super_block* noundef %sb, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef %1, i64 noundef %call.i.i.i.i) #14
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freeze_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %s_active) #13
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  %frozen = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 0
  %0 = load i32, i32* %frozen, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @deactivate_locked_super(%struct.super_block* noundef %sb) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %1 = load i64, i64* %s_flags, align 16
  %and = and i64 %1, 536870912
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #14
  br i1 %call, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end3
  store i32 4, i32* %frozen, align 8
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  store i32 1, i32* %frozen, align 8
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  call fastcc void @sb_wait_write(%struct.super_block* noundef %sb, i32 noundef 1) #14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  store i32 2, i32* %frozen, align 8
  call fastcc void @sb_wait_write(%struct.super_block* noundef %sb, i32 noundef 2) #14
  %call15 = call i32 @sync_filesystem(%struct.super_block* noundef %sb) #13
  store i32 3, i32* %frozen, align 8
  call fastcc void @sb_wait_write(%struct.super_block* noundef %sb, i32 noundef 3) #14
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %2 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %freeze_fs = getelementptr inbounds %struct.super_operations, %struct.super_operations* %2, i64 0, i32 10
  %3 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %freeze_fs, align 8
  %tobool18.not = icmp eq i32 (%struct.super_block*)* %3, null
  br i1 %tobool18.not, label %if.end30, label %if.then19

if.then19:                                        ; preds = %if.end8
  %call22 = call i32 %3(%struct.super_block* noundef %sb) #13
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end

do.end:                                           ; preds = %if.then19
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0)) #16
  store i32 0, i32* %frozen, align 8
  call fastcc void @sb_freeze_unlock(%struct.super_block* noundef %sb) #14
  %wait_unfrozen = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %wait_unfrozen, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  call void @deactivate_locked_super(%struct.super_block* noundef %sb) #14
  br label %cleanup

if.end30:                                         ; preds = %if.then19, %if.end8
  store i32 4, i32* %frozen, align 8
  call fastcc void @lockdep_sb_freeze_release(%struct.super_block* noundef %sb) #14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.then4, %if.then1, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then4 ], [ %call22, %do.end ], [ 0, %if.end30 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_wait_write(%struct.super_block* noundef %sb, i32 noundef %level) unnamed_addr #0 {
entry:
  %0 = zext i32 %level to i64
  %add.ptr = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 %0
  %add.ptr1 = getelementptr %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %add.ptr, i64 -1
  call void @percpu_down_write(%struct.percpu_rw_semaphore* noundef %add.ptr1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_freeze_unlock(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 2
  call void @percpu_up_write(%struct.percpu_rw_semaphore* noundef %add.ptr) #13
  %add.ptr.1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 1
  call void @percpu_up_write(%struct.percpu_rw_semaphore* noundef %add.ptr.1) #13
  %add.ptr.2 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call void @percpu_up_write(%struct.percpu_rw_semaphore* noundef %add.ptr.2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc void @lockdep_sb_freeze_release(%struct.super_block* nocapture noundef %sb) unnamed_addr #11 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @thaw_super(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  %call = call fastcc i32 @thaw_super_locked(%struct.super_block* noundef %sb) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @thaw_super_locked(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %frozen = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 0
  %0 = load i32, i32* %frozen, align 8
  %cmp.not = icmp eq i32 %0, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #14
  br i1 %call, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %frozen, align 8
  br label %out

if.end4:                                          ; preds = %if.end
  call fastcc void @lockdep_sb_freeze_acquire(%struct.super_block* noundef %sb) #14
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %unfreeze_fs = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 12
  %2 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %unfreeze_fs, align 8
  %tobool.not = icmp eq i32 (%struct.super_block*)* %2, null
  br i1 %tobool.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end4
  %call8 = call i32 %2(%struct.super_block* noundef %sb) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.then5
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0)) #16
  call fastcc void @lockdep_sb_freeze_release(%struct.super_block* noundef %sb) #14
  %s_umount12 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount12) #13
  br label %cleanup

if.end14:                                         ; preds = %if.then5, %if.end4
  store i32 0, i32* %frozen, align 8
  call fastcc void @sb_freeze_unlock(%struct.super_block* noundef %sb) #14
  br label %out

out:                                              ; preds = %if.end14, %if.then1
  %wait_unfrozen = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %wait_unfrozen, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  call void @deactivate_locked_super(%struct.super_block* noundef %sb) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %out ], [ %call8, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  call fastcc void @do_raw_spin_lock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sb_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sb_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sb_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #15, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @destroy_super_rcu(%struct.callback_head* noundef %head) #0 {
entry:
  %destroy_work = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 1
  %0 = bitcast %struct.callback_head* %destroy_work to %struct.work_struct*
  %1 = bitcast %struct.callback_head* %destroy_work to i64*
  store i64 68719476704, i64* %1, align 64
  %entry4 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 1, i32 1
  %2 = bitcast void (%struct.callback_head*)** %entry4 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #14
  %func = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 2, i32 1
  %3 = bitcast void (%struct.callback_head*)** %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @destroy_super_work, void (%struct.work_struct*)** %3, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %0) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @destroy_super_work(%struct.work_struct* noundef %work) #0 {
entry:
  %s_writers = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -19, i32 1
  %rw_sem = getelementptr inbounds %struct.list_head, %struct.list_head* %s_writers, i64 2
  %arrayidx = bitcast %struct.list_head* %rw_sem to %struct.percpu_rw_semaphore*
  call void @percpu_free_rwsem(%struct.percpu_rw_semaphore* noundef %arrayidx) #13
  %arrayidx.1 = getelementptr %struct.list_head, %struct.list_head* %s_writers, i64 8
  %0 = bitcast %struct.list_head* %arrayidx.1 to %struct.percpu_rw_semaphore*
  call void @percpu_free_rwsem(%struct.percpu_rw_semaphore* noundef %0) #13
  %arrayidx.2 = getelementptr %struct.list_head, %struct.list_head* %s_writers, i64 14
  %1 = bitcast %struct.list_head* %arrayidx.2 to %struct.percpu_rw_semaphore*
  call void @percpu_free_rwsem(%struct.percpu_rw_semaphore* noundef %1) #13
  %add.ptr7 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -36
  %add.ptr = bitcast %struct.work_struct* %add.ptr7 to i8*
  call void @kfree(i8* noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_free_rwsem(%struct.percpu_rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @sb_lock to i8*), i8 0) #15, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !28
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #15, !srcloc !29
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #6 {
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
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #12 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 11), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 1052096) #13
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(%struct.percpu_rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @super_cache_scan(%struct.shrinker* noundef %shrink, %struct.shrink_control* noundef %sc) #0 {
entry:
  %add.ptr = getelementptr %struct.shrinker, %struct.shrinker* %shrink, i64 -19, i32 6
  %0 = bitcast %struct.atomic64_t** %add.ptr to %struct.super_block*
  %gfp_mask = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 0
  %1 = load i32, i32* %gfp_mask, align 8
  %and = and i32 %1, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i1 @trylock_super(%struct.super_block* noundef %0) #14
  br i1 %call, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %s_op = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 6
  %2 = bitcast %struct.atomic64_t** %s_op to %struct.super_operations**
  %3 = load %struct.super_operations*, %struct.super_operations** %2, align 16
  %nr_cached_objects = getelementptr inbounds %struct.super_operations, %struct.super_operations* %3, i64 0, i32 20
  %4 = load i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)** %nr_cached_objects, align 8
  %tobool3.not = icmp eq i64 (%struct.super_block*, %struct.shrink_control*)* %4, null
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call7 = call i64 %4(%struct.super_block* noundef %0, %struct.shrink_control* noundef %sc) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end2
  %fs_objects.0 = phi i64 [ %call7, %if.then4 ], [ 0, %if.end2 ]
  %s_inode_lru = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 141
  %5 = bitcast %struct.atomic64_t** %s_inode_lru to %struct.list_lru*
  %call9 = call fastcc i64 @list_lru_shrink_count(%struct.list_lru* noundef %5, %struct.shrink_control* noundef %sc) #14
  %s_dentry_lru = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 140
  %6 = bitcast %struct.atomic64_t** %s_dentry_lru to %struct.list_lru*
  %call10 = call fastcc i64 @list_lru_shrink_count(%struct.list_lru* noundef %6, %struct.shrink_control* noundef %sc) #14
  %add = add i64 %fs_objects.0, 1
  %add11 = add i64 %add, %call9
  %add12 = add i64 %add11, %call10
  %tobool13.not = icmp eq i64 %add12, 0
  %spec.store.select = select i1 %tobool13.not, i64 1, i64 %add12
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 2
  %7 = load i64, i64* %nr_to_scan, align 8
  %.frozen = freeze i64 %7
  %spec.store.select.frozen = freeze i64 %spec.store.select
  %div = udiv i64 %.frozen, %spec.store.select.frozen
  %8 = mul i64 %div, %spec.store.select.frozen
  %rem17.decomposed = sub i64 %.frozen, %8
  %mul = mul i64 %div, %call10
  %mul19 = mul i64 %rem17.decomposed, %call10
  %div20 = udiv i64 %mul19, %spec.store.select
  %mul29 = mul i64 %div, %call9
  %mul30 = mul i64 %rem17.decomposed, %call9
  %div31 = udiv i64 %mul30, %spec.store.select
  %mul40 = mul i64 %div, %fs_objects.0
  %mul41 = mul i64 %rem17.decomposed, %fs_objects.0
  %div42 = udiv i64 %mul41, %spec.store.select
  %add43 = add i64 %div42, %mul40
  %add21 = add i64 %mul, 1
  %add44 = add i64 %add21, %div20
  store i64 %add44, i64* %nr_to_scan, align 8
  %call46 = call i64 @prune_dcache_sb(%struct.super_block* noundef %0, %struct.shrink_control* noundef %sc) #13
  %add32 = add i64 %mul29, 1
  %add47 = add i64 %add32, %div31
  store i64 %add47, i64* %nr_to_scan, align 8
  %call49 = call i64 @prune_icache_sb(%struct.super_block* noundef %0, %struct.shrink_control* noundef %sc) #13
  %add50 = add i64 %call49, %call46
  %tobool51.not = icmp eq i64 %add43, 0
  br i1 %tobool51.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %if.end8
  %add53 = add i64 %add43, 1
  store i64 %add53, i64* %nr_to_scan, align 8
  %9 = load %struct.super_operations*, %struct.super_operations** %2, align 16
  %free_cached_objects = getelementptr inbounds %struct.super_operations, %struct.super_operations* %9, i64 0, i32 21
  %10 = load i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)** %free_cached_objects, align 8
  %call56 = call i64 %10(%struct.super_block* noundef %0, %struct.shrink_control* noundef %sc) #13
  %add57 = add i64 %call56, %add50
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.end8
  %freed.0 = phi i64 [ %add57, %if.then52 ], [ %add50, %if.end8 ]
  %s_umount = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 14
  %11 = bitcast %struct.atomic64_t** %s_umount to %struct.rw_semaphore*
  call void @up_read(%struct.rw_semaphore* noundef %11) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end58
  %retval.0 = phi i64 [ %freed.0, %if.end58 ], [ -1, %entry ], [ -1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @super_cache_count(%struct.shrinker* noundef %shrink, %struct.shrink_control* noundef %sc) #0 {
entry:
  %add.ptr = getelementptr %struct.shrinker, %struct.shrinker* %shrink, i64 -19, i32 6
  %0 = bitcast %struct.atomic64_t** %add.ptr to %struct.super_block*
  %s_flags = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 10
  %1 = bitcast %struct.atomic64_t** %s_flags to i64*
  %2 = load i64, i64* %1, align 16
  %and = and i64 %2, 536870912
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #15, !srcloc !30
  %s_op = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 6
  %3 = bitcast %struct.atomic64_t** %s_op to %struct.super_operations**
  %4 = load %struct.super_operations*, %struct.super_operations** %3, align 16
  %tobool1.not = icmp eq %struct.super_operations* %4, null
  br i1 %tobool1.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %nr_cached_objects = getelementptr inbounds %struct.super_operations, %struct.super_operations* %4, i64 0, i32 20
  %5 = load i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)** %nr_cached_objects, align 8
  %tobool3.not = icmp eq i64 (%struct.super_block*, %struct.shrink_control*)* %5, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %call = call i64 %5(%struct.super_block* noundef %0, %struct.shrink_control* noundef %sc) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %total_objects.0 = phi i64 [ %call, %if.then4 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  %s_dentry_lru = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 140
  %6 = bitcast %struct.atomic64_t** %s_dentry_lru to %struct.list_lru*
  %call8 = call fastcc i64 @list_lru_shrink_count(%struct.list_lru* noundef %6, %struct.shrink_control* noundef %sc) #14
  %add = add i64 %call8, %total_objects.0
  %s_inode_lru = getelementptr inbounds %struct.atomic64_t*, %struct.atomic64_t** %add.ptr, i64 141
  %7 = bitcast %struct.atomic64_t** %s_inode_lru to %struct.list_lru*
  %call9 = call fastcc i64 @list_lru_shrink_count(%struct.list_lru* noundef %7, %struct.shrink_control* noundef %sc) #14
  %add10 = add i64 %add, %call9
  %tobool11.not = icmp eq i64 %add10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end7
  %call14 = call fastcc i64 @vfs_pressure_ratio(i64 noundef %add10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry, %if.end13
  %retval.0 = phi i64 [ %call14, %if.end13 ], [ 0, %entry ], [ -2, %if.end7 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prealloc_shrinker(%struct.shrinker* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(%struct.list_lru* noundef, i1 noundef, %struct.lock_class_key* noundef, %struct.shrinker* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @list_lru_shrink_count(%struct.list_lru* noundef %lru, %struct.shrink_control* nocapture noundef readonly %sc) unnamed_addr #0 {
entry:
  %nid = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 1
  %0 = load i32, i32* %nid, align 4
  %memcg = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 4
  %1 = load %struct.mem_cgroup*, %struct.mem_cgroup** %memcg, align 8
  %call = call i64 @list_lru_count_one(%struct.list_lru* noundef %lru, i32 noundef %0, %struct.mem_cgroup* noundef %1) #13
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prune_dcache_sb(%struct.super_block* noundef, %struct.shrink_control* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prune_icache_sb(%struct.super_block* noundef, %struct.shrink_control* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @list_lru_count_one(%struct.list_lru* noundef, i32 noundef, %struct.mem_cgroup* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vfs_pressure_ratio(i64 noundef %val) unnamed_addr #3 {
entry:
  %div = udiv i64 %val, 100
  %0 = mul i64 %div, 100
  %rem1.decomposed = sub i64 %val, %0
  %1 = load i32, i32* @sysctl_vfs_cache_pressure, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %div, %conv
  %mul3 = mul nsw i64 %rem1.decomposed, %conv
  %div4 = udiv i64 %mul3, 100
  %add = add i64 %div4, %mul
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_prealloced_shrinker(%struct.shrinker* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #6 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @super_blocks, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @super_blocks, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__iterate_supers(void (%struct.super_block*)* nocapture noundef readonly %f) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #13
  %sb.026 = load %struct.super_block*, %struct.super_block** bitcast (%struct.list_head* @super_blocks to %struct.super_block**), align 8
  %s_list27 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.026, i64 0, i32 0
  %cmp.not28 = icmp eq %struct.list_head* %s_list27, @super_blocks
  br i1 %cmp.not28, label %if.end13, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %sb.030 = phi %struct.super_block* [ %sb.0, %for.inc ], [ %sb.026, %entry ]
  %p.029 = phi %struct.super_block* [ %p.1, %for.inc ], [ null, %entry ]
  %s_instances = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.030, i64 0, i32 23
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %s_instances) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %s_count = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.030, i64 0, i32 15
  %0 = load i32, i32* %s_count, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %s_count, align 8
  call fastcc void @__raw_spin_unlock() #13
  call void %f(%struct.super_block* noundef %sb.030) #13, !callees !31
  call fastcc void @__raw_spin_lock() #13
  %tobool1.not = icmp eq %struct.super_block* %p.029, null
  br i1 %tobool1.not, label %for.inc, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @__put_super(%struct.super_block* noundef nonnull %p.029) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then2, %for.body
  %p.1 = phi %struct.super_block* [ %p.029, %for.body ], [ %sb.030, %if.then2 ], [ %sb.030, %if.end ]
  %1 = bitcast %struct.super_block* %sb.030 to %struct.super_block**
  %sb.0 = load %struct.super_block*, %struct.super_block** %1, align 8
  %s_list = getelementptr inbounds %struct.super_block, %struct.super_block* %sb.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %s_list, @super_blocks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool11.not = icmp eq %struct.super_block* %p.1, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.end
  call fastcc void @__put_super(%struct.super_block* noundef nonnull %p.1) #14
  br label %if.end13

if.end13:                                         ; preds = %entry, %if.then12, %for.end
  call fastcc void @__raw_spin_unlock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @do_emergency_remount_callback(%struct.super_block* noundef %sb) #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 20
  %1 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %tobool1.not = icmp eq %struct.block_device* %1, null
  br i1 %tobool1.not, label %if.end13, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %2 = load i64, i64* %s_flags, align 16
  %and = and i64 %2, 536870912
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end13, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #14
  br i1 %call, label %if.end13, label %if.then

if.then:                                          ; preds = %land.lhs.true4
  %call6 = call %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef nonnull %0, i32 noundef 134217729, i32 noundef 1) #13
  %3 = bitcast %struct.fs_context* %call6 to i8*
  %call7 = call fastcc i1 @IS_ERR(i8* noundef %3) #14
  br i1 %call7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.then
  %call9 = call i32 @parse_monolithic_mount_data(%struct.fs_context* noundef %call6, i8* noundef null) #13
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 @reconfigure_super(%struct.fs_context* noundef %call6) #14
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then8
  call void @put_fs_context(%struct.fs_context* noundef %call6) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then, %if.end, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_monolithic_mount_data(%struct.fs_context* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(%struct.fs_context* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @do_thaw_all_callback(%struct.super_block* noundef %sb) #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %1 = load i64, i64* %s_flags, align 16
  %and = and i64 %1, 536870912
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @emergency_thaw_bdev(%struct.super_block* noundef %sb) #13
  %call = call fastcc i32 @thaw_super_locked(%struct.super_block* noundef %sb) #14
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_thaw_bdev(%struct.super_block* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.backing_dev_info* @bdi_get(%struct.backing_dev_info* noundef returned %bdi) unnamed_addr #0 {
entry:
  %refcnt = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 5
  call fastcc void @kref_get(%struct.kref* noundef %refcnt) #14
  ret %struct.backing_dev_info* %bdi
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #13
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !10

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !7

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #13
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !32
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return() unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @super_setup_bdi.bdi_seq, i64 0, i32 0), i64 1, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @super_setup_bdi.bdi_seq, i64 0, i32 0)) #15, !srcloc !33
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(%struct.percpu_rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(%struct.percpu_rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc void @lockdep_sb_freeze_acquire(%struct.super_block* nocapture noundef %sb) unnamed_addr #11 {
entry:
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree nosync nounwind willreturn }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2155224029}
!9 = !{i64 2155225584}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155227145}
!12 = !{i64 2155268506}
!13 = !{i64 2155270168}
!14 = !{i64 2155272506}
!15 = !{i64 2155277982}
!16 = !{i64 2155280817}
!17 = !{i64 2155282781}
!18 = !{i64 2155285042}
!19 = !{i64 2155286608}
!20 = !{i64 2155286946}
!21 = !{i64 2155288714}
!22 = !{!"auto-init"}
!23 = !{i64 2155294528}
!24 = !{i64 2149498921}
!25 = !{i64 2148027033, i64 2148027066, i64 2148027119, i64 2148027178, i64 2148027212, i64 2148027267, i64 2148027296, i64 2148027316}
!26 = !{i64 2149506202}
!27 = !{i64 2149298432}
!28 = !{i64 2147937683, i64 2147938331, i64 2147938361, i64 2147938393, i64 2147938427, i64 2147938463, i64 2147938488}
!29 = !{i64 2148040180, i64 2148040213, i64 2148040265, i64 2148040324, i64 2148040358, i64 2148040414, i64 2148040443, i64 2148040470}
!30 = !{i64 2155211451}
!31 = !{void (%struct.super_block*)* @do_emergency_remount_callback, void (%struct.super_block*)* @do_thaw_all_callback}
!32 = !{i64 2147933074, i64 2147933738, i64 2147933768, i64 2147933800, i64 2147933834, i64 2147933869, i64 2147933894}
!33 = !{i64 2147968644, i64 2147973353, i64 2147973383, i64 2147973414, i64 2147973446, i64 2147973481, i64 2147973506}
!34 = !{i64 2147927110, i64 2147927626, i64 2147927656, i64 2147927683, i64 2147927717, i64 2147927747}
