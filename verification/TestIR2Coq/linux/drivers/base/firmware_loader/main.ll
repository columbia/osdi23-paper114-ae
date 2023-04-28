; ModuleID = 'drivers/base/firmware_loader/main.c'
source_filename = "drivers/base/firmware_loader/main.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_firmware_class__430_1572_firmware_class_init5:\09\09\09"
module asm ".long\09firmware_class_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.1 }
%struct.module = type opaque
%union.anon.1 = type { i8* }
%struct.kparam_string = type { i32, i8* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.firmware_cache = type { %struct.spinlock, %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.builtin_fw = type { i8*, i8*, i64 }
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.workqueue_struct = type opaque
%struct.firmware = type { i64, i8*, i8* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.70, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.70 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.20, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.25, i32 }
%union.anon.25 = type { %struct.kuid_t }
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
%struct.disk_stats = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.39, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.39 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.3, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.69 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.71, %union.anon.72, %union.anon.73, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.76, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { %struct.rb_node }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.76 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.28 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.40, %union.anon.41, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.18, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.19, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.18 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.19 = type { %struct.pte_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.54, i32, [12 x i8] }
%union.anon.54 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.56, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.21, i8* }
%union.anon.21 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35, [48 x i8] }
%struct.anon.35 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.57, %struct.list_head, %struct.list_head, %union.anon.58 }
%struct.lockref = type { %union.anon.23 }
%union.anon.23 = type { i64 }
%union.anon.57 = type { %struct.list_head }
%union.anon.58 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.80, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.78 = type { %struct.callback_head }
%union.anon.79 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.59 }
%union.anon.59 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.61 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.80 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.65 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.63, %struct.qspinlock }
%union.anon.63 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.65 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
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
%struct.fw_priv = type { %struct.kref, %struct.list_head, %struct.firmware_cache*, %struct.fw_state, i8*, i64, i64, i64, i32, i8* }
%struct.fw_state = type { %struct.completion, i32 }

