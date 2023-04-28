; ModuleID = 'mm/mmap.c'
source_filename = "mm/mmap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_mmap__485_3711_init_user_reserve4:\09\09\09"
module asm ".long\09init_user_reserve - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_mmap__489_3732_init_admin_reserve4:\09\09\09"
module asm ".long\09init_admin_reserve - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_mmap__491_3802_init_reserve_notifier4:\09\09\09"
module asm ".long\09init_reserve_notifier - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.pgprot_t = type { i64 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.lock_class_key = type {}
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_dir }
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
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.11, i64, i32 }
%union.anon.11 = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.14, i32 }
%union.anon.14 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%struct.page = type { i64, %union.anon.15, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.39, %union.anon.40, %union.anon.41, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.46, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.46 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.47 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.43, %union.anon.44, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.48 }
%union.anon.48 = type { i64 }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.82, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.anon.82 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { {}*, {}*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.29, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.30, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.29 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.30 = type { %struct.pte_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.reclaim_state = type { i64 }
%struct.kernel_siginfo = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.59 }
%struct.anon.59 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.67, i32, [12 x i8] }
%union.anon.67 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.68 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.69, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.69 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.uid_gid_map = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [48 x i8] }
%struct.anon.4 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.5, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { i64 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.77, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.71 = type { %struct.callback_head }
%union.anon.72 = type { %struct.file_operations* }
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
%union.anon.77 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, {}*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.75 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.73, %struct.qspinlock }
%union.anon.73 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.75 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.12 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.12 = type { %struct.callback_head }
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
%struct.pt_regs = type { %union.anon.83, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.83 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.anon_vma_chain = type { %struct.vm_area_struct*, %struct.anon_vma*, %struct.list_head, %struct.rb_node, i64 }
%struct.mempolicy = type {}
%struct.mmu_gather = type { %struct.mm_struct*, %struct.mmu_table_batch*, i64, i64, i16, i32, %struct.mmu_gather_batch*, %struct.mmu_gather_batch, [8 x %struct.page*] }
%struct.mmu_table_batch = type { %struct.callback_head, i32, [0 x i8*] }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch*, i32, i32, [0 x %struct.page*] }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i64, i64, i64 }
%struct.vm_special_mapping = type { i8*, %struct.page**, i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*)* }

@mmap_rnd_bits_min = dso_local local_unnamed_addr constant i32 18, align 4
@mmap_rnd_bits_max = dso_local local_unnamed_addr constant i32 24, align 4
@mmap_rnd_bits = dso_local local_unnamed_addr global i32 18, section ".data..read_mostly", align 4
@__param_str_ignore_rlimit_data = internal constant [19 x i8] c"ignore_rlimit_data\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@ignore_rlimit_data = internal global i8 0, align 4
@__param_ignore_rlimit_data = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_ignore_rlimit_data, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon { i8* @ignore_rlimit_data } }, section "__param", align 8
@protection_map = dso_local local_unnamed_addr global [16 x %struct.pgprot_t] [%struct.pgprot_t { i64 315251973915938690 }, %struct.pgprot_t { i64 27021597764227011 }, %struct.pgprot_t { i64 27021597764227011 }, %struct.pgprot_t { i64 27021597764227011 }, %struct.pgprot_t { i64 9007199254744963 }, %struct.pgprot_t { i64 9007199254745027 }, %struct.pgprot_t { i64 9007199254745027 }, %struct.pgprot_t { i64 9007199254745027 }, %struct.pgprot_t { i64 315251973915938690 }, %struct.pgprot_t { i64 27021597764227011 }, %struct.pgprot_t { i64 29273397577912259 }, %struct.pgprot_t { i64 29273397577912259 }, %struct.pgprot_t { i64 9007199254744963 }, %struct.pgprot_t { i64 9007199254745027 }, %struct.pgprot_t { i64 11258999068430275 }, %struct.pgprot_t { i64 11258999068430275 }], section ".data..ro_after_init", align 8
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@sysctl_overcommit_memory = external dso_local local_unnamed_addr global i32, align 4
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@mmap_min_addr = external dso_local local_unnamed_addr global i64, align 8
@stack_guard_gap = dso_local local_unnamed_addr global i64 1048576, align 8
@__setup_str_cmdline_parse_stack_guard_gap = internal constant [17 x i8] c"stack_guard_gap=\00", section ".init.rodata", align 1
@__setup_cmdline_parse_stack_guard_gap = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_cmdline_parse_stack_guard_gap, i32 0, i32 0), i32 (i8*)* @cmdline_parse_stack_guard_gap, i32 0 }, section ".init.setup", align 8
@may_expand_vm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"\014mmap: %s (%d): VmData %lu exceed data ulimit %lu. Update limits%s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [39 x i8] c" or use boot option ignore_rlimit_data\00", align 1
@mm_all_locks_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @mm_all_locks_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @mm_all_locks_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@mmap_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@__UNIQUE_ID___addressable_init_user_reserve486 = internal global i8* bitcast (i32 ()* @init_user_reserve to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_init_admin_reserve490 = internal global i8* bitcast (i32 ()* @init_admin_reserve to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_init_reserve_notifier492 = internal global i8* bitcast (i32 ()* @init_reserve_notifier to i8*), section ".discard.addressable", align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@blockdev_superblock = external dso_local local_unnamed_addr global %struct.super_block*, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@__do_sys_remap_file_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"\014mmap: %s (%d) uses deprecated remap_file_pages() syscall. See Documentation/vm/remap_file_pages.rst.\0A\00", align 1
@special_mapping_vmops = internal constant { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* } { void (%struct.vm_area_struct*)* null, void (%struct.vm_area_struct*)* @special_mapping_close, i32 (%struct.vm_area_struct*, i64)* @special_mapping_split, i32 (%struct.vm_area_struct*)* @special_mapping_mremap, i32 (%struct.vm_area_struct*, i64, i64, i64)* null, i32 (%struct.vm_fault*)* @special_mapping_fault, i32 (%struct.vm_fault*, i32)* null, i32 (%struct.vm_fault*, i64, i64)* null, i64 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* null, i8* (%struct.vm_area_struct*)* @special_mapping_name, %struct.page* (%struct.vm_area_struct*, i64)* null }, align 8
@legacy_special_mapping_vmops = internal constant { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* } { void (%struct.vm_area_struct*)* null, void (%struct.vm_area_struct*)* @special_mapping_close, i32 (%struct.vm_area_struct*, i64)* null, i32 (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64, i64, i64)* null, i32 (%struct.vm_fault*)* @special_mapping_fault, i32 (%struct.vm_fault*, i32)* null, i32 (%struct.vm_fault*, i64, i64)* null, i64 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* null, i8* (%struct.vm_area_struct*)* null, %struct.page* (%struct.vm_area_struct*, i64)* null }, align 8
@sysctl_user_reserve_kbytes = external dso_local local_unnamed_addr global i64, align 8
@vm_zone_stat = external dso_local global [10 x %struct.atomic64_t], align 8
@sysctl_admin_reserve_kbytes = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_admin_reserve490 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_reserve_notifier492 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_user_reserve486 to i8*), i8* bitcast (%struct.kernel_param* @__param_ignore_rlimit_data to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_cmdline_parse_stack_guard_gap to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @vm_get_page_prot(i64 noundef %vm_flags) local_unnamed_addr #0 {
entry:
  %and = and i64 %vm_flags, 15
  %pgprot1 = getelementptr [16 x %struct.pgprot_t], [16 x %struct.pgprot_t]* @protection_map, i64 0, i64 %and, i32 0
  %0 = load i64, i64* %pgprot1, align 8
  %call = call fastcc i64 @arch_vm_get_page_prot(i64 noundef %vm_flags) #18
  %or = or i64 %call, %0
  %call4 = call fastcc i64 @arch_filter_pgprot(i64 %or) #18
  ret i64 %call4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @arch_vm_get_page_prot(i64 noundef %vm_flags) unnamed_addr #3 {
entry:
  %and = shl i64 %vm_flags, 26
  %0 = and i64 %and, 1125899906842624
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @arch_filter_pgprot(i64 %prot.coerce) unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #19
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 15, i32 0)) #19
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap() #19
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  %cmp.not = icmp eq i64 %prot.coerce, 9007199254744963
  %.prot.coerce = select i1 %cmp.not, i64 9007199254745027, i64 %prot.coerce
  %retval.sroa.0.0 = select i1 %retval.0.i, i64 %prot.coerce, i64 %.prot.coerce
  ret i64 %retval.sroa.0.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vma_set_page_prot(%struct.vm_area_struct* noundef %vma) local_unnamed_addr #4 {
entry:
  %vm_page_prot.sroa.0 = alloca i64, align 8
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags1, align 8
  %vm_page_prot.sroa.0.0.sroa_cast30 = bitcast i64* %vm_page_prot.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %vm_page_prot.sroa.0.0.sroa_cast30)
  %coerce.dive = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %1 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @vm_pgprot_modify(i64 %1, i64 noundef %0) #18
  store i64 %call, i64* %vm_page_prot.sroa.0, align 8
  %call5 = call i32 @vma_wants_writenotify(%struct.vm_area_struct* noundef %vma, i64 %call) #18
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  %and = and i64 %0, -9
  %call8 = call fastcc i64 @vm_pgprot_modify(i64 %call, i64 noundef %and) #18
  store i64 %call8, i64* %vm_page_prot.sroa.0, align 8
  br label %do.body11

do.body11:                                        ; preds = %entry, %if.then
  %vm_page_prot.sroa.0.0.vm_page_prot.sroa.0.0.vm_page_prot.sroa.0.0.vm_page_prot.sroa.0.0.copyload = load volatile i64, i64* %vm_page_prot.sroa.0, align 8
  store volatile i64 %vm_page_prot.sroa.0.0.vm_page_prot.sroa.0.0.vm_page_prot.sroa.0.0.vm_page_prot.sroa.0.0.copyload, i64* %coerce.dive, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %vm_page_prot.sroa.0.0.sroa_cast30)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @vm_pgprot_modify(i64 %oldprot.coerce, i64 noundef %vm_flags) unnamed_addr #0 {
entry:
  %call = call i64 @vm_get_page_prot(i64 noundef %vm_flags) #18
  %call4 = call fastcc i64 @pgprot_modify(i64 %oldprot.coerce, i64 %call) #18
  ret i64 %call4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vma_wants_writenotify(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 %vm_page_prot.coerce) local_unnamed_addr #4 {
entry:
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags1, align 8
  %vm_ops2 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops2, align 8
  %and = and i64 %0, 10
  %cmp.not = icmp eq i64 %and, 10
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.vm_operations_struct* %1, null
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %1, i64 0, i32 9
  %2 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %page_mkwrite, align 8
  %tobool3.not = icmp eq i32 (%struct.vm_fault*)* %2, null
  br i1 %tobool3.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %pfn_mkwrite = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %1, i64 0, i32 10
  %3 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %pfn_mkwrite, align 8
  %tobool4.not = icmp eq i32 (%struct.vm_fault*)* %3, null
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %lor.lhs.false, %if.end
  %call = call fastcc i64 @vm_pgprot_modify(i64 %vm_page_prot.coerce, i64 noundef %0) #18
  %cmp10.not = icmp eq i64 %call, %vm_page_prot.coerce
  %and13 = and i64 %0, 1024
  %tobool14.not = icmp eq i64 %and13, 0
  %or.cond = select i1 %cmp10.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end6
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %4 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool17.not = icmp eq %struct.file* %4, null
  br i1 %tobool17.not, label %cleanup, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end16
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 17
  %5 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %tobool20.not = icmp eq %struct.address_space* %5, null
  br i1 %tobool20.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true18
  %call23 = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef nonnull %5) #18
  %phi.cast = zext i1 %call23 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true18, %land.rhs, %if.end6, %land.lhs.true, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ], [ 0, %if.end6 ], [ 0, %land.lhs.true18 ], [ 0, %if.end16 ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlink_file_vma(%struct.vm_area_struct* noundef %vma) local_unnamed_addr #4 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  call fastcc void @i_mmap_lock_write(%struct.address_space* noundef %1) #18
  call fastcc void @__remove_shared_vm_struct(%struct.vm_area_struct* noundef %vma, %struct.address_space* noundef %1) #18
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_lock_write(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @down_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__remove_shared_vm_struct(%struct.vm_area_struct* noundef %vma, %struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mapping_unmap_writable(%struct.address_space* noundef %mapping) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 5
  call void @vma_interval_tree_remove(%struct.vm_area_struct* noundef %vma, %struct.rb_root_cached* noundef %i_mmap) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @up_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_brk(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_brk(i64 noundef %0) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_brk(i64 noundef %brk) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__do_sys_brk(i64 noundef %brk) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__vma_link_rb(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.rb_node** nocapture noundef writeonly %rb_link, %struct.rb_node* noundef %rb_parent) local_unnamed_addr #4 {
entry:
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @vma_gap_update(%struct.vm_area_struct* noundef nonnull %0) #18
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef %vma) #18
  %highest_vm_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 7
  store i64 %call, i64* %highest_vm_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vm_rb = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 4
  call fastcc void @rb_link_node(%struct.rb_node* noundef %vm_rb, %struct.rb_node* noundef %rb_parent, %struct.rb_node** noundef %rb_link) #18
  %rb_subtree_gap = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 5
  store i64 0, i64* %rb_subtree_gap, align 8
  call fastcc void @vma_gap_update(%struct.vm_area_struct* noundef %vma) #18
  %mm_rb = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 1
  call fastcc void @vma_rb_insert(%struct.vm_area_struct* noundef %vma, %struct.rb_root* noundef %mm_rb) #18
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @vma_gap_update(%struct.vm_area_struct* noundef %vma) unnamed_addr #5 {
entry:
  %vm_rb = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 4
  call fastcc void @vma_gap_callbacks_propagate(%struct.rb_node* noundef %vm_rb, %struct.rb_node* noundef null) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vm_end_gap(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_end1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end1, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #7 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vma_rb_insert(%struct.vm_area_struct* noundef %vma, %struct.rb_root* noundef %root) unnamed_addr #4 {
entry:
  %vm_rb = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 4
  call fastcc void @rb_insert_augmented(%struct.rb_node* noundef %vm_rb, %struct.rb_root* noundef %root) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 noundef %pgoff, %struct.vm_area_struct* noundef %insert, %struct.vm_area_struct* noundef readnone %expand) local_unnamed_addr #4 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %2 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool = icmp eq %struct.vm_area_struct* %1, null
  %tobool1 = icmp ne %struct.vm_area_struct* %insert, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end50, label %if.then

if.then:                                          ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 1
  %3 = load i64, i64* %vm_end, align 8
  %cmp.not = icmp ugt i64 %3, %end
  br i1 %cmp.not, label %if.else16, label %if.then2

if.then2:                                         ; preds = %if.then
  %cmp3 = icmp eq %struct.vm_area_struct* %1, %expand
  br i1 %cmp3, label %if.end31, label %if.else

if.else:                                          ; preds = %if.then2
  %cmp6 = icmp ult i64 %3, %end
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true33

land.lhs.true10:                                  ; preds = %if.else
  %anon_vma11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 11
  %4 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma11, align 8
  %tobool12.not = icmp eq %struct.anon_vma* %4, null
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true33

if.then13:                                        ; preds = %land.lhs.true10
  %vm_next14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 2
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next14, align 8
  br label %if.end31

if.else16:                                        ; preds = %if.then
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 0
  %6 = load i64, i64* %vm_start, align 8
  %cmp17 = icmp ult i64 %6, %end
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else16
  %sub = sub i64 %end, %6
  br label %land.lhs.true33

if.else21:                                        ; preds = %if.else16
  %vm_end22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %7 = load i64, i64* %vm_end22, align 8
  %cmp23 = icmp ugt i64 %7, %end
  br i1 %cmp23, label %if.then25, label %if.end50

if.then25:                                        ; preds = %if.else21
  %sub27.neg = sub i64 %end, %7
  br label %if.end31

if.end31:                                         ; preds = %if.then2, %if.then25, %if.then13
  %end.addr.1 = phi i64 [ %3, %if.then13 ], [ %end, %if.then25 ], [ %end, %if.then2 ]
  %vma.addr.1 = phi %struct.vm_area_struct* [ %vma, %if.then13 ], [ %vma, %if.then25 ], [ %expand, %if.then2 ]
  %next.1 = phi %struct.vm_area_struct* [ %1, %if.then13 ], [ %1, %if.then25 ], [ %vma, %if.then2 ]
  %adjust_next.0 = phi i64 [ 0, %if.then13 ], [ %sub27.neg, %if.then25 ], [ 0, %if.then2 ]
  %remove_next.1 = phi i32 [ 2, %if.then13 ], [ 0, %if.then25 ], [ 3, %if.then2 ]
  %exporter.0 = phi %struct.vm_area_struct* [ %5, %if.then13 ], [ %vma, %if.then25 ], [ %vma, %if.then2 ]
  %importer.0 = phi %struct.vm_area_struct* [ %vma, %if.then13 ], [ %1, %if.then25 ], [ %expand, %if.then2 ]
  %tobool32.not = icmp eq %struct.vm_area_struct* %exporter.0, null
  br i1 %tobool32.not, label %if.end50, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.else, %if.then19, %land.lhs.true10, %if.end31
  %importer.0384 = phi %struct.vm_area_struct* [ %importer.0, %if.end31 ], [ %vma, %land.lhs.true10 ], [ %vma, %if.then19 ], [ %vma, %if.else ]
  %exporter.0383 = phi %struct.vm_area_struct* [ %exporter.0, %if.end31 ], [ %1, %land.lhs.true10 ], [ %1, %if.then19 ], [ %1, %if.else ]
  %remove_next.1382 = phi i32 [ %remove_next.1, %if.end31 ], [ 2, %land.lhs.true10 ], [ 0, %if.then19 ], [ 1, %if.else ]
  %adjust_next.0379 = phi i64 [ %adjust_next.0, %if.end31 ], [ 0, %land.lhs.true10 ], [ %sub, %if.then19 ], [ 0, %if.else ]
  %next.1376 = phi %struct.vm_area_struct* [ %next.1, %if.end31 ], [ %1, %land.lhs.true10 ], [ %1, %if.then19 ], [ %1, %if.else ]
  %vma.addr.1373 = phi %struct.vm_area_struct* [ %vma.addr.1, %if.end31 ], [ %vma, %land.lhs.true10 ], [ %vma, %if.then19 ], [ %vma, %if.else ]
  %end.addr.1370 = phi i64 [ %end.addr.1, %if.end31 ], [ %3, %land.lhs.true10 ], [ %end, %if.then19 ], [ %3, %if.else ]
  %anon_vma34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %exporter.0383, i64 0, i32 11
  %8 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma34, align 8
  %tobool35.not = icmp eq %struct.anon_vma* %8, null
  br i1 %tobool35.not, label %if.end50, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %anon_vma37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %importer.0384, i64 0, i32 11
  %9 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma37, align 8
  %tobool38.not = icmp eq %struct.anon_vma* %9, null
  br i1 %tobool38.not, label %if.then39, label %if.end50

if.then39:                                        ; preds = %land.lhs.true36
  store %struct.anon_vma* %8, %struct.anon_vma** %anon_vma37, align 8
  %call = call i32 @anon_vma_clone(%struct.vm_area_struct* noundef %importer.0384, %struct.vm_area_struct* noundef nonnull %exporter.0383) #19
  %tobool42.not = icmp eq i32 %call, 0
  br i1 %tobool42.not, label %if.end50, label %cleanup189

if.end50:                                         ; preds = %if.else21, %if.then39, %land.lhs.true36, %land.lhs.true33, %if.end31, %entry
  %end.addr.2 = phi i64 [ %end, %entry ], [ %end.addr.1370, %land.lhs.true36 ], [ %end.addr.1370, %if.then39 ], [ %end.addr.1370, %land.lhs.true33 ], [ %end.addr.1, %if.end31 ], [ %end, %if.else21 ]
  %vma.addr.2 = phi %struct.vm_area_struct* [ %vma, %entry ], [ %vma.addr.1373, %land.lhs.true36 ], [ %vma.addr.1373, %if.then39 ], [ %vma.addr.1373, %land.lhs.true33 ], [ %vma.addr.1, %if.end31 ], [ %vma, %if.else21 ]
  %next.2 = phi %struct.vm_area_struct* [ %1, %entry ], [ %next.1376, %land.lhs.true36 ], [ %next.1376, %if.then39 ], [ %next.1376, %land.lhs.true33 ], [ %next.1, %if.end31 ], [ %1, %if.else21 ]
  %adjust_next.1 = phi i64 [ 0, %entry ], [ %adjust_next.0379, %land.lhs.true36 ], [ %adjust_next.0379, %if.then39 ], [ %adjust_next.0379, %land.lhs.true33 ], [ %adjust_next.0, %if.end31 ], [ 0, %if.else21 ]
  %remove_next.2 = phi i32 [ 0, %entry ], [ %remove_next.1382, %land.lhs.true36 ], [ %remove_next.1382, %if.then39 ], [ %remove_next.1382, %land.lhs.true33 ], [ %remove_next.1, %if.end31 ], [ 0, %if.else21 ]
  %tobool51.not = icmp eq %struct.file* %2, null
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 17
  %anon_vma64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.2, i64 0, i32 11
  %tobool67 = icmp ne i64 %adjust_next.1, 0
  %vm_start83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.2, i64 0, i32 0
  %vm_end89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.2, i64 0, i32 1
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.2, i64 0, i32 13
  %shr = ashr i64 %adjust_next.1, 12
  %mm_rb.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 1
  %highest_vm_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 7
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 13
  %vm_next166 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.2, i64 0, i32 2
  br label %again

again:                                            ; preds = %if.then171, %if.end50
  %end.addr.3 = phi i64 [ %end.addr.2, %if.end50 ], [ %20, %if.then171 ]
  %next.3 = phi %struct.vm_area_struct* [ %next.2, %if.end50 ], [ %19, %if.then171 ]
  %mapping.0 = phi %struct.address_space* [ null, %if.end50 ], [ %mapping.1, %if.then171 ]
  %root.0 = phi %struct.rb_root_cached* [ null, %if.end50 ], [ %root.1, %if.then171 ]
  %start_changed.0.off0 = phi i1 [ false, %if.end50 ], [ %start_changed.1.off0, %if.then171 ]
  %end_changed.0.off0 = phi i1 [ false, %if.end50 ], [ %end_changed.1.off0, %if.then171 ]
  %remove_next.3 = phi i32 [ %remove_next.2, %if.end50 ], [ 1, %if.then171 ]
  br i1 %tobool51.not, label %if.end63, label %if.then52

if.then52:                                        ; preds = %again
  %10 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i64 0, i32 5
  call fastcc void @i_mmap_lock_write(%struct.address_space* noundef %10) #18
  br i1 %tobool1, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then52
  call fastcc void @__vma_link_file(%struct.vm_area_struct* noundef nonnull %insert) #18
  br label %if.end63

if.end63:                                         ; preds = %if.then52, %if.then61, %again
  %mapping.1 = phi %struct.address_space* [ %10, %if.then61 ], [ %10, %if.then52 ], [ %mapping.0, %again ]
  %root.1 = phi %struct.rb_root_cached* [ %i_mmap, %if.then61 ], [ %i_mmap, %if.then52 ], [ %root.0, %again ]
  %11 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma64, align 8
  %tobool65 = icmp eq %struct.anon_vma* %11, null
  %or.cond201 = select i1 %tobool65, i1 %tobool67, i1 false
  br i1 %or.cond201, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end63
  %anon_vma69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.3, i64 0, i32 11
  %12 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end63
  %anon_vma.0 = phi %struct.anon_vma* [ %12, %if.then68 ], [ %11, %if.end63 ]
  %tobool71.not = icmp eq %struct.anon_vma* %anon_vma.0, null
  br i1 %tobool71.not, label %if.end76, label %if.then72

if.then72:                                        ; preds = %if.end70
  call fastcc void @anon_vma_lock_write(%struct.anon_vma* noundef nonnull %anon_vma.0) #18
  call fastcc void @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct* noundef %vma.addr.2) #18
  br i1 %tobool67, label %if.end76.thread401, label %if.end76.thread

if.end76:                                         ; preds = %if.end70
  br i1 %tobool51.not, label %if.end82, label %if.then78

if.end76.thread401:                               ; preds = %if.then72
  call fastcc void @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct* noundef %next.3) #18
  br i1 %tobool51.not, label %if.end82, label %if.then78.thread402

if.then78.thread402:                              ; preds = %if.end76.thread401
  call void @vma_interval_tree_remove(%struct.vm_area_struct* noundef %vma.addr.2, %struct.rb_root_cached* noundef %root.1) #19
  br label %if.end82.sink.split

if.end76.thread:                                  ; preds = %if.then72
  br i1 %tobool51.not, label %if.end82, label %if.end82.sink.split

if.then78:                                        ; preds = %if.end76
  call void @vma_interval_tree_remove(%struct.vm_area_struct* noundef %vma.addr.2, %struct.rb_root_cached* noundef %root.1) #19
  br i1 %tobool67, label %if.end82.sink.split, label %if.end82

if.end82.sink.split:                              ; preds = %if.then78, %if.then78.thread402, %if.end76.thread
  %vma.addr.2.sink = phi %struct.vm_area_struct* [ %vma.addr.2, %if.end76.thread ], [ %next.3, %if.then78.thread402 ], [ %next.3, %if.then78 ]
  call void @vma_interval_tree_remove(%struct.vm_area_struct* noundef %vma.addr.2.sink, %struct.rb_root_cached* noundef %root.1) #19
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %if.end76.thread401, %if.end76.thread, %if.then78, %if.end76
  %13 = load i64, i64* %vm_start83, align 8
  %cmp84.not = icmp eq i64 %13, %start
  br i1 %cmp84.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end82
  store i64 %start, i64* %vm_start83, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end82
  %start_changed.1.off0 = phi i1 [ true, %if.then86 ], [ %start_changed.0.off0, %if.end82 ]
  %14 = load i64, i64* %vm_end89, align 8
  %cmp90.not = icmp eq i64 %end.addr.3, %14
  br i1 %cmp90.not, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.end88
  store i64 %end.addr.3, i64* %vm_end89, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end88
  %end_changed.1.off0 = phi i1 [ true, %if.then92 ], [ %end_changed.0.off0, %if.end88 ]
  store i64 %pgoff, i64* %vm_pgoff, align 8
  br i1 %tobool67, label %if.end101, label %if.end101.thread

if.end101:                                        ; preds = %if.end94
  %vm_start97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.3, i64 0, i32 0
  %15 = load i64, i64* %vm_start97, align 8
  %add98 = add i64 %15, %adjust_next.1
  store i64 %add98, i64* %vm_start97, align 8
  %vm_pgoff99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.3, i64 0, i32 13
  %16 = load i64, i64* %vm_pgoff99, align 8
  %add100 = add i64 %16, %shr
  store i64 %add100, i64* %vm_pgoff99, align 8
  br i1 %tobool51.not, label %if.end107, label %if.then105

if.end101.thread:                                 ; preds = %if.end94
  br i1 %tobool51.not, label %if.end107, label %if.end106

if.then105:                                       ; preds = %if.end101
  call void @vma_interval_tree_insert(%struct.vm_area_struct* noundef %next.3, %struct.rb_root_cached* noundef %root.1) #19
  br label %if.end106

if.end106:                                        ; preds = %if.end101.thread, %if.then105
  call void @vma_interval_tree_insert(%struct.vm_area_struct* noundef %vma.addr.2, %struct.rb_root_cached* noundef %root.1) #19
  br label %if.end107

if.end107:                                        ; preds = %if.end101.thread, %if.end106, %if.end101
  %tobool108.not = icmp eq i32 %remove_next.3, 0
  br i1 %tobool108.not, label %if.else118, label %if.then109

if.then109:                                       ; preds = %if.end107
  call fastcc void @__vma_rb_erase(%struct.vm_area_struct* noundef %next.3, %struct.rb_root* noundef %mm_rb.i) #19
  call void @__vma_unlink_list(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %next.3) #19
  call fastcc void @vmacache_invalidate(%struct.mm_struct* noundef %0) #19
  br i1 %tobool51.not, label %if.end137, label %if.then116

if.then116:                                       ; preds = %if.then109
  call fastcc void @__remove_shared_vm_struct(%struct.vm_area_struct* noundef %next.3, %struct.address_space* noundef %mapping.1) #18
  br label %if.end137

if.else118:                                       ; preds = %if.end107
  br i1 %tobool1, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.else118
  call fastcc void @__insert_vm_struct(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef nonnull %insert) #18
  br label %if.end137

if.else121:                                       ; preds = %if.else118
  br i1 %start_changed.1.off0, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.else121
  call fastcc void @vma_gap_update(%struct.vm_area_struct* noundef %vma.addr.2) #18
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.else121
  br i1 %end_changed.1.off0, label %if.then126, label %if.end137

if.then126:                                       ; preds = %if.end124
  %tobool127.not = icmp eq %struct.vm_area_struct* %next.3, null
  br i1 %tobool127.not, label %if.then128, label %if.else130

if.then128:                                       ; preds = %if.then126
  %call129 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef %vma.addr.2) #18
  store i64 %call129, i64* %highest_vm_end, align 8
  br label %if.end137

if.else130:                                       ; preds = %if.then126
  br i1 %tobool67, label %if.end137.thread403, label %if.end137.thread

if.end137:                                        ; preds = %if.then120, %if.then128, %if.end124, %if.then109, %if.then116
  br i1 %tobool71.not, label %if.end143, label %if.then139

if.end137.thread403:                              ; preds = %if.else130
  br i1 %tobool71.not, label %if.end143.thread405, label %if.then139.thread404

if.then139.thread404:                             ; preds = %if.end137.thread403
  call fastcc void @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* noundef %vma.addr.2) #18
  br label %if.end142.sink.split

if.end137.thread:                                 ; preds = %if.else130
  call fastcc void @vma_gap_update(%struct.vm_area_struct* noundef nonnull %next.3) #18
  br i1 %tobool71.not, label %if.end143.thread, label %if.end142.sink.split

if.then139:                                       ; preds = %if.end137
  call fastcc void @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* noundef %vma.addr.2) #18
  br i1 %tobool67, label %if.end142.sink.split, label %if.end142

if.end142.sink.split:                             ; preds = %if.then139, %if.then139.thread404, %if.end137.thread
  %vma.addr.2.sink433 = phi %struct.vm_area_struct* [ %vma.addr.2, %if.end137.thread ], [ %next.3, %if.then139.thread404 ], [ %next.3, %if.then139 ]
  call fastcc void @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* noundef %vma.addr.2.sink433) #18
  br label %if.end142

if.end142:                                        ; preds = %if.end142.sink.split, %if.then139
  call fastcc void @anon_vma_unlock_write(%struct.anon_vma* noundef nonnull %anon_vma.0) #18
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end137
  br i1 %tobool51.not, label %if.end151.thread407, label %if.then145

if.end143.thread405:                              ; preds = %if.end137.thread403
  br i1 %tobool51.not, label %cleanup189, label %if.then145.thread406

if.then145.thread406:                             ; preds = %if.end143.thread405
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping.1) #18
  br label %cleanup189

if.end143.thread:                                 ; preds = %if.end137.thread
  br i1 %tobool51.not, label %cleanup189, label %if.then145.thread

if.then145.thread:                                ; preds = %if.end143.thread
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping.1) #18
  br label %cleanup189

if.then145:                                       ; preds = %if.end143
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping.1) #18
  br i1 %tobool108.not, label %cleanup189, label %if.then155

if.end151.thread407:                              ; preds = %if.end143
  br i1 %tobool108.not, label %cleanup189, label %if.end158

if.then155:                                       ; preds = %if.then145
  call void @fput(%struct.file* noundef nonnull %2) #19
  br label %if.end158

if.end158:                                        ; preds = %if.end151.thread407, %if.then155
  %anon_vma159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.3, i64 0, i32 11
  %17 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma159, align 8
  %tobool160.not = icmp eq %struct.anon_vma* %17, null
  br i1 %tobool160.not, label %if.end162, label %if.then161

if.then161:                                       ; preds = %if.end158
  call fastcc void @anon_vma_merge(%struct.vm_area_struct* noundef %next.3) #18
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end158
  %18 = load i32, i32* %map_count, align 8
  %dec = add i32 %18, -1
  store i32 %dec, i32* %map_count, align 8
  call void @vm_area_free(%struct.vm_area_struct* noundef %next.3) #19
  %cmp163.not = icmp eq i32 %remove_next.3, 3
  br i1 %cmp163.not, label %if.else173, label %if.end168

if.end168:                                        ; preds = %if.end162
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next166, align 8
  %cmp169 = icmp eq i32 %remove_next.3, 2
  br i1 %cmp169, label %if.then171, label %if.else173

if.then171:                                       ; preds = %if.end168
  %vm_end172 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i64 0, i32 1
  %20 = load i64, i64* %vm_end172, align 8
  br label %again

if.else173:                                       ; preds = %if.end162, %if.end168
  %next.4410 = phi %struct.vm_area_struct* [ %19, %if.end168 ], [ %vma.addr.2, %if.end162 ]
  %tobool174.not = icmp eq %struct.vm_area_struct* %next.4410, null
  br i1 %tobool174.not, label %cleanup189, label %if.then175

if.then175:                                       ; preds = %if.else173
  call fastcc void @vma_gap_update(%struct.vm_area_struct* noundef nonnull %next.4410) #18
  br label %cleanup189