@__UNIQUE_ID_author420 = internal constant [43 x i8] c"firmware_class.author=Manuel Estrada Sainz\00", section ".modinfo", align 1
@__UNIQUE_ID_description421 = internal constant [66 x i8] c"firmware_class.description=Multi purpose firmware loading support\00", section ".modinfo", align 1
@__UNIQUE_ID_file422 = internal constant [64 x i8] c"firmware_class.file=drivers/base/firmware_loader/firmware_class\00", section ".modinfo", align 1
@__UNIQUE_ID_license423 = internal constant [27 x i8] c"firmware_class.license=GPL\00", section ".modinfo", align 1
@fw_lock = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @fw_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @fw_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@__param_str_path = internal constant [20 x i8] c"firmware_class.path\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 8
@__param_string_path = internal constant %struct.kparam_string { i32 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fw_path_para, i32 0, i32 0) }, align 8
@__param_path = internal constant { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_string* } } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_path, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_string, i16 420, i8 -1, i8 0, { %struct.kparam_string* } { %struct.kparam_string* @__param_string_path } }, section "__param", align 8
@__UNIQUE_ID_pathtype427 = internal constant [36 x i8] c"firmware_class.parmtype=path:string\00", section ".modinfo", align 1
@__UNIQUE_ID_path428 = internal constant [104 x i8] c"firmware_class.parm=path:customized firmware image search path with a higher priority than default path\00", section ".modinfo", align 1
@fw_shutdown_nb = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @fw_shutdown_notify, %struct.notifier_block* null, i32 0 }, align 8
@__UNIQUE_ID___addressable_firmware_class_init431 = internal global i8* bitcast (i32 ()* @firmware_class_init to i8*), section ".discard.addressable", align 8
@__exitcall_firmware_class_exit = internal global void ()* @firmware_class_exit, section ".exitcall.exit", align 8
@fw_path_para = internal global [256 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Direct firmware load for %s failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: kmalloc(struct firmware) failed\0A\00", align 1
@__func__._request_firmware_prepare = private unnamed_addr constant [26 x i8] c"_request_firmware_prepare\00", align 1
@fw_cache = internal global %struct.firmware_cache zeroinitializer, align 8
@__start_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 8
@__end_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@names_cachep = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@fw_path = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fw_path_para, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)], align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"loading %s failed with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"/lib/firmware/updates/5.15.0+\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"/lib/firmware/updates\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"/lib/firmware/5.15.0+\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"/lib/firmware\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@llvm.compiler.used = appending global [10 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_firmware_class_init431 to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_author420, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_description421, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_file422, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license423, i32 0, i32 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__UNIQUE_ID_path428, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_pathtype427, i32 0, i32 0), i8* bitcast (void ()** @__exitcall_firmware_class_exit to i8*), i8* bitcast ({ i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_string* } }* @__param_path to i8*), i8* bitcast (void ()* @firmware_class_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @assign_fw(%struct.firmware* nocapture noundef %fw, %struct.device* noundef readnone %device) local_unnamed_addr #0 {
entry:
  %priv = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 2
  %0 = bitcast i8** %priv to %struct.fw_priv**
  %1 = load %struct.fw_priv*, %struct.fw_priv** %0, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @fw_lock) #11
  %size = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %1, i64 0, i32 5
  %2 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @fw_state_is_aborted(%struct.fw_priv* noundef %1) #12
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @fw_set_page_data(%struct.fw_priv* noundef %1, %struct.firmware* noundef %fw) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fw_lock) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @fw_state_is_aborted(%struct.fw_priv* nocapture noundef readonly %fw_priv) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @__fw_state_check(%struct.fw_priv* noundef %fw_priv) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @fw_set_page_data(%struct.fw_priv* noundef %fw_priv, %struct.firmware* nocapture noundef writeonly %fw) unnamed_addr #4 {
entry:
  %priv = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 2
  %0 = bitcast i8** %priv to %struct.fw_priv**
  store %struct.fw_priv* %fw_priv, %struct.fw_priv** %0, align 8
  %size = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 5
  %1 = load i64, i64* %size, align 8
  %size1 = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 0
  store i64 %1, i64* %size1, align 8
  %data = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 4
  %2 = load i8*, i8** %data, align 8
  %data2 = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 1
  store i8* %2, i8** %data2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_firmware(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_request_firmware(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @_request_firmware(%struct.firmware** noundef writeonly %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef %buf, i64 noundef %size, i64 noundef %offset, i32 noundef %opt_flags) unnamed_addr #0 {
entry:
  %fw = alloca %struct.firmware*, align 8
  %0 = bitcast %struct.firmware** %fw to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.firmware* null, %struct.firmware** %fw, align 8
  %tobool.not = icmp eq %struct.firmware** %firmware_p, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8* %name, null
  br i1 %tobool1.not, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, i8* %name, align 1
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then35, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %call = call fastcc i32 @_request_firmware_prepare(%struct.firmware** noundef nonnull %fw, i8* noundef nonnull %name, %struct.device* noundef %device, i8* noundef %buf, i64 noundef %size, i64 noundef %offset, i32 noundef %opt_flags) #12
  %cmp5 = icmp slt i32 %call, 1
  br i1 %cmp5, label %out, label %if.end8

if.end8:                                          ; preds = %if.end4
  %2 = load %struct.firmware*, %struct.firmware** %fw, align 8
  %priv = getelementptr inbounds %struct.firmware, %struct.firmware* %2, i64 0, i32 2
  %3 = bitcast i8** %priv to %struct.fw_priv**
  %4 = load %struct.fw_priv*, %struct.fw_priv** %3, align 8
  %call9 = call fastcc i32 @fw_get_filesystem_firmware(%struct.device* noundef %device, %struct.fw_priv* noundef %4) #12
  %and = and i32 %opt_flags, 128
  %tobool10.not = icmp eq i32 %and, 0
  %cmp13 = icmp eq i32 %call9, -2
  %5 = and i1 %tobool10.not, %cmp13
  br i1 %5, label %if.then22, label %if.end20

if.end20:                                         ; preds = %if.end8
  %tobool21.not = icmp eq i32 %call9, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end8, %if.end20
  %ret.061 = phi i32 [ %call9, %if.end20 ], [ -2, %if.end8 ]
  %and23 = and i32 %opt_flags, 8
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end, label %out

do.end:                                           ; preds = %if.then22
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %device, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %name, i32 noundef %ret.061) #14
  br label %out

if.else:                                          ; preds = %if.end20
  %call31 = call i32 @assign_fw(%struct.firmware* noundef %2, %struct.device* noundef %device) #12
  br label %out

out:                                              ; preds = %if.then22, %do.end, %if.else, %if.end4
  %ret.1 = phi i32 [ %call, %if.end4 ], [ %call31, %if.else ], [ %ret.061, %do.end ], [ %ret.061, %if.then22 ]
  %cmp33 = icmp slt i32 %ret.1, 0
  %.pre = load %struct.firmware*, %struct.firmware** %fw, align 8
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %out, %if.end, %lor.lhs.false
  %6 = phi %struct.firmware* [ null, %lor.lhs.false ], [ null, %if.end ], [ %.pre, %out ]
  %ret.166 = phi i32 [ -22, %lor.lhs.false ], [ -22, %if.end ], [ %ret.1, %out ]
  call fastcc void @fw_abort_batch_reqs(%struct.firmware* noundef %6) #12
  call void @release_firmware(%struct.firmware* noundef %6) #12
  br label %if.end36

if.end36:                                         ; preds = %out, %if.then35
  %7 = phi %struct.firmware* [ null, %if.then35 ], [ %.pre, %out ]
  %ret.165 = phi i32 [ %ret.166, %if.then35 ], [ %ret.1, %out ]
  store %struct.firmware* %7, %struct.firmware** %firmware_p, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end36
  %retval.0 = phi i32 [ %ret.165, %if.end36 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @firmware_request_nowarn(%struct.firmware** noundef %firmware, i8* noundef %name, %struct.device* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_request_firmware(%struct.firmware** noundef %firmware, i8* noundef %name, %struct.device* noundef %device, i8* noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 9) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_firmware_direct(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_request_firmware(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 41) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @firmware_request_platform(%struct.firmware** noundef %firmware, i8* noundef %name, %struct.device* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_request_firmware(%struct.firmware** noundef %firmware, i8* noundef %name, %struct.device* noundef %device, i8* noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 65) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @firmware_request_cache(%struct.device* nocapture noundef readnone %device, i8* nocapture noundef readnone %name) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @fw_lock) #11
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fw_lock) #11
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_firmware_into_buf(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @_request_firmware(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef %buf, i64 noundef %size, i64 noundef 0, i32 noundef 17) #12
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_partial_firmware_into_buf(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef %buf, i64 noundef %size, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @_request_firmware(%struct.firmware** noundef %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef %buf, i64 noundef %size, i64 noundef %offset, i32 noundef 145) #12
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @release_firmware(%struct.firmware* noundef %fw) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.firmware* %fw, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @fw_is_builtin_firmware(%struct.firmware* noundef nonnull %fw) #12
  br i1 %call, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call fastcc void @firmware_free_data(%struct.firmware* noundef nonnull %fw) #12
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %0 = bitcast %struct.firmware* %fw to i8*
  call void @kfree(i8* noundef nonnull %0) #11
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @fw_is_builtin_firmware(%struct.firmware* nocapture noundef readonly %fw) unnamed_addr #5 {
entry:
  br i1 icmp eq (%struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)), label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 1
  %0 = load i8*, i8** %data, align 8
  %1 = load i8*, i8** getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0, i32 1), align 8
  %cmp29 = icmp eq i8* %0, %1
  br i1 %cmp29, label %cleanup, label %for.cond

for.cond:                                         ; preds = %for.body.lr.ph, %for.body
  %incdec.ptr10 = phi %struct.builtin_fw* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 1), %for.body.lr.ph ]
  %cmp.not = icmp eq %struct.builtin_fw* %incdec.ptr10, getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %data1 = getelementptr inbounds %struct.builtin_fw, %struct.builtin_fw* %incdec.ptr10, i64 0, i32 1
  %2 = load i8*, i8** %data1, align 8
  %cmp2 = icmp eq i8* %0, %2
  %incdec.ptr = getelementptr %struct.builtin_fw, %struct.builtin_fw* %incdec.ptr10, i64 1
  br i1 %cmp2, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body, %for.body.lr.ph, %entry
  %cmp.not.lcssa = phi i1 [ icmp eq (%struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)), %entry ], [ icmp eq (%struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)), %for.body.lr.ph ], [ %cmp.not, %for.body ], [ %cmp.not, %for.cond ]
  %3 = xor i1 %cmp.not.lcssa, true
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @firmware_free_data(%struct.firmware* nocapture noundef readonly %fw) unnamed_addr #0 {
entry:
  %priv = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 2
  %0 = load i8*, i8** %priv, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 1
  %1 = load i8*, i8** %data, align 8
  call void @vfree(i8* noundef %1) #11
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i8* %0 to %struct.fw_priv*
  call fastcc void @free_fw_priv(%struct.fw_priv* noundef nonnull %2) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_firmware_nowait(%struct.module* noundef %module, i1 noundef %uevent, i8* noundef %name, %struct.device* noundef %device, i32 noundef %gfp, i8* noundef %context, void (%struct.firmware*, i8*)* noundef %cont) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 80, i32 noundef %gfp) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %module1 = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %module1 to %struct.module**
  store %struct.module* %module, %struct.module** %0, align 8
  %call2 = call i8* @kstrdup_const(i8* noundef %name, i32 noundef %gfp) #11
  %name3 = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %name3 to i8**
  store i8* %call2, i8** %1, align 8
  %tobool5.not = icmp eq i8* %call2, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %device8 = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %device8 to %struct.device**
  store %struct.device* %device, %struct.device** %2, align 8
  %context9 = getelementptr inbounds i8, i8* %call, i64 56
  %3 = bitcast i8* %context9 to i8**
  store i8* %context, i8** %3, align 8
  %cont10 = getelementptr inbounds i8, i8* %call, i64 64
  %4 = bitcast i8* %cont10 to void (%struct.firmware*, i8*)**
  store void (%struct.firmware*, i8*)* %cont, void (%struct.firmware*, i8*)** %4, align 8
  %or = select i1 %uevent, i32 3, i32 6
  %opt_flags = getelementptr inbounds i8, i8* %call, i64 72
  %5 = bitcast i8* %opt_flags to i32*
  store i32 %or, i32* %5, align 8
  %call22 = call %struct.device* @get_device(%struct.device* noundef %device) #11
  %work = bitcast i8* %call to %struct.work_struct*
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call to i64*
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry25 = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %entry25 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #12
  %func = getelementptr inbounds i8, i8* %call, i64 24
  %7 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @request_firmware_work_func, void (%struct.work_struct*)** %7, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull %work) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then6
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %if.then6 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #11
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #2

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
define internal void @request_firmware_work_func(%struct.work_struct* noundef %work) #0 {
entry:
  %fw = alloca %struct.firmware*, align 8
  %0 = bitcast %struct.firmware** %fw to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.firmware* null, %struct.firmware** %fw, align 8, !annotation !7
  %1 = bitcast %struct.work_struct* %work to i8*
  %name = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1, i32 1
  %2 = bitcast %struct.list_head* %name to i8**
  %3 = load i8*, i8** %2, align 8
  %device = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1, i32 1, i32 1
  %4 = bitcast %struct.list_head** %device to %struct.device**
  %5 = load %struct.device*, %struct.device** %4, align 8
  %opt_flags = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 2, i32 1
  %6 = bitcast %struct.list_head* %opt_flags to i32*
  %7 = load i32, i32* %6, align 8
  %call = call fastcc i32 @_request_firmware(%struct.firmware** noundef nonnull %fw, i8* noundef %3, %struct.device* noundef %5, i8* noundef null, i64 noundef 0, i64 noundef 0, i32 noundef %7) #12
  %cont = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 2
  %8 = bitcast %struct.work_struct* %cont to void (%struct.firmware*, i8*)**
  %9 = load void (%struct.firmware*, i8*)*, void (%struct.firmware*, i8*)** %8, align 8
  %10 = load %struct.firmware*, %struct.firmware** %fw, align 8
  %context = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1, i32 2
  %11 = bitcast void (%struct.work_struct*)** %context to i8**
  %12 = load i8*, i8** %11, align 8
  call void %9(%struct.firmware* noundef %10, i8* noundef %12) #11
  %13 = load %struct.device*, %struct.device** %4, align 8
  call void @put_device(%struct.device* noundef %13) #11
  %14 = load i8*, i8** %2, align 8
  call void @kfree_const(i8* noundef %14) #11
  call void @kfree(i8* noundef %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #12
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal void @firmware_class_exit() #7 section ".exit.text" {
entry:
  %call = call i32 @unregister_reboot_notifier(%struct.notifier_block* noundef nonnull @fw_shutdown_nb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(%struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @firmware_class_init() #7 section ".init.text" {
entry:
  call fastcc void @fw_cache_init() #15
  %call1 = call i32 @register_reboot_notifier(%struct.notifier_block* noundef nonnull @fw_shutdown_nb) #11
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__fw_state_check(%struct.fw_priv* nocapture noundef readonly %fw_priv) unnamed_addr #3 {
entry:
  %status2 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 3, i32 1
  %0 = load i32, i32* %status2, align 8
  %cmp = icmp eq i32 %0, 3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @_request_firmware_prepare(%struct.firmware** nocapture noundef writeonly %firmware_p, i8* noundef %name, %struct.device* noundef %device, i8* noundef %dbuf, i64 noundef %size, i64 noundef %offset, i32 noundef %opt_flags) unnamed_addr #0 {
entry:
  %fw_priv = alloca %struct.fw_priv*, align 8
  %0 = bitcast %struct.fw_priv** %fw_priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.fw_priv* null, %struct.fw_priv** %fw_priv, align 8, !annotation !7
  %call = call fastcc i8* @kzalloc(i64 noundef 24, i32 noundef 3264) #12
  %1 = bitcast i8* %call to %struct.firmware*
  %2 = bitcast %struct.firmware** %firmware_p to i8**
  store i8* %call, i8** %2, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %device, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__._request_firmware_prepare, i64 0, i64 0)) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @fw_get_builtin_firmware(%struct.firmware* noundef nonnull %1, i8* noundef %name, i8* noundef %dbuf, i64 noundef %size) #12
  br i1 %call1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @alloc_lookup_fw_priv(i8* noundef %name, %struct.fw_priv** noundef nonnull %fw_priv, i8* noundef %dbuf, i64 noundef %size, i64 noundef %offset, i32 noundef %opt_flags) #12
  %3 = bitcast %struct.fw_priv** %fw_priv to i8**
  %4 = load i8*, i8** %3, align 8
  %priv = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %priv to i8**
  store i8* %4, i8** %5, align 8
  %cmp = icmp sgt i32 %call4, 0
  %6 = bitcast i8* %4 to %struct.fw_priv*
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %call6 = call fastcc i32 @fw_state_wait(%struct.fw_priv* noundef %6) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  call fastcc void @fw_set_page_data(%struct.fw_priv* noundef %6, %struct.firmware* noundef nonnull %1) #12
  br label %cleanup

if.end10:                                         ; preds = %if.then5, %if.end3
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call4, %if.end3 ]
  %cmp11 = icmp slt i32 %ret.0, 0
  %ret.0. = select i1 %cmp11, i32 %ret.0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end, %if.then8, %do.end
  %retval.0 = phi i32 [ 0, %if.then8 ], [ -12, %do.end ], [ 0, %if.end ], [ %ret.0., %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fw_get_filesystem_firmware(%struct.device* noundef %device, %struct.fw_priv* noundef %fw_priv) unnamed_addr #0 {
entry:
  %buffer = alloca i8*, align 8
  %file_size = alloca i64, align 8
  %0 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %buffer, align 8
  %data = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 4
  %1 = load i8*, i8** %data, align 8
  %tobool1.not = icmp eq i8* %1, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* %1, i8** %buffer, align 8
  %allocated_size = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 6
  %2 = load i64, i64* %allocated_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %msize.0 = phi i64 [ %2, %if.then ], [ 2147483647, %entry ]
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef 3264) #11
  %tobool3.not = icmp eq i8* %call, null
  br i1 %tobool3.not, label %cleanup49, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %4 = bitcast i64* %file_size to i8*
  %fw_name = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 9
  %size18 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 5
  %opt_flags = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 8
  %offset = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %rc.012 = phi i32 [ -2, %for.cond.preheader ], [ %rc.2.ph, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  store i64 0, i64* %file_size, align 8
  %arrayidx = getelementptr [5 x i8*], [5 x i8*]* @fw_path, i64 0, i64 %indvars.iv
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i8, i8* %5, align 1
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %for.inc, label %if.end10

if.end10:                                         ; preds = %for.body
  %7 = load i8*, i8** %fw_name, align 8
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %call, i64 noundef 4096, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %5, i8* noundef %7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #11
  %cmp14 = icmp sgt i32 %call13, 4095
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end10
  store i64 0, i64* %size18, align 8
  %8 = load i32, i32* %opt_flags, align 8
  %and = and i32 %8, 128
  %tobool19 = icmp ne i32 %and, 0
  %9 = load i8*, i8** %buffer, align 8
  %tobool21 = icmp ne i8* %9, null
  %or.cond = select i1 %tobool19, i1 %tobool21, i1 false
  %spec.select = select i1 %or.cond, i64* %file_size, i64* null
  %10 = load i64, i64* %offset, align 8
  %call24 = call i32 @kernel_read_file_from_path_initns(i8* noundef nonnull %call, i64 noundef %10, i8** noundef nonnull %buffer, i64 noundef %msize.0, i64* noundef %spec.select, i32 noundef 1) #11
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end17
  %cmp28.not = icmp eq i32 %call24, -2
  br i1 %cmp28.not, label %for.inc, label %do.end

do.end:                                           ; preds = %if.then27
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %device, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %call, i32 noundef %call24) #14
  br label %for.inc