cleanup189:                                       ; preds = %if.then145, %if.end151.thread407, %if.then175, %if.else173, %if.end143.thread, %if.then145.thread, %if.end143.thread405, %if.then145.thread406, %if.then39
  %retval.3 = phi i32 [ %call, %if.then39 ], [ 0, %if.then145.thread406 ], [ 0, %if.end143.thread405 ], [ 0, %if.then145.thread ], [ 0, %if.end143.thread ], [ 0, %if.else173 ], [ 0, %if.then175 ], [ 0, %if.end151.thread407 ], [ 0, %if.then145 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_vma_clone(%struct.vm_area_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vma_link_file(%struct.vm_area_struct* noundef %vma) unnamed_addr #4 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %and = and i64 %2, 8
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call fastcc void @mapping_allow_writable(%struct.address_space* noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 5
  call void @vma_interval_tree_insert(%struct.vm_area_struct* noundef %vma, %struct.rb_root_cached* noundef %i_mmap) #19
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_lock_write(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #4 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @down_write(%struct.rw_semaphore* noundef %rwsem) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct* noundef readonly %vma) unnamed_addr #4 {
entry:
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 10
  %0 = bitcast %struct.list_head* %anon_vma_chain to i8**
  %.pn17 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn17 to %struct.list_head*
  %cmp.not18 = icmp eq %struct.list_head* %anon_vma_chain, %1
  br i1 %cmp.not18, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn19 = phi i8* [ %.pn, %for.body ], [ %.pn17, %entry ]
  %avc.0.in = getelementptr i8, i8* %.pn19, i64 -16
  %avc.0 = bitcast i8* %avc.0.in to %struct.anon_vma_chain*
  %anon_vma = getelementptr i8, i8* %.pn19, i64 -8
  %2 = bitcast i8* %anon_vma to %struct.anon_vma**
  %3 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %rb_root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %3, i64 0, i32 5
  call void @anon_vma_interval_tree_remove(%struct.anon_vma_chain* noundef %avc.0, %struct.rb_root_cached* noundef %rb_root) #19
  %4 = bitcast i8* %.pn19 to i8**
  %.pn = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %anon_vma_chain, %5
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_remove(%struct.vm_area_struct* noundef, %struct.rb_root_cached* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_insert(%struct.vm_area_struct* noundef, %struct.rb_root_cached* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__insert_vm_struct(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma) unnamed_addr #4 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %rb_link = alloca %struct.rb_node**, align 8
  %rb_parent = alloca %struct.rb_node*, align 8
  %0 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %1 = bitcast %struct.rb_node*** %rb_link to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store %struct.rb_node** null, %struct.rb_node*** %rb_link, align 8, !annotation !7
  %2 = bitcast %struct.rb_node** %rb_parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  store %struct.rb_node* null, %struct.rb_node** %rb_parent, align 8, !annotation !7
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %call = call fastcc i32 @find_vma_links(%struct.mm_struct* noundef %mm, i64 noundef %3, i64 noundef %4, %struct.vm_area_struct** noundef nonnull %prev, %struct.rb_node*** noundef nonnull %rb_link, %struct.rb_node** noundef nonnull %rb_parent) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 718; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !8
  unreachable

if.end:                                           ; preds = %entry
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %6 = load %struct.rb_node**, %struct.rb_node*** %rb_link, align 8
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_parent, align 8
  call fastcc void @__vma_link(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %5, %struct.rb_node** noundef %6, %struct.rb_node* noundef %7) #18
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 13
  %8 = load i32, i32* %map_count, align 8
  %inc = add i32 %8, 1
  store i32 %inc, i32* %map_count, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* noundef readonly %vma) unnamed_addr #4 {
entry:
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 10
  %0 = bitcast %struct.list_head* %anon_vma_chain to i8**
  %.pn17 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn17 to %struct.list_head*
  %cmp.not18 = icmp eq %struct.list_head* %anon_vma_chain, %1
  br i1 %cmp.not18, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn19 = phi i8* [ %.pn, %for.body ], [ %.pn17, %entry ]
  %avc.0.in = getelementptr i8, i8* %.pn19, i64 -16
  %avc.0 = bitcast i8* %avc.0.in to %struct.anon_vma_chain*
  %anon_vma = getelementptr i8, i8* %.pn19, i64 -8
  %2 = bitcast i8* %anon_vma to %struct.anon_vma**
  %3 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %rb_root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %3, i64 0, i32 5
  call void @anon_vma_interval_tree_insert(%struct.anon_vma_chain* noundef %avc.0, %struct.rb_root_cached* noundef %rb_root) #19
  %4 = bitcast i8* %.pn19 to i8**
  %.pn = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %anon_vma_chain, %5
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_unlock_write(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #4 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_merge(%struct.vm_area_struct* noundef %next) unnamed_addr #4 {
entry:
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef %next) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_area_free(%struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct* nocapture noundef readonly %mm, %struct.vm_area_struct* noundef %prev, i64 noundef %addr, i64 noundef %end, i64 noundef %vm_flags, %struct.anon_vma* noundef %anon_vma, %struct.file* noundef %file, i64 noundef %pgoff, %struct.mempolicy* nocapture readnone %policy) local_unnamed_addr #4 {
entry:
  %sub = sub i64 %end, %addr
  %shr = lshr i64 %sub, 12
  %and = and i64 %vm_flags, 268715008
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.vm_area_struct* @vma_next(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %prev) #18
  %tobool1.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool1.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %cmp = icmp eq i64 %0, %end
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 2
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %next.0 = phi %struct.vm_area_struct* [ %1, %if.then2 ], [ %call, %land.lhs.true ], [ null, %if.end ]
  %tobool4.not = icmp eq %struct.vm_area_struct* %prev, null
  br i1 %tobool4.not, label %if.end39, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end3
  %vm_end6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 1
  %2 = load i64, i64* %vm_end6, align 8
  %cmp7 = icmp eq i64 %2, %addr
  br i1 %cmp7, label %land.lhs.true8, label %if.end39

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %call11 = call fastcc i32 @can_vma_merge_after(%struct.vm_area_struct* noundef nonnull %prev, i64 noundef %vm_flags, %struct.anon_vma* noundef %anon_vma, %struct.file* noundef %file, i64 noundef %pgoff) #18
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end39, label %if.then13

if.then13:                                        ; preds = %land.lhs.true8
  %tobool14.not = icmp eq %struct.vm_area_struct* %next.0, null
  br i1 %tobool14.not, label %if.end34, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.then13
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %cmp16 = icmp eq i64 %3, %end
  br i1 %cmp16, label %land.lhs.true17, label %if.end34

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %add = add i64 %shr, %pgoff
  %call20 = call fastcc i32 @can_vma_merge_before(%struct.vm_area_struct* noundef nonnull %next.0, i64 noundef %vm_flags, %struct.anon_vma* noundef %anon_vma, %struct.file* noundef %file, i64 noundef %add) #18
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end34, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %anon_vma23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 11
  %4 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma23, align 8
  %anon_vma24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 11
  %5 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma24, align 8
  %call25 = call fastcc i32 @is_mergeable_anon_vma(%struct.anon_vma* noundef %4, %struct.anon_vma* noundef %5, %struct.vm_area_struct* noundef null) #18
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end34, label %if.then27

if.then27:                                        ; preds = %land.lhs.true22
  %vm_end29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 1
  %6 = load i64, i64* %vm_end29, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %land.lhs.true15, %land.lhs.true17, %land.lhs.true22, %if.then27
  %end.sink = phi i64 [ %6, %if.then27 ], [ %end, %land.lhs.true22 ], [ %end, %land.lhs.true17 ], [ %end, %land.lhs.true15 ], [ %end, %if.then13 ]
  %.sink.in = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 0
  %.sink = load i64, i64* %.sink.in, align 8
  %vm_pgoff32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 13
  %7 = load i64, i64* %vm_pgoff32, align 8
  %call33 = call i32 @__vma_adjust(%struct.vm_area_struct* noundef nonnull %prev, i64 noundef %.sink, i64 noundef %end.sink, i64 noundef %7, %struct.vm_area_struct* noundef null, %struct.vm_area_struct* noundef nonnull %prev) #18
  %tobool35.not = icmp eq i32 %call33, 0
  %spec.select = select i1 %tobool35.not, %struct.vm_area_struct* %prev, %struct.vm_area_struct* null
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true8, %land.lhs.true5, %if.end3
  %tobool40.not = icmp eq %struct.vm_area_struct* %next.0, null
  br i1 %tobool40.not, label %cleanup, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end39
  %vm_start42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 0
  %8 = load i64, i64* %vm_start42, align 8
  %cmp43 = icmp eq i64 %8, %end
  br i1 %cmp43, label %land.lhs.true44, label %cleanup

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %add47 = add i64 %shr, %pgoff
  %call48 = call fastcc i32 @can_vma_merge_before(%struct.vm_area_struct* noundef nonnull %next.0, i64 noundef %vm_flags, %struct.anon_vma* noundef %anon_vma, %struct.file* noundef %file, i64 noundef %add47) #18
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %if.then50

if.then50:                                        ; preds = %land.lhs.true44
  br i1 %tobool4.not, label %if.else59, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.then50
  %vm_end53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 1
  %9 = load i64, i64* %vm_end53, align 8
  %cmp54 = icmp ugt i64 %9, %addr
  br i1 %cmp54, label %if.then55, label %if.else59

if.then55:                                        ; preds = %land.lhs.true52
  %vm_start56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 0
  %10 = load i64, i64* %vm_start56, align 8
  %vm_pgoff57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 13
  %11 = load i64, i64* %vm_pgoff57, align 8
  %call58 = call i32 @__vma_adjust(%struct.vm_area_struct* noundef nonnull %prev, i64 noundef %10, i64 noundef %addr, i64 noundef %11, %struct.vm_area_struct* noundef null, %struct.vm_area_struct* noundef nonnull %next.0) #18
  br label %if.end64

if.else59:                                        ; preds = %land.lhs.true52, %if.then50
  %vm_end60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 1
  %12 = load i64, i64* %vm_end60, align 8
  %vm_pgoff61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 13
  %13 = load i64, i64* %vm_pgoff61, align 8
  %sub62 = sub i64 %13, %shr
  %call63 = call i32 @__vma_adjust(%struct.vm_area_struct* noundef %call, i64 noundef %addr, i64 noundef %12, i64 noundef %sub62, %struct.vm_area_struct* noundef null, %struct.vm_area_struct* noundef nonnull %next.0) #18
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %if.then55
  %area.0 = phi %struct.vm_area_struct* [ %call, %if.then55 ], [ %next.0, %if.else59 ]
  %err.1 = phi i32 [ %call58, %if.then55 ], [ %call63, %if.else59 ]
  %tobool65.not = icmp eq i32 %err.1, 0
  %spec.select138 = select i1 %tobool65.not, %struct.vm_area_struct* %area.0, %struct.vm_area_struct* null
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end34, %if.end39, %land.lhs.true41, %land.lhs.true44, %entry
  %retval.0 = phi %struct.vm_area_struct* [ null, %entry ], [ null, %land.lhs.true44 ], [ null, %land.lhs.true41 ], [ null, %if.end39 ], [ %spec.select, %if.end34 ], [ %spec.select138, %if.end64 ]
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.vm_area_struct* @vma_next(%struct.mm_struct* nocapture noundef readonly %mm, %struct.vm_area_struct* noundef readonly %vma) unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.vm_area_struct* %vma, null
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %retval.0.in = select i1 %tobool.not, %struct.vm_area_struct** %mmap, %struct.vm_area_struct** %vm_next
  %retval.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %retval.0.in, align 8
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @can_vma_merge_after(%struct.vm_area_struct* noundef %vma, i64 noundef %vm_flags, %struct.anon_vma* noundef %anon_vma, %struct.file* noundef readnone %file, i64 noundef %vm_pgoff) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @is_mergeable_vma(%struct.vm_area_struct* noundef %vma, %struct.file* noundef %file, i64 noundef %vm_flags) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma1, align 8
  %call2 = call fastcc i32 @is_mergeable_anon_vma(%struct.anon_vma* noundef %anon_vma, %struct.anon_vma* noundef %0, %struct.vm_area_struct* noundef %vma) #18
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %vma) #18
  %vm_pgoff5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %1 = load i64, i64* %vm_pgoff5, align 8
  %add = add i64 %1, %call4
  %cmp.not = icmp eq i64 %add, %vm_pgoff
  br i1 %cmp.not, label %return, label %if.end7

if.end7:                                          ; preds = %if.then, %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end7
  %retval.1 = phi i32 [ 1, %if.then ], [ 0, %if.end7 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @can_vma_merge_before(%struct.vm_area_struct* noundef %vma, i64 noundef %vm_flags, %struct.anon_vma* noundef %anon_vma, %struct.file* noundef readnone %file, i64 noundef %vm_pgoff) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @is_mergeable_vma(%struct.vm_area_struct* noundef %vma, %struct.file* noundef %file, i64 noundef %vm_flags) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma1, align 8
  %call2 = call fastcc i32 @is_mergeable_anon_vma(%struct.anon_vma* noundef %anon_vma, %struct.anon_vma* noundef %0, %struct.vm_area_struct* noundef %vma) #18
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %vm_pgoff4 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %1 = load i64, i64* %vm_pgoff4, align 8
  %cmp = icmp eq i64 %1, %vm_pgoff
  br i1 %cmp, label %return, label %if.end6

if.end6:                                          ; preds = %if.then, %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @is_mergeable_anon_vma(%struct.anon_vma* noundef readnone %anon_vma1, %struct.anon_vma* noundef readnone %anon_vma2, %struct.vm_area_struct* noundef %vma) unnamed_addr #0 {
entry:
  %tobool = icmp ne %struct.anon_vma* %anon_vma1, null
  %tobool1 = icmp ne %struct.anon_vma* %anon_vma2, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %tobool2.not = icmp eq %struct.vm_area_struct* %vma, null
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %land.lhs.true
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 10
  %call = call fastcc i32 @list_is_singular(%struct.list_head* noundef %anon_vma_chain) #18
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %return

if.end:                                           ; preds = %entry, %lor.lhs.false3
  %cmp = icmp eq %struct.anon_vma* %anon_vma1, %anon_vma2
  %conv = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 1, %lor.lhs.false3 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local %struct.anon_vma* @find_mergeable_anon_vma(%struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #0 {
entry:
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.anon_vma* @reusable_anon_vma(%struct.vm_area_struct* noundef nonnull %0, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef nonnull %0) #18
  %tobool3.not = icmp eq %struct.anon_vma* %call, null
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.then, %entry
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 3
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  %tobool6.not = icmp eq %struct.vm_area_struct* %1, null
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call10 = call fastcc %struct.anon_vma* @reusable_anon_vma(%struct.vm_area_struct* noundef nonnull %1, %struct.vm_area_struct* noundef nonnull %1, %struct.vm_area_struct* noundef %vma) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then7, %if.then
  %retval.0 = phi %struct.anon_vma* [ %call, %if.then ], [ %call10, %if.then7 ], [ null, %if.end5 ]
  ret %struct.anon_vma* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.anon_vma* @reusable_anon_vma(%struct.vm_area_struct* noundef %old, %struct.vm_area_struct* nocapture noundef readonly %a, %struct.vm_area_struct* nocapture noundef readonly %b) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @anon_vma_compatible(%struct.vm_area_struct* noundef %a, %struct.vm_area_struct* noundef %b) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %old, i64 0, i32 11
  %0 = load volatile %struct.anon_vma*, %struct.anon_vma** %anon_vma1, align 8
  %tobool2.not = icmp eq %struct.anon_vma* %0, null
  br i1 %tobool2.not, label %cleanup.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %old, i64 0, i32 10
  %call3 = call fastcc i32 @list_is_singular(%struct.list_head* noundef %anon_vma_chain) #18
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.thread, label %return

cleanup.thread:                                   ; preds = %if.then, %land.lhs.true
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %land.lhs.true
  %retval.1 = phi %struct.anon_vma* [ %0, %land.lhs.true ], [ null, %cleanup.thread ], [ null, %entry ]
  ret %struct.anon_vma* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mlock_future_check(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %flags, i64 noundef %len) local_unnamed_addr #4 {
entry:
  %and = and i64 %flags, 8192
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %shr = lshr i64 %len, 12
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 20
  %0 = load i64, i64* %locked_vm, align 8
  %add = add i64 %0, %shr
  %call = call fastcc i64 @rlimit(i32 noundef 8) #18
  %shr1 = lshr i64 %call, 12
  %cmp = icmp ugt i64 %add, %shr1
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.then
  %call2 = call i1 @capable(i32 noundef 14) #19
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.then, %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -11, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit(i32 noundef %limit) unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1, i32 noundef %limit) #18
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_mmap(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %pgoff, i64* nocapture noundef writeonly %populate, %struct.list_head* noundef %uf) local_unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  store i64 0, i64* %populate, align 8
  %tobool.not = icmp eq i64 %len, 0
  br i1 %tobool.not, label %cleanup185, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %prot, 1
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %3 = load i32, i32* %personality, align 16
  %and4 = and i32 %3, 4194304
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end12, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %tobool7.not = icmp eq %struct.file* %file, null
  br i1 %tobool7.not, label %if.then10, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.then6
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  %call9 = call i1 @path_noexec(%struct.path* noundef %f_path) #19
  br i1 %call9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %land.lhs.true8, %if.then6
  %or = or i64 %prot, 4
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %if.then10, %land.lhs.true, %if.end
  %prot.addr.0 = phi i64 [ %prot, %land.lhs.true8 ], [ %or, %if.then10 ], [ %prot, %land.lhs.true ], [ %prot, %if.end ]
  %and13 = lshr i64 %flags, 16
  %4 = and i64 %and13, 16
  %5 = or i64 %4, %flags
  %and18 = and i64 %5, 16
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end12
  %call21 = call fastcc i64 @round_hint_to_min(i64 noundef %addr) #18
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end12
  %addr.addr.0 = phi i64 [ %addr, %if.end12 ], [ %call21, %if.then20 ]
  %add = add i64 %len, 4095
  %and23 = and i64 %add, -4096
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %cleanup185, label %if.end26

if.end26:                                         ; preds = %if.end22
  %shr = lshr i64 %add, 12
  %6 = xor i64 %pgoff, -1
  %cmp = icmp ugt i64 %shr, %6
  br i1 %cmp, label %cleanup185, label %if.end29

if.end29:                                         ; preds = %if.end26
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 13
  %7 = load i32, i32* %map_count, align 8
  %8 = load i32, i32* @sysctl_max_map_count, align 4
  %cmp30 = icmp sgt i32 %7, %8
  br i1 %cmp30, label %cleanup185, label %if.end32

if.end32:                                         ; preds = %if.end29
  %call33 = call i64 @get_unmapped_area(%struct.file* noundef %file, i64 noundef %addr.addr.0, i64 noundef %and23, i64 noundef %pgoff, i64 noundef %5) #18
  %cmp34 = icmp ugt i64 %call33, -4096
  br i1 %cmp34, label %cleanup185, label %if.end38, !prof !10

if.end38:                                         ; preds = %if.end32
  %and39 = and i64 %flags, 1048576
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.end47, label %if.then41

if.then41:                                        ; preds = %if.end38
  %add42 = add i64 %call33, %and23
  %call43 = call fastcc %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* noundef %2, i64 noundef %call33, i64 noundef %add42) #18
  %tobool44.not = icmp eq %struct.vm_area_struct* %call43, null
  br i1 %tobool44.not, label %if.end47, label %cleanup185

if.end47:                                         ; preds = %if.then41, %if.end38
  %call57 = call fastcc i64 @calc_vm_prot_bits(i64 noundef %prot.addr.0) #18
  %call58 = call fastcc i64 @calc_vm_flag_bits(i64 noundef %5) #18
  %or59 = or i64 %call58, %call57
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 25
  %9 = load i64, i64* %def_flags, align 8
  %or60 = or i64 %or59, %9
  %or63 = or i64 %or60, 112
  %and64 = and i64 %flags, 8192
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.end70, label %if.then66

if.then66:                                        ; preds = %if.end47
  %call67 = call i1 @can_do_mlock() #19
  br i1 %call67, label %if.end70, label %cleanup185

if.end70:                                         ; preds = %if.then66, %if.end47
  %call71 = call i32 @mlock_future_check(%struct.mm_struct* noundef %2, i64 noundef %or63, i64 noundef %and23) #18
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %cleanup185

if.end74:                                         ; preds = %if.end70
  %tobool75.not = icmp eq %struct.file* %file, null
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %if.end74
  %call77 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %file) #18
  %call78 = call fastcc i1 @file_mmap_ok(%struct.file* noundef nonnull %file, %struct.inode* noundef %call77, i64 noundef %pgoff, i64 noundef %and23) #18
  br i1 %call78, label %if.end80, label %cleanup185

if.end80:                                         ; preds = %if.then76
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %10 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %mmap_supported_flags = getelementptr inbounds %struct.file_operations, %struct.file_operations* %10, i64 0, i32 13
  %11 = load i64, i64* %mmap_supported_flags, align 8
  %or81 = or i64 %11, 2080897331
  %and82 = and i64 %flags, 15
  switch i64 %and82, label %cleanup185 [
    i64 1, label %sw.bb
    i64 3, label %sw.bb84
    i64 2, label %if.end80.sw.bb117_crit_edge
  ]

if.end80.sw.bb117_crit_edge:                      ; preds = %if.end80
  %f_mode118.phi.trans.insert = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %.pre269 = load i32, i32* %f_mode118.phi.trans.insert, align 4
  br label %sw.bb117

sw.bb:                                            ; preds = %if.end80
  %and83 = and i64 %5, 2080897331
  br label %sw.bb84

sw.bb84:                                          ; preds = %if.end80, %sw.bb
  %flags.addr.1 = phi i64 [ %5, %if.end80 ], [ %and83, %sw.bb ]
  %neg = xor i64 %or81, -1
  %and85 = and i64 %flags.addr.1, %neg
  %tobool86.not = icmp eq i64 %and85, 0
  br i1 %tobool86.not, label %if.end88, label %cleanup185

if.end88:                                         ; preds = %sw.bb84
  %and89 = and i64 %prot.addr.0, 2
  %tobool90.not = icmp eq i64 %and89, 0
  br i1 %tobool90.not, label %if.end100, label %if.then91

if.then91:                                        ; preds = %if.end88
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %12 = load i32, i32* %f_mode, align 4
  %and92 = and i32 %12, 2
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %cleanup185, label %if.end95

if.end95:                                         ; preds = %if.then91
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %13 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i64 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %host, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %14, i64 0, i32 4
  %15 = load i32, i32* %i_flags, align 4
  %and96 = and i32 %15, 256
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end100, label %cleanup185

if.end100:                                        ; preds = %if.end95, %if.end88
  %i_flags101 = getelementptr inbounds %struct.inode, %struct.inode* %call77, i64 0, i32 4
  %16 = load i32, i32* %i_flags101, align 4
  %and102 = and i32 %16, 4
  %tobool103.not = icmp eq i32 %and102, 0
  %f_mode111.phi.trans.insert = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %.pre = load i32, i32* %f_mode111.phi.trans.insert, align 4
  %.pre270 = and i32 %.pre, 2
  br i1 %tobool103.not, label %if.end109, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %if.end100
  %tobool107.not = icmp eq i32 %.pre270, 0
  br i1 %tobool107.not, label %if.end109, label %cleanup185

if.end109:                                        ; preds = %if.end100, %land.lhs.true104
  %and112.pre-phi = phi i32 [ 0, %land.lhs.true104 ], [ %.pre270, %if.end100 ]
  %or110 = or i64 %or60, 248
  %tobool113.not = icmp eq i32 %and112.pre-phi, 0
  %and115 = and i64 %or110, -41
  %spec.select262 = select i1 %tobool113.not, i64 %and115, i64 %or110
  br label %sw.bb117

sw.bb117:                                         ; preds = %if.end80.sw.bb117_crit_edge, %if.end109
  %17 = phi i32 [ %.pre269, %if.end80.sw.bb117_crit_edge ], [ %.pre, %if.end109 ]
  %flags.addr.2 = phi i64 [ %5, %if.end80.sw.bb117_crit_edge ], [ %flags.addr.1, %if.end109 ]
  %vm_flags.0 = phi i64 [ %or63, %if.end80.sw.bb117_crit_edge ], [ %spec.select262, %if.end109 ]
  %and119 = and i32 %17, 1
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %cleanup185, label %if.end122

if.end122:                                        ; preds = %sw.bb117
  %f_path123 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  %call124 = call i1 @path_noexec(%struct.path* noundef %f_path123) #19
  br i1 %call124, label %if.then125, label %if.end131

if.then125:                                       ; preds = %if.end122
  %and126 = and i64 %vm_flags.0, 4
  %tobool127.not = icmp eq i64 %and126, 0
  br i1 %tobool127.not, label %if.end129, label %cleanup185

if.end129:                                        ; preds = %if.then125
  %and130 = and i64 %vm_flags.0, -65
  br label %if.end131

if.end131:                                        ; preds = %if.end129, %if.end122
  %vm_flags.1 = phi i64 [ %and130, %if.end129 ], [ %vm_flags.0, %if.end122 ]
  %18 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %mmap = getelementptr inbounds %struct.file_operations, %struct.file_operations* %18, i64 0, i32 12
  %19 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %mmap, align 8
  %tobool133.not = icmp eq i32 (%struct.file*, %struct.vm_area_struct*)* %19, null
  br i1 %tobool133.not, label %cleanup185, label %cleanup

cleanup:                                          ; preds = %if.end131
  %and136 = and i64 %vm_flags.1, 256
  %tobool137.not = icmp eq i64 %and136, 0
  br i1 %tobool137.not, label %if.end152, label %cleanup185

if.else:                                          ; preds = %if.end74
  %and141 = and i64 %flags, 15
  switch i64 %and141, label %cleanup185 [
    i64 1, label %sw.bb142
    i64 2, label %sw.bb148
  ]

sw.bb142:                                         ; preds = %if.else
  %and143 = and i64 %or60, 256
  %tobool144.not = icmp eq i64 %and143, 0
  br i1 %tobool144.not, label %if.end146, label %cleanup185

if.end146:                                        ; preds = %sw.bb142
  %or147 = or i64 %or60, 248
  br label %if.end152

sw.bb148:                                         ; preds = %if.else
  %shr149 = lshr i64 %call33, 12
  br label %if.end152

if.end152:                                        ; preds = %if.end146, %sw.bb148, %cleanup
  %flags.addr.4 = phi i64 [ %flags.addr.2, %cleanup ], [ %5, %sw.bb148 ], [ %5, %if.end146 ]
  %pgoff.addr.0 = phi i64 [ %pgoff, %cleanup ], [ %shr149, %sw.bb148 ], [ 0, %if.end146 ]
  %vm_flags.3 = phi i64 [ %vm_flags.1, %cleanup ], [ %or63, %sw.bb148 ], [ %or147, %if.end146 ]
  %and153 = and i64 %flags.addr.4, 16384
  %tobool154.not = icmp eq i64 %and153, 0
  %20 = load i32, i32* @sysctl_overcommit_memory, align 4
  %cmp156.not = icmp eq i32 %20, 2
  %or159 = or i64 %vm_flags.3, 2097152
  %21 = select i1 %tobool154.not, i1 true, i1 %cmp156.not
  %vm_flags.5 = select i1 %21, i64 %vm_flags.3, i64 %or159
  %call167 = call i64 @mmap_region(%struct.file* noundef %file, i64 noundef %call33, i64 noundef %and23, i64 noundef %vm_flags.5, i64 noundef %pgoff.addr.0, %struct.list_head* noundef %uf) #18
  %cmp168 = icmp ugt i64 %call167, -4096
  br i1 %cmp168, label %cleanup185, label %land.lhs.true177, !prof !10

land.lhs.true177:                                 ; preds = %if.end152
  %and178 = and i64 %vm_flags.5, 8192
  %tobool179.not = icmp ne i64 %and178, 0
  %and180 = and i64 %flags.addr.4, 98304
  %cmp181 = icmp eq i64 %and180, 32768
  %or.cond = select i1 %tobool179.not, i1 true, i1 %cmp181
  br i1 %or.cond, label %if.then183, label %cleanup185

if.then183:                                       ; preds = %land.lhs.true177
  store i64 %and23, i64* %populate, align 8
  br label %cleanup185

cleanup185:                                       ; preds = %if.end80, %if.end131, %if.then125, %sw.bb117, %land.lhs.true104, %if.end95, %if.then91, %sw.bb84, %if.then76, %if.end152, %if.then183, %land.lhs.true177, %if.else, %sw.bb142, %if.end70, %if.then66, %if.then41, %if.end32, %if.end29, %if.end26, %if.end22, %entry, %cleanup
  %retval.1 = phi i64 [ -22, %cleanup ], [ -22, %entry ], [ -12, %if.end22 ], [ -75, %if.end26 ], [ -12, %if.end29 ], [ %call33, %if.end32 ], [ -17, %if.then41 ], [ -1, %if.then66 ], [ -11, %if.end70 ], [ -22, %sw.bb142 ], [ -22, %if.else ], [ %call167, %land.lhs.true177 ], [ %call167, %if.then183 ], [ %call167, %if.end152 ], [ -22, %if.end80 ], [ -19, %if.end131 ], [ -1, %if.then125 ], [ -13, %sw.bb117 ], [ -13, %land.lhs.true104 ], [ -26, %if.end95 ], [ -13, %if.then91 ], [ -95, %sw.bb84 ], [ -75, %if.then76 ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @path_noexec(%struct.path* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @round_hint_to_min(i64 noundef %hint) unnamed_addr #6 {
entry:
  %and = and i64 %hint, -4096
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i64, i64* @mmap_min_addr, align 8
  %cmp1 = icmp ult i64 %and, %0
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %add = add i64 %0, 4095
  %and2 = and i64 %add, -4096
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i64 [ %and2, %if.then ], [ %and, %land.lhs.true ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_unmapped_area(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %0 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %0
  %cmp = icmp ult i64 %shl, %len
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %get_unmapped_area = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 3
  %4 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %get_unmapped_area, align 8
  %tobool3.not = icmp eq %struct.file* %file, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %get_unmapped_area5 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %5, i64 0, i32 21
  %get_unmapped_area6 = bitcast {}** %get_unmapped_area5 to i64 (%struct.file*, i64, i64, i64, i64)**
  %6 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %get_unmapped_area6, align 8
  %tobool7.not = icmp eq i64 (%struct.file*, i64, i64, i64, i64)* %6, null
  %spec.select = select i1 %tobool7.not, i64 (%struct.file*, i64, i64, i64, i64)* %4, i64 (%struct.file*, i64, i64, i64, i64)* %6
  br label %if.end16

if.else:                                          ; preds = %if.end2
  %and = and i64 %flags, 1
  %tobool13.not = icmp eq i64 %and, 0
  %spec.select53 = select i1 %tobool13.not, i64 %pgoff, i64 0
  %spec.select54 = select i1 %tobool13.not, i64 (%struct.file*, i64, i64, i64, i64)* %4, i64 (%struct.file*, i64, i64, i64, i64)* @shmem_get_unmapped_area
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then4
  %pgoff.addr.0 = phi i64 [ %pgoff, %if.then4 ], [ %spec.select53, %if.else ]
  %get_area.0 = phi i64 (%struct.file*, i64, i64, i64, i64)* [ %spec.select, %if.then4 ], [ %spec.select54, %if.else ]
  %call17 = call i64 %get_area.0(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %pgoff.addr.0, i64 noundef %flags) #19
  %cmp18 = icmp ugt i64 %call17, -4096
  br i1 %cmp18, label %cleanup, label %if.end22, !prof !10

if.end22:                                         ; preds = %if.end16
  %7 = load i64, i64* @vabits_actual, align 8
  %shl23 = shl nuw i64 1, %7
  %sub = sub i64 %shl23, %len
  %cmp24 = icmp ugt i64 %call17, %sub
  br i1 %cmp24, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end22
  %and28 = and i64 %call17, 4095
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.end27
  %call32 = call fastcc i32 @security_mmap_addr(i64 noundef %call17) #18
  %conv33 = sext i32 %call32 to i64
  %tobool34.not = icmp eq i32 %call32, 0
  %cond = select i1 %tobool34.not, i64 %call17, i64 %conv33
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22, %if.end16, %entry, %if.end31
  %retval.0 = phi i64 [ %cond, %if.end31 ], [ -12, %entry ], [ %call17, %if.end16 ], [ -12, %if.end22 ], [ -22, %if.end27 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* noundef %mm, i64 noundef %start_addr, i64 noundef %end_addr) unnamed_addr #4 {
entry:
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %start_addr) #18
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp.not = icmp ult i64 %0, %end_addr
  %spec.store.select = select i1 %cmp.not, %struct.vm_area_struct* %call, %struct.vm_area_struct* null
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %vma.0 = phi %struct.vm_area_struct* [ %spec.store.select, %land.lhs.true ], [ null, %entry ]
  ret %struct.vm_area_struct* %vma.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @calc_vm_prot_bits(i64 noundef %prot) unnamed_addr #3 {
entry:
  %or5 = and i64 %prot, 7
  ret i64 %or5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @calc_vm_flag_bits(i64 noundef %flags) unnamed_addr #3 {
entry:
  %or = and i64 %flags, 8448
  %and3 = shl i64 %flags, 4
  %mul4 = and i64 %and3, 8388608
  %or5 = or i64 %mul4, %or
  ret i64 %or5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @can_do_mlock() local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #6 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @file_mmap_ok(%struct.file* nocapture noundef readonly %file, %struct.inode* nocapture noundef readonly %inode, i64 noundef %pgoff, i64 noundef %len) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @file_mmap_size_max(%struct.file* noundef %file, %struct.inode* noundef %inode) #18
  %tobool.not = icmp ne i64 %call, 0
  %cmp = icmp ult i64 %call, %len
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %call, %len
  %shr = lshr i64 %sub, 12
  %cmp1 = icmp uge i64 %shr, %pgoff
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @mmap_region(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %vm_flags, i64 noundef %pgoff, %struct.list_head* noundef %uf) local_unnamed_addr #4 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %rb_link = alloca %struct.rb_node**, align 8
  %rb_parent = alloca %struct.rb_node*, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %4 = bitcast %struct.rb_node*** %rb_link to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20
  store %struct.rb_node** null, %struct.rb_node*** %rb_link, align 8, !annotation !7
  %5 = bitcast %struct.rb_node** %rb_parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20
  store %struct.rb_node* null, %struct.rb_node** %rb_parent, align 8, !annotation !7
  %shr = lshr i64 %len, 12
  %call2 = call i1 @may_expand_vm(%struct.mm_struct* noundef %2, i64 noundef %vm_flags, i64 noundef %shr) #18
  br i1 %call2, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %add = add i64 %len, %addr
  %call3 = call fastcc i64 @count_vma_pages_range(%struct.mm_struct* noundef %2, i64 noundef %addr, i64 noundef %add) #18
  %sub = sub i64 %shr, %call3
  %call5 = call i1 @may_expand_vm(%struct.mm_struct* noundef %2, i64 noundef %vm_flags, i64 noundef %sub) #18
  br i1 %call5, label %if.end7, label %cleanup159

if.end7:                                          ; preds = %if.then, %entry
  %call8 = call fastcc i32 @munmap_vma_range(%struct.mm_struct* noundef %2, i64 noundef %addr, i64 noundef %len, %struct.vm_area_struct** noundef nonnull %prev, %struct.rb_node*** noundef nonnull %rb_link, %struct.rb_node** noundef nonnull %rb_parent, %struct.list_head* noundef %uf) #18
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %cleanup159

if.end10:                                         ; preds = %if.end7
  %call11 = call fastcc i32 @accountable_mapping(i64 noundef %vm_flags) #18
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call15 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %2, i64 noundef %shr) #18
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup159

if.end18:                                         ; preds = %if.then13
  %or = or i64 %vm_flags, 1048576
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end10
  %vm_flags.addr.0 = phi i64 [ %or, %if.end18 ], [ %vm_flags, %if.end10 ]
  %charged.0 = phi i64 [ %shr, %if.end18 ], [ 0, %if.end10 ]
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %add20 = add i64 %len, %addr
  %call21 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef %6, i64 noundef %addr, i64 noundef %add20, i64 noundef %vm_flags.addr.0, %struct.anon_vma* noundef null, %struct.file* noundef %file, i64 noundef %pgoff, %struct.mempolicy* undef) #18
  %tobool22.not = icmp eq %struct.vm_area_struct* %call21, null
  br i1 %tobool22.not, label %if.end24, label %out

if.end24:                                         ; preds = %if.end19
  %call25 = call %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* noundef %2) #19
  %tobool26.not = icmp eq %struct.vm_area_struct* %call25, null
  br i1 %tobool26.not, label %unacct_error, label %if.end28

if.end28:                                         ; preds = %if.end24
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call25, i64 0, i32 0
  store i64 %addr, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call25, i64 0, i32 1
  store i64 %add20, i64* %vm_end, align 8
  %vm_flags30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call25, i64 0, i32 8
  store i64 %vm_flags.addr.0, i64* %vm_flags30, align 8
  %call31 = call i64 @vm_get_page_prot(i64 noundef %vm_flags.addr.0) #18
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call25, i64 0, i32 7, i32 0
  store i64 %call31, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call25, i64 0, i32 13
  store i64 %pgoff, i64* %vm_pgoff, align 8
  %tobool32.not = icmp eq %struct.file* %file, null
  %and91 = and i64 %vm_flags.addr.0, 8
  %tobool92.not = icmp eq i64 %and91, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end28
  br i1 %tobool92.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.then33
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %7 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %call36 = call fastcc i32 @mapping_map_writable(%struct.address_space* noundef %7) #18
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %free_vma

if.end40:                                         ; preds = %if.then35, %if.then33
  %call41 = call fastcc %struct.file* @get_file(%struct.file* noundef nonnull %file) #18
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call25, i64 0, i32 14
  store %struct.file* %file, %struct.file** %vm_file, align 8
  %call42 = call fastcc i32 @call_mmap(%struct.file* noundef nonnull %file, %struct.vm_area_struct* noundef nonnull %call25) #18
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %unmap_and_free_vma

if.end45:                                         ; preds = %if.end40
  %8 = load i64, i64* %vm_start, align 8
  %cmp.not = icmp eq i64 %8, %addr
  br i1 %cmp.not, label %if.end55, label %if.then54, !prof !11

if.then54:                                        ; preds = %if.end45
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 1798; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !12
  %.pre = load i64, i64* %vm_start, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end45
  %9 = phi i64 [ %.pre, %if.then54 ], [ %addr, %if.end45 ]
  %10 = load i64, i64* %vm_flags30, align 8
  %cmp66 = icmp ne i64 %vm_flags.addr.0, %10
  %tobool68 = icmp ne %struct.vm_area_struct* %6, null
  %11 = and i1 %tobool68, %cmp66
  br i1 %11, label %if.then76, label %if.end100, !prof !10

if.then76:                                        ; preds = %if.end55
  %12 = load i64, i64* %vm_end, align 8
  %13 = load %struct.file*, %struct.file** %vm_file, align 8
  %14 = load i64, i64* %vm_pgoff, align 8
  %call83 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef nonnull %6, i64 noundef %9, i64 noundef %12, i64 noundef %10, %struct.anon_vma* noundef null, %struct.file* noundef %13, i64 noundef %14, %struct.mempolicy* undef) #18
  %tobool84.not = icmp eq %struct.vm_area_struct* %call83, null
  br i1 %tobool84.not, label %if.then76.if.end89_crit_edge, label %if.then85

if.then76.if.end89_crit_edge:                     ; preds = %if.then76
  %.pre274 = load i64, i64* %vm_flags30, align 8
  br label %if.end100

if.then85:                                        ; preds = %if.then76
  %15 = load %struct.file*, %struct.file** %vm_file, align 8
  call void @fput(%struct.file* noundef %15) #19
  call void @vm_area_free(%struct.vm_area_struct* noundef nonnull %call25) #19
  %vm_flags87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call83, i64 0, i32 8
  %16 = load i64, i64* %vm_flags87, align 8
  br label %unmap_writable

if.else:                                          ; preds = %if.end28
  br i1 %tobool92.not, label %if.else98, label %if.then93

if.then93:                                        ; preds = %if.else
  %call94 = call i32 @shmem_zero_setup(%struct.vm_area_struct* noundef nonnull %call25) #19
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end100, label %free_vma

if.else98:                                        ; preds = %if.else
  call fastcc void @vma_set_anonymous(%struct.vm_area_struct* noundef nonnull %call25) #18
  br label %if.end100

if.end100:                                        ; preds = %if.end55, %if.then76.if.end89_crit_edge, %if.else98, %if.then93
  %vm_flags.addr.1 = phi i64 [ %vm_flags.addr.0, %if.then93 ], [ %vm_flags.addr.0, %if.else98 ], [ %.pre274, %if.then76.if.end89_crit_edge ], [ %10, %if.end55 ]
  %addr.addr.0 = phi i64 [ %addr, %if.then93 ], [ %addr, %if.else98 ], [ %9, %if.then76.if.end89_crit_edge ], [ %9, %if.end55 ]
  %17 = load %struct.rb_node**, %struct.rb_node*** %rb_link, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_parent, align 8
  call fastcc void @vma_link(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef nonnull %call25, %struct.vm_area_struct* noundef %6, %struct.rb_node** noundef %17, %struct.rb_node* noundef %18) #18
  br label %unmap_writable

unmap_writable:                                   ; preds = %if.end100, %if.then85
  %vm_flags.addr.2 = phi i64 [ %16, %if.then85 ], [ %vm_flags.addr.1, %if.end100 ]
  %vma.0 = phi %struct.vm_area_struct* [ %call83, %if.then85 ], [ %call25, %if.end100 ]
  %addr.addr.1 = phi i64 [ %9, %if.then85 ], [ %addr.addr.0, %if.end100 ]
  %and109 = and i64 %vm_flags.addr.2, 8
  %tobool110.not = icmp eq i64 %and109, 0
  %or.cond = select i1 %tobool32.not, i1 true, i1 %tobool110.not
  br i1 %or.cond, label %out, label %if.then111

if.then111:                                       ; preds = %unmap_writable
  %f_mapping112 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %19 = load %struct.address_space*, %struct.address_space** %f_mapping112, align 8
  call fastcc void @mapping_unmap_writable(%struct.address_space* noundef %19) #18
  br label %out

out:                                              ; preds = %unmap_writable, %if.then111, %if.end19
  %vm_flags.addr.3 = phi i64 [ %vm_flags.addr.0, %if.end19 ], [ %vm_flags.addr.2, %if.then111 ], [ %vm_flags.addr.2, %unmap_writable ]
  %vma.1 = phi %struct.vm_area_struct* [ %call21, %if.end19 ], [ %vma.0, %if.then111 ], [ %vma.0, %unmap_writable ]
  %addr.addr.2 = phi i64 [ %addr, %if.end19 ], [ %addr.addr.1, %if.then111 ], [ %addr.addr.1, %unmap_writable ]
  call void @vm_stat_account(%struct.mm_struct* noundef %2, i64 noundef %vm_flags.addr.3, i64 noundef %shr) #18
  %and116 = and i64 %vm_flags.addr.3, 8192
  %tobool117.not = icmp eq i64 %and116, 0
  br i1 %tobool117.not, label %if.end143, label %if.then118

if.then118:                                       ; preds = %out
  %and119 = and i64 %vm_flags.addr.3, 268715008
  %tobool120.not = icmp eq i64 %and119, 0
  br i1 %tobool120.not, label %if.else135, label %if.then132

if.then132:                                       ; preds = %if.then118
  %vm_flags133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.1, i64 0, i32 8
  %20 = load i64, i64* %vm_flags133, align 8
  %and134 = and i64 %20, -532481
  store i64 %and134, i64* %vm_flags133, align 8
  br label %if.end143

if.else135:                                       ; preds = %if.then118
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 20
  %21 = load i64, i64* %locked_vm, align 8
  %add137 = add i64 %21, %shr
  store i64 %add137, i64* %locked_vm, align 8
  br label %if.end143

if.end143:                                        ; preds = %out, %if.else135, %if.then132
  call void @vma_set_page_prot(%struct.vm_area_struct* noundef nonnull %vma.1) #18
  br label %cleanup159

unmap_and_free_vma:                               ; preds = %if.end40
  %22 = load %struct.file*, %struct.file** %vm_file, align 8
  call void @fput(%struct.file* noundef %22) #19
  store %struct.file* null, %struct.file** %vm_file, align 8
  %23 = load i64, i64* %vm_start, align 8
  %24 = load i64, i64* %vm_end, align 8
  call fastcc void @unmap_region(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef nonnull %call25, %struct.vm_area_struct* noundef %6, i64 noundef %23, i64 noundef %24) #18
  br i1 %tobool92.not, label %free_vma, label %if.then152

if.then152:                                       ; preds = %unmap_and_free_vma
  %f_mapping153 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %25 = load %struct.address_space*, %struct.address_space** %f_mapping153, align 8
  call fastcc void @mapping_unmap_writable(%struct.address_space* noundef %25) #18
  br label %free_vma

free_vma:                                         ; preds = %unmap_and_free_vma, %if.then152, %if.then93, %if.then35
  %error.1 = phi i32 [ %call36, %if.then35 ], [ %call42, %if.then152 ], [ %call42, %unmap_and_free_vma ], [ %call94, %if.then93 ]
  %charged.1 = phi i64 [ %charged.0, %if.then35 ], [ 0, %if.then152 ], [ 0, %unmap_and_free_vma ], [ %charged.0, %if.then93 ]
  call void @vm_area_free(%struct.vm_area_struct* noundef nonnull %call25) #19
  br label %unacct_error

unacct_error:                                     ; preds = %if.end24, %free_vma
  %error.2 = phi i32 [ %error.1, %free_vma ], [ -12, %if.end24 ]
  %charged.2 = phi i64 [ %charged.1, %free_vma ], [ %charged.0, %if.end24 ]
  %tobool155.not = icmp eq i64 %charged.2, 0
  br i1 %tobool155.not, label %if.end157, label %if.then156

if.then156:                                       ; preds = %unacct_error
  call fastcc void @vm_unacct_memory(i64 noundef %charged.2) #18
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %unacct_error
  %conv158 = sext i32 %error.2 to i64
  br label %cleanup159

cleanup159:                                       ; preds = %if.then13, %if.end7, %if.then, %if.end157, %if.end143
  %retval.1 = phi i64 [ %addr.addr.2, %if.end143 ], [ %conv158, %if.end157 ], [ -12, %if.then ], [ -12, %if.end7 ], [ -12, %if.then13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ksys_mmap_pgoff(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %pgoff) local_unnamed_addr #4 {
entry:
  %and = and i64 %flags, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = trunc i64 %fd to i32
  %call = call %struct.file* @fget(i32 noundef %conv) #19
  %tobool4.not = icmp eq %struct.file* %call, null
  br i1 %tobool4.not, label %cleanup41, label %if.end

if.end:                                           ; preds = %if.then
  %and6 = and i64 %flags, 262144
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %out_fput, label %if.then39, !prof !11

if.else:                                          ; preds = %entry
  %and13 = and i64 %flags, 262144
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %out_fput.thread67, label %cleanup41

out_fput.thread67:                                ; preds = %if.else
  %call3769 = call i64 @vm_mmap_pgoff(%struct.file* noundef null, i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %pgoff) #19
  br label %cleanup41

out_fput:                                         ; preds = %if.end
  %call37 = call i64 @vm_mmap_pgoff(%struct.file* noundef nonnull %call, i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %pgoff) #19
  br label %if.then39

if.then39:                                        ; preds = %if.end, %out_fput
  %retval1.066 = phi i64 [ %call37, %out_fput ], [ -22, %if.end ]
  call void @fput(%struct.file* noundef nonnull %call) #19
  br label %cleanup41

cleanup41:                                        ; preds = %out_fput.thread67, %if.else, %if.then39, %if.then
  %retval.1 = phi i64 [ -9, %if.then ], [ %retval1.066, %if.then39 ], [ -22, %if.else ], [ %call3769, %out_fput.thread67 ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vm_mmap_pgoff(%struct.file* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mmap_pgoff(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_mmap_pgoff(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mmap_pgoff(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %pgoff) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__do_sys_mmap_pgoff(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %pgoff) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mapping_can_writeback(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #4 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %0) #18
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 6
  %1 = load i32, i32* %capabilities, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @may_expand_vm(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %flags, i64 noundef %npages) local_unnamed_addr #4 {
entry:
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  %0 = load i64, i64* %total_vm, align 8
  %add = add i64 %0, %npages
  %call = call fastcc i64 @rlimit(i32 noundef 9) #18
  %shr = lshr i64 %call, 12
  %cmp = icmp ugt i64 %add, %shr
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @is_data_mapping(i64 noundef %flags) #18
  br i1 %call1, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.end
  %data_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 22
  %1 = load i64, i64* %data_vm, align 8
  %add2 = add i64 %1, %npages
  %call3 = call fastcc i64 @rlimit(i32 noundef 2) #18
  %shr4 = lshr i64 %call3, 12
  %cmp5 = icmp ugt i64 %add2, %shr4
  br i1 %cmp5, label %if.then6, label %if.end42

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call fastcc i64 @rlimit(i32 noundef 2) #18
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %if.then6
  %2 = load i64, i64* %data_vm, align 8
  %add11 = add i64 %2, %npages
  %call12 = call fastcc i64 @rlimit_max() #18
  %shr13 = lshr i64 %call12, 12
  %cmp14.not = icmp ugt i64 %add11, %shr13
  br i1 %cmp14.not, label %if.end16, label %return

if.end16:                                         ; preds = %land.lhs.true9, %if.then6
  %.b50 = load i1, i1* @may_expand_vm.__already_done, align 1
  br i1 %.b50, label %if.end30, label %if.then21, !prof !11

if.then21:                                        ; preds = %if.end16
  store i1 true, i1* @may_expand_vm.__already_done, align 1
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 50
  %5 = load i32, i32* %pid, align 32
  %6 = load i64, i64* %data_vm, align 8
  %add25 = add i64 %6, %npages
  %shl = shl i64 %add25, 12
  %call26 = call fastcc i64 @rlimit(i32 noundef 2) #18
  %7 = load i8, i8* @ignore_rlimit_data, align 4, !range !13
  %tobool27.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool27.not, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %call29 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %5, i64 noundef %shl, i64 noundef %call26, i8* noundef %cond) #22
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end16
  %8 = load i8, i8* @ignore_rlimit_data, align 4, !range !13
  %tobool39.not = icmp eq i8 %8, 0
  br i1 %tobool39.not, label %return, label %if.end42

if.end42:                                         ; preds = %if.end30, %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %if.end30, %land.lhs.true9, %entry, %if.end42
  %retval.0 = phi i1 [ true, %if.end42 ], [ false, %entry ], [ true, %land.lhs.true9 ], [ false, %if.end30 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @count_vma_pages_range(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %end) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %end) #18
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %cleanup23, label %if.end

if.end:                                           ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %cmp = icmp ugt i64 %0, %end
  %cond = select i1 %cmp, i64 %end, i64 %0
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %cmp2 = icmp ult i64 %1, %addr
  %cond6 = select i1 %cmp2, i64 %addr, i64 %1
  %sub = sub i64 %cond, %cond6
  %shr = lshr i64 %sub, 12
  %vma.0.in56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 2
  %vma.057 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.0.in56, align 8
  %tobool7.not58 = icmp eq %struct.vm_area_struct* %vma.057, null
  br i1 %tobool7.not58, label %cleanup23, label %for.body

for.body:                                         ; preds = %if.end, %cleanup
  %vma.060 = phi %struct.vm_area_struct* [ %vma.0, %cleanup ], [ %vma.057, %if.end ]
  %nr_pages.059 = phi i64 [ %add, %cleanup ], [ %shr, %if.end ]
  %vm_start8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.060, i64 0, i32 0
  %2 = load i64, i64* %vm_start8, align 8
  %cmp9 = icmp ugt i64 %2, %end
  br i1 %cmp9, label %cleanup23, label %cleanup

cleanup:                                          ; preds = %for.body
  %vm_end12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.060, i64 0, i32 1
  %3 = load i64, i64* %vm_end12, align 8
  %cmp14 = icmp ugt i64 %3, %end
  %cond18 = select i1 %cmp14, i64 %end, i64 %3
  %sub20 = sub i64 %cond18, %2
  %shr21 = lshr i64 %sub20, 12
  %add = add i64 %shr21, %nr_pages.059
  %vma.0.in = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.060, i64 0, i32 2
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.0.in, align 8
  %tobool7.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool7.not, label %cleanup23, label %for.body

cleanup23:                                        ; preds = %cleanup, %for.body, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %shr, %if.end ], [ %add, %cleanup ], [ %nr_pages.059, %for.body ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @munmap_vma_range(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %len, %struct.vm_area_struct** nocapture noundef writeonly %pprev, %struct.rb_node*** nocapture noundef writeonly %link, %struct.rb_node** nocapture noundef writeonly %parent, %struct.list_head* noundef %uf) unnamed_addr #4 {
entry:
  %add = add i64 %len, %start
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call fastcc i32 @find_vma_links(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %add, %struct.vm_area_struct** noundef %pprev, %struct.rb_node*** noundef %link, %struct.rb_node** noundef %parent) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @do_munmap(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %len, %struct.list_head* noundef %uf) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.cond, label %return

return:                                           ; preds = %while.cond, %while.body
  %retval.0 = phi i32 [ -12, %while.body ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @accountable_mapping(i64 noundef %vm_flags) unnamed_addr #3 {
entry:
  %and = and i64 %vm_flags, 2097162
  %cmp = icmp eq i64 %and, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %mm, i64 noundef %pages) unnamed_addr #4 {
entry:
  %call = call i32 @cap_vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages) #19
  %call1 = call i32 @__vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages, i32 noundef %call) #19
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mapping_map_writable(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %i_mmap_writable = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 4
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %i_mmap_writable, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %1 = bitcast %struct.atomic_t* %i_mmap_writable to i8*
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %entry
  %c.0.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i, %do.cond.i.i ]
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %atomic_inc_unless_negative.exit, label %do.cond.i.i, !prof !10

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i, i32 noundef %add.i.i) #19
  %cmp.not.i.i.i = icmp eq i32 %c.0.i.i, %call11.i.i.i.i
  br i1 %cmp.not.i.i.i, label %atomic_inc_unless_negative.exit, label %do.body.i.i, !prof !11

atomic_inc_unless_negative.exit:                  ; preds = %do.body.i.i, %do.cond.i.i
  %c.0.i.i.lobit = ashr i32 %c.0.i.i, 31
  ret i32 %c.0.i.i.lobit
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #4 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #19
  ret %struct.file* %f
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @call_mmap(%struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) unnamed_addr #4 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %mmap = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 12
  %1 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %mmap, align 8
  %call = call i32 %1(%struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_zero_setup(%struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @vma_set_anonymous(%struct.vm_area_struct* nocapture noundef writeonly %vma) unnamed_addr #7 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* null, %struct.vm_operations_struct** %vm_ops, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vma_link(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %prev, %struct.rb_node** nocapture noundef writeonly %rb_link, %struct.rb_node* noundef %rb_parent) unnamed_addr #4 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  call fastcc void @i_mmap_lock_write(%struct.address_space* noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mapping.0 = phi %struct.address_space* [ %1, %if.then ], [ null, %entry ]
  call fastcc void @__vma_link(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %prev, %struct.rb_node** noundef %rb_link, %struct.rb_node* noundef %rb_parent) #18
  call fastcc void @__vma_link_file(%struct.vm_area_struct* noundef %vma) #18
  %tobool2.not = icmp eq %struct.address_space* %mapping.0, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef nonnull %mapping.0) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 13
  %2 = load i32, i32* %map_count, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %map_count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_unmap_writable(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %i_mmap_writable = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %i_mmap_writable) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @vm_stat_account(%struct.mm_struct* nocapture noundef %mm, i64 noundef %flags, i64 noundef %npages) local_unnamed_addr #9 {
entry:
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  %0 = load i64, i64* %total_vm, align 8
  %add = add i64 %0, %npages
  store i64 %add, i64* %total_vm, align 8
  %call = call fastcc i1 @is_exec_mapping(i64 noundef %flags) #18
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %exec_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 23
  br label %if.end10.sink.split

if.else:                                          ; preds = %entry
  %call2 = call fastcc i1 @is_stack_mapping(i64 noundef %flags) #18
  br i1 %call2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %stack_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 24
  br label %if.end10.sink.split

if.else5:                                         ; preds = %if.else
  %call6 = call fastcc i1 @is_data_mapping(i64 noundef %flags) #18
  br i1 %call6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.else5
  %data_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 22
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then, %if.then7, %if.then3
  %stack_vm.sink19 = phi i64* [ %stack_vm, %if.then3 ], [ %data_vm, %if.then7 ], [ %exec_vm, %if.then ]
  %1 = load i64, i64* %stack_vm.sink19, align 8
  %add4 = add i64 %1, %npages
  store i64 %add4, i64* %stack_vm.sink19, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unmap_region(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef readonly %prev, i64 noundef %start, i64 noundef %end) unnamed_addr #4 {
entry:
  %tlb = alloca %struct.mmu_gather, align 8
  %call = call fastcc %struct.vm_area_struct* @vma_next(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %prev) #18
  %0 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !7
  call void @lru_add_drain() #19
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %mm) #19
  call fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %mm) #18
  call void @unmap_vmas(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end) #19
  %tobool.not = icmp eq %struct.vm_area_struct* %prev, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ]
  %tobool1.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool1.not, label %cond.end4, label %cond.true2

cond.true2:                                       ; preds = %cond.end
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  br label %cond.end4

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %cond5 = phi i64 [ %2, %cond.true2 ], [ 0, %cond.end ]
  call void @free_pgtables(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %cond, i64 noundef %cond5) #19
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #19
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unacct_memory(i64 noundef %pages) unnamed_addr #4 {
entry:
  %sub = sub i64 0, %pages
  call fastcc void @vm_acct_memory(i64 noundef %sub) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* nocapture noundef readonly %info) local_unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @unmapped_area_topdown(%struct.vm_unmapped_area_info* noundef %info) #18
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call fastcc i64 @unmapped_area(%struct.vm_unmapped_area_info* noundef %info) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addr.0 = phi i64 [ %call, %if.then ], [ %call1, %if.else ]
  ret i64 %addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @unmapped_area_topdown(%struct.vm_unmapped_area_info* nocapture noundef readonly %info) unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %length2 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 1
  %3 = load i64, i64* %length2, align 8
  %align_mask = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 4
  %4 = load i64, i64* %align_mask, align 8
  %add = add i64 %4, %3
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %cleanup119, label %if.end

if.end:                                           ; preds = %entry
  %high_limit4 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 3
  %5 = load i64, i64* %high_limit4, align 8
  %cmp5 = icmp ult i64 %5, %add
  br i1 %cmp5, label %cleanup119, label %if.end7

if.end7:                                          ; preds = %if.end
  %sub = sub i64 %5, %add
  %low_limit8 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 2
  %6 = load i64, i64* %low_limit8, align 8
  %cmp9 = icmp ugt i64 %6, %sub
  br i1 %cmp9, label %cleanup119, label %if.end11

if.end11:                                         ; preds = %if.end7
  %add13 = add i64 %6, %add
  %highest_vm_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 7
  %7 = load i64, i64* %highest_vm_end, align 8
  %cmp14.not = icmp ugt i64 %7, %sub
  br i1 %cmp14.not, label %do.end, label %found_highest

do.end:                                           ; preds = %if.end11
  %rb_node = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 1, i32 0
  %8 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp17 = icmp eq %struct.rb_node* %8, null
  br i1 %cmp17, label %cleanup119, label %if.end19

if.end19:                                         ; preds = %do.end
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %8, i64 -2, i32 2
  %rb_subtree_gap = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %9 = bitcast %struct.rb_node** %rb_subtree_gap to i64*
  %10 = load i64, i64* %9, align 8
  %cmp26 = icmp ult i64 %10, %add
  br i1 %cmp26, label %cleanup119, label %while.cond

while.cond:                                       ; preds = %if.end19, %while.cond.backedge
  %vma.0.in = phi %struct.rb_node** [ %vma.0.in.be, %while.cond.backedge ], [ %add.ptr, %if.end19 ]
  %vma.0 = bitcast %struct.rb_node** %vma.0.in to %struct.vm_area_struct*
  %vm_prev = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %vma.0.in, i64 3
  %11 = bitcast %struct.rb_node** %vm_prev to %struct.vm_area_struct**
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %12, null
  br i1 %tobool.not, label %land.lhs.true, label %cond.end

cond.end:                                         ; preds = %while.cond
  %call30 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef nonnull %12) #18
  %cmp31.not = icmp ugt i64 %call30, %sub
  br i1 %cmp31.not, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond, %cond.end
  %cond203 = phi i64 [ %call30, %cond.end ], [ 0, %while.cond ]
  %13 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %vma.0.in, i64 5
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %tobool32.not = icmp eq %struct.rb_node* %14, null
  br i1 %tobool32.not, label %if.end46, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  %add.ptr41 = getelementptr %struct.rb_node, %struct.rb_node* %14, i64 -2, i32 2
  %rb_subtree_gap42 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr41, i64 7
  %15 = bitcast %struct.rb_node** %rb_subtree_gap42 to i64*
  %16 = load i64, i64* %15, align 8
  %cmp43.not = icmp ult i64 %16, %add
  br i1 %cmp43.not, label %if.end46, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then61, %if.then33
  %vma.0.in.be = phi %struct.rb_node** [ %add.ptr41, %if.then33 ], [ %add.ptr69, %if.then61 ]
  br label %while.cond