if.end32:                                         ; preds = %if.end17
  %conv337 = zext i32 %call24 to i64
  %11 = load i8*, i8** %data, align 8
  %tobool42.not = icmp eq i8* %11, null
  br i1 %tobool42.not, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end32
  %12 = load i8*, i8** %buffer, align 8
  store i8* %12, i8** %data, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end32
  store i64 %conv337, i64* %size18, align 8
  call fastcc void @fw_state_done(%struct.fw_priv* noundef %fw_priv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end45
  %rc.2 = phi i32 [ 0, %if.end45 ], [ -36, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  br label %for.end

for.inc:                                          ; preds = %for.body, %if.then27, %do.end
  %rc.2.ph = phi i32 [ %call24, %do.end ], [ -2, %if.then27 ], [ %rc.012, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cleanup
  %rc.3 = phi i32 [ %rc.2, %cleanup ], [ %rc.2.ph, %for.inc ]
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %13, i8* noundef nonnull %call) #11
  br label %cleanup49

cleanup49:                                        ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ %rc.3, %for.end ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_abort_batch_reqs(%struct.firmware* noundef readonly %fw) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.firmware* %fw, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %priv = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 2
  %0 = load i8*, i8** %priv, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = bitcast i8* %0 to %struct.fw_priv*
  call void @mutex_lock(%struct.mutex* noundef nonnull @fw_lock) #11
  %call = call fastcc i1 @fw_state_is_aborted(%struct.fw_priv* noundef nonnull %1) #12
  br i1 %call, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @fw_state_aborted(%struct.fw_priv* noundef nonnull %1) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fw_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @fw_get_builtin_firmware(%struct.firmware* nocapture noundef %fw, i8* noundef %name, i8* noundef %buf, i64 noundef %size) unnamed_addr #0 {
entry:
  br i1 icmp eq (%struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)), label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load i8*, i8** getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0, i32 0), align 8
  %call24 = call i32 @strcmp(i8* noundef %name, i8* noundef %0) #11
  %cmp225 = icmp eq i32 %call24, 0
  br i1 %cmp225, label %if.then, label %for.inc