if.end46:                                         ; preds = %if.then33, %land.lhs.true, %cond.end
  %cond204 = phi i64 [ %cond203, %if.then33 ], [ %cond203, %land.lhs.true ], [ %call30, %cond.end ]
  %call47212 = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef %vma.0) #18
  %cmp48213 = icmp ult i64 %call47212, %add13
  br i1 %cmp48213, label %cleanup119, label %if.end50

check_current.loopexit:                           ; preds = %if.then95, %cond.true98
  %gap_start.2.ph = phi i64 [ %call100, %cond.true98 ], [ 0, %if.then95 ]
  %call47 = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef %26) #18
  %cmp48 = icmp ult i64 %call47, %add13
  br i1 %cmp48, label %cleanup119, label %if.end50

if.end50:                                         ; preds = %if.end46, %check_current.loopexit
  %call47216 = phi i64 [ %call47, %check_current.loopexit ], [ %call47212, %if.end46 ]
  %vma.3215 = phi %struct.vm_area_struct* [ %26, %check_current.loopexit ], [ %vma.0, %if.end46 ]
  %gap_start.0214 = phi i64 [ %gap_start.2.ph, %check_current.loopexit ], [ %cond204, %if.end46 ]
  %cmp51.not = icmp ugt i64 %gap_start.0214, %sub
  %cmp53 = icmp ule i64 %call47216, %gap_start.0214
  %or.cond = select i1 %cmp51.not, i1 true, i1 %cmp53
  %sub55 = sub i64 %call47216, %gap_start.0214
  %cmp56.not = icmp ult i64 %sub55, %add
  %or.cond200 = select i1 %or.cond, i1 true, i1 %cmp56.not
  br i1 %or.cond200, label %if.end58, label %found

if.end58:                                         ; preds = %if.end50
  %rb_left = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.3215, i64 0, i32 4, i32 2
  %17 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool60.not = icmp eq %struct.rb_node* %17, null
  br i1 %tobool60.not, label %while.cond78.preheader, label %if.then61

if.then61:                                        ; preds = %if.end58
  %add.ptr69 = getelementptr %struct.rb_node, %struct.rb_node* %17, i64 -2, i32 2
  %rb_subtree_gap70 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr69, i64 7
  %18 = bitcast %struct.rb_node** %rb_subtree_gap70 to i64*
  %19 = load i64, i64* %18, align 8
  %cmp71.not = icmp ult i64 %19, %add
  br i1 %cmp71.not, label %while.cond78.preheader, label %while.cond.backedge

while.cond78.preheader:                           ; preds = %if.then61, %if.end58
  br label %while.cond78

while.cond78:                                     ; preds = %while.cond78.preheader, %if.end83
  %vma.6 = phi %struct.vm_area_struct* [ %22, %if.end83 ], [ %vma.3215, %while.cond78.preheader ]
  %vm_rb80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.6, i64 0, i32 4
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %vm_rb80, i64 0, i32 0
  %20 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %20, -4
  %tobool81.not = icmp eq i64 %and, 0
  br i1 %tobool81.not, label %cleanup119, label %if.end83

if.end83:                                         ; preds = %while.cond78
  %21 = inttoptr i64 %and to i8*
  %add.ptr91 = getelementptr i8, i8* %21, i64 -32
  %22 = bitcast i8* %add.ptr91 to %struct.vm_area_struct*
  %23 = inttoptr i64 %and to %struct.rb_node*
  %rb_right93 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %23, i64 0, i32 1
  %24 = load %struct.rb_node*, %struct.rb_node** %rb_right93, align 8
  %cmp94 = icmp eq %struct.rb_node* %vm_rb80, %24
  br i1 %cmp94, label %if.then95, label %while.cond78

if.then95:                                        ; preds = %if.end83
  %25 = inttoptr i64 %and to i8*
  %26 = bitcast i8* %add.ptr91 to %struct.vm_area_struct*
  %vm_prev96 = getelementptr i8, i8* %25, i64 -8
  %27 = bitcast i8* %vm_prev96 to %struct.vm_area_struct**
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %27, align 8
  %tobool97.not = icmp eq %struct.vm_area_struct* %28, null
  br i1 %tobool97.not, label %check_current.loopexit, label %cond.true98

cond.true98:                                      ; preds = %if.then95
  %call100 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef nonnull %28) #18
  br label %check_current.loopexit

found:                                            ; preds = %if.end50
  %cmp109 = icmp ugt i64 %call47216, %5
  %spec.select = select i1 %cmp109, i64 %5, i64 %call47216
  br label %found_highest

found_highest:                                    ; preds = %found, %if.end11
  %gap_end.0 = phi i64 [ %5, %if.end11 ], [ %spec.select, %found ]
  %sub114 = sub i64 %gap_end.0, %3
  %align_offset = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 5
  %29 = load i64, i64* %align_offset, align 8
  %sub115 = sub i64 %sub114, %29
  %and117 = and i64 %sub115, %4
  %sub118 = sub i64 %sub114, %and117
  br label %cleanup119

cleanup119:                                       ; preds = %if.end46, %check_current.loopexit, %while.cond78, %if.end19, %do.end, %if.end7, %if.end, %entry, %found_highest
  %retval.4 = phi i64 [ %sub118, %found_highest ], [ -12, %entry ], [ -12, %if.end ], [ -12, %if.end7 ], [ -12, %do.end ], [ -12, %if.end19 ], [ -12, %while.cond78 ], [ -12, %check_current.loopexit ], [ -12, %if.end46 ]
  ret i64 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @unmapped_area(%struct.vm_unmapped_area_info* nocapture noundef readonly %info) unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %length2 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 1
  %3 = load i64, i64* %length2, align 8
  %align_mask = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 4
  %4 = load i64, i64* %align_mask, align 8
  %add = add i64 %4, %3
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %cleanup113, label %if.end

if.end:                                           ; preds = %entry
  %high_limit4 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 3
  %5 = load i64, i64* %high_limit4, align 8
  %cmp5 = icmp ult i64 %5, %add
  br i1 %cmp5, label %cleanup113, label %if.end7

if.end7:                                          ; preds = %if.end
  %sub = sub i64 %5, %add
  %low_limit9 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 2
  %6 = load i64, i64* %low_limit9, align 8
  %cmp10 = icmp ugt i64 %6, %sub
  br i1 %cmp10, label %cleanup113, label %if.end12

if.end12:                                         ; preds = %if.end7
  %add14 = add i64 %6, %add
  %rb_node = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 1, i32 0
  %7 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp15 = icmp eq %struct.rb_node* %7, null
  br i1 %cmp15, label %check_highest, label %if.end17

if.end17:                                         ; preds = %if.end12
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %7, i64 -2, i32 2
  %rb_subtree_gap = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %8 = bitcast %struct.rb_node** %rb_subtree_gap to i64*
  %9 = load i64, i64* %8, align 8
  %cmp24 = icmp ult i64 %9, %add
  br i1 %cmp24, label %check_highest, label %while.cond

while.cond:                                       ; preds = %if.end17, %while.cond.backedge
  %vma.0.in = phi %struct.rb_node** [ %vma.0.in.be, %while.cond.backedge ], [ %add.ptr, %if.end17 ]
  %vma.0 = bitcast %struct.rb_node** %vma.0.in to %struct.vm_area_struct*
  %call27 = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef %vma.0) #18
  %cmp28.not = icmp ult i64 %call27, %add14
  br i1 %cmp28.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %10 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %vma.0.in, i64 6
  %11 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %tobool.not = icmp eq %struct.rb_node* %11, null
  br i1 %tobool.not, label %if.end42, label %if.then29

if.then29:                                        ; preds = %land.lhs.true
  %add.ptr37 = getelementptr %struct.rb_node, %struct.rb_node* %11, i64 -2, i32 2
  %rb_subtree_gap38 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr37, i64 7
  %12 = bitcast %struct.rb_node** %rb_subtree_gap38 to i64*
  %13 = load i64, i64* %12, align 8
  %cmp39.not = icmp ult i64 %13, %add
  br i1 %cmp39.not, label %if.end42, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then59, %if.then29
  %vma.0.in.be = phi %struct.rb_node** [ %add.ptr37, %if.then29 ], [ %add.ptr67, %if.then59 ]
  br label %while.cond

if.end42:                                         ; preds = %if.then29, %land.lhs.true, %while.cond
  %vm_prev = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %vma.0.in, i64 3
  %14 = bitcast %struct.rb_node** %vm_prev to %struct.vm_area_struct**
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %tobool43.not = icmp eq %struct.vm_area_struct* %15, null
  br i1 %tobool43.not, label %if.end48.preheader, label %cond.end

cond.end:                                         ; preds = %if.end42
  %call45 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef nonnull %15) #18
  %cmp46204 = icmp ugt i64 %call45, %sub
  br i1 %cmp46204, label %cleanup113, label %if.end48.preheader

if.end48.preheader:                               ; preds = %if.end42, %cond.end
  %gap_start.0206.ph = phi i64 [ %call45, %cond.end ], [ 0, %if.end42 ]
  br label %if.end48

check_current.loopexit:                           ; preds = %if.end81
  %16 = inttoptr i64 %and to i8*
  %17 = bitcast i8* %add.ptr89 to %struct.vm_area_struct*
  %vm_prev94 = getelementptr i8, i8* %16, i64 -8
  %18 = bitcast i8* %vm_prev94 to %struct.vm_area_struct**
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %call95 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef %19) #18
  %call96 = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef %17) #18
  %cmp46 = icmp ugt i64 %call95, %sub
  br i1 %cmp46, label %cleanup113, label %if.end48

if.end48:                                         ; preds = %if.end48.preheader, %check_current.loopexit
  %vma.3207 = phi %struct.vm_area_struct* [ %17, %check_current.loopexit ], [ %vma.0, %if.end48.preheader ]
  %gap_start.0206 = phi i64 [ %call95, %check_current.loopexit ], [ %gap_start.0206.ph, %if.end48.preheader ]
  %gap_end.0205 = phi i64 [ %call96, %check_current.loopexit ], [ %call27, %if.end48.preheader ]
  %cmp49.not = icmp ult i64 %gap_end.0205, %add14
  %cmp51 = icmp ule i64 %gap_end.0205, %gap_start.0206
  %or.cond = select i1 %cmp49.not, i1 true, i1 %cmp51
  %sub53 = sub i64 %gap_end.0205, %gap_start.0206
  %cmp54.not = icmp ult i64 %sub53, %add
  %or.cond191 = select i1 %or.cond, i1 true, i1 %cmp54.not
  br i1 %or.cond191, label %if.end56, label %found

if.end56:                                         ; preds = %if.end48
  %rb_right = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.3207, i64 0, i32 4, i32 1
  %20 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool58.not = icmp eq %struct.rb_node* %20, null
  br i1 %tobool58.not, label %while.cond76.preheader, label %if.then59

if.then59:                                        ; preds = %if.end56
  %add.ptr67 = getelementptr %struct.rb_node, %struct.rb_node* %20, i64 -2, i32 2
  %rb_subtree_gap68 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr67, i64 7
  %21 = bitcast %struct.rb_node** %rb_subtree_gap68 to i64*
  %22 = load i64, i64* %21, align 8
  %cmp69.not = icmp ult i64 %22, %add
  br i1 %cmp69.not, label %while.cond76.preheader, label %while.cond.backedge

while.cond76.preheader:                           ; preds = %if.then59, %if.end56
  br label %while.cond76

while.cond76:                                     ; preds = %while.cond76.preheader, %if.end81
  %vma.6 = phi %struct.vm_area_struct* [ %25, %if.end81 ], [ %vma.3207, %while.cond76.preheader ]
  %vm_rb78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.6, i64 0, i32 4
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %vm_rb78, i64 0, i32 0
  %23 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %23, -4
  %tobool79.not = icmp eq i64 %and, 0
  br i1 %tobool79.not, label %check_highest, label %if.end81

if.end81:                                         ; preds = %while.cond76
  %24 = inttoptr i64 %and to i8*
  %add.ptr89 = getelementptr i8, i8* %24, i64 -32
  %25 = bitcast i8* %add.ptr89 to %struct.vm_area_struct*
  %26 = inttoptr i64 %and to %struct.rb_node*
  %rb_left91 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %26, i64 0, i32 2
  %27 = load %struct.rb_node*, %struct.rb_node** %rb_left91, align 8
  %cmp92 = icmp eq %struct.rb_node* %vm_rb78, %27
  br i1 %cmp92, label %check_current.loopexit, label %while.cond76

check_highest:                                    ; preds = %while.cond76, %if.end17, %if.end12
  %highest_vm_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 7
  %28 = load i64, i64* %highest_vm_end, align 8
  %cmp101 = icmp ugt i64 %28, %sub
  br i1 %cmp101, label %cleanup113, label %found

found:                                            ; preds = %if.end48, %check_highest
  %gap_start.3 = phi i64 [ %28, %check_highest ], [ %gap_start.0206, %if.end48 ]
  %cmp105 = icmp ult i64 %gap_start.3, %6
  %spec.select = select i1 %cmp105, i64 %6, i64 %gap_start.3
  %align_offset = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 5
  %29 = load i64, i64* %align_offset, align 8
  %sub109 = sub i64 %29, %spec.select
  %and111 = and i64 %sub109, %4
  %add112 = add i64 %and111, %spec.select
  br label %cleanup113

cleanup113:                                       ; preds = %cond.end, %check_current.loopexit, %check_highest, %if.end7, %if.end, %entry, %found
  %retval.0 = phi i64 [ %add112, %found ], [ -12, %entry ], [ -12, %if.end ], [ -12, %if.end7 ], [ -12, %check_highest ], [ -12, %check_current.loopexit ], [ -12, %cond.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @arch_get_unmapped_area(%struct.file* nocapture noundef readnone %filp, i64 noundef %addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %info = alloca %struct.vm_unmapped_area_info, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %4 = bitcast %struct.vm_unmapped_area_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #20
  %cmp = icmp ugt i64 %addr, 549755813888
  %5 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %5
  %cond = select i1 %cmp, i64 %shl, i64 549755813888
  %6 = load i64, i64* @mmap_min_addr, align 8
  %sub = sub i64 %cond, %6
  %cmp2 = icmp ult i64 %sub, %len
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %flags, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq i64 %addr, 0
  br i1 %tobool5.not, label %if.end24, label %if.then6

if.then6:                                         ; preds = %if.end4
  %add = add i64 %addr, 4095
  %and7 = and i64 %add, -4096
  %call8 = call %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* noundef %2, i64 noundef %and7, %struct.vm_area_struct** noundef nonnull %prev) #18
  %sub9 = sub i64 %cond, %len
  %cmp10.not = icmp ult i64 %sub9, %and7
  %7 = load i64, i64* @mmap_min_addr, align 8
  %cmp11.not = icmp ult i64 %and7, %7
  %or.cond = select i1 %cmp10.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.end24, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.then6
  %tobool13.not = icmp eq %struct.vm_area_struct* %call8, null
  br i1 %tobool13.not, label %land.lhs.true17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %add14 = add i64 %and7, %len
  %call15 = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef nonnull %call8) #18
  %cmp16.not = icmp ugt i64 %add14, %call15
  br i1 %cmp16.not, label %if.end24, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %lor.lhs.false, %land.lhs.true12
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %tobool18.not = icmp eq %struct.vm_area_struct* %8, null
  br i1 %tobool18.not, label %cleanup, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %call20 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef nonnull %8) #18
  %cmp21.not = icmp ult i64 %and7, %call20
  br i1 %cmp21.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.then6, %lor.lhs.false, %lor.lhs.false19, %if.end4
  %flags25 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 0
  store i64 0, i64* %flags25, align 8
  %length = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 1
  store i64 %len, i64* %length, align 8
  %mmap_base = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 4
  %9 = load i64, i64* %mmap_base, align 8
  %low_limit = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 2
  store i64 %9, i64* %low_limit, align 8
  %high_limit = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 3
  store i64 %cond, i64* %high_limit, align 8
  %align_mask = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 4
  store i64 0, i64* %align_mask, align 8
  %align_offset = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 5
  store i64 0, i64* %align_offset, align 8
  %call26 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* noundef nonnull %info) #18
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true17, %lor.lhs.false19, %if.end, %entry, %if.end24
  %retval.0 = phi i64 [ %call26, %if.end24 ], [ -12, %entry ], [ %addr, %if.end ], [ %and7, %lor.lhs.false19 ], [ %and7, %land.lhs.true17 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* noundef %mm, i64 noundef %addr, %struct.vm_area_struct** nocapture noundef writeonly %pprev) local_unnamed_addr #4 {
entry:
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %addr) #18
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 3
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %mm_rb = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 1
  %call1 = call %struct.rb_node* @rb_last(%struct.rb_root* noundef %mm_rb) #19
  %tobool2.not = icmp eq %struct.rb_node* %call1, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %call1, i64 -2, i32 2
  %1 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %cond = select i1 %tobool2.not, %struct.vm_area_struct* null, %struct.vm_area_struct* %1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.vm_area_struct* [ %cond, %if.else ], [ %0, %if.then ]
  store %struct.vm_area_struct* %storemerge, %struct.vm_area_struct** %pprev, align 8
  ret %struct.vm_area_struct* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vm_start_gap(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #10 {
entry:
  %vm_start1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start1, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %and = and i64 %1, 256
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @stack_guard_gap, align 8
  %3 = call i64 @llvm.usub.sat.i64(i64 %0, i64 %2)
  %vm_start.0 = select i1 %tobool.not, i64 %0, i64 %3
  ret i64 %vm_start.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @arch_get_unmapped_area_topdown(%struct.file* nocapture noundef readnone %filp, i64 noundef %addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %info = alloca %struct.vm_unmapped_area_info, align 8
  %0 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %4 = bitcast %struct.vm_unmapped_area_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 24, i1 false), !annotation !7
  %cmp = icmp ugt i64 %addr, 549755813888
  %5 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %5
  %cond = select i1 %cmp, i64 %shl, i64 549755813888
  %6 = load i64, i64* @mmap_min_addr, align 8
  %sub = sub i64 %cond, %6
  %cmp2 = icmp ult i64 %sub, %len
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %flags, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq i64 %addr, 0
  br i1 %tobool5.not, label %if.end24.thread, label %if.then6

if.end24.thread:                                  ; preds = %if.end4
  %flags2581 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 0
  store i64 1, i64* %flags2581, align 8
  %length82 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 1
  store i64 %len, i64* %length82, align 8
  %7 = icmp ugt i64 %6, 4096
  %cond3083 = select i1 %7, i64 %6, i64 4096
  %low_limit84 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 2
  store i64 %cond3083, i64* %low_limit84, align 8
  br label %cond.false36

if.then6:                                         ; preds = %if.end4
  %add = add i64 %addr, 4095
  %and7 = and i64 %add, -4096
  %call8 = call %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* noundef %3, i64 noundef %and7, %struct.vm_area_struct** noundef nonnull %prev) #18
  %sub9 = sub i64 %cond, %len
  %cmp10.not = icmp ult i64 %sub9, %and7
  %8 = load i64, i64* @mmap_min_addr, align 8
  %cmp11.not = icmp ult i64 %and7, %8
  %or.cond = select i1 %cmp10.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.end24, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.then6
  %tobool13.not = icmp eq %struct.vm_area_struct* %call8, null
  br i1 %tobool13.not, label %land.lhs.true17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %add14 = add i64 %and7, %len
  %call15 = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef nonnull %call8) #18
  %cmp16.not = icmp ugt i64 %add14, %call15
  br i1 %cmp16.not, label %if.end24, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %lor.lhs.false, %land.lhs.true12
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %tobool18.not = icmp eq %struct.vm_area_struct* %9, null
  br i1 %tobool18.not, label %cleanup, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %call20 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef nonnull %9) #18
  %cmp21.not = icmp ult i64 %and7, %call20
  br i1 %cmp21.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.then6, %lor.lhs.false, %lor.lhs.false19
  %flags25 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 0
  store i64 1, i64* %flags25, align 8
  %length = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 1
  store i64 %len, i64* %length, align 8
  %10 = icmp ugt i64 %8, 4096
  %cond30 = select i1 %10, i64 %8, i64 4096
  %low_limit = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 2
  store i64 %cond30, i64* %low_limit, align 8
  %cmp31 = icmp ugt i64 %and7, 549755813888
  br i1 %cmp31, label %cond.true32, label %cond.false36

cond.true32:                                      ; preds = %if.end24
  %mmap_base = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 4
  %11 = load i64, i64* %mmap_base, align 8
  %12 = load i64, i64* @vabits_actual, align 8
  %shl33 = shl nuw i64 1, %12
  %add34 = add i64 %11, -549755813888
  %sub35 = add i64 %add34, %shl33
  br label %cond.end38

cond.false36:                                     ; preds = %if.end24.thread, %if.end24
  %low_limit89 = phi i64* [ %low_limit84, %if.end24.thread ], [ %low_limit, %if.end24 ]
  %mmap_base37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 4
  %13 = load i64, i64* %mmap_base37, align 8
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false36, %cond.true32
  %low_limit88 = phi i64* [ %low_limit, %cond.true32 ], [ %low_limit89, %cond.false36 ]
  %cond39 = phi i64 [ %sub35, %cond.true32 ], [ %13, %cond.false36 ]
  %high_limit = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 3
  store i64 %cond39, i64* %high_limit, align 8
  %align_mask = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 4
  store i64 0, i64* %align_mask, align 8
  %align_offset = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 5
  store i64 0, i64* %align_offset, align 8
  %call40 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* noundef nonnull %info) #18
  %and41 = and i64 %call40, 4095
  %tobool42.not = icmp eq i64 %and41, 0
  br i1 %tobool42.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %cond.end38
  %flags2586 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %info, i64 0, i32 0
  store i64 0, i64* %flags2586, align 8
  store i64 137438953472, i64* %low_limit88, align 8
  store i64 %cond, i64* %high_limit, align 8
  %call47 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* noundef nonnull %info) #18
  br label %cleanup

cleanup:                                          ; preds = %cond.end38, %if.then43, %land.lhs.true17, %lor.lhs.false19, %if.end, %entry
  %retval.0 = phi i64 [ -12, %entry ], [ %addr, %if.end ], [ %and7, %lor.lhs.false19 ], [ %and7, %land.lhs.true17 ], [ %call47, %if.then43 ], [ %call40, %cond.end38 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @shmem_get_unmapped_area(%struct.file* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_mmap_addr(i64 noundef %addr) unnamed_addr #4 {
entry:
  %call = call i32 @cap_mmap_addr(i64 noundef %addr) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %addr) local_unnamed_addr #4 {
entry:
  %call = call %struct.vm_area_struct* @vmacache_find(%struct.mm_struct* noundef %mm, i64 noundef %addr) #19
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup16, !prof !10

if.end:                                           ; preds = %entry
  %rb_node3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 1, i32 0
  %rb_node.042 = load %struct.rb_node*, %struct.rb_node** %rb_node3, align 8
  %tobool4.not43 = icmp eq %struct.rb_node* %rb_node.042, null
  br i1 %tobool4.not43, label %cleanup16, label %while.body

while.body:                                       ; preds = %if.end, %cleanup
  %rb_node.045 = phi %struct.rb_node* [ %rb_node.0, %cleanup ], [ %rb_node.042, %if.end ]
  %vma.044 = phi %struct.vm_area_struct* [ %vma.1, %cleanup ], [ null, %if.end ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_node.045, i64 -2, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %vm_end = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 1
  %1 = bitcast %struct.rb_node** %vm_end to i64*
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ugt i64 %2, %addr
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  %vm_start = bitcast %struct.rb_node** %add.ptr to i64*
  %3 = load i64, i64* %vm_start, align 8
  %cmp8.not = icmp ugt i64 %3, %addr
  br i1 %cmp8.not, label %if.end11, label %while.end.split.loop.exit49

if.end11:                                         ; preds = %if.then7
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.045, i64 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.045, i64 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else
  %vma.1 = phi %struct.vm_area_struct* [ %0, %if.end11 ], [ %vma.044, %if.else ]
  %rb_node.1.in = phi %struct.rb_node** [ %rb_left, %if.end11 ], [ %rb_right, %if.else ]
  %rb_node.0 = load %struct.rb_node*, %struct.rb_node** %rb_node.1.in, align 8
  %tobool4.not = icmp eq %struct.rb_node* %rb_node.0, null
  br i1 %tobool4.not, label %while.end, label %while.body

while.end.split.loop.exit49:                      ; preds = %if.then7
  %4 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  br label %while.end

while.end:                                        ; preds = %cleanup, %while.end.split.loop.exit49
  %vma.3 = phi %struct.vm_area_struct* [ %4, %while.end.split.loop.exit49 ], [ %vma.1, %cleanup ]
  %tobool13.not = icmp eq %struct.vm_area_struct* %vma.3, null
  br i1 %tobool13.not, label %cleanup16, label %if.then14

if.then14:                                        ; preds = %while.end
  call void @vmacache_update(i64 noundef %addr, %struct.vm_area_struct* noundef nonnull %vma.3) #19
  br label %cleanup16

cleanup16:                                        ; preds = %if.end, %while.end, %if.then14, %entry
  %retval.0 = phi %struct.vm_area_struct* [ %call, %entry ], [ %vma.3, %if.then14 ], [ null, %while.end ], [ null, %if.end ]
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vmacache_find(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmacache_update(i64 noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_last(%struct.rb_root* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @expand_downwards(%struct.vm_area_struct* noundef %vma, i64 noundef %address) local_unnamed_addr #4 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %and = and i64 %address, -4096
  %1 = load i64, i64* @mmap_min_addr, align 8
  %cmp = icmp ult i64 %and, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 3
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %2, null
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 8
  %3 = load i64, i64* %vm_flags, align 8
  %and1 = and i64 %3, 256
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end8

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call = call fastcc i1 @vma_is_accessible(%struct.vm_area_struct* noundef nonnull %2) #18
  br i1 %call, label %if.then4, label %if.end8

if.then4:                                         ; preds = %land.lhs.true3
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %sub = sub i64 %and, %4
  %5 = load i64, i64* @stack_guard_gap, align 8
  %cmp5 = icmp ult i64 %sub, %5
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then4, %land.lhs.true3, %land.lhs.true, %if.end
  %call9 = call fastcc i32 @anon_vma_prepare(%struct.vm_area_struct* noundef %vma) #18
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %cleanup, !prof !11

if.end14:                                         ; preds = %if.end8
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %6 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  call fastcc void @anon_vma_lock_write(%struct.anon_vma* noundef %6) #18
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %7 = load i64, i64* %vm_start, align 8
  %cmp15 = icmp ugt i64 %7, %and
  br i1 %cmp15, label %if.then17, label %if.end40

if.then17:                                        ; preds = %if.end14
  %sub21 = sub i64 %7, %and
  %shr = lshr i64 %sub21, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %8 = load i64, i64* %vm_pgoff, align 8
  %cmp22.not = icmp ugt i64 %shr, %8
  br i1 %cmp22.not, label %if.end40, label %if.then24

if.then24:                                        ; preds = %if.then17
  %vm_end18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %9 = load i64, i64* %vm_end18, align 8
  %sub19 = sub i64 %9, %and
  %call25 = call fastcc i32 @acct_stack_growth(%struct.vm_area_struct* noundef %vma, i64 noundef %sub19, i64 noundef %shr) #18
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end40

if.then27:                                        ; preds = %if.then24
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 14, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %vm_flags28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %10 = load i64, i64* %vm_flags28, align 8
  %and29 = and i64 %10, 8192
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.then27
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 20
  %11 = load i64, i64* %locked_vm, align 8
  %add = add i64 %11, %shr
  store i64 %add, i64* %locked_vm, align 8
  %.pre = load i64, i64* %vm_flags28, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then27
  %12 = phi i64 [ %.pre, %if.then31 ], [ %10, %if.then27 ]
  call void @vm_stat_account(%struct.mm_struct* noundef %0, i64 noundef %12, i64 noundef %shr) #18
  call fastcc void @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct* noundef %vma) #18
  store i64 %and, i64* %vm_start, align 8
  %13 = load i64, i64* %vm_pgoff, align 8
  %sub36 = sub i64 %13, %shr
  store i64 %sub36, i64* %vm_pgoff, align 8
  call fastcc void @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* noundef %vma) #18
  call fastcc void @vma_gap_update(%struct.vm_area_struct* noundef %vma) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end40

if.end40:                                         ; preds = %if.then17, %if.end32, %if.then24, %if.end14
  %error.1 = phi i32 [ 0, %if.end14 ], [ %call25, %if.then24 ], [ 0, %if.end32 ], [ -12, %if.then17 ]
  %14 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  call fastcc void @anon_vma_unlock_write(%struct.anon_vma* noundef %14) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %entry, %if.end40
  %retval.0 = phi i32 [ %error.1, %if.end40 ], [ -1, %entry ], [ -12, %if.then4 ], [ -12, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_accessible(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 7
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @anon_vma_prepare(%struct.vm_area_struct* noundef %vma) unnamed_addr #4 {
entry:
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool.not = icmp eq %struct.anon_vma* %0, null
  br i1 %tobool.not, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %call = call i32 @__anon_vma_prepare(%struct.vm_area_struct* noundef %vma) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @acct_stack_growth(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %size, i64 noundef %grow) unnamed_addr #4 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %call = call i1 @may_expand_vm(%struct.mm_struct* noundef %0, i64 noundef %1, i64 noundef %grow) #18
  br i1 %call, label %if.end, label %cleanup25

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @rlimit(i32 noundef 3) #18
  %cmp = icmp ult i64 %call1, %size
  br i1 %cmp, label %cleanup25, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = load i64, i64* %vm_flags, align 8
  %and = and i64 %2, 8192
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cond.end, label %if.then5

if.then5:                                         ; preds = %if.end3
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 20
  %3 = load i64, i64* %locked_vm, align 8
  %add = add i64 %3, %grow
  %call6 = call fastcc i64 @rlimit(i32 noundef 8) #18
  %shr = lshr i64 %call6, 12
  %cmp7 = icmp ugt i64 %add, %shr
  br i1 %cmp7, label %land.lhs.true, label %cond.end

land.lhs.true:                                    ; preds = %if.then5
  %call8 = call i1 @capable(i32 noundef 14) #19
  br i1 %call8, label %cond.end, label %cleanup25

cond.end:                                         ; preds = %land.lhs.true, %if.then5, %if.end3
  %call21 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %0, i64 noundef %grow) #18
  %tobool22.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool22.not, i32 0, i32 -12
  br label %cleanup25

cleanup25:                                        ; preds = %cond.end, %land.lhs.true, %if.end, %entry
  %retval.1 = phi i32 [ -12, %entry ], [ -12, %if.end ], [ -12, %land.lhs.true ], [ %spec.select, %cond.end ]
  ret i32 %retval.1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @cmdline_parse_stack_guard_gap(i8* noundef %p) #11 section ".init.text" {
entry:
  %endptr = alloca i8*, align 8
  %0 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i8* null, i8** %endptr, align 8, !annotation !7
  %call = call i64 @simple_strtoul(i8* noundef %p, i8** noundef nonnull %endptr, i32 noundef 10) #19
  %1 = load i8*, i8** %endptr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %shl = shl i64 %call, 12
  store i64 %shl, i64* @stack_guard_gap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @expand_stack(%struct.vm_area_struct* noundef %vma, i64 noundef %address) local_unnamed_addr #4 {
entry:
  %call = call i32 @expand_downwards(%struct.vm_area_struct* noundef %vma, i64 noundef %address) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct* noundef %mm, i64 noundef %addr) local_unnamed_addr #4 {
entry:
  %and = and i64 %addr, -4096
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %and) #18
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp.not = icmp ugt i64 %0, %and
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %and3 = and i64 %1, 256
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call8 = call i32 @expand_stack(%struct.vm_area_struct* noundef nonnull %call, i64 noundef %and) #18
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end6
  %2 = load i64, i64* %vm_flags, align 8
  %and13 = and i64 %2, 8192
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.end11
  %call16 = call i64 @populate_vma_page_range(%struct.vm_area_struct* noundef nonnull %call, i64 noundef %and, i64 noundef %0, i32* noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then15, %if.end6, %if.end2, %if.end, %entry
  %retval.0 = phi %struct.vm_area_struct* [ null, %entry ], [ %call, %if.end ], [ null, %if.end2 ], [ null, %if.end6 ], [ %call, %if.then15 ], [ %call, %if.end11 ]
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @populate_vma_page_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i32* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__split_vma(%struct.mm_struct* nocapture readnone %mm, %struct.vm_area_struct* noundef %vma, i64 noundef %addr, i32 noundef %new_below) local_unnamed_addr #4 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %0, null
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %may_split = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %0, i64 0, i32 2
  %1 = load i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*, i64)** %may_split, align 8
  %tobool2.not = icmp eq i32 (%struct.vm_area_struct*, i64)* %1, null
  br i1 %tobool2.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 %1(%struct.vm_area_struct* noundef %vma, i64 noundef %addr) #19
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.then, %land.lhs.true, %entry
  %call8 = call %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* noundef %vma) #19
  %tobool9.not = icmp eq %struct.vm_area_struct* %call8, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %tobool12.not = icmp eq i32 %new_below, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call8, i64 0, i32 1
  store i64 %addr, i64* %vm_end, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end11
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call8, i64 0, i32 0
  store i64 %addr, i64* %vm_start, align 8
  %vm_start14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %2 = load i64, i64* %vm_start14, align 8
  %sub = sub i64 %addr, %2
  %shr = lshr i64 %sub, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call8, i64 0, i32 13
  %3 = load i64, i64* %vm_pgoff, align 8
  %add = add i64 %shr, %3
  store i64 %add, i64* %vm_pgoff, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %call20 = call i32 @anon_vma_clone(%struct.vm_area_struct* noundef nonnull %call8, %struct.vm_area_struct* noundef %vma) #19
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %out_free_mpol

if.end23:                                         ; preds = %if.end15
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call8, i64 0, i32 14
  %4 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool24.not = icmp eq %struct.file* %4, null
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call27 = call fastcc %struct.file* @get_file(%struct.file* noundef nonnull %4) #18
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23
  %vm_ops29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call8, i64 0, i32 12
  %5 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops29, align 8
  %tobool30.not = icmp eq %struct.vm_operations_struct* %5, null
  br i1 %tobool30.not, label %if.end39, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %open33 = bitcast %struct.vm_operations_struct* %5 to void (%struct.vm_area_struct*)**
  %6 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %open33, align 8
  %tobool34.not = icmp eq void (%struct.vm_area_struct*)* %6, null
  br i1 %tobool34.not, label %if.end39, label %if.then35

if.then35:                                        ; preds = %land.lhs.true31
  call void %6(%struct.vm_area_struct* noundef nonnull %call8) #19
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true31, %if.end28
  br i1 %tobool12.not, label %if.else49, label %if.then41

if.then41:                                        ; preds = %if.end39
  %vm_end42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %7 = load i64, i64* %vm_end42, align 8
  %vm_pgoff43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %8 = load i64, i64* %vm_pgoff43, align 8
  %vm_start44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call8, i64 0, i32 0
  %9 = load i64, i64* %vm_start44, align 8
  %sub45 = sub i64 %addr, %9
  %shr46 = lshr i64 %sub45, 12
  %add47 = add i64 %shr46, %8
  %call48 = call fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %7, i64 noundef %add47, %struct.vm_area_struct* noundef nonnull %call8) #18
  br label %if.end53

if.else49:                                        ; preds = %if.end39
  %vm_start50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %10 = load i64, i64* %vm_start50, align 8
  %vm_pgoff51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %11 = load i64, i64* %vm_pgoff51, align 8
  %call52 = call fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %10, i64 noundef %addr, i64 noundef %11, %struct.vm_area_struct* noundef nonnull %call8) #18
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then41
  %err.0 = phi i32 [ %call48, %if.then41 ], [ %call52, %if.else49 ]
  %tobool54.not = icmp eq i32 %err.0, 0
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end53
  %12 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops29, align 8
  %tobool58.not = icmp eq %struct.vm_operations_struct* %12, null
  br i1 %tobool58.not, label %if.end67, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end56
  %close = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %12, i64 0, i32 1
  %close61 = bitcast {}** %close to void (%struct.vm_area_struct*)**
  %13 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %close61, align 8
  %tobool62.not = icmp eq void (%struct.vm_area_struct*)* %13, null
  br i1 %tobool62.not, label %if.end67, label %if.then63

if.then63:                                        ; preds = %land.lhs.true59
  call void %13(%struct.vm_area_struct* noundef nonnull %call8) #19
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true59, %if.end56
  %14 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool69.not = icmp eq %struct.file* %14, null
  br i1 %tobool69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %if.end67
  call void @fput(%struct.file* noundef nonnull %14) #19
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end67
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef nonnull %call8) #19
  br label %out_free_mpol

out_free_mpol:                                    ; preds = %if.end15, %if.end72
  %err.1 = phi i32 [ %call20, %if.end15 ], [ %err.0, %if.end72 ]
  call void @vm_area_free(%struct.vm_area_struct* noundef nonnull %call8) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end7, %if.then, %out_free_mpol
  %retval.0 = phi i32 [ %err.1, %out_free_mpol ], [ %call, %if.then ], [ -12, %if.end7 ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 noundef %pgoff, %struct.vm_area_struct* noundef %insert) unnamed_addr #4 {
entry:
  %call = call i32 @__vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 noundef %pgoff, %struct.vm_area_struct* noundef %insert, %struct.vm_area_struct* noundef null) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(%struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @split_vma(%struct.mm_struct* nocapture noundef readonly %mm, %struct.vm_area_struct* noundef %vma, i64 noundef %addr, i32 noundef %new_below) local_unnamed_addr #4 {
entry:
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 13
  %0 = load i32, i32* %map_count, align 8
  %1 = load i32, i32* @sysctl_max_map_count, align 4
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call i32 @__split_vma(%struct.mm_struct* undef, %struct.vm_area_struct* noundef %vma, i64 noundef %addr, i32 noundef %new_below) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__do_munmap(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %len, %struct.list_head* noundef readnone %uf, i1 noundef %downgrade) local_unnamed_addr #4 {
entry:
  %and = and i64 %start, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup63

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %0
  %cmp = icmp ult i64 %shl, %start
  %sub = sub i64 %shl, %start
  %cmp3 = icmp ult i64 %sub, %len
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %cleanup63, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %add = add i64 %len, 4095
  %and4 = and i64 %add, -4096
  %add5 = add i64 %and4, %start
  %cmp6 = icmp eq i64 %and4, 0
  br i1 %cmp6, label %cleanup63, label %if.end8

if.end8:                                          ; preds = %if.end
  %call = call fastcc %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %add5) #18
  %tobool9.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool9.not, label %cleanup63, label %if.end11

if.end11:                                         ; preds = %if.end8
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 3
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  %cmp12 = icmp ult i64 %2, %start
  br i1 %cmp12, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.end11
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  %3 = load i64, i64* %vm_end, align 8
  %cmp14 = icmp ult i64 %add5, %3
  br i1 %cmp14, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then13
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 13
  %4 = load i32, i32* %map_count, align 8
  %5 = load i32, i32* @sysctl_max_map_count, align 4
  %cmp15.not = icmp slt i32 %4, %5
  br i1 %cmp15.not, label %cleanup, label %cleanup63

cleanup:                                          ; preds = %if.then13, %land.lhs.true
  %call18 = call i32 @__split_vma(%struct.mm_struct* undef, %struct.vm_area_struct* noundef nonnull %call, i64 noundef %start, i32 noundef 0) #18
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %cleanup63

if.end22:                                         ; preds = %cleanup, %if.end11
  %prev.1 = phi %struct.vm_area_struct* [ %call, %cleanup ], [ %1, %if.end11 ]
  %call23 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %add5) #18
  %tobool24.not = icmp eq %struct.vm_area_struct* %call23, null
  br i1 %tobool24.not, label %if.end37, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end22
  %vm_start26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call23, i64 0, i32 0
  %6 = load i64, i64* %vm_start26, align 8
  %cmp27 = icmp ugt i64 %add5, %6
  br i1 %cmp27, label %if.then28, label %if.end37

if.then28:                                        ; preds = %land.lhs.true25
  %call30 = call i32 @__split_vma(%struct.mm_struct* undef, %struct.vm_area_struct* noundef nonnull %call23, i64 noundef %add5, i32 noundef 1) #18
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %cleanup63

if.end37:                                         ; preds = %if.then28, %land.lhs.true25, %if.end22
  %call38 = call fastcc %struct.vm_area_struct* @vma_next(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %prev.1) #18
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 20
  %7 = load i64, i64* %locked_vm, align 8
  %tobool52.not = icmp eq i64 %7, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end37
  call fastcc void @unlock_range(%struct.vm_area_struct* noundef %call38, i64 noundef %add5) #18
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end37
  %call55 = call fastcc i1 @detach_vmas_to_be_unmapped(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %call38, %struct.vm_area_struct* noundef %prev.1, i64 noundef %add5) #18
  %spec.select = and i1 %call55, %downgrade
  br i1 %spec.select, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end54
  call fastcc void @mmap_write_downgrade(%struct.mm_struct* noundef %mm) #18
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end54
  call fastcc void @unmap_region(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %call38, %struct.vm_area_struct* noundef %prev.1, i64 noundef %start, i64 noundef %add5) #18
  call fastcc void @remove_vma_list(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %call38) #18
  %cond = zext i1 %spec.select to i32
  br label %cleanup63