for.body:                                         ; preds = %for.inc
  %name1 = getelementptr inbounds %struct.builtin_fw, %struct.builtin_fw* %incdec.ptr, i64 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef %1) #11
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body, %for.body.preheader
  %cmp.not17.lcssa = phi i1 [ icmp eq (%struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)), %for.body.preheader ], [ false, %for.body ]
  %b_fw.016.lcssa = phi %struct.builtin_fw* [ getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %for.body.preheader ], [ %incdec.ptr, %for.body ]
  %size3 = getelementptr inbounds %struct.builtin_fw, %struct.builtin_fw* %b_fw.016.lcssa, i64 0, i32 2
  %2 = load i64, i64* %size3, align 8
  %size4 = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 0
  store i64 %2, i64* %size4, align 8
  %data = getelementptr inbounds %struct.builtin_fw, %struct.builtin_fw* %b_fw.016.lcssa, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %data5 = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 1
  store i8* %3, i8** %data5, align 8
  call fastcc void @fw_copy_to_prealloc_buf(%struct.firmware* noundef %fw, i8* noundef %buf, i64 noundef %size) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %b_fw.01626 = phi %struct.builtin_fw* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.builtin_fw, %struct.builtin_fw* %b_fw.01626, i64 1
  %cmp.not = icmp eq %struct.builtin_fw* %incdec.ptr, getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %cmp.not14 = phi i1 [ %cmp.not17.lcssa, %if.then ], [ icmp eq (%struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__start_builtin_fw, i64 0, i64 0), %struct.builtin_fw* getelementptr inbounds ([0 x %struct.builtin_fw], [0 x %struct.builtin_fw]* @__end_builtin_fw, i64 0, i64 0)), %entry ], [ true, %for.inc ]
  %4 = xor i1 %cmp.not14, true
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_lookup_fw_priv(i8* noundef %fw_name, %struct.fw_priv** nocapture noundef writeonly %fw_priv, i8* noundef %dbuf, i64 noundef %size, i64 noundef %offset, i32 noundef %opt_flags) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 0, i32 0, i32 0)) #11
  %and = and i32 %opt_flags, 144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.fw_priv* @__lookup_fw_priv(i8* noundef %fw_name) #12
  %tobool1.not = icmp eq %struct.fw_priv* %call, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.then
  %ref = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %call, i64 0, i32 0
  call fastcc void @kref_get(%struct.kref* noundef %ref) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then, %entry
  %call6 = call fastcc %struct.fw_priv* @__allocate_fw_priv(i8* noundef %fw_name, i8* noundef %dbuf, i64 noundef %size, i64 noundef %offset, i32 noundef %opt_flags) #12
  %tobool7.not = icmp eq %struct.fw_priv* %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end5
  %list = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %call6, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #12
  %and9 = and i32 %opt_flags, 16
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.then8
  call fastcc void @list_add(%struct.list_head* noundef %list) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then11, %if.then8, %if.then2
  %storemerge = phi %struct.fw_priv* [ %call, %if.then2 ], [ %call6, %if.then8 ], [ %call6, %if.then11 ], [ %call6, %if.end5 ]
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %if.then8 ], [ 0, %if.then11 ], [ -12, %if.end5 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 0, i32 0, i32 0)) #11
  store %struct.fw_priv* %storemerge, %struct.fw_priv** %fw_priv, align 8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fw_state_wait(%struct.fw_priv* noundef %fw_priv) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__fw_state_wait_common(%struct.fw_priv* noundef %fw_priv) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_copy_to_prealloc_buf(%struct.firmware* nocapture noundef readonly %fw, i8* noundef %buf, i64 noundef %size) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %buf, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size1 = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 0
  %0 = load i64, i64* %size1, align 8
  %cmp = icmp ugt i64 %0, %size
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %fw, i64 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %call = call i8* @memcpy(i8* noundef nonnull %buf, i8* noundef %1, i64 noundef %0) #11
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fw_priv* @__lookup_fw_priv(i8* noundef %fw_name) unnamed_addr #0 {
entry:
  %.pn23 = load i8*, i8** bitcast (%struct.list_head** getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 1, i32 0) to i8**), align 8
  %cmp.not24 = icmp eq i8* %.pn23, bitcast (%struct.list_head* getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 1) to i8*)
  br i1 %cmp.not24, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn25 = phi i8* [ %.pn, %for.inc ], [ %.pn23, %entry ]
  %fw_name3 = getelementptr i8, i8* %.pn25, i64 104
  %0 = bitcast i8* %fw_name3 to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @strcmp(i8* noundef %1, i8* noundef %fw_name) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.split.loop.exit21, label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = bitcast i8* %.pn25 to i8**
  %.pn = load i8*, i8** %2, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 1) to i8*)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup.split.loop.exit21:                        ; preds = %for.body
  %tmp.0.in.le = getelementptr i8, i8* %.pn25, i64 -8
  %tmp.0.le = bitcast i8* %tmp.0.in.le to %struct.fw_priv*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %cleanup.split.loop.exit21
  %retval.0 = phi %struct.fw_priv* [ %tmp.0.le, %cleanup.split.loop.exit21 ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.fw_priv* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fw_priv* @__allocate_fw_priv(i8* noundef %fw_name, i8* noundef %dbuf, i64 noundef %size, i64 noundef %offset, i32 noundef %opt_flags) unnamed_addr #0 {
entry:
  %and = and i32 %opt_flags, 128
  %tobool = icmp eq i32 %and, 0
  %tobool1 = icmp ne i8* %dbuf, null
  %or.cond = or i1 %tobool1, %tobool
  %or.cond.not = xor i1 %or.cond, true
  %cmp.not = icmp ne i64 %offset, 0
  %or.cond1 = and i1 %cmp.not, %tobool
  %or.cond2 = or i1 %or.cond1, %or.cond.not
  br i1 %or.cond2, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry
  %call = call fastcc i8* @kzalloc(i64 noundef 120, i32 noundef 2592) #12
  %0 = bitcast i8* %call to %struct.fw_priv*
  %tobool7.not = icmp eq i8* %call, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = call i8* @kstrdup_const(i8* noundef %fw_name, i32 noundef 2592) #11
  %fw_name11 = getelementptr inbounds i8, i8* %call, i64 112
  %1 = bitcast i8* %fw_name11 to i8**
  store i8* %call10, i8** %1, align 8
  %tobool13.not = icmp eq i8* %call10, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @kfree(i8* noundef nonnull %call) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %ref = bitcast i8* %call to %struct.kref*
  call fastcc void @kref_init(%struct.kref* noundef nonnull %ref) #12
  %fwc16 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %fwc16 to %struct.firmware_cache**
  store %struct.firmware_cache* @fw_cache, %struct.firmware_cache** %2, align 8
  %data = getelementptr inbounds i8, i8* %call, i64 72
  %3 = bitcast i8* %data to i8**
  store i8* %dbuf, i8** %3, align 8
  %allocated_size = getelementptr inbounds i8, i8* %call, i64 88
  %4 = bitcast i8* %allocated_size to i64*
  store i64 %size, i64* %4, align 8
  %offset17 = getelementptr inbounds i8, i8* %call, i64 96
  %5 = bitcast i8* %offset17 to i64*
  store i64 %offset, i64* %5, align 8
  %opt_flags18 = getelementptr inbounds i8, i8* %call, i64 104
  %6 = bitcast i8* %opt_flags18 to i32*
  store i32 %opt_flags, i32* %6, align 8
  call fastcc void @fw_state_init(%struct.fw_priv* noundef nonnull %0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %if.end15, %if.then14
  %retval.0 = phi %struct.fw_priv* [ %0, %if.end15 ], [ null, %if.then14 ], [ null, %entry ], [ null, %if.end6 ]
  ret %struct.fw_priv* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #6 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 1, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !10
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #11
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !11

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !9

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #11
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !12
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #6 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_state_init(%struct.fw_priv* noundef %fw_priv) unnamed_addr #0 {
entry:
  %completion = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 3, i32 0
  call fastcc void @init_completion(%struct.completion* noundef %completion) #12
  %status = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 3, i32 1
  store i32 0, i32* %status, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 1), %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 1, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__fw_state_wait_common(%struct.fw_priv* noundef %fw_priv) unnamed_addr #0 {
entry:
  %completion = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 3, i32 0
  %call = call i64 @wait_for_completion_killable_timeout(%struct.completion* noundef %completion, i64 noundef 9223372036854775807) #11
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 3, i32 1
  %0 = load i32, i32* %status, align 8
  %cmp2 = icmp eq i32 %0, 3
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true
  %cmp5 = icmp slt i64 %call, 0
  %cond = select i1 %cmp5, i64 %call, i64 0
  %conv = trunc i64 %cond to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.end4
  %retval.0 = phi i32 [ %conv, %if.end4 ], [ -2, %land.lhs.true ], [ -110, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_for_completion_killable_timeout(%struct.completion* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read_file_from_path_initns(i8* noundef, i64 noundef, i8** noundef, i64 noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_state_done(%struct.fw_priv* noundef %fw_priv) unnamed_addr #0 {
entry:
  call fastcc void @__fw_state_set(%struct.fw_priv* noundef %fw_priv, i32 noundef 2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__fw_state_set(%struct.fw_priv* noundef %fw_priv, i32 noundef %status) unnamed_addr #0 {
entry:
  %status4 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 3, i32 1
  store volatile i32 %status, i32* %status4, align 8
  %0 = and i32 %status, -2
  %1 = icmp eq i32 %0, 2
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %completion = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 3, i32 0
  call void @complete_all(%struct.completion* noundef %completion) #11
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(%struct.completion* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_state_aborted(%struct.fw_priv* noundef %fw_priv) unnamed_addr #0 {
entry:
  call fastcc void @__fw_state_set(%struct.fw_priv* noundef %fw_priv, i32 noundef 3) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_fw_priv(%struct.fw_priv* noundef %fw_priv) unnamed_addr #0 {
entry:
  %fwc1 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 2
  %0 = load %struct.firmware_cache*, %struct.firmware_cache** %fwc1, align 8
  %rlock.i = getelementptr inbounds %struct.firmware_cache, %struct.firmware_cache* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %ref = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %fw_priv, i64 0, i32 0
  %call = call fastcc i32 @kref_put(%struct.kref* noundef %ref) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kref_put(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #12
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @__free_fw_priv(%struct.kref* noundef %kref) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__free_fw_priv(%struct.kref* noundef %ref) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.fw_priv* @to_fw_priv(%struct.kref* noundef %ref) #12
  %fwc1 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %call, i64 0, i32 2
  %0 = load %struct.firmware_cache*, %struct.firmware_cache** %fwc1, align 8
  %list = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %call, i64 0, i32 1
  call fastcc void @list_del(%struct.list_head* noundef %list) #12
  %rlock.i = getelementptr inbounds %struct.firmware_cache, %struct.firmware_cache* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %allocated_size = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %call, i64 0, i32 6
  %1 = load i64, i64* %allocated_size, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %call, i64 0, i32 4
  %2 = load i8*, i8** %data, align 8
  call void @vfree(i8* noundef %2) #11
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then3
  %fw_name = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %call, i64 0, i32 9
  %3 = load i8*, i8** %fw_name, align 8
  call void @kfree_const(i8* noundef %3) #11
  %4 = bitcast %struct.fw_priv* %call to i8*
  call void @kfree(i8* noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #11
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #13, !srcloc !15
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !9

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !16
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.fw_priv* @to_fw_priv(%struct.kref* noundef readnone %ref) unnamed_addr #9 {
entry:
  %0 = bitcast %struct.kref* %ref to %struct.fw_priv*
  ret %struct.fw_priv* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @fw_shutdown_notify(%struct.notifier_block* nocapture noundef readnone %unused1, i64 noundef %unused2, i8* nocapture noundef readnone %unused3) #9 {
entry:
  ret i32 0
}

; Function Attrs: cold nofree noinline norecurse nounwind null_pointer_is_valid optsize
define internal fastcc void @fw_cache_init() unnamed_addr #10 section ".init.text" {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 1)) #12
  store i32 0, i32* getelementptr inbounds (%struct.firmware_cache, %struct.firmware_cache* @fw_cache, i64 0, i32 2), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(%struct.notifier_block* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold nofree noinline norecurse nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }
attributes #15 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2149801172}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148148164, i64 2148148197, i64 2148148250, i64 2148148309, i64 2148148343, i64 2148148398, i64 2148148427, i64 2148148447}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148058266, i64 2148058930, i64 2148058960, i64 2148058992, i64 2148059026, i64 2148059061, i64 2148059086}
!13 = !{i64 2149808453}
!14 = !{i64 2149755301}
!15 = !{i64 2149960477}
!16 = !{i64 2148070048, i64 2148070722, i64 2148070752, i64 2148070784, i64 2148070818, i64 2148070854, i64 2148070879}