cleanup63:                                        ; preds = %land.lhs.true, %if.end8, %if.end, %entry, %lor.lhs.false, %cleanup, %if.then28, %if.end60
  %retval.5 = phi i32 [ %cond, %if.end60 ], [ %call30, %if.then28 ], [ %call18, %cleanup ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -22, %if.end ], [ 0, %if.end8 ], [ -12, %land.lhs.true ]
  ret i32 %retval.5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_range(%struct.vm_area_struct* noundef %start, i64 noundef %limit) unnamed_addr #4 {
entry:
  %tobool.not10 = icmp eq %struct.vm_area_struct* %start, null
  br i1 %tobool.not10, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %start, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end
  %tmp.011 = phi %struct.vm_area_struct* [ %start, %land.rhs.lr.ph ], [ %4, %if.end ]
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %tmp.011, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %cmp = icmp ult i64 %1, %limit
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %tmp.011, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %and = and i64 %2, 8192
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef nonnull %tmp.011) #18
  %3 = load i64, i64* %locked_vm, align 8
  %sub = sub i64 %3, %call
  store i64 %sub, i64* %locked_vm, align 8
  call fastcc void @munlock_vma_pages_all(%struct.vm_area_struct* noundef nonnull %tmp.011) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %tmp.011, i64 0, i32 2
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %4, null
  br i1 %tobool.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @detach_vmas_to_be_unmapped(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %prev, i64 noundef %end) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.vm_area_struct* %prev, null
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 2
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %cond = select i1 %tobool.not, %struct.vm_area_struct** %mmap, %struct.vm_area_struct** %vm_next
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 3
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vm_prev, align 8
  %mm_rb = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 1
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %vma.addr.0 = phi %struct.vm_area_struct* [ %vma, %entry ], [ %1, %land.rhs ]
  call fastcc void @__vma_rb_erase(%struct.vm_area_struct* noundef %vma.addr.0, %struct.rb_root* noundef %mm_rb) #19
  %0 = load i32, i32* %map_count, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %map_count, align 8
  %vm_next1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 2
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next1, align 8
  %tobool2.not = icmp eq %struct.vm_area_struct* %1, null
  br i1 %tobool2.not, label %if.else, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  %cmp = icmp ult i64 %2, %end
  br i1 %cmp, label %do.body, label %land.lhs.true

if.else:                                          ; preds = %do.body
  %vm_next1.le54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %cond, align 8
  br i1 %tobool.not, label %if.end.thread, label %cond.true6

cond.true6:                                       ; preds = %if.else
  %call = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef nonnull %prev) #18
  br label %if.end.thread

if.end.thread:                                    ; preds = %cond.true6, %if.else
  %cond9 = phi i64 [ %call, %cond.true6 ], [ 0, %if.else ]
  %highest_vm_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 7
  store i64 %cond9, i64* %highest_vm_end, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vm_next1.le54, align 8
  call fastcc void @vmacache_invalidate(%struct.mm_struct* noundef %mm) #18
  br label %if.end14

land.lhs.true:                                    ; preds = %land.rhs
  %vm_next1.le = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 2
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %cond, align 8
  %vm_prev4 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 3
  store %struct.vm_area_struct* %prev, %struct.vm_area_struct** %vm_prev4, align 8
  call fastcc void @vma_gap_update(%struct.vm_area_struct* noundef nonnull %1) #18
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vm_next1.le, align 8
  call fastcc void @vmacache_invalidate(%struct.mm_struct* noundef %mm) #18
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 8
  %3 = load i64, i64* %vm_flags, align 8
  %and = and i64 %3, 256
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end.thread, %land.lhs.true
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end14
  %retval.0 = phi i1 [ true, %if.end14 ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_downgrade(%struct.mm_struct* noundef %mm) unnamed_addr #4 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @downgrade_write(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_vma_list(%struct.mm_struct* nocapture noundef %mm, %struct.vm_area_struct* noundef %vma) unnamed_addr #4 {
entry:
  call fastcc void @update_hiwater_vm(%struct.mm_struct* noundef %mm) #18
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %vma.addr.0 = phi %struct.vm_area_struct* [ %vma, %entry ], [ %call2, %do.body ]
  %nr_accounted.0 = phi i64 [ 0, %entry ], [ %spec.select, %do.body ]
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %vma.addr.0) #18
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 1048576
  %tobool.not = icmp eq i64 %and, 0
  %add = select i1 %tobool.not, i64 0, i64 %call
  %spec.select = add i64 %add, %nr_accounted.0
  %sub = sub i64 0, %call
  call void @vm_stat_account(%struct.mm_struct* noundef %mm, i64 noundef %0, i64 noundef %sub) #18
  %call2 = call fastcc %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct* noundef %vma.addr.0) #18
  %tobool3.not = icmp eq %struct.vm_area_struct* %call2, null
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call fastcc void @vm_unacct_memory(i64 noundef %spec.select) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_munmap(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %len, %struct.list_head* noundef %uf) local_unnamed_addr #4 {
entry:
  %call = call i32 @__do_munmap(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %len, %struct.list_head* noundef %uf, i1 noundef false) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_munmap(i64 noundef %start, i64 noundef %len) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__vm_munmap(i64 noundef %start, i64 noundef %len, i1 noundef false) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__vm_munmap(i64 noundef %start, i64 noundef %len, i1 noundef %downgrade) unnamed_addr #4 {
entry:
  %uf = alloca %struct.list_head, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.list_head* %uf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #20
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 0
  store %struct.list_head* %uf, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 1
  store %struct.list_head* %uf, %struct.list_head** %prev, align 8
  %call2 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @__do_munmap(%struct.mm_struct* noundef %2, i64 noundef %start, i64 noundef %len, %struct.list_head* noundef nonnull %uf, i1 noundef %downgrade) #18
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #18
  br label %cleanup

if.else:                                          ; preds = %if.end
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ 0, %if.then5 ], [ %call4, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_munmap(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_munmap(i64 noundef %0, i64 noundef %1) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_munmap(i64 noundef %addr, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__do_sys_munmap(i64 noundef %addr, i64 noundef %len) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_remap_file_pages(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_remap_file_pages(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_remap_file_pages(i64 noundef %start, i64 noundef %size, i64 noundef %prot, i64 noundef %pgoff, i64 noundef %flags) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__do_sys_remap_file_pages(i64 noundef %start, i64 noundef %size, i64 noundef %prot, i64 noundef %pgoff, i64 noundef %flags) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_brk_flags(i64 noundef %addr, i64 noundef %request, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %uf = alloca %struct.list_head, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.list_head* %uf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #20
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 0
  store %struct.list_head* %uf, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 1
  store %struct.list_head* %uf, %struct.list_head** %prev, align 8
  %add = add i64 %request, 4095
  %and = and i64 %add, -4096
  %cmp = icmp ult i64 %and, %request
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call fastcc i32 @do_brk_flags(i64 noundef %addr, i64 noundef %and, i64 noundef %flags, %struct.list_head* noundef nonnull %uf) #18
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 25
  %4 = load i64, i64* %def_flags, align 8
  %and9 = and i64 %4, 8192
  %cmp10.not = icmp eq i64 %and9, 0
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  %tobool12 = icmp ne i32 %call8, 0
  %or.cond = select i1 %cmp10.not, i1 true, i1 %tobool12
  br i1 %or.cond, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end7
  call fastcc void @mm_populate(i64 noundef %addr, i64 noundef %and) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then13, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.end ], [ -4, %if.end3 ], [ 0, %if.then13 ], [ %call8, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #4 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_brk_flags(i64 noundef %addr, i64 noundef %len, i64 noundef %flags, %struct.list_head* noundef %uf) unnamed_addr #4 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %rb_link = alloca %struct.rb_node**, align 8
  %rb_parent = alloca %struct.rb_node*, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %4 = bitcast %struct.rb_node*** %rb_link to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20
  store %struct.rb_node** null, %struct.rb_node*** %rb_link, align 8, !annotation !7
  %5 = bitcast %struct.rb_node** %rb_parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20
  store %struct.rb_node* null, %struct.rb_node** %rb_parent, align 8, !annotation !7
  %shr = lshr i64 %addr, 12
  %and = and i64 %flags, -5
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %6 = load i32, i32* %personality, align 16
  %and3 = lshr i32 %6, 20
  %7 = and i32 %and3, 4
  %or8 = or i32 %7, 1048691
  %conv = zext i32 %or8 to i64
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 25
  %8 = load i64, i64* %def_flags, align 8
  %or9 = or i64 %8, %flags
  %or10 = or i64 %or9, %conv
  %call11 = call i64 @get_unmapped_area(%struct.file* noundef null, i64 noundef %addr, i64 noundef %len, i64 noundef 0, i64 noundef 16) #18
  %cmp12 = icmp ugt i64 %call11, -4096
  br i1 %cmp12, label %if.then17, label %if.end19, !prof !10

if.then17:                                        ; preds = %if.end
  %conv18 = trunc i64 %call11 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %9 = load i64, i64* %def_flags, align 8
  %call21 = call i32 @mlock_future_check(%struct.mm_struct* noundef %2, i64 noundef %9, i64 noundef %len) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end19
  %call25 = call fastcc i32 @munmap_vma_range(%struct.mm_struct* noundef %2, i64 noundef %addr, i64 noundef %len, %struct.vm_area_struct** noundef nonnull %prev, %struct.rb_node*** noundef nonnull %rb_link, %struct.rb_node** noundef nonnull %rb_parent, %struct.list_head* noundef %uf) #18
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.end24
  %shr29 = lshr i64 %len, 12
  %call30 = call i1 @may_expand_vm(%struct.mm_struct* noundef %2, i64 noundef %or10, i64 noundef %shr29) #18
  br i1 %call30, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.end28
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 13
  %10 = load i32, i32* %map_count, align 8
  %11 = load i32, i32* @sysctl_max_map_count, align 4
  %cmp33 = icmp sgt i32 %10, %11
  br i1 %cmp33, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end32
  %call38 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %2, i64 noundef %shr29) #18
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.end36
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %add = add i64 %len, %addr
  %call42 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef %12, i64 noundef %addr, i64 noundef %add, i64 noundef %or10, %struct.anon_vma* noundef null, %struct.file* noundef null, i64 noundef %shr, %struct.mempolicy* undef) #18
  %tobool43.not = icmp eq %struct.vm_area_struct* %call42, null
  br i1 %tobool43.not, label %if.end45, label %out

if.end45:                                         ; preds = %if.end41
  %call46 = call %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* noundef %2) #19
  %tobool47.not = icmp eq %struct.vm_area_struct* %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end45
  call fastcc void @vm_unacct_memory(i64 noundef %shr29) #18
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call fastcc void @vma_set_anonymous(%struct.vm_area_struct* noundef nonnull %call46) #18
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call46, i64 0, i32 0
  store i64 %addr, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call46, i64 0, i32 1
  store i64 %add, i64* %vm_end, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call46, i64 0, i32 13
  store i64 %shr, i64* %vm_pgoff, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call46, i64 0, i32 8
  store i64 %or10, i64* %vm_flags, align 8
  %call52 = call i64 @vm_get_page_prot(i64 noundef %or10) #18
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call46, i64 0, i32 7, i32 0
  store i64 %call52, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %13 = load %struct.rb_node**, %struct.rb_node*** %rb_link, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %rb_parent, align 8
  call fastcc void @vma_link(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef nonnull %call46, %struct.vm_area_struct* noundef %12, %struct.rb_node** noundef %13, %struct.rb_node* noundef %14) #18
  br label %out

out:                                              ; preds = %if.end41, %if.end50
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 19
  %15 = load i64, i64* %total_vm, align 8
  %add54 = add i64 %15, %shr29
  store i64 %add54, i64* %total_vm, align 8
  %data_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 22
  %16 = load i64, i64* %data_vm, align 8
  %add56 = add i64 %16, %shr29
  store i64 %add56, i64* %data_vm, align 8
  %and57 = and i64 %or9, 8192
  %tobool58.not = icmp eq i64 %and57, 0
  br i1 %tobool58.not, label %cleanup, label %if.then59

if.then59:                                        ; preds = %out
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 20
  %17 = load i64, i64* %locked_vm, align 8
  %add61 = add i64 %17, %shr29
  store i64 %add61, i64* %locked_vm, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then59, %if.end36, %if.end32, %if.end28, %if.end24, %if.end19, %entry, %if.then48, %if.then17
  %retval.0 = phi i32 [ %conv18, %if.then17 ], [ -12, %if.then48 ], [ -22, %entry ], [ %call21, %if.end19 ], [ -12, %if.end24 ], [ -12, %if.end28 ], [ -12, %if.end32 ], [ -12, %if.end36 ], [ 0, %if.then59 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #4 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_populate(i64 noundef %addr, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = call i32 @__mm_populate(i64 noundef %addr, i64 noundef %len, i32 noundef 1) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_brk(i64 noundef %addr, i64 noundef %len) local_unnamed_addr #4 {
entry:
  %call = call i32 @vm_brk_flags(i64 noundef %addr, i64 noundef %len, i64 noundef 0) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_mmap(%struct.mm_struct* noundef %mm) local_unnamed_addr #4 {
entry:
  %tlb = alloca %struct.mmu_gather, align 8
  %0 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !7
  %call = call fastcc i1 @mm_is_oom_victim(%struct.mm_struct* noundef %mm) #18
  br i1 %call, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  %call2 = call i1 @__oom_reap_task_mm(%struct.mm_struct* noundef %mm) #19
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  call fastcc void @set_bit(i64* noundef %flags) #18
  call fastcc void @mmap_write_lock(%struct.mm_struct* noundef %mm) #18
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 20
  %1 = load i64, i64* %locked_vm, align 8
  %tobool3.not = icmp eq i64 %1, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  call fastcc void @unlock_range(%struct.vm_area_struct* noundef %2, i64 noundef -1) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %mmap6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap6, align 8
  %tobool7.not = icmp eq %struct.vm_area_struct* %3, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  call void @lru_add_drain() #19
  call void @tlb_gather_mmu_fullmm(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %mm) #19
  call void @unmap_vmas(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef nonnull %3, i64 noundef 0, i64 noundef -1) #19
  call void @free_pgtables(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef nonnull %3, i64 noundef 0, i64 noundef 0) #19
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #19
  br label %while.body

while.body:                                       ; preds = %if.end9, %if.end14
  %vma.041 = phi %struct.vm_area_struct* [ %3, %if.end9 ], [ %call15, %if.end14 ]
  %nr_accounted.040 = phi i64 [ 0, %if.end9 ], [ %nr_accounted.1, %if.end14 ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.041, i64 0, i32 8
  %4 = load i64, i64* %vm_flags, align 8
  %and = and i64 %4, 1048576
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %while.body
  %call13 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef nonnull %vma.041) #18
  %add = add i64 %call13, %nr_accounted.040
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %while.body
  %nr_accounted.1 = phi i64 [ %add, %if.then12 ], [ %nr_accounted.040, %while.body ]
  %call15 = call fastcc %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct* noundef nonnull %vma.041) #18
  call fastcc void @_cond_resched() #18
  %tobool10.not = icmp eq %struct.vm_area_struct* %call15, null
  br i1 %tobool10.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end14
  call fastcc void @vm_unacct_memory(i64 noundef %nr_accounted.1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %while.end
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @mm_is_oom_victim(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 33554432
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__oom_reap_task_mm(%struct.mm_struct* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #4 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_lock(%struct.mm_struct* noundef %mm) unnamed_addr #4 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_write(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu_fullmm(%struct.mmu_gather* noundef, %struct.mm_struct* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_vmas(%struct.mmu_gather* noundef, %struct.vm_area_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pgtables(%struct.mmu_gather* noundef, %struct.vm_area_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(%struct.mmu_gather* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct* noundef %vma) unnamed_addr #4 {
entry:
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %close = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %1, i64 0, i32 1
  %close5 = bitcast {}** %close to void (%struct.vm_area_struct*)**
  %2 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %close5, align 8
  %tobool6.not = icmp eq void (%struct.vm_area_struct*)* %2, null
  br i1 %tobool6.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %2(%struct.vm_area_struct* noundef %vma) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %3 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool10.not = icmp eq %struct.file* %3, null
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @fput(%struct.file* noundef nonnull %3) #19
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  call void @vm_area_free(%struct.vm_area_struct* noundef %vma) #19
  ret %struct.vm_area_struct* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #4 {
entry:
  %call = call i32 @__cond_resched() #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @insert_vm_struct(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma) local_unnamed_addr #4 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %rb_link = alloca %struct.rb_node**, align 8
  %rb_parent = alloca %struct.rb_node*, align 8
  %0 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %1 = bitcast %struct.rb_node*** %rb_link to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store %struct.rb_node** null, %struct.rb_node*** %rb_link, align 8, !annotation !7
  %2 = bitcast %struct.rb_node** %rb_parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  store %struct.rb_node* null, %struct.rb_node** %rb_parent, align 8, !annotation !7
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %call = call fastcc i32 @find_vma_links(%struct.mm_struct* noundef %mm, i64 noundef %3, i64 noundef %4, %struct.vm_area_struct** noundef nonnull %prev, %struct.rb_node*** noundef nonnull %rb_link, %struct.rb_node** noundef nonnull %rb_parent) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %5 = load i64, i64* %vm_flags, align 8
  %and = and i64 %5, 1048576
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %vma) #18, !range !14
  %call3 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %mm, i64 noundef %call2) #18
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call7 = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef %vma) #18
  br i1 %call7, label %do.body, label %if.end21

do.body:                                          ; preds = %if.end6
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %6 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool9.not = icmp eq %struct.anon_vma* %6, null
  br i1 %tobool9.not, label %do.end19, label %do.body13, !prof !11

do.body13:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3217; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !15
  unreachable

do.end19:                                         ; preds = %do.body
  %7 = load i64, i64* %vm_start, align 8
  %shr = lshr i64 %7, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  store i64 %shr, i64* %vm_pgoff, align 8
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end6
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %9 = load %struct.rb_node**, %struct.rb_node*** %rb_link, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_parent, align 8
  call fastcc void @vma_link(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %8, %struct.rb_node** noundef %9, %struct.rb_node* noundef %10) #18
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %entry ], [ -12, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @find_vma_links(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %end, %struct.vm_area_struct** nocapture noundef writeonly %pprev, %struct.rb_node*** nocapture noundef writeonly %rb_link, %struct.rb_node** nocapture noundef writeonly %rb_parent) unnamed_addr #12 {
entry:
  %rb_node = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 1, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not4047 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not4047, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %entry
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %pprev, align 8
  br label %if.end12

while.body.lr.ph:                                 ; preds = %entry, %if.else
  %1 = phi %struct.rb_node* [ %6, %if.else ], [ %0, %entry ]
  %rb_prev.0.ph48 = phi %struct.rb_node* [ %3, %if.else ], [ null, %entry ]
  br label %while.body

while.cond:                                       ; preds = %cleanup
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %3 = phi %struct.rb_node* [ %1, %while.body.lr.ph ], [ %2, %while.cond ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -2, i32 2
  %vm_end = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 1
  %4 = bitcast %struct.rb_node** %vm_end to i64*
  %5 = load i64, i64* %4, align 8
  %cmp = icmp ugt i64 %5, %addr
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %while.body
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 1
  %6 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool.not40 = icmp eq %struct.rb_node* %6, null
  br i1 %tobool.not40, label %if.then5.loopexit, label %while.body.lr.ph

cleanup:                                          ; preds = %while.body
  %vm_start = bitcast %struct.rb_node** %add.ptr to i64*
  %7 = load i64, i64* %vm_start, align 8
  %cmp1 = icmp ult i64 %7, %end
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 2
  br i1 %cmp1, label %cleanup13, label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %pprev, align 8
  %tobool4.not = icmp eq %struct.rb_node* %rb_prev.0.ph48, null
  br i1 %tobool4.not, label %if.end12, label %if.then5

if.then5.loopexit:                                ; preds = %if.else
  %rb_right.le = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 1
  br label %if.then5

if.then5:                                         ; preds = %if.then5.loopexit, %while.end
  %__rb_link.0.lcssa72 = phi %struct.rb_node** [ %rb_left, %while.end ], [ %rb_right.le, %if.then5.loopexit ]
  %rb_prev.0.ph.lcssa3970 = phi %struct.rb_node* [ %rb_prev.0.ph48, %while.end ], [ %3, %if.then5.loopexit ]
  %add.ptr11 = getelementptr %struct.rb_node, %struct.rb_node* %rb_prev.0.ph.lcssa3970, i64 -2, i32 2
  %8 = bitcast %struct.vm_area_struct** %pprev to %struct.rb_node***
  store %struct.rb_node** %add.ptr11, %struct.rb_node*** %8, align 8
  br label %if.end12

if.end12:                                         ; preds = %while.end.thread, %if.then5, %while.end
  %__rb_link.0.lcssa64 = phi %struct.rb_node** [ %rb_node, %while.end.thread ], [ %__rb_link.0.lcssa72, %if.then5 ], [ %rb_left, %while.end ]
  %__rb_parent.0.lcssa63 = phi %struct.rb_node* [ null, %while.end.thread ], [ %3, %if.then5 ], [ %3, %while.end ]
  store %struct.rb_node** %__rb_link.0.lcssa64, %struct.rb_node*** %rb_link, align 8
  store %struct.rb_node* %__rb_parent.0.lcssa63, %struct.rb_node** %rb_parent, align 8
  br label %cleanup13

cleanup13:                                        ; preds = %cleanup, %if.end12
  %retval.2 = phi i32 [ 0, %if.end12 ], [ -12, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %0, null
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct** nocapture noundef %vmap, i64 noundef %addr, i64 noundef %len, i64 noundef %pgoff, i8* nocapture noundef writeonly %need_rmap_locks) local_unnamed_addr #4 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %rb_link = alloca %struct.rb_node**, align 8
  %rb_parent = alloca %struct.rb_node*, align 8
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vmap, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %2 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %3 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %4 = bitcast %struct.rb_node*** %rb_link to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20
  store %struct.rb_node** null, %struct.rb_node*** %rb_link, align 8, !annotation !7
  %5 = bitcast %struct.rb_node** %rb_parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20
  store %struct.rb_node* null, %struct.rb_node** %rb_parent, align 8, !annotation !7
  %call = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef %0) #18
  br i1 %call, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %entry
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 11
  %6 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool.not = icmp eq %struct.anon_vma* %6, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %land.rhs
  %shr = lshr i64 %addr, 12
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  %pgoff.addr.0 = phi i64 [ %shr, %if.then ], [ %pgoff, %land.rhs ], [ %pgoff, %entry ]
  %add = add i64 %len, %addr
  %call4 = call fastcc i32 @find_vma_links(%struct.mm_struct* noundef %2, i64 noundef %addr, i64 noundef %add, %struct.vm_area_struct** noundef nonnull %prev, %struct.rb_node*** noundef nonnull %rb_link, %struct.rb_node** noundef nonnull %rb_parent) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %8 = load i64, i64* %vm_flags, align 8
  %anon_vma9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 11
  %9 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma9, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %10 = load %struct.file*, %struct.file** %vm_file, align 8
  %call10 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef %7, i64 noundef %addr, i64 noundef %add, i64 noundef %8, %struct.anon_vma* noundef %9, %struct.file* noundef %10, i64 noundef %pgoff.addr.0, %struct.mempolicy* undef) #18
  %tobool11.not = icmp eq %struct.vm_area_struct* %call10, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  %vm_start13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call10, i64 0, i32 0
  %11 = load i64, i64* %vm_start13, align 8
  %cmp.not = icmp ult i64 %1, %11
  br i1 %cmp.not, label %if.end27, label %land.rhs15

land.rhs15:                                       ; preds = %if.then12
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call10, i64 0, i32 1
  %12 = load i64, i64* %vm_end, align 8
  %cmp16 = icmp ult i64 %1, %12
  br i1 %cmp16, label %if.then26, label %if.end27, !prof !10

if.then26:                                        ; preds = %land.rhs15
  store %struct.vm_area_struct* %call10, %struct.vm_area_struct** %vmap, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then12, %if.then26, %land.rhs15
  %vma.0 = phi %struct.vm_area_struct* [ %call10, %if.then26 ], [ %0, %land.rhs15 ], [ %0, %if.then12 ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call10, i64 0, i32 13
  %13 = load i64, i64* %vm_pgoff, align 8
  %vm_pgoff28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 13
  %14 = load i64, i64* %vm_pgoff28, align 8
  %cmp29 = icmp ule i64 %13, %14
  %frombool = zext i1 %cmp29 to i8
  br label %if.end62

if.else:                                          ; preds = %if.end7
  %call31 = call %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* noundef %0) #19
  %tobool32.not = icmp eq %struct.vm_area_struct* %call31, null
  br i1 %tobool32.not, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.else
  %vm_start35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call31, i64 0, i32 0
  store i64 %addr, i64* %vm_start35, align 8
  %vm_end37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call31, i64 0, i32 1
  store i64 %add, i64* %vm_end37, align 8
  %vm_pgoff38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call31, i64 0, i32 13
  store i64 %pgoff.addr.0, i64* %vm_pgoff38, align 8
  %call43 = call i32 @anon_vma_clone(%struct.vm_area_struct* noundef nonnull %call31, %struct.vm_area_struct* noundef %0) #19
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %out_free_mempol

if.end46:                                         ; preds = %if.end34
  %vm_file47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call31, i64 0, i32 14
  %15 = load %struct.file*, %struct.file** %vm_file47, align 8
  %tobool48.not = icmp eq %struct.file* %15, null
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end46
  %call51 = call fastcc %struct.file* @get_file(%struct.file* noundef nonnull %15) #18
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end46
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call31, i64 0, i32 12
  %16 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool53.not = icmp eq %struct.vm_operations_struct* %16, null
  br i1 %tobool53.not, label %if.end61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end52
  %open55 = bitcast %struct.vm_operations_struct* %16 to void (%struct.vm_area_struct*)**
  %17 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %open55, align 8
  %tobool56.not = icmp eq void (%struct.vm_area_struct*)* %17, null
  br i1 %tobool56.not, label %if.end61, label %if.then57

if.then57:                                        ; preds = %land.lhs.true
  call void %17(%struct.vm_area_struct* noundef nonnull %call31) #19
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true, %if.end52
  %18 = load %struct.rb_node**, %struct.rb_node*** %rb_link, align 8
  %19 = load %struct.rb_node*, %struct.rb_node** %rb_parent, align 8
  call fastcc void @vma_link(%struct.mm_struct* noundef %2, %struct.vm_area_struct* noundef nonnull %call31, %struct.vm_area_struct* noundef %7, %struct.rb_node** noundef %18, %struct.rb_node* noundef %19) #18
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end27
  %storemerge = phi i8 [ 0, %if.end61 ], [ %frombool, %if.end27 ]
  %new_vma.0 = phi %struct.vm_area_struct* [ %call31, %if.end61 ], [ %call10, %if.end27 ]
  store i8 %storemerge, i8* %need_rmap_locks, align 1
  br label %cleanup

out_free_mempol:                                  ; preds = %if.end34
  call void @vm_area_free(%struct.vm_area_struct* noundef nonnull %call31) #19
  br label %cleanup

cleanup:                                          ; preds = %out_free_mempol, %if.else, %if.end, %if.end62
  %retval.0 = phi %struct.vm_area_struct* [ %new_vma.0, %if.end62 ], [ null, %if.end ], [ null, %if.else ], [ null, %out_free_mempol ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_data_mapping(i64 noundef %flags) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 266
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit_max() unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit_max(%struct.task_struct* noundef %1) #18
  ret i64 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_exec_mapping(i64 noundef %flags) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 262
  %cmp = icmp eq i64 %and, 4
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_stack_mapping(i64 noundef %flags) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 256
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @vma_is_special_mapping(%struct.vm_area_struct* nocapture noundef readonly %vma, %struct.vm_special_mapping* noundef readnone %sm) local_unnamed_addr #6 {
entry:
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 15
  %0 = load i8*, i8** %vm_private_data, align 8
  %1 = bitcast %struct.vm_special_mapping* %sm to i8*
  %cmp = icmp eq i8* %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %2 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %cmp1 = icmp eq %struct.vm_operations_struct* %2, bitcast ({ void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }* @special_mapping_vmops to %struct.vm_operations_struct*)
  %cmp3 = icmp eq %struct.vm_operations_struct* %2, bitcast ({ void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }* @legacy_special_mapping_vmops to %struct.vm_operations_struct*)
  %spec.select = or i1 %cmp1, %cmp3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %spec.select, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %len, i64 noundef %vm_flags, %struct.vm_special_mapping* noundef %spec) local_unnamed_addr #4 {
entry:
  %0 = bitcast %struct.vm_special_mapping* %spec to i8*
  %call = call fastcc %struct.vm_area_struct* @__install_special_mapping(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %len, i64 noundef %vm_flags, i8* noundef %0, %struct.vm_operations_struct* noundef bitcast ({ void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }* @special_mapping_vmops to %struct.vm_operations_struct*)) #18
  ret %struct.vm_area_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_area_struct* @__install_special_mapping(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %len, i64 noundef %vm_flags, i8* noundef %priv, %struct.vm_operations_struct* noundef %ops) unnamed_addr #4 {
entry:
  %call = call %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* noundef %mm) #19
  %cmp = icmp eq %struct.vm_area_struct* %call, null
  br i1 %cmp, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -12) #18
  %0 = bitcast i8* %call2 to %struct.vm_area_struct*
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  store i64 %addr, i64* %vm_start, align 8
  %add = add i64 %len, %addr
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  store i64 %add, i64* %vm_end, align 8
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 25
  %1 = load i64, i64* %def_flags, align 8
  %or = or i64 %1, %vm_flags
  %or3 = or i64 %or, 262144
  %vm_flags5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 8
  store i64 %or3, i64* %vm_flags5, align 8
  %call7 = call i64 @vm_get_page_prot(i64 noundef %or3) #18
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 7, i32 0
  store i64 %call7, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 12
  store %struct.vm_operations_struct* %ops, %struct.vm_operations_struct** %vm_ops, align 8
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 15
  store i8* %priv, i8** %vm_private_data, align 8
  %call8 = call i32 @insert_vm_struct(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef nonnull %call) #18
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out

if.end11:                                         ; preds = %if.end
  %2 = load i64, i64* %vm_flags5, align 8
  %shr = lshr i64 %len, 12
  call void @vm_stat_account(%struct.mm_struct* noundef %mm, i64 noundef %2, i64 noundef %shr) #18
  br label %cleanup

out:                                              ; preds = %if.end
  call void @vm_area_free(%struct.vm_area_struct* noundef nonnull %call) #19
  %conv13 = sext i32 %call8 to i64
  %call14 = call fastcc i8* @ERR_PTR(i64 noundef %conv13) #18
  %3 = bitcast i8* %call14 to %struct.vm_area_struct*
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end11, %if.then
  %retval.0 = phi %struct.vm_area_struct* [ %0, %if.then ], [ %3, %out ], [ %call, %if.end11 ]
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @install_special_mapping(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %len, i64 noundef %vm_flags, %struct.page** noundef %pages) local_unnamed_addr #4 {
entry:
  %0 = bitcast %struct.page** %pages to i8*
  %call = call fastcc %struct.vm_area_struct* @__install_special_mapping(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %len, i64 noundef %vm_flags, i8* noundef %0, %struct.vm_operations_struct* noundef bitcast ({ void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }* @legacy_special_mapping_vmops to %struct.vm_operations_struct*)) #18
  %1 = bitcast %struct.vm_area_struct* %call to i8*
  %call1 = call fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %1) #18
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @IS_ERR(i8* noundef %ptr) #18
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %ptr) #18
  %conv = trunc i64 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mm_take_all_locks(%struct.mm_struct* noundef %mm) local_unnamed_addr #4 {
entry:
  %call = call fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %mm) #18
  br i1 %call, label %do.body2, label %do.end7, !prof !10

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3587; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !16
  unreachable

do.end7:                                          ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @mm_all_locks_mutex) #19
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %vma.0116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool8.not117 = icmp eq %struct.vm_area_struct* %vma.0116, null
  br i1 %tobool8.not117, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end7
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br label %for.body

for.cond:                                         ; preds = %for.body
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0118, i64 0, i32 2
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool8.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool8.not, label %for.cond25.preheader, label %for.body

for.cond25.preheader:                             ; preds = %for.cond
  %vma.1119.pre = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool26.not120 = icmp eq %struct.vm_area_struct* %vma.1119.pre, null
  br i1 %tobool26.not120, label %cleanup, label %for.body27.lr.ph

for.body27.lr.ph:                                 ; preds = %for.cond25.preheader
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  br label %for.body27

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %vma.0118 = phi %struct.vm_area_struct* [ %vma.0116, %for.body.lr.ph ], [ %vma.0, %for.cond ]
  %call10 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #18
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond, label %out_unlock

for.cond49.preheader:                             ; preds = %for.inc45
  %vma.2125.pre = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool50.not126 = icmp eq %struct.vm_area_struct* %vma.2125.pre, null
  br i1 %tobool50.not126, label %cleanup, label %for.body51.lr.ph

for.body51.lr.ph:                                 ; preds = %for.cond49.preheader
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %5 = inttoptr i64 %4 to %struct.task_struct*
  br label %for.body51

for.body27:                                       ; preds = %for.body27.lr.ph, %for.inc45
  %vma.1121 = phi %struct.vm_area_struct* [ %vma.1119.pre, %for.body27.lr.ph ], [ %vma.1, %for.inc45 ]
  %call29 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %3) #18
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %out_unlock

if.end32:                                         ; preds = %for.body27
  %vm_file33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.1121, i64 0, i32 14
  %6 = load %struct.file*, %struct.file** %vm_file33, align 8
  %tobool34.not = icmp eq %struct.file* %6, null
  br i1 %tobool34.not, label %for.inc45, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end32
  %f_mapping37 = getelementptr inbounds %struct.file, %struct.file* %6, i64 0, i32 17
  %7 = load %struct.address_space*, %struct.address_space** %f_mapping37, align 8
  %tobool38.not = icmp eq %struct.address_space* %7, null
  br i1 %tobool38.not, label %for.inc45, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true35
  call fastcc void @vm_lock_mapping(%struct.address_space* noundef nonnull %7) #18
  br label %for.inc45

for.inc45:                                        ; preds = %if.end32, %land.lhs.true35, %land.lhs.true39
  %vm_next46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.1121, i64 0, i32 2
  %vma.1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next46, align 8
  %tobool26.not = icmp eq %struct.vm_area_struct* %vma.1, null
  br i1 %tobool26.not, label %for.cond49.preheader, label %for.body27

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc80
  %vma.2127 = phi %struct.vm_area_struct* [ %vma.2125.pre, %for.body51.lr.ph ], [ %vma.2, %for.inc80 ]
  %call53 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %5) #18
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %out_unlock

if.end56:                                         ; preds = %for.body51
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.2127, i64 0, i32 11
  %8 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool57.not = icmp eq %struct.anon_vma* %8, null
  br i1 %tobool57.not, label %for.inc80, label %if.then58

if.then58:                                        ; preds = %if.end56
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.2127, i64 0, i32 10
  %9 = bitcast %struct.list_head* %anon_vma_chain to i8**
  %.pn122 = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn122 to %struct.list_head*
  %cmp.not123 = icmp eq %struct.list_head* %anon_vma_chain, %10
  br i1 %cmp.not123, label %for.inc80, label %for.body67

for.body67:                                       ; preds = %if.then58, %for.body67
  %.pn124 = phi i8* [ %.pn, %for.body67 ], [ %.pn122, %if.then58 ]
  %anon_vma68 = getelementptr i8, i8* %.pn124, i64 -8
  %11 = bitcast i8* %anon_vma68 to %struct.anon_vma**
  %12 = load %struct.anon_vma*, %struct.anon_vma** %11, align 8
  call fastcc void @vm_lock_anon_vma(%struct.anon_vma* noundef %12) #18
  %13 = bitcast i8* %.pn124 to i8**
  %.pn = load i8*, i8** %13, align 8
  %14 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %anon_vma_chain, %14
  br i1 %cmp.not, label %for.inc80, label %for.body67

for.inc80:                                        ; preds = %for.body67, %if.then58, %if.end56
  %vm_next81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.2127, i64 0, i32 2
  %vma.2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next81, align 8
  %tobool50.not = icmp eq %struct.vm_area_struct* %vma.2, null
  br i1 %tobool50.not, label %cleanup, label %for.body51

out_unlock:                                       ; preds = %for.body, %for.body27, %for.body51
  call void @mm_drop_all_locks(%struct.mm_struct* noundef %mm) #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc80, %do.end7, %for.cond25.preheader, %for.cond49.preheader, %out_unlock
  %retval.0 = phi i32 [ -4, %out_unlock ], [ 0, %for.cond49.preheader ], [ 0, %for.cond25.preheader ], [ 0, %do.end7 ], [ 0, %for.inc80 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %mm) unnamed_addr #4 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %mmap_lock) #19
  %cmp = icmp ne i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !11

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_lock_mapping(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call2 = call fastcc i1 @test_and_set_bit(i64* noundef %flags) #18
  br i1 %call2, label %do.body, label %if.end

do.body:                                          ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3540; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !17
  unreachable

if.end:                                           ; preds = %if.then
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @down_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #19
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_lock_anon_vma(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #4 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rb_node = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 5, i32 0, i32 0
  %1 = bitcast %struct.rb_node** %rb_node to i64*
  %2 = load volatile i64, i64* %1, align 8
  %conv.i1 = and i64 %2, 1
  %tobool.not = icmp eq i64 %conv.i1, 0
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @down_write(%struct.rw_semaphore* noundef %rwsem) #19
  %3 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rb_node6 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %3, i64 0, i32 5, i32 0, i32 0
  %4 = bitcast %struct.rb_node** %rb_node6 to i64*
  %5 = load i64, i64* %4, align 8
  %or.i = or i64 %5, 1
  store i64 %or.i, i64* %4, align 8
  %6 = and i64 %5, 1
  %tobool8.not = icmp eq i64 %6, 0
  br i1 %tobool8.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3523; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !18
  unreachable

if.end12:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mm_drop_all_locks(%struct.mm_struct* noundef %mm) local_unnamed_addr #4 {
entry:
  %call = call fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %mm) #18
  br i1 %call, label %do.body2, label %do.body8, !prof !10

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3667; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !19
  unreachable

do.body8:                                         ; preds = %entry
  %call9 = call i1 @mutex_is_locked(%struct.mutex* noundef nonnull @mm_all_locks_mutex) #19
  br i1 %call9, label %do.end28, label %do.body20, !prof !11

do.body20:                                        ; preds = %do.body8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3668; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !20
  unreachable

do.end28:                                         ; preds = %do.body8
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %vma.078 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool29.not79 = icmp eq %struct.vm_area_struct* %vma.078, null
  br i1 %tobool29.not79, label %for.end59, label %for.body

for.body:                                         ; preds = %do.end28, %for.inc58
  %vma.080 = phi %struct.vm_area_struct* [ %vma.0, %for.inc58 ], [ %vma.078, %do.end28 ]
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.080, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool30.not = icmp eq %struct.anon_vma* %0, null
  br i1 %tobool30.not, label %if.end50, label %if.then31

if.then31:                                        ; preds = %for.body
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.080, i64 0, i32 10
  %1 = bitcast %struct.list_head* %anon_vma_chain to i8**
  %.pn75 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn75 to %struct.list_head*
  %cmp.not76 = icmp eq %struct.list_head* %anon_vma_chain, %2
  br i1 %cmp.not76, label %if.end50, label %for.body40

for.body40:                                       ; preds = %if.then31, %for.body40
  %.pn77 = phi i8* [ %.pn, %for.body40 ], [ %.pn75, %if.then31 ]
  %anon_vma41 = getelementptr i8, i8* %.pn77, i64 -8
  %3 = bitcast i8* %anon_vma41 to %struct.anon_vma**
  %4 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  call fastcc void @vm_unlock_anon_vma(%struct.anon_vma* noundef %4) #18
  %5 = bitcast i8* %.pn77 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %anon_vma_chain, %6
  br i1 %cmp.not, label %if.end50, label %for.body40

if.end50:                                         ; preds = %for.body40, %if.then31, %for.body
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.080, i64 0, i32 14
  %7 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool51.not = icmp eq %struct.file* %7, null
  br i1 %tobool51.not, label %for.inc58, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end50
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %7, i64 0, i32 17
  %8 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %tobool53.not = icmp eq %struct.address_space* %8, null
  br i1 %tobool53.not, label %for.inc58, label %if.then54

if.then54:                                        ; preds = %land.lhs.true
  call fastcc void @vm_unlock_mapping(%struct.address_space* noundef nonnull %8) #18
  br label %for.inc58

for.inc58:                                        ; preds = %if.end50, %land.lhs.true, %if.then54
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.080, i64 0, i32 2
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool29.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool29.not, label %for.end59, label %for.body

for.end59:                                        ; preds = %for.inc58, %do.end28
  call void @mutex_unlock(%struct.mutex* noundef nonnull @mm_all_locks_mutex) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mutex_is_locked(%struct.mutex* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unlock_anon_vma(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #4 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rb_node = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 5, i32 0, i32 0
  %1 = bitcast %struct.rb_node** %rb_node to i64*
  %2 = load volatile i64, i64* %1, align 8
  %conv.i14 = and i64 %2, 1
  %tobool.not = icmp eq i64 %conv.i14, 0
  br i1 %tobool.not, label %if.end11, label %if.end

if.end:                                           ; preds = %entry
  %and.i = and i64 %2, -2
  store i64 %and.i, i64* %1, align 8
  call fastcc void @anon_vma_unlock_write(%struct.anon_vma* noundef %anon_vma) #18
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unlock_mapping(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping) #18
  %call2 = call fastcc i1 @test_and_clear_bit(i64* noundef %flags) #18
  br i1 %call2, label %if.end6, label %do.body

do.body:                                          ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3654; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !21
  unreachable

if.end6:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #8

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @mmap_init() local_unnamed_addr #11 section ".init.text" {
entry:
  %call = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef nonnull @vm_committed_as, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @mmap_init.__key) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(%struct.percpu_counter* noundef, i64 noundef, i32 noundef, %struct.lock_class_key* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i32 @init_user_reserve() #0 {
entry:
  %call = call fastcc i64 @global_zone_page_state() #18
  %0 = lshr i64 %call, 3
  %div = and i64 %0, 576460752303423487
  %cmp = icmp ult i64 %div, 131072
  %cond = select i1 %cmp, i64 %div, i64 131072
  store i64 %cond, i64* @sysctl_user_reserve_kbytes, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i32 @init_admin_reserve() #0 {
entry:
  %call = call fastcc i64 @global_zone_page_state() #18
  %0 = lshr i64 %call, 3
  %div = and i64 %0, 576460752303423487
  %cmp = icmp ult i64 %div, 8192
  %cond = select i1 %cmp, i64 %div, i64 8192
  store i64 %cond, i64* @sysctl_admin_reserve_kbytes, align 8
  ret i32 0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define internal i32 @init_reserve_notifier() #14 section ".meminit.text" {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 32768
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pgprot_modify(i64 %oldprot.coerce, i64 %newprot.coerce) unnamed_addr #3 {
entry:
  %and = and i64 %oldprot.coerce, -29
  %or = or i64 %and, 27021597764222988
  %cmp = icmp eq i64 %or, %oldprot.coerce
  %and8 = and i64 %newprot.coerce, -27021597764223005
  %or9 = or i64 %and8, 27021597764222988
  %newprot.sroa.0.0 = select i1 %cmp, i64 %or9, i64 %newprot.coerce
  %or15 = or i64 %and, 27021597764222984
  %cmp17 = icmp eq i64 %or15, %oldprot.coerce
  %or23 = or i64 %and8, 27021597764222984
  %newprot.sroa.0.1 = select i1 %cmp17, i64 %or23, i64 %newprot.sroa.0.0
  %or30 = or i64 %and, 27021597764222992
  %cmp32 = icmp eq i64 %or30, %oldprot.coerce
  %and37 = and i64 %newprot.sroa.0.1, -27021597764223005
  %or38 = or i64 %and37, 27021597764222992
  %newprot.sroa.0.2 = select i1 %cmp32, i64 %or38, i64 %newprot.sroa.0.1
  ret i64 %newprot.sroa.0.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_brk(i64 noundef %brk) unnamed_addr #4 {
entry:
  %uf = alloca %struct.list_head, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.list_head* %uf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #20
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 0
  store %struct.list_head* %uf, %struct.list_head** %next2, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 1
  store %struct.list_head* %uf, %struct.list_head** %prev, align 8
  %call3 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #18
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %cleanup57

if.end:                                           ; preds = %entry
  %brk4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 33
  %4 = load i64, i64* %brk4, align 8
  %start_brk = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 32
  %5 = load i64, i64* %start_brk, align 8
  %cmp = icmp ugt i64 %5, %brk
  br i1 %cmp, label %out, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i64 @rlimit(i32 noundef 2) #18
  %6 = load i64, i64* %start_brk, align 8
  %end_data = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 31
  %7 = load i64, i64* %end_data, align 8
  %start_data = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 30
  %8 = load i64, i64* %start_data, align 8
  %call9 = call fastcc i32 @check_data_rlimit(i64 noundef %call7, i64 noundef %brk, i64 noundef %6, i64 noundef %7, i64 noundef %8) #18
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %out

if.end12:                                         ; preds = %if.end6
  %add = add i64 %brk, 4095
  %and = and i64 %add, -4096
  %9 = load i64, i64* %brk4, align 8
  %add14 = add i64 %9, 4095
  %and15 = and i64 %add14, -4096
  %cmp16 = icmp eq i64 %and, %and15
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end12
  store i64 %brk, i64* %brk4, align 8
  br label %success

if.end19:                                         ; preds = %if.end12
  %cmp21.not = icmp ult i64 %9, %brk
  br i1 %cmp21.not, label %if.end32, label %if.then22

if.then22:                                        ; preds = %if.end19
  store i64 %brk, i64* %brk4, align 8
  %sub = sub i64 %and15, %and
  %call24 = call i32 @__do_munmap(%struct.mm_struct* noundef %2, i64 noundef %and, i64 noundef %sub, %struct.list_head* noundef nonnull %uf, i1 noundef true) #18
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then22
  %cmp28 = icmp eq i32 %call24, 1
  br label %success

cleanup:                                          ; preds = %if.then22
  store i64 %4, i64* %brk4, align 8
  br label %out

if.end32:                                         ; preds = %if.end19
  %call33 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %2, i64 noundef %and15) #18
  %tobool34.not = icmp eq %struct.vm_area_struct* %call33, null
  br i1 %tobool34.not, label %if.end39, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32
  %add35 = add i64 %and, 4096
  %call36 = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef nonnull %call33) #18
  %cmp37 = icmp ugt i64 %add35, %call36
  br i1 %cmp37, label %out, label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %if.end32
  %sub40 = sub i64 %and, %and15
  %call41 = call fastcc i32 @do_brk_flags(i64 noundef %and15, i64 noundef %sub40, i64 noundef 0, %struct.list_head* noundef nonnull %uf) #18
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %out, label %if.end44

if.end44:                                         ; preds = %if.end39
  store i64 %brk, i64* %brk4, align 8
  br label %success

success:                                          ; preds = %cleanup.thread, %if.end44, %if.then17
  %downgraded.2.off0 = phi i1 [ false, %if.then17 ], [ false, %if.end44 ], [ %cmp28, %cleanup.thread ]
  %cmp46 = icmp ugt i64 %and, %and15
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %success
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 25
  %10 = load i64, i64* %def_flags, align 8
  %and47 = and i64 %10, 8192
  %cmp48 = icmp ne i64 %and47, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %success
  %11 = phi i1 [ false, %success ], [ %cmp48, %land.rhs ]
  br i1 %downgraded.2.off0, label %if.then50, label %if.else51

if.then50:                                        ; preds = %land.end
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #18
  br label %if.end52

if.else51:                                        ; preds = %land.end
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  br i1 %11, label %if.then54, label %cleanup57

if.then54:                                        ; preds = %if.end52
  %sub55 = sub i64 %and, %and15
  call fastcc void @mm_populate(i64 noundef %and15, i64 noundef %sub55) #18
  br label %cleanup57

out:                                              ; preds = %cleanup, %if.end39, %land.lhs.true, %if.end6, %if.end
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  br label %cleanup57

cleanup57:                                        ; preds = %if.end52, %if.then54, %entry, %out
  %retval.0 = phi i64 [ %4, %out ], [ -4, %entry ], [ %brk, %if.then54 ], [ %brk, %if.end52 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #20
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @check_data_rlimit(i64 noundef %rlim, i64 noundef %new, i64 noundef %start, i64 noundef %end_data, i64 noundef %start_data) unnamed_addr #3 {
entry:
  %cmp.not = icmp eq i64 %rlim, -1
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = add i64 %new, %end_data
  %1 = add i64 %start, %start_data
  %add = sub i64 %0, %1
  %cmp2 = icmp ugt i64 %add, %rlim
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -28, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #4 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @vma_gap_callbacks_propagate(%struct.rb_node* noundef %rb, %struct.rb_node* noundef readnone %stop) unnamed_addr #5 {
entry:
  %cmp.not8 = icmp eq %struct.rb_node* %rb, %stop
  br i1 %cmp.not8, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %rb.addr.09 = phi %struct.rb_node* [ %2, %cleanup ], [ %rb, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb.addr.09, i64 -2, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %call = call fastcc i1 @vma_gap_callbacks_compute_max(%struct.vm_area_struct* noundef %0, i1 noundef true) #18
  br i1 %call, label %while.end, label %cleanup

cleanup:                                          ; preds = %while.body
  %vm_rb = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 4
  %__rb_parent_color = bitcast %struct.rb_node** %vm_rb to i64*
  %1 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %1, -4
  %2 = inttoptr i64 %and to %struct.rb_node*
  %cmp.not = icmp eq %struct.rb_node* %2, %stop
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @vma_gap_callbacks_compute_max(%struct.vm_area_struct* nocapture noundef %node, i1 noundef %exit) unnamed_addr #15 {
entry:
  %call = call fastcc i64 @vma_compute_gap(%struct.vm_area_struct* noundef %node) #18
  %rb_left = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 4, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -2, i32 2
  %rb_subtree_gap = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %1 = bitcast %struct.rb_node** %rb_subtree_gap to i64*
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ugt i64 %2, %call
  %spec.select = select i1 %cmp, i64 %2, i64 %call
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %max.0 = phi i64 [ %call, %entry ], [ %spec.select, %if.then ]
  %rb_right = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 4, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool7.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool7.not, label %if.end22, label %if.then8

if.then8:                                         ; preds = %if.end5
  %add.ptr16 = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -2, i32 2
  %rb_subtree_gap17 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr16, i64 7
  %4 = bitcast %struct.rb_node** %rb_subtree_gap17 to i64*
  %5 = load i64, i64* %4, align 8
  %cmp18 = icmp ugt i64 %5, %max.0
  %spec.select49 = select i1 %cmp18, i64 %5, i64 %max.0
  br label %if.end22

if.end22:                                         ; preds = %if.then8, %if.end5
  %max.1 = phi i64 [ %max.0, %if.end5 ], [ %spec.select49, %if.then8 ]
  br i1 %exit, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end22
  %rb_subtree_gap24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 5
  %6 = load i64, i64* %rb_subtree_gap24, align 8
  %cmp25 = icmp eq i64 %6, %max.1
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %land.lhs.true, %if.end22
  %rb_subtree_gap28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 5
  store i64 %max.1, i64* %rb_subtree_gap28, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end27
  %retval.0 = phi i1 [ false, %if.end27 ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_compute_gap(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @vm_start_gap(%struct.vm_area_struct* noundef %vma) #18
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 3
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @vm_end_gap(%struct.vm_area_struct* noundef nonnull %0) #18
  %1 = call i64 @llvm.usub.sat.i64(i64 %call, i64 %call2)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %gap.0 = phi i64 [ %call, %entry ], [ %1, %if.then ]
  ret i64 %gap.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_augmented(%struct.rb_node* noundef %node, %struct.rb_root* noundef %root) unnamed_addr #4 {
entry:
  call void @__rb_insert_augmented(%struct.rb_node* noundef %node, %struct.rb_root* noundef %root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @vma_gap_callbacks_rotate) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(%struct.rb_node* noundef, %struct.rb_root* noundef, void (%struct.rb_node*, %struct.rb_node*)* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @vma_gap_callbacks_copy(%struct.rb_node* nocapture noundef readonly %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) unnamed_addr #9 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -2, i32 2
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -2, i32 2
  %rb_subtree_gap = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %0 = bitcast %struct.rb_node** %rb_subtree_gap to i64*
  %1 = load i64, i64* %0, align 8
  %rb_subtree_gap7 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 7
  %2 = bitcast %struct.rb_node** %rb_subtree_gap7 to i64*
  store i64 %1, i64* %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal void @vma_gap_callbacks_rotate(%struct.rb_node* nocapture noundef %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) #15 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -2, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -2, i32 2
  %rb_subtree_gap = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %1 = bitcast %struct.rb_node** %rb_subtree_gap to i64*
  %2 = load i64, i64* %1, align 8
  %rb_subtree_gap7 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 7
  %3 = bitcast %struct.rb_node** %rb_subtree_gap7 to i64*
  store i64 %2, i64* %3, align 8
  %call = call fastcc i1 @vma_gap_callbacks_compute_max(%struct.vm_area_struct* noundef %0, i1 noundef false) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_allow_writable(%struct.address_space* noundef %mapping) unnamed_addr #4 {
entry:
  %i_mmap_writable = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_mmap_writable) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_remove(%struct.anon_vma_chain* noundef, %struct.rb_root_cached* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_unlink_list(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @vmacache_invalidate(%struct.mm_struct* nocapture noundef %mm) unnamed_addr #9 {
entry:
  %vmacache_seqnum = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 2
  %0 = load i64, i64* %vmacache_seqnum, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %vmacache_seqnum, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vma_rb_erase(%struct.vm_area_struct* noundef %vma, %struct.rb_root* noundef %root) unnamed_addr #4 {
entry:
  %vm_rb = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 4
  %rb_right.i.i = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 4, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i, align 8
  %rb_left.i.i = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 4, i32 2
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i, align 8
  %tobool.not.i.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else6.i.i

if.then.i.i:                                      ; preds = %entry
  %__rb_parent_color.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %vm_rb, i64 0, i32 0
  %2 = load i64, i64* %__rb_parent_color.i.i, align 8
  %and.i.i = and i64 %2, -4
  %3 = inttoptr i64 %and.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %vm_rb, %struct.rb_node* noundef %0, %struct.rb_node* noundef %3, %struct.rb_root* noundef %root) #19
  %tobool1.not.i.i = icmp eq %struct.rb_node* %0, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %__rb_parent_color3.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 0
  store i64 %2, i64* %__rb_parent_color3.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %and4.i.i = and i64 %2, 1
  %tobool5.not.i.i = icmp eq i64 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %__rb_erase_augmented.exit.thread.i, label %__rb_erase_augmented.exit.i

if.else6.i.i:                                     ; preds = %entry
  %tobool7.not.i.i = icmp eq %struct.rb_node* %0, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else12.i.i

if.then8.i.i:                                     ; preds = %if.else6.i.i
  %__rb_parent_color9.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %vm_rb, i64 0, i32 0
  %4 = load i64, i64* %__rb_parent_color9.i.i, align 8
  %__rb_parent_color10.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 0
  store i64 %4, i64* %__rb_parent_color10.i.i, align 8
  %and11.i.i = and i64 %4, -4
  %5 = inttoptr i64 %and11.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %vm_rb, %struct.rb_node* noundef nonnull %1, %struct.rb_node* noundef %5, %struct.rb_root* noundef %root) #19
  br label %__rb_erase_augmented.exit.thread.i

if.else12.i.i:                                    ; preds = %if.else6.i.i
  %rb_left13.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 2
  %6 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i, align 8
  %tobool14.not.i.i = icmp eq %struct.rb_node* %6, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %do.body.i.i

if.then15.i.i:                                    ; preds = %if.else12.i.i
  %rb_right16.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 1
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i, align 8
  call fastcc void @vma_gap_callbacks_copy(%struct.rb_node* noundef %vm_rb, %struct.rb_node* noundef nonnull %0) #19
  br label %if.end42.i.i

do.body.i.i:                                      ; preds = %if.else12.i.i, %do.body.i.i
  %tmp.0.i.i = phi %struct.rb_node* [ %8, %do.body.i.i ], [ %6, %if.else12.i.i ]
  %successor.0.i.i = phi %struct.rb_node* [ %tmp.0.i.i, %do.body.i.i ], [ %0, %if.else12.i.i ]
  %rb_left18.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i, i64 0, i32 2
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i, align 8
  %tobool19.not.i.i = icmp eq %struct.rb_node* %8, null
  br i1 %tobool19.not.i.i, label %do.end.i.i, label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %rb_right20.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i, i64 0, i32 1
  %9 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i, align 8
  %rb_left26.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %9, %struct.rb_node** %rb_left26.i.i, align 8
  store volatile %struct.rb_node* %0, %struct.rb_node** %rb_right20.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %0, %struct.rb_node* noundef nonnull %tmp.0.i.i) #19
  call fastcc void @vma_gap_callbacks_copy(%struct.rb_node* noundef %vm_rb, %struct.rb_node* noundef nonnull %tmp.0.i.i) #19
  call fastcc void @vma_gap_callbacks_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i) #19
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.end.i.i, %if.then15.i.i
  %parent.0.i.i = phi %struct.rb_node* [ %successor.0.i.i, %do.end.i.i ], [ %0, %if.then15.i.i ]
  %successor.1.i.i = phi %struct.rb_node* [ %tmp.0.i.i, %do.end.i.i ], [ %0, %if.then15.i.i ]
  %child2.0.i.i = phi %struct.rb_node* [ %9, %do.end.i.i ], [ %7, %if.then15.i.i ]
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i, align 8
  %rb_left49.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %10, %struct.rb_node** %rb_left49.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %10, %struct.rb_node* noundef nonnull %successor.1.i.i) #19
  %__rb_parent_color54.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %vm_rb, i64 0, i32 0
  %11 = load i64, i64* %__rb_parent_color54.i.i, align 8
  %and55.i.i = and i64 %11, -4
  %12 = inttoptr i64 %and55.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %vm_rb, %struct.rb_node* noundef nonnull %successor.1.i.i, %struct.rb_node* noundef %12, %struct.rb_root* noundef %root) #19
  %tobool56.not.i.i = icmp eq %struct.rb_node* %child2.0.i.i, null
  br i1 %tobool56.not.i.i, label %if.else58.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.end42.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i) #19
  br label %if.end66.i.i

if.else58.i.i:                                    ; preds = %if.end42.i.i
  %__rb_parent_color59.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i, i64 0, i32 0
  %13 = load i64, i64* %__rb_parent_color59.i.i, align 8
  %and60.i.i = and i64 %13, 1
  %tobool61.not.i.i = icmp eq i64 %and60.i.i, 0
  %cond65.i.i = select i1 %tobool61.not.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else58.i.i, %if.then57.i.i
  %rebalance.1.i.i = phi %struct.rb_node* [ null, %if.then57.i.i ], [ %cond65.i.i, %if.else58.i.i ]
  %__rb_parent_color67.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i, i64 0, i32 0
  store i64 %11, i64* %__rb_parent_color67.i.i, align 8
  br label %__rb_erase_augmented.exit.i

__rb_erase_augmented.exit.thread.i:               ; preds = %if.then8.i.i, %if.else.i.i, %if.then2.i.i
  %tmp.1.i.ph.i = phi %struct.rb_node* [ %3, %if.then2.i.i ], [ %5, %if.then8.i.i ], [ %3, %if.else.i.i ]
  call fastcc void @vma_gap_callbacks_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i, %struct.rb_node* noundef null) #19
  br label %rb_erase_augmented.exit

__rb_erase_augmented.exit.i:                      ; preds = %if.end66.i.i, %if.else.i.i
  %tmp.1.i.i = phi %struct.rb_node* [ %successor.1.i.i, %if.end66.i.i ], [ %3, %if.else.i.i ]
  %rebalance.2.i.i = phi %struct.rb_node* [ %rebalance.1.i.i, %if.end66.i.i ], [ %3, %if.else.i.i ]
  call fastcc void @vma_gap_callbacks_propagate(%struct.rb_node* noundef %tmp.1.i.i, %struct.rb_node* noundef null) #19
  %tobool.not.i = icmp eq %struct.rb_node* %rebalance.2.i.i, null
  br i1 %tobool.not.i, label %rb_erase_augmented.exit, label %if.then.i

if.then.i:                                        ; preds = %__rb_erase_augmented.exit.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i, %struct.rb_root* noundef %root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @vma_gap_callbacks_rotate) #19
  br label %rb_erase_augmented.exit

rb_erase_augmented.exit:                          ; preds = %__rb_erase_augmented.exit.thread.i, %__rb_erase_augmented.exit.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(%struct.rb_node* noundef, %struct.rb_root* noundef, void (%struct.rb_node*, %struct.rb_node*)* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__rb_change_child(%struct.rb_node* noundef readnone %old, %struct.rb_node* noundef %new, %struct.rb_node* noundef %parent, %struct.rb_root* noundef %root) unnamed_addr #16 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %parent, null
  br i1 %tobool.not, label %do.body17, label %if.then

if.then:                                          ; preds = %entry
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %cmp = icmp eq %struct.rb_node* %0, %old
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 1
  %spec.select = select i1 %cmp, %struct.rb_node** %rb_left, %struct.rb_node** %rb_right
  br label %if.end20

do.body17:                                        ; preds = %entry
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  br label %if.end20

if.end20:                                         ; preds = %if.then, %do.body17
  %rb_left.sink = phi %struct.rb_node** [ %rb_node, %do.body17 ], [ %spec.select, %if.then ]
  store volatile %struct.rb_node* %new, %struct.rb_node** %rb_left.sink, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rb_set_parent(%struct.rb_node* nocapture noundef %rb, %struct.rb_node* noundef %p) unnamed_addr #9 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %0, 1
  %1 = ptrtoint %struct.rb_node* %p to i64
  %or = or i64 %and, %1
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_set_parent_color(%struct.rb_node* nocapture noundef writeonly %rb, %struct.rb_node* noundef %p) unnamed_addr #7 {
entry:
  %0 = ptrtoint %struct.rb_node* %p to i64
  %or = or i64 %0, 1
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vma_link(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %prev, %struct.rb_node** nocapture noundef writeonly %rb_link, %struct.rb_node* noundef %rb_parent) unnamed_addr #4 {
entry:
  call void @__vma_link_list(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %prev) #19
  call void @__vma_link_rb(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.rb_node** noundef %rb_link, %struct.rb_node* noundef %rb_parent) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_link_list(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_insert(%struct.anon_vma_chain* noundef, %struct.rb_root_cached* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_mergeable_vma(%struct.vm_area_struct* nocapture noundef readonly %vma, %struct.file* noundef readnone %file, i64 noundef %vm_flags) unnamed_addr #6 {
entry:
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags1, align 8
  %tobool.not = icmp eq i64 %0, %vm_flags
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %cmp.not = icmp eq %struct.file* %1, %file
  br i1 %cmp.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %2 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool4.not = icmp eq %struct.vm_operations_struct* %2, null
  br i1 %tobool4.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %close = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %2, i64 0, i32 1
  %close6 = bitcast {}** %close to void (%struct.vm_area_struct*)**
  %3 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %close6, align 8
  %tobool7.not = icmp eq void (%struct.vm_area_struct*)* %3, null
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end3
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_is_singular(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp = icmp eq %struct.list_head* %0, %1
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @anon_vma_compatible(%struct.vm_area_struct* nocapture noundef readonly %a, %struct.vm_area_struct* nocapture noundef readonly %b) unnamed_addr #6 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %a, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %b, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %a, i64 0, i32 14
  %2 = load %struct.file*, %struct.file** %vm_file, align 8
  %vm_file2 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %b, i64 0, i32 14
  %3 = load %struct.file*, %struct.file** %vm_file2, align 8
  %cmp3 = icmp eq %struct.file* %2, %3
  br i1 %cmp3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %a, i64 0, i32 8
  %4 = load i64, i64* %vm_flags, align 8
  %vm_flags5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %b, i64 0, i32 8
  %5 = load i64, i64* %vm_flags5, align 8
  %xor = xor i64 %5, %4
  %tobool.not = icmp ult i64 %xor, 8
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %b, i64 0, i32 13
  %6 = load i64, i64* %vm_pgoff, align 8
  %vm_pgoff6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %a, i64 0, i32 13
  %7 = load i64, i64* %vm_pgoff6, align 8
  %vm_start8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %a, i64 0, i32 0
  %8 = load i64, i64* %vm_start8, align 8
  %sub = sub i64 %0, %8
  %shr = lshr i64 %sub, 12
  %add = add i64 %shr, %7
  %cmp9 = icmp eq i64 %6, %add
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %entry
  %9 = phi i32 [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task, i32 noundef %limit) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %limit to i64
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 %idxprom, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @file_mmap_size_max(%struct.file* nocapture noundef readonly %file, %struct.inode* nocapture noundef readonly %inode) unnamed_addr #6 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  switch i16 %1, label %if.end15 [
    i16 -32768, label %return
    i16 24576, label %return
    i16 -16384, label %return
  ]

if.end15:                                         ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and16 = lshr i32 %2, 13
  %3 = and i32 %and16, 1
  %sext = add nsw i32 %3, -1
  %. = sext i32 %sext to i64
  br label %return

return:                                           ; preds = %if.end15, %entry, %entry, %entry
  %retval.0 = phi i64 [ 9223372036854775807, %entry ], [ 9223372036854775807, %entry ], [ 9223372036854775807, %entry ], [ %., %if.end15 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mmap_pgoff(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %pgoff) unnamed_addr #4 {
entry:
  %call = call i64 @ksys_mmap_pgoff(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %pgoff) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i1 @sb_is_blkdev_sb(%struct.super_block* noundef %0) #18
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
define internal fastcc i1 @sb_is_blkdev_sb(%struct.super_block* nocapture noundef readnone %sb) unnamed_addr #6 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %cmp = icmp eq %struct.super_block* %0, %sb
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(%struct.mm_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #4 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #20, !srcloc !23
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #20, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_acct_memory(i64 noundef %pages) unnamed_addr #4 {
entry:
  %0 = load i32, i32* @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef nonnull @vm_committed_as, i64 noundef %pages, i32 noundef %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_mmap_addr(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(%struct.vm_area_struct* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !26
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #4 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #20, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #20, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(%struct.mmu_gather* noundef, %struct.mm_struct* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #18
  %hiwater_rss = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  %0 = load i64, i64* %hiwater_rss, align 8
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %call, i64* %hiwater_rss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #18
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #18
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #18
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #0 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @munlock_vma_pages_all(%struct.vm_area_struct* noundef %vma) unnamed_addr #4 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  call void @munlock_vma_pages_range(%struct.vm_area_struct* noundef %vma, i64 noundef %0, i64 noundef %1) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @munlock_vma_pages_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(%struct.rw_semaphore* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_hiwater_vm(%struct.mm_struct* nocapture noundef %mm) unnamed_addr #9 {
entry:
  %hiwater_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 18
  %0 = load i64, i64* %hiwater_vm, align 8
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  %1 = load i64, i64* %total_vm, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %1, i64* %hiwater_vm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_munmap(i64 noundef %addr, i64 noundef %len) unnamed_addr #4 {
entry:
  %shl.i = shl i64 %addr, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %addr
  %call1 = call fastcc i32 @__vm_munmap(i64 noundef %and, i64 noundef %len, i1 noundef true) #18
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_remap_file_pages(i64 noundef %start, i64 noundef %size, i64 noundef %prot, i64 noundef %pgoff, i64 noundef %flags) unnamed_addr #4 {
entry:
  %populate = alloca i64, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast i64* %populate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store i64 0, i64* %populate, align 8
  %.b169 = load i1, i1* @__do_sys_remap_file_pages.__already_done, align 1
  br i1 %.b169, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  store i1 true, i1* @__do_sys_remap_file_pages.__already_done, align 1
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 50
  %4 = load i32, i32* %pid, align 32
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %4) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool17.not = icmp eq i64 %prot, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup113

if.end19:                                         ; preds = %if.end
  %and = and i64 %start, -4096
  %and20 = and i64 %size, -4096
  %add = add i64 %and20, %and
  %cmp.not = icmp ugt i64 %add, %and
  br i1 %cmp.not, label %if.end23, label %cleanup113

if.end23:                                         ; preds = %if.end19
  %shr = lshr i64 %size, 12
  %5 = xor i64 %pgoff, -1
  %cmp25 = icmp ugt i64 %shr, %5
  br i1 %cmp25, label %cleanup113, label %if.end28

if.end28:                                         ; preds = %if.end23
  %call29 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #18
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %cleanup113

if.end32:                                         ; preds = %if.end28
  %call33 = call fastcc %struct.vm_area_struct* @vma_lookup(%struct.mm_struct* noundef %2, i64 noundef %and) #18
  %tobool34.not = icmp eq %struct.vm_area_struct* %call33, null
  br i1 %tobool34.not, label %if.end101.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call33, i64 0, i32 8
  %6 = load i64, i64* %vm_flags, align 8
  %and35 = and i64 %6, 8
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end101.thread, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call33, i64 0, i32 1
  %7 = load i64, i64* %vm_end, align 8
  %cmp40 = icmp ugt i64 %add, %7
  %vm_file49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call33, i64 0, i32 14
  br i1 %cmp40, label %for.cond, label %if.end38.if.end70_crit_edge

if.end38.if.end70_crit_edge:                      ; preds = %if.end38
  %.pre = load %struct.file*, %struct.file** %vm_file49, align 8
  br label %out

for.cond:                                         ; preds = %if.end38, %if.end59
  %call33.pn = phi %struct.vm_area_struct* [ %next.0, %if.end59 ], [ %call33, %if.end38 ]
  %next.0.in = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call33.pn, i64 0, i32 2
  %next.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %next.0.in, align 8
  %tobool43.not = icmp eq %struct.vm_area_struct* %next.0, null
  br i1 %tobool43.not, label %if.end101.thread, label %for.body

for.body:                                         ; preds = %for.cond
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 0
  %8 = load i64, i64* %vm_start, align 8
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 3
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  %vm_end44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i64 0, i32 1
  %10 = load i64, i64* %vm_end44, align 8
  %cmp45.not = icmp eq i64 %8, %10
  br i1 %cmp45.not, label %if.end48, label %if.end101.thread

if.end48:                                         ; preds = %for.body
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 14
  %11 = load %struct.file*, %struct.file** %vm_file, align 8
  %12 = load %struct.file*, %struct.file** %vm_file49, align 8
  %cmp50.not = icmp eq %struct.file* %11, %12
  br i1 %cmp50.not, label %if.end53, label %if.end101.thread

if.end53:                                         ; preds = %if.end48
  %vm_flags54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 8
  %13 = load i64, i64* %vm_flags54, align 8
  %cmp56.not = icmp eq i64 %13, %6
  br i1 %cmp56.not, label %if.end59, label %if.end101.thread

if.end59:                                         ; preds = %if.end53
  %vm_end61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.0, i64 0, i32 1
  %14 = load i64, i64* %vm_end61, align 8
  %cmp62.not = icmp ugt i64 %add, %14
  br i1 %cmp62.not, label %for.cond, label %out

if.end101.thread:                                 ; preds = %for.cond, %if.end53, %if.end48, %for.body, %if.end32, %lor.lhs.false
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  br label %18

out:                                              ; preds = %if.end59, %if.end38.if.end70_crit_edge
  %15 = phi %struct.file* [ %.pre, %if.end38.if.end70_crit_edge ], [ %11, %if.end59 ]
  %or86 = and i64 %6, 7
  %and87 = and i64 %flags, 65536
  %and90 = and i64 %6, 8192
  %16 = or i64 %and87, %and90
  %spec.select = or i64 %16, 32785
  %vm_file95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call33, i64 0, i32 14
  %call96 = call fastcc %struct.file* @get_file(%struct.file* noundef %15) #18
  %17 = load %struct.file*, %struct.file** %vm_file95, align 8
  %call98 = call i64 @do_mmap(%struct.file* noundef %17, i64 noundef %and, i64 noundef %and20, i64 noundef %or86, i64 noundef %spec.select, i64 noundef %pgoff, i64* noundef nonnull %populate, %struct.list_head* noundef null) #18
  call void @fput(%struct.file* noundef %15) #19
  %.pre174 = load i64, i64* %populate, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  %tobool99.not = icmp eq i64 %.pre174, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %out
  call fastcc void @mm_populate(i64 noundef %call98, i64 noundef %.pre174) #18
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %out
  %cmp102 = icmp ugt i64 %call98, -4096
  br i1 %cmp102, label %18, label %cleanup113

18:                                               ; preds = %if.end101.thread, %if.end101
  %ret.0177180 = phi i64 [ -22, %if.end101.thread ], [ %call98, %if.end101 ]
  br label %cleanup113

cleanup113:                                       ; preds = %18, %if.end101, %if.end28, %if.end23, %if.end19, %if.end
  %retval.0 = phi i64 [ -22, %if.end ], [ -22, %if.end19 ], [ -22, %if.end23 ], [ -4, %if.end28 ], [ %ret.0177180, %18 ], [ 0, %if.end101 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_area_struct* @vma_lookup(%struct.mm_struct* noundef %mm, i64 noundef %addr) unnamed_addr #4 {
entry:
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %addr) #18
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %0, %addr
  %spec.store.select = select i1 %cmp, %struct.vm_area_struct* null, %struct.vm_area_struct* %call
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %vma.0 = phi %struct.vm_area_struct* [ %spec.store.select, %land.lhs.true ], [ null, %entry ]
  ret %struct.vm_area_struct* %vma.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 2097152, i64* elementtype(i64) %counter) #20, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit_max(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_max = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 2, i32 1
  %1 = load volatile i64, i64* %rlim_max, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @special_mapping_close(%struct.vm_area_struct* nocapture noundef %vma) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @special_mapping_split(%struct.vm_area_struct* nocapture noundef readnone %vma, i64 noundef %addr) #3 {
entry:
  ret i32 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @special_mapping_mremap(%struct.vm_area_struct* noundef %new_vma) #4 {
entry:
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %new_vma, i64 0, i32 15
  %0 = bitcast i8** %vm_private_data to %struct.vm_special_mapping**
  %1 = load %struct.vm_special_mapping*, %struct.vm_special_mapping** %0, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %new_vma, i64 0, i32 6
  %5 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %cmp.not = icmp eq %struct.mm_struct* %4, %5
  br i1 %cmp.not, label %if.end16, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mmap.c\22; .popsection; .long 14472b - 14470b; .short 3363; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !31
  br label %cleanup

if.end16:                                         ; preds = %entry
  %mremap = getelementptr inbounds %struct.vm_special_mapping, %struct.vm_special_mapping* %1, i64 0, i32 3
  %6 = load i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*)*, i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*)** %mremap, align 8
  %tobool17.not = icmp eq i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*)* %6, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call20 = call i32 %6(%struct.vm_special_mapping* noundef %1, %struct.vm_area_struct* noundef %new_vma) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end16, %if.then18
  %retval.0 = phi i32 [ %call20, %if.then18 ], [ -14, %if.then ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @special_mapping_fault(%struct.vm_fault* noundef %vmf) #4 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %cmp = icmp eq %struct.vm_operations_struct* %1, bitcast ({ void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }* @legacy_special_mapping_vmops to %struct.vm_operations_struct*)
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast i8** %vm_private_data to %struct.page***
  br label %if.end7

if.else:                                          ; preds = %entry
  %3 = bitcast i8** %vm_private_data to %struct.vm_special_mapping**
  %4 = load %struct.vm_special_mapping*, %struct.vm_special_mapping** %3, align 8
  %fault = getelementptr inbounds %struct.vm_special_mapping, %struct.vm_special_mapping* %4, i64 0, i32 2
  %5 = load i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*, %struct.vm_fault*)** %fault, align 8
  %tobool.not = icmp eq i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*, %struct.vm_fault*)* %5, null
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  %pages6 = getelementptr inbounds %struct.vm_special_mapping, %struct.vm_special_mapping* %4, i64 0, i32 1
  br label %if.end7

cleanup:                                          ; preds = %if.else
  %call = call i32 %5(%struct.vm_special_mapping* noundef %4, %struct.vm_area_struct* noundef %0, %struct.vm_fault* noundef %vmf) #19
  br label %cleanup16

if.end7:                                          ; preds = %cleanup.thread, %if.then
  %pages.1.in = phi %struct.page*** [ %2, %if.then ], [ %pages6, %cleanup.thread ]
  %pages.1 = load %struct.page**, %struct.page*** %pages.1.in, align 8
  %pgoff8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %6 = load i64, i64* %pgoff8, align 8
  %tobool9.not43 = icmp eq i64 %6, 0
  br i1 %tobool9.not43, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end7
  %scevgep = getelementptr %struct.page*, %struct.page** %pages.1, i64 %6
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.body
  %pages.245 = phi %struct.page** [ %incdec.ptr, %for.body ], [ %pages.1, %land.rhs.preheader ]
  %pgoff.044 = phi i64 [ %dec, %for.body ], [ %6, %land.rhs.preheader ]
  %7 = load %struct.page*, %struct.page** %pages.245, align 8
  %tobool10.not = icmp eq %struct.page* %7, null
  br i1 %tobool10.not, label %cleanup16, label %for.body

for.body:                                         ; preds = %land.rhs
  %dec = add i64 %pgoff.044, -1
  %incdec.ptr = getelementptr %struct.page*, %struct.page** %pages.245, i64 1
  %tobool9.not = icmp eq i64 %dec, 0
  br i1 %tobool9.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.body, %if.end7
  %pages.2.lcssa = phi %struct.page** [ %pages.1, %if.end7 ], [ %scevgep, %for.body ]
  %.pr = load %struct.page*, %struct.page** %pages.2.lcssa, align 8
  %tobool11.not = icmp eq %struct.page* %.pr, null
  br i1 %tobool11.not, label %cleanup16, label %if.then12

if.then12:                                        ; preds = %for.end
  call fastcc void @get_page(%struct.page* noundef nonnull %.pr) #18
  %page13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  store %struct.page* %.pr, %struct.page** %page13, align 8
  br label %cleanup16

cleanup16:                                        ; preds = %land.rhs, %cleanup, %for.end, %if.then12
  %retval.1 = phi i32 [ 0, %if.then12 ], [ %call, %cleanup ], [ 2, %for.end ], [ 2, %land.rhs ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i8* @special_mapping_name(%struct.vm_area_struct* nocapture noundef readonly %vma) #6 {
entry:
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 15
  %0 = bitcast i8** %vm_private_data to %struct.vm_special_mapping**
  %1 = load %struct.vm_special_mapping*, %struct.vm_special_mapping** %0, align 8
  %name = getelementptr inbounds %struct.vm_special_mapping, %struct.vm_special_mapping* %1, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.15* %0 to i64*
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
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #18
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #18
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #18
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #3 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #4 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 4
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #19
  %2 = and i64 %call.i.i.i, 4
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #20, !srcloc !32
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #4 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 4
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #19
  %2 = and i64 %call.i.i.i, 4
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #20, !srcloc !33
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_zone_page_state() unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 0, i32 0), align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #17

attributes #0 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2156133190}
!9 = !{i64 1370375}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2156165612}
!13 = !{i8 0, i8 2}
!14 = !{i64 0, i64 4503599627370496}
!15 = !{i64 2156237565}
!16 = !{i64 2156247216}
!17 = !{i64 2156245839}
!18 = !{i64 2156244607}
!19 = !{i64 2156256299}
!20 = !{i64 2156257669}
!21 = !{i64 2156254961}
!22 = !{i64 2147823554, i64 2147824070, i64 2147824100, i64 2147824127, i64 2147824161, i64 2147824191}
!23 = !{i64 2147936624, i64 2147936657, i64 2147936709, i64 2147936768, i64 2147936802, i64 2147936858, i64 2147936887, i64 2147936914}
!24 = !{i64 2147864240, i64 2147864754, i64 2147864784, i64 2147864810, i64 2147864842, i64 2147864871}
!25 = !{i64 2147833275, i64 2147833791, i64 2147833821, i64 2147833848, i64 2147833882, i64 2147833912}
!26 = !{i64 2149556864}
!27 = !{i64 2147919416, i64 2147919449, i64 2147919502, i64 2147919561, i64 2147919595, i64 2147919650, i64 2147919679, i64 2147919699}
!28 = !{i64 2149564145}
!29 = !{i64 2149356375}
!30 = !{i64 2147892634, i64 2147893145, i64 2147893175, i64 2147893201, i64 2147893233, i64 2147893262}
!31 = !{i64 2156242355}
!32 = !{i64 2147893480, i64 2147894132, i64 2147894162, i64 2147894193, i64 2147894225, i64 2147894260, i64 2147894285}
!33 = !{i64 2147904057, i64 2147904719, i64 2147904749, i64 2147904780, i64 2147904812, i64 2147904847, i64 2147904872}
