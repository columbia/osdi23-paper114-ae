; ModuleID = 'drivers/tty/vt/vt_ioctl.c'
source_filename = "drivers/tty/vt/vt_ioctl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vc = type { %struct.vc_data*, %struct.work_struct }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.70, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.70 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.71, %struct.anon.72, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.73, %union.anon.74, %union.anon.75, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.82, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { %struct.rb_node }
%union.anon.75 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.82 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
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
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
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
%union.anon.81 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.64 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.62, %struct.qspinlock }
%union.anon.62 = type { %struct.atomic_t }
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
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, {}*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.71 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.72 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.vt_spawn_console = type { %struct.spinlock, %struct.pid*, i32 }
%struct.vt_event = type { i32, i32, i32, [4 x i32] }
%struct.vt_event_wait = type { %struct.list_head, %struct.vt_event, i32 }
%struct.vt_stat = type { i16, i16, i16 }
%struct.vt_setactivate = type { i32, %struct.vt_mode }
%struct.vt_sizes = type { i16, i16, i16 }
%struct.vt_consize = type { i16, i16, i16, i16, i16, i16 }
%struct.kbd_repeat = type { i32, i32 }
%struct.console_font_op = type { i32, i32, i32, i32, i32, i8* }
%struct.kbkeycode = type { i32, i32 }
%struct.kbentry = type { i8, i8, i16 }
%struct.kbsentry = type { i8, [512 x i8] }
%struct.unimapdesc = type { i16, %struct.unipair* }
%struct.unipair = type { i16, i16 }

@vt_event_lock = internal global %struct.spinlock zeroinitializer, align 4
@vt_events = internal global %struct.list_head { %struct.list_head* @vt_events, %struct.list_head* @vt_events }, align 8
@vt_event_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @vt_event_waitqueue to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @vt_event_waitqueue to i8*), i64 8) to %struct.list_head*) } }, align 8
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 8
@vt_dont_switch = dso_local local_unnamed_addr global i8 0, align 4
@disable_vt_switch = internal unnamed_addr global i32 0, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vt_spawn_con = external dso_local global %struct.vt_spawn_console, align 8
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@last_console = external dso_local local_unnamed_addr global i32, align 4
@switch.table.vt_kdsetmode = private unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 0, i64 0], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_event_post(i32 noundef %event, i32 noundef %old, i32 noundef %new) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #8
  %pos.036 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @vt_events, i64 0, i32 0), align 8
  %cmp5.not37 = icmp eq %struct.list_head* %pos.036, @vt_events
  br i1 %cmp5.not37, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #9
  br label %if.end21

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %old, 1
  %add16 = add i32 %new, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %pos.039 = phi %struct.list_head* [ %pos.036, %for.body.lr.ph ], [ %pos.0, %cleanup ]
  %wake.038 = phi i32 [ 0, %for.body.lr.ph ], [ %wake.1, %cleanup ]
  %event11 = getelementptr inbounds %struct.list_head, %struct.list_head* %pos.039, i64 1
  %event12 = bitcast %struct.list_head* %event11 to i32*
  %0 = load i32, i32* %event12, align 8
  %and = and i32 %0, %event
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %1 = bitcast %struct.list_head* %event11 to %struct.vt_event*
  %2 = bitcast %struct.list_head* %pos.039 to %struct.vt_event_wait*
  store i32 %event, i32* %event12, align 8
  %oldev = getelementptr inbounds %struct.vt_event, %struct.vt_event* %1, i64 0, i32 1
  store i32 %add, i32* %oldev, align 4
  %newev = getelementptr inbounds %struct.list_head, %struct.list_head* %pos.039, i64 1, i32 1
  %3 = bitcast %struct.list_head** %newev to i32*
  store i32 %add16, i32* %3, align 8
  %done = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %2, i64 0, i32 2
  store i32 1, i32* %done, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end
  %wake.1 = phi i32 [ 1, %if.end ], [ %wake.038, %for.body ]
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %pos.039, i64 0, i32 0
  %pos.0 = load %struct.list_head*, %struct.list_head** %next18, align 8
  %cmp5.not = icmp eq %struct.list_head* %pos.0, @vt_events
  br i1 %cmp5.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #9
  %tobool19.not = icmp eq i32 %wake.1, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %for.end
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @vt_event_waitqueue, i32 noundef 1, i32 noundef 1, i8* noundef null) #9
  br label %if.end21

if.end21:                                         ; preds = %for.end.thread, %if.then20, %for.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags() #8
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_waitactive(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %vw = alloca %struct.vt_event_wait, align 8
  %0 = bitcast %struct.vt_event_wait* %vw to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !8
  %event1 = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 1, i32 0
  %done = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 2
  %newev = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 1, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 1, i32* %event1, align 8
  call fastcc void @__vt_event_queue(%struct.vt_event_wait* noundef nonnull %vw) #8
  %1 = load i32, i32* @fg_console, align 4
  %add = add i32 %1, 1
  %cmp = icmp eq i32 %add, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call fastcc void @__vt_event_dequeue(%struct.vt_event_wait* noundef nonnull %vw) #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  call fastcc void @__vt_event_wait(%struct.vt_event_wait* noundef nonnull %vw) #8
  call fastcc void @__vt_event_dequeue(%struct.vt_event_wait* noundef nonnull %vw) #8
  %2 = load i32, i32* %done, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %cleanup, label %do.cond

do.cond:                                          ; preds = %if.end
  %3 = load i32, i32* %newev, align 8
  %cmp6.not = icmp eq i32 %3, %n
  br i1 %cmp6.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.cond, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %do.cond ], [ -4, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vt_event_queue(%struct.vt_event_wait* noundef %vw) unnamed_addr #0 {
entry:
  %list = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #8
  %done = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 2
  store i32 0, i32* %done, align 4
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #8
  call fastcc void @list_add(%struct.list_head* noundef %list) #8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vt_event_dequeue(%struct.vt_event_wait* nocapture noundef %vw) unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #8
  %list = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %list) #8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vt_event_wait(%struct.vt_event_wait* nocapture noundef readonly %vw) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %done = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 2
  %0 = load i32, i32* %done, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call23 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @vt_event_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #9
  %2 = load i32, i32* %done, align 4
  %tobool6.not24 = icmp eq i32 %2, 0
  br i1 %tobool6.not24, label %if.end, label %for.end

if.end:                                           ; preds = %if.then, %cleanup
  %call25 = phi i64 [ %call, %cleanup ], [ %call23, %if.then ]
  %tobool8.not = icmp eq i64 %call25, 0
  br i1 %tobool8.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #9
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @vt_event_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #9
  %3 = load i32, i32* %done, align 4
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.end, label %for.end

for.end:                                          ; preds = %cleanup, %if.then
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @vt_event_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %if.end, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #10
  br label %if.end11

if.end11:                                         ; preds = %__out, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_ioctl(%struct.tty_struct* noundef %tty, i32 noundef %cmd, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  %tmp = alloca i64, align 8, !annotation !8
  %tmp35 = alloca i64, align 8, !annotation !8
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %0 = bitcast i8** %driver_data to %struct.vc_data**
  %1 = load %struct.vc_data*, %struct.vc_data** %0, align 8
  %2 = inttoptr i64 %arg to i8*
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !9
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 24
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %cmp = icmp eq %struct.tty_struct* %6, %tty
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i1 @capable(i32 noundef 26) #9
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %tobool = phi i1 [ true, %if.then ], [ false, %lor.lhs.false ]
  %call3 = call fastcc i32 @vt_k_ioctl(%struct.tty_struct* noundef %tty, i32 noundef %cmd, i64 noundef %arg, i1 noundef %tobool) #8
  %cmp4.not = icmp eq i32 %call3, -515
  br i1 %cmp4.not, label %if.end6, label %cleanup304

if.end6:                                          ; preds = %if.end
  %call8 = call fastcc i32 @vt_io_ioctl(%struct.vc_data* noundef %1, i32 noundef %cmd, i8* noundef %2, i1 noundef %tobool) #8
  %cmp9.not = icmp eq i32 %call8, -515
  br i1 %cmp9.not, label %if.end11, label %cleanup304

if.end11:                                         ; preds = %if.end6
  switch i32 %cmd, label %cleanup304 [
    i32 21532, label %sw.bb
    i32 22018, label %sw.bb13
    i32 22017, label %sw.bb34
    i32 22019, label %sw.bb46
    i32 22016, label %sw.bb101
    i32 22022, label %sw.bb136
    i32 22031, label %sw.bb154
    i32 22023, label %sw.bb159
    i32 22021, label %sw.bb172
    i32 22024, label %sw.bb178
    i32 22025, label %sw.bb191
    i32 22026, label %sw.bb267
    i32 22027, label %sw.bb272
    i32 22028, label %sw.bb276
    i32 22029, label %sw.bb280
    i32 22030, label %sw.bb302
  ]

sw.bb:                                            ; preds = %if.end11
  %call12 = call i32 @tioclinux(%struct.tty_struct* noundef %tty, i64 noundef %arg) #9
  br label %cleanup304

sw.bb13:                                          ; preds = %if.end11
  %7 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  store i64 0, i64* %tmp, align 8, !annotation !8
  br i1 %tobool, label %if.end16, label %cleanup.thread

if.end16:                                         ; preds = %sw.bb13
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %7, i8* noundef %2, i64 noundef 8) #9
  %tobool18.not = icmp eq i64 %call2.i, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup.thread

if.end20:                                         ; preds = %if.end16
  %8 = load i8, i8* %7, align 8
  %.not = icmp ult i8 %8, 2
  br i1 %.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb13, %if.end16, %if.end20
  %retval.0.ph = phi i32 [ -22, %if.end20 ], [ -14, %if.end16 ], [ -1, %sw.bb13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  br label %cleanup304

cleanup:                                          ; preds = %if.end20
  call void @console_lock() #9
  %vt_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 33
  %9 = bitcast %struct.vt_mode* %vt_mode to i64*
  %10 = load i64, i64* %tmp, align 8
  store i64 %10, i64* %9, align 4
  %frsig = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 33, i32 4
  store i16 0, i16* %frsig, align 2
  %vt_pid = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 34
  %11 = load %struct.pid*, %struct.pid** %vt_pid, align 8
  call void @put_pid(%struct.pid* noundef %11) #9
  %call31 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %4) #8
  %call32 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call31) #8
  store %struct.pid* %call31, %struct.pid** %vt_pid, align 8
  %vt_newvt = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 35
  store i32 -1, i32* %vt_newvt, align 8
  call void @console_unlock() #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end11
  %12 = bitcast i64* %tmp35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10
  store i64 0, i64* %tmp35, align 8, !annotation !8
  call void @console_lock() #9
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 33, i32 0
  %call37 = call i8* @memcpy(i8* noundef nonnull %12, i8* noundef %13, i64 noundef 8) #9
  call void @console_unlock() #9
  %call2.i437 = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef nonnull %12, i64 noundef 8) #9
  %conv39 = trunc i64 %call2.i437 to i32
  %tobool40.not = icmp eq i32 %conv39, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10
  br i1 %tobool40.not, label %sw.epilog, label %cleanup304

sw.bb46:                                          ; preds = %if.end11
  %14 = inttoptr i64 %arg to %struct.vt_stat*
  %call47 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 2) #8
  %tobool48.not = icmp eq i64 %call47, 0
  br i1 %tobool48.not, label %cleanup304, label %if.then49

if.then49:                                        ; preds = %sw.bb46
  %call50 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %15 = bitcast i8* %call50 to i16*
  %16 = load i32, i32* @fg_console, align 4
  %17 = trunc i32 %16 to i16
  %conv54 = add i16 %17, 1
  %18 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %conv54, i16* %15, i32 -14, i32 0) #10, !srcloc !10
  %phi.cmp436 = icmp eq i32 %18, 0
  br i1 %phi.cmp436, label %if.end64, label %cleanup304

if.end64:                                         ; preds = %if.then49
  call void @console_lock() #9
  %call69 = call fastcc i1 @vt_in_use(i32 noundef 0) #8
  %call69.1 = call fastcc i1 @vt_in_use(i32 noundef 1) #8
  %call69.2 = call fastcc i1 @vt_in_use(i32 noundef 2) #8
  %call69.3 = call fastcc i1 @vt_in_use(i32 noundef 3) #8
  %call69.4 = call fastcc i1 @vt_in_use(i32 noundef 4) #8
  %call69.5 = call fastcc i1 @vt_in_use(i32 noundef 5) #8
  %call69.6 = call fastcc i1 @vt_in_use(i32 noundef 6) #8
  %call69.7 = call fastcc i1 @vt_in_use(i32 noundef 7) #8
  %call69.8 = call fastcc i1 @vt_in_use(i32 noundef 8) #8
  %call69.9 = call fastcc i1 @vt_in_use(i32 noundef 9) #8
  %call69.10 = call fastcc i1 @vt_in_use(i32 noundef 10) #8
  %call69.11 = call fastcc i1 @vt_in_use(i32 noundef 11) #8
  %call69.12 = call fastcc i1 @vt_in_use(i32 noundef 12) #8
  %call69.13 = call fastcc i1 @vt_in_use(i32 noundef 13) #8
  %call69.14 = call fastcc i1 @vt_in_use(i32 noundef 14) #8
  call void @console_unlock() #9
  %v_state = getelementptr inbounds %struct.vt_stat, %struct.vt_stat* %14, i64 0, i32 2
  %19 = bitcast i16* %v_state to i8*
  %call80 = call fastcc i64 @__range_ok(i8* noundef %19, i64 noundef 2) #8
  %tobool81.not = icmp eq i64 %call80, 0
  br i1 %tobool81.not, label %cleanup304, label %if.then82

if.then82:                                        ; preds = %if.end64
  %conv73.14 = select i1 %call69.14, i16 -32768, i16 0
  %conv73.13 = select i1 %call69.13, i16 16384, i16 0
  %conv73.12 = select i1 %call69.12, i16 8192, i16 0
  %conv73.11 = select i1 %call69.11, i16 4096, i16 0
  %conv73.10 = select i1 %call69.10, i16 2048, i16 0
  %conv73.9 = select i1 %call69.9, i16 1024, i16 0
  %conv73.8 = select i1 %call69.8, i16 512, i16 0
  %conv73.7 = select i1 %call69.7, i16 256, i16 0
  %conv73.6 = select i1 %call69.6, i16 128, i16 0
  %conv73.5 = select i1 %call69.5, i16 64, i16 0
  %conv73.4 = select i1 %call69.4, i16 32, i16 0
  %conv73.3 = select i1 %call69.3, i16 16, i16 0
  %conv73.2 = select i1 %call69.2, i16 8, i16 0
  %conv73.1 = select i1 %call69.1, i16 4, i16 0
  %state.1 = select i1 %call69, i16 3, i16 1
  %state.1.1 = or i16 %conv73.1, %state.1
  %state.1.2 = or i16 %conv73.2, %state.1.1
  %state.1.3 = or i16 %conv73.3, %state.1.2
  %state.1.4 = or i16 %conv73.4, %state.1.3
  %state.1.5 = or i16 %conv73.5, %state.1.4
  %state.1.6 = or i16 %conv73.6, %state.1.5
  %state.1.7 = or i16 %conv73.7, %state.1.6
  %state.1.8 = or i16 %conv73.8, %state.1.7
  %state.1.9 = or i16 %conv73.9, %state.1.8
  %state.1.10 = or i16 %conv73.10, %state.1.9
  %state.1.11 = or i16 %conv73.11, %state.1.10
  %state.1.12 = or i16 %conv73.12, %state.1.11
  %state.1.13 = or i16 %conv73.13, %state.1.12
  %state.1.14 = or i16 %conv73.14, %state.1.13
  %call83 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %19) #8
  %20 = bitcast i8* %call83 to i16*
  %21 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %state.1.14, i16* %20, i32 -14, i32 0) #10, !srcloc !11
  br label %cleanup304

sw.bb101:                                         ; preds = %if.end11
  call void @console_lock() #9
  %call106456 = call fastcc i1 @vt_in_use(i32 noundef 0) #8
  br i1 %call106456, label %for.inc109, label %for.end111

for.body105:                                      ; preds = %for.inc109
  %call106 = call fastcc i1 @vt_in_use(i32 noundef %inc110) #8
  br i1 %call106, label %for.inc109, label %for.body105.for.end111_crit_edge

for.inc109:                                       ; preds = %sw.bb101, %for.body105
  %i.1447457 = phi i32 [ %inc110, %for.body105 ], [ 0, %sw.bb101 ]
  %inc110 = add nuw nsw i32 %i.1447457, 1
  %exitcond454.not = icmp eq i32 %inc110, 63
  br i1 %exitcond454.not, label %for.end111.loopexit, label %for.body105

for.body105.for.end111_crit_edge:                 ; preds = %for.body105
  %cmp103.le = icmp ult i32 %i.1447457, 62
  %phi.bo = add nuw i32 %i.1447457, 2
  br label %for.end111

for.end111.loopexit:                              ; preds = %for.inc109
  %cmp103.le467 = icmp ult i32 %i.1447457, 62
  br label %for.end111

for.end111:                                       ; preds = %for.end111.loopexit, %for.body105.for.end111_crit_edge, %sw.bb101
  %i.1.lcssa = phi i32 [ %phi.bo, %for.body105.for.end111_crit_edge ], [ 1, %sw.bb101 ], [ 64, %for.end111.loopexit ]
  %cmp103.lcssa = phi i1 [ %cmp103.le, %for.body105.for.end111_crit_edge ], [ true, %sw.bb101 ], [ %cmp103.le467, %for.end111.loopexit ]
  call void @console_unlock() #9
  %call118 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #8
  %tobool119.not = icmp eq i64 %call118, 0
  br i1 %tobool119.not, label %cleanup304, label %if.then120

if.then120:                                       ; preds = %for.end111
  %cond = select i1 %cmp103.lcssa, i32 %i.1.lcssa, i32 -1
  %call121 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %22 = bitcast i8* %call121 to i32*
  %23 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %cond, i32* %22, i32 -14, i32 0) #10, !srcloc !12
  br label %cleanup304

sw.bb136:                                         ; preds = %if.end11
  br i1 %tobool, label %if.end139, label %cleanup304

if.end139:                                        ; preds = %sw.bb136
  %24 = add i64 %arg, -64
  %25 = icmp ult i64 %24, -63
  br i1 %25, label %cleanup304, label %if.end146

if.end146:                                        ; preds = %if.end139
  call void @console_lock() #9
  %26 = trunc i64 %arg to i32
  %conv147 = add nsw i32 %26, -1
  %call148 = call i32 @vc_allocate(i32 noundef %conv147) #9
  call void @console_unlock() #9
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %cleanup304

if.end151:                                        ; preds = %if.end146
  %call153 = call i32 @set_console(i32 noundef %conv147) #9
  br label %sw.epilog

sw.bb154:                                         ; preds = %if.end11
  br i1 %tobool, label %if.end157, label %cleanup304

if.end157:                                        ; preds = %sw.bb154
  %27 = inttoptr i64 %arg to %struct.vt_setactivate*
  %call158 = call fastcc i32 @vt_setactivate(%struct.vt_setactivate* noundef %27) #8
  br label %cleanup304

sw.bb159:                                         ; preds = %if.end11
  br i1 %tobool, label %if.end162, label %cleanup304

if.end162:                                        ; preds = %sw.bb159
  %28 = add i64 %arg, -64
  %29 = icmp ult i64 %28, -63
  br i1 %29, label %cleanup304, label %if.end169

if.end169:                                        ; preds = %if.end162
  %conv170 = trunc i64 %arg to i32
  %call171 = call i32 @vt_waitactive(i32 noundef %conv170) #8
  br label %cleanup304

sw.bb172:                                         ; preds = %if.end11
  br i1 %tobool, label %if.end175, label %cleanup304

if.end175:                                        ; preds = %sw.bb172
  call void @console_lock() #9
  %conv176 = trunc i64 %arg to i32
  %call177 = call fastcc i32 @vt_reldisp(%struct.vc_data* noundef %1, i32 noundef %conv176) #8
  call void @console_unlock() #9
  br label %cleanup304

sw.bb178:                                         ; preds = %if.end11
  %cmp179 = icmp ugt i64 %arg, 63
  br i1 %cmp179, label %cleanup304, label %if.end182

if.end182:                                        ; preds = %sw.bb178
  %cmp183 = icmp eq i64 %arg, 0
  br i1 %cmp183, label %if.then185, label %if.else186

if.then185:                                       ; preds = %if.end182
  call fastcc void @vt_disallocate_all() #8
  br label %sw.epilog

if.else186:                                       ; preds = %if.end182
  %30 = trunc i64 %arg to i32
  %conv188 = add nsw i32 %30, -1
  %call189 = call fastcc i32 @vt_disallocate(i32 noundef %conv188) #8
  br label %cleanup304

sw.bb191:                                         ; preds = %if.end11
  %31 = inttoptr i64 %arg to %struct.vt_sizes*
  br i1 %tobool, label %if.end195, label %cleanup304

if.end195:                                        ; preds = %sw.bb191
  %call198 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 2) #8
  %tobool199.not = icmp eq i64 %call198, 0
  br i1 %tobool199.not, label %cleanup304, label %if.end213

if.end213:                                        ; preds = %if.end195
  %call201 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %32 = bitcast i8* %call201 to i16*
  %33 = call { i32, i64 } asm sideeffect "1:\09ldtrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %32, i32 -14, i32 0) #10, !srcloc !13
  %asmresult = extractvalue { i32, i64 } %33, 0
  %asmresult205 = extractvalue { i32, i64 } %33, 1
  %conv206 = trunc i64 %asmresult205 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  %phi.cast435 = and i32 %conv206, 65535
  br i1 %phi.cmp, label %lor.lhs.false218, label %cleanup304

lor.lhs.false218:                                 ; preds = %if.end213
  %v_cols = getelementptr inbounds %struct.vt_sizes, %struct.vt_sizes* %31, i64 0, i32 1
  %34 = bitcast i16* %v_cols to i8*
  %call222 = call fastcc i64 @__range_ok(i8* noundef %34, i64 noundef 2) #8
  %tobool223.not = icmp eq i64 %call222, 0
  br i1 %tobool223.not, label %cleanup304, label %if.end239

if.end239:                                        ; preds = %lor.lhs.false218
  %call225 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %34) #8
  %35 = bitcast i8* %call225 to i16*
  %36 = call { i32, i64 } asm sideeffect "1:\09ldtrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %35, i32 -14, i32 0) #10, !srcloc !14
  %asmresult230 = extractvalue { i32, i64 } %36, 0
  %asmresult231 = extractvalue { i32, i64 } %36, 1
  %conv232 = trunc i64 %asmresult231 to i32
  %phi.cmp434 = icmp eq i32 %asmresult230, 0
  %phi.cast = and i32 %conv232, 65535
  br i1 %phi.cmp434, label %if.end245, label %cleanup304

if.end245:                                        ; preds = %if.end239
  call void @console_lock() #9
  br label %for.body249

for.body249:                                      ; preds = %if.end245, %for.inc259
  %indvars.iv = phi i64 [ 0, %if.end245 ], [ %indvars.iv.next, %for.inc259 ]
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %indvars.iv, i32 0
  %37 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %tobool250.not = icmp eq %struct.vc_data* %37, null
  br i1 %tobool250.not, label %for.inc259, label %if.then251

if.then251:                                       ; preds = %for.body249
  %vc_resize_user = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i64 0, i32 43
  store i32 1, i32* %vc_resize_user, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %call257 = call i32 @vc_resize(%struct.vc_data* noundef %38, i32 noundef %phi.cast, i32 noundef %phi.cast435) #9
  br label %for.inc259

for.inc259:                                       ; preds = %for.body249, %if.then251
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %cleanup262, label %for.body249

cleanup262:                                       ; preds = %for.inc259
  call void @console_unlock() #9
  br label %sw.epilog

sw.bb267:                                         ; preds = %if.end11
  br i1 %tobool, label %if.end270, label %cleanup304

if.end270:                                        ; preds = %sw.bb267
  %39 = inttoptr i64 %arg to %struct.vt_consize*
  %call271 = call fastcc i32 @vt_resizex(%struct.vc_data* noundef %1, %struct.vt_consize* noundef %39) #8
  br label %cleanup304

sw.bb272:                                         ; preds = %if.end11
  %call273 = call i1 @capable(i32 noundef 26) #9
  br i1 %call273, label %if.end275, label %cleanup304

if.end275:                                        ; preds = %sw.bb272
  store i8 1, i8* @vt_dont_switch, align 4
  br label %sw.epilog

sw.bb276:                                         ; preds = %if.end11
  %call277 = call i1 @capable(i32 noundef 26) #9
  br i1 %call277, label %if.end279, label %cleanup304

if.end279:                                        ; preds = %sw.bb276
  store i8 0, i8* @vt_dont_switch, align 4
  br label %sw.epilog

sw.bb280:                                         ; preds = %if.end11
  %call284 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 2) #8
  %tobool285.not = icmp eq i64 %call284, 0
  br i1 %tobool285.not, label %cleanup304, label %if.then286

if.then286:                                       ; preds = %sw.bb280
  %call287 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %40 = bitcast i8* %call287 to i16*
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 27
  %41 = load i16, i16* %vc_hi_font_mask, align 8
  %42 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %41, i16* %40, i32 -14, i32 0) #10, !srcloc !15
  br label %cleanup304

sw.bb302:                                         ; preds = %if.end11
  %43 = inttoptr i64 %arg to %struct.vt_event*
  %call303 = call fastcc i32 @vt_event_wait_ioctl(%struct.vt_event* noundef %43) #8
  br label %cleanup304

sw.epilog:                                        ; preds = %cleanup262, %cleanup, %sw.bb34, %if.end279, %if.end275, %if.then185, %if.end151
  br label %cleanup304

cleanup304:                                       ; preds = %lor.lhs.false218, %if.end195, %if.end213, %if.end239, %sw.bb191, %cleanup.thread, %sw.bb46, %if.end11, %if.then286, %sw.bb280, %sw.bb276, %sw.bb272, %sw.bb267, %sw.bb178, %sw.bb172, %if.end162, %sw.bb159, %sw.bb154, %if.end146, %if.end139, %sw.bb136, %if.then120, %for.end111, %if.then49, %if.end64, %if.then82, %if.end6, %if.end, %sw.bb34, %sw.epilog, %sw.bb302, %if.end270, %if.else186, %if.end175, %if.end169, %if.end157, %sw.bb
  %retval.4 = phi i32 [ %call303, %sw.bb302 ], [ 0, %sw.epilog ], [ %call271, %if.end270 ], [ %call189, %if.else186 ], [ %call177, %if.end175 ], [ %call171, %if.end169 ], [ %call158, %if.end157 ], [ -14, %sw.bb34 ], [ %call12, %sw.bb ], [ %call3, %if.end ], [ %call8, %if.end6 ], [ -14, %if.then49 ], [ %21, %if.then82 ], [ -14, %if.end64 ], [ %23, %if.then120 ], [ -14, %for.end111 ], [ -1, %sw.bb136 ], [ -6, %if.end139 ], [ %call148, %if.end146 ], [ -1, %sw.bb154 ], [ -1, %sw.bb159 ], [ -6, %if.end162 ], [ -1, %sw.bb172 ], [ -6, %sw.bb178 ], [ -1, %sw.bb267 ], [ -1, %sw.bb272 ], [ -1, %sw.bb276 ], [ %42, %if.then286 ], [ -14, %sw.bb280 ], [ -515, %if.end11 ], [ -14, %sw.bb46 ], [ %retval.0.ph, %cleanup.thread ], [ -14, %if.end213 ], [ -14, %if.end239 ], [ -1, %sw.bb191 ], [ -14, %if.end195 ], [ -14, %lor.lhs.false218 ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_k_ioctl(%struct.tty_struct* noundef %tty, i32 noundef %cmd, i64 noundef %arg, i1 noundef %perm) unnamed_addr #0 {
entry:
  %kbrep = alloca i64, align 8, !annotation !8
  %tmpcast = bitcast i64* %kbrep to %struct.kbd_repeat*, !annotation !8
  %op = alloca %struct.console_font_op, align 8
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %0 = bitcast i8** %driver_data to %struct.vc_data**
  %1 = load %struct.vc_data*, %struct.vc_data** %0, align 8
  %2 = inttoptr i64 %arg to i8*
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 3
  %3 = load i16, i16* %vc_num, align 8
  %conv = zext i16 %3 to i32
  switch i32 %cmd, label %sw.default [
    i32 19247, label %sw.bb
    i32 19248, label %sw.bb5
    i32 19251, label %sw.bb20
    i32 19282, label %sw.bb34
    i32 19258, label %sw.bb50
    i32 19259, label %sw.bb55
    i32 19260, label %cleanup199
    i32 19261, label %cleanup199
    i32 19269, label %sw.bb79
    i32 19268, label %sw.bb88
    i32 19299, label %sw.bb111
    i32 19298, label %sw.bb114
    i32 19276, label %sw.bb137
    i32 19277, label %sw.bb137
    i32 19270, label %sw.bb144
    i32 19271, label %sw.bb144
    i32 19272, label %sw.bb148
    i32 19273, label %sw.bb148
    i32 19274, label %sw.bb152
    i32 19450, label %sw.bb152
    i32 19275, label %sw.bb152
    i32 19451, label %sw.bb152
    i32 19300, label %sw.bb156
    i32 19301, label %sw.bb156
    i32 19249, label %sw.bb156
    i32 19250, label %sw.bb156
    i32 19278, label %sw.bb160
    i32 19314, label %sw.bb178
  ]

sw.bb:                                            ; preds = %entry
  br i1 %perm, label %if.end, label %cleanup199

if.end:                                           ; preds = %sw.bb
  %tobool1.not = icmp eq i64 %arg, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %div = udiv i64 1193182, %arg
  %phi.cast = trunc i64 %div to i32
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %arg.addr.0 = phi i32 [ %phi.cast, %if.then2 ], [ 0, %if.end ]
  call void @kd_mksound(i32 noundef %arg.addr.0, i32 noundef 0) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br i1 %perm, label %if.end8, label %cleanup199

if.end8:                                          ; preds = %sw.bb5
  %4 = trunc i64 %arg to i32
  %5 = lshr i32 %4, 16
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %5) #9
  %conv10 = trunc i64 %call2.i to i32
  %tobool11.not = icmp eq i32 %conv10, 0
  %6 = and i32 %4, 65535
  %tobool14.not294 = icmp eq i32 %6, 0
  %tobool14.not = or i1 %tobool14.not294, %tobool11.not
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end8
  %7 = udiv i32 1193182, %6
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end8
  %count.0 = phi i32 [ %7, %if.then15 ], [ 0, %if.end8 ]
  call void @kd_mksound(i32 noundef %count.0, i32 noundef %conv10) #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %call21 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 1) #8
  %tobool22.not = icmp eq i64 %call21, 0
  br i1 %tobool22.not, label %cleanup199, label %if.then23

if.then23:                                        ; preds = %sw.bb20
  %call24 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %8 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 2, i8* %call24, i32 -14, i32 0) #10, !srcloc !16
  br label %cleanup199

sw.bb34:                                          ; preds = %entry
  %9 = bitcast i64* %kbrep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  store i64 0, i64* %kbrep, align 8, !annotation !8
  %call35 = call i1 @capable(i32 noundef 26) #9
  br i1 %call35, label %if.end37, label %cleanup.thread

if.end37:                                         ; preds = %sw.bb34
  %call2.i298 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %9, i8* noundef %2, i64 noundef 8) #9
  %tobool39.not = icmp eq i64 %call2.i298, 0
  br i1 %tobool39.not, label %if.end41, label %cleanup.thread

if.end41:                                         ; preds = %if.end37
  %call42 = call i32 @kbd_rate(%struct.kbd_repeat* noundef nonnull %tmpcast) #9
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb34, %if.end37, %if.end41
  %retval.0.ph = phi i32 [ %call42, %if.end41 ], [ -14, %if.end37 ], [ -1, %sw.bb34 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  br label %cleanup199

cleanup:                                          ; preds = %if.end41
  %call2.i299 = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef nonnull %9, i64 noundef 8) #9
  %tobool47.not = icmp eq i64 %call2.i299, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  br i1 %tobool47.not, label %sw.epilog, label %cleanup199

sw.bb50:                                          ; preds = %entry
  br i1 %perm, label %if.end53, label %cleanup199

if.end53:                                         ; preds = %sw.bb50
  call void @console_lock() #9
  %call54 = call fastcc i32 @vt_kdsetmode(%struct.vc_data* noundef %1, i64 noundef %arg) #8
  call void @console_unlock() #9
  br label %cleanup199

sw.bb55:                                          ; preds = %entry
  %call59 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #8
  %tobool60.not = icmp eq i64 %call59, 0
  br i1 %tobool60.not, label %cleanup199, label %if.then61

if.then61:                                        ; preds = %sw.bb55
  %call62 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %10 = bitcast i8* %call62 to i32*
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 17
  %11 = load i8, i8* %vc_mode, align 4
  %conv67 = zext i8 %11 to i32
  %12 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %conv67, i32* %10, i32 -14, i32 0) #10, !srcloc !17
  br label %cleanup199

sw.bb79:                                          ; preds = %entry
  br i1 %perm, label %if.end82, label %cleanup199

if.end82:                                         ; preds = %sw.bb79
  %conv83 = trunc i64 %arg to i32
  %call84 = call i32 @vt_do_kdskbmode(i32 noundef %conv, i32 noundef %conv83) #9
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %cleanup199

if.end87:                                         ; preds = %if.end82
  call void @tty_ldisc_flush(%struct.tty_struct* noundef %tty) #9
  br label %sw.epilog

sw.bb88:                                          ; preds = %entry
  %call92 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #8
  %tobool93.not = icmp eq i64 %call92, 0
  br i1 %tobool93.not, label %cleanup199, label %if.then94

if.then94:                                        ; preds = %sw.bb88
  %call95 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %13 = bitcast i8* %call95 to i32*
  %call100 = call i32 @vt_do_kdgkbmode(i32 noundef %conv) #9
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call100, i32* %13, i32 -14, i32 0) #10, !srcloc !18
  br label %cleanup199

sw.bb111:                                         ; preds = %entry
  %conv112 = trunc i64 %arg to i32
  %call113 = call i32 @vt_do_kdskbmeta(i32 noundef %conv, i32 noundef %conv112) #9
  br label %cleanup199

sw.bb114:                                         ; preds = %entry
  %call118 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #8
  %tobool119.not = icmp eq i64 %call118, 0
  br i1 %tobool119.not, label %cleanup199, label %if.then120

if.then120:                                       ; preds = %sw.bb114
  %call121 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #8
  %15 = bitcast i8* %call121 to i32*
  %call126 = call i32 @vt_do_kdgkbmeta(i32 noundef %conv) #9
  %16 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call126, i32* %15, i32 -14, i32 0) #10, !srcloc !19
  br label %cleanup199

sw.bb137:                                         ; preds = %entry, %entry
  %call138 = call i1 @capable(i32 noundef 26) #9
  %spec.select = and i1 %call138, %perm
  %17 = inttoptr i64 %arg to %struct.kbkeycode*
  %conv142 = zext i1 %spec.select to i32
  %call143 = call i32 @vt_do_kbkeycode_ioctl(i32 noundef %cmd, %struct.kbkeycode* noundef %17, i32 noundef %conv142) #9
  br label %cleanup199

sw.bb144:                                         ; preds = %entry, %entry
  %18 = inttoptr i64 %arg to %struct.kbentry*
  %conv146 = zext i1 %perm to i32
  %call147 = call i32 @vt_do_kdsk_ioctl(i32 noundef %cmd, %struct.kbentry* noundef %18, i32 noundef %conv146, i32 noundef %conv) #9
  br label %cleanup199

sw.bb148:                                         ; preds = %entry, %entry
  %19 = inttoptr i64 %arg to %struct.kbsentry*
  %conv150 = zext i1 %perm to i32
  %call151 = call i32 @vt_do_kdgkb_ioctl(i32 noundef %cmd, %struct.kbsentry* noundef %19, i32 noundef %conv150) #9
  br label %cleanup199

sw.bb152:                                         ; preds = %entry, %entry, %entry, %entry
  %conv154 = zext i1 %perm to i32
  %call155 = call i32 @vt_do_diacrit(i32 noundef %cmd, i8* noundef %2, i32 noundef %conv154) #9
  br label %cleanup199

sw.bb156:                                         ; preds = %entry, %entry, %entry, %entry
  %conv158 = zext i1 %perm to i32
  %call159 = call i32 @vt_do_kdskled(i32 noundef %conv, i32 noundef %cmd, i64 noundef %arg, i32 noundef %conv158) #9
  br label %cleanup199

sw.bb160:                                         ; preds = %entry
  br i1 %perm, label %lor.lhs.false, label %cleanup199

lor.lhs.false:                                    ; preds = %sw.bb160
  %call162 = call i1 @capable(i32 noundef 5) #9
  br i1 %call162, label %if.end164, label %cleanup199

if.end164:                                        ; preds = %lor.lhs.false
  %call165 = call fastcc i32 @valid_signal(i64 noundef %arg) #8
  %call165.fr = freeze i32 %call165
  %tobool166 = icmp eq i32 %call165.fr, 0
  br i1 %tobool166, label %cleanup199, label %switch.early.test

switch.early.test:                                ; preds = %if.end164
  switch i64 %arg, label %if.end173 [
    i64 9, label %cleanup199
    i64 0, label %cleanup199
  ]

if.end173:                                        ; preds = %switch.early.test
  call fastcc void @__raw_spin_lock_irq() #9
  %20 = load %struct.pid*, %struct.pid** getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 1), align 8
  call void @put_pid(%struct.pid* noundef %20) #9
  %21 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !9
  %22 = inttoptr i64 %21 to %struct.task_struct*
  %call175 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %22) #8
  %call176 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call175) #8
  store %struct.pid* %call175, %struct.pid** getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 1), align 8
  %conv177 = trunc i64 %arg to i32
  store i32 %conv177, i32* getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 2), align 8
  call fastcc void @__raw_spin_unlock_irq() #9
  br label %sw.epilog

sw.bb178:                                         ; preds = %entry
  %23 = bitcast %struct.console_font_op* %op to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false), !annotation !8
  %call2.i300 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %23, i8* noundef %2, i64 noundef 32) #9
  %tobool180.not = icmp eq i64 %call2.i300, 0
  br i1 %tobool180.not, label %if.end182, label %cleanup197.thread

if.end182:                                        ; preds = %sw.bb178
  %tobool183.not = xor i1 %perm, true
  %op184 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 0
  %24 = load i32, i32* %op184, align 8
  %cmp185 = icmp ne i32 %24, 1
  %or.cond206 = select i1 %tobool183.not, i1 %cmp185, i1 false
  br i1 %or.cond206, label %cleanup197.thread, label %if.end188

if.end188:                                        ; preds = %if.end182
  %call189 = call i32 @con_font_op(%struct.vc_data* noundef %1, %struct.console_font_op* noundef nonnull %op) #9
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %cleanup197, label %cleanup197.thread

cleanup197.thread:                                ; preds = %sw.bb178, %if.end182, %if.end188
  %retval.1.ph = phi i32 [ %call189, %if.end188 ], [ -1, %if.end182 ], [ -14, %sw.bb178 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #10
  br label %cleanup199

cleanup197:                                       ; preds = %if.end188
  %call2.i301 = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef nonnull %23, i64 noundef 32) #9
  %tobool194.not = icmp eq i64 %call2.i301, 0
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #10
  br i1 %tobool194.not, label %sw.epilog, label %cleanup199

sw.default:                                       ; preds = %entry
  br label %cleanup199

sw.epilog:                                        ; preds = %cleanup, %cleanup197, %if.end173, %if.end87, %if.end19, %if.end3
  br label %cleanup199

cleanup199:                                       ; preds = %switch.early.test, %switch.early.test, %if.end164, %cleanup197.thread, %cleanup.thread, %sw.bb160, %lor.lhs.false, %if.then120, %sw.bb114, %if.then94, %sw.bb88, %if.end82, %sw.bb79, %entry, %entry, %if.then61, %sw.bb55, %sw.bb50, %if.then23, %sw.bb20, %sw.bb5, %sw.bb, %cleanup, %cleanup197, %sw.epilog, %sw.default, %sw.bb156, %sw.bb152, %sw.bb148, %sw.bb144, %sw.bb137, %sw.bb111, %if.end53
  %retval.2 = phi i32 [ -515, %sw.default ], [ 0, %sw.epilog ], [ -14, %cleanup197 ], [ %call159, %sw.bb156 ], [ %call155, %sw.bb152 ], [ %call151, %sw.bb148 ], [ %call147, %sw.bb144 ], [ %call143, %sw.bb137 ], [ %call113, %sw.bb111 ], [ %call54, %if.end53 ], [ -14, %cleanup ], [ -1, %sw.bb ], [ -1, %sw.bb5 ], [ %8, %if.then23 ], [ -14, %sw.bb20 ], [ -1, %sw.bb50 ], [ %12, %if.then61 ], [ -14, %sw.bb55 ], [ -22, %entry ], [ -22, %entry ], [ -1, %sw.bb79 ], [ %call84, %if.end82 ], [ %14, %if.then94 ], [ -14, %sw.bb88 ], [ %16, %if.then120 ], [ -14, %sw.bb114 ], [ -1, %lor.lhs.false ], [ -1, %sw.bb160 ], [ -22, %switch.early.test ], [ %retval.0.ph, %cleanup.thread ], [ %retval.1.ph, %cleanup197.thread ], [ -22, %if.end164 ], [ -22, %switch.early.test ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_io_ioctl(%struct.vc_data* noundef %vc, i32 noundef %cmd, i8* noundef %up, i1 noundef %perm) unnamed_addr #0 {
entry:
  switch i32 %cmd, label %return [
    i32 19313, label %sw.bb
    i32 19312, label %sw.bb1
    i32 19265, label %sw.bb3
    i32 19264, label %sw.bb8
    i32 19306, label %sw.bb10
    i32 19305, label %sw.bb15
    i32 19304, label %sw.bb17
    i32 19303, label %sw.bb22
    i32 19302, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  br i1 %perm, label %if.end, label %return

if.end:                                           ; preds = %sw.bb
  %call = call i32 @con_set_cmap(i8* noundef %up) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 @con_get_cmap(i8* noundef %up) #9
  br label %return

sw.bb3:                                           ; preds = %entry
  br i1 %perm, label %if.end6, label %return

if.end6:                                          ; preds = %sw.bb3
  %call7 = call i32 @con_set_trans_old(i8* noundef %up) #9
  br label %return

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 @con_get_trans_old(i8* noundef %up) #9
  br label %return

sw.bb10:                                          ; preds = %entry
  br i1 %perm, label %if.end13, label %return

if.end13:                                         ; preds = %sw.bb10
  %0 = bitcast i8* %up to i16*
  %call14 = call i32 @con_set_trans_new(i16* noundef %0) #9
  br label %return

sw.bb15:                                          ; preds = %entry
  %1 = bitcast i8* %up to i16*
  %call16 = call i32 @con_get_trans_new(i16* noundef %1) #9
  br label %return

sw.bb17:                                          ; preds = %entry
  br i1 %perm, label %if.end20, label %return

if.end20:                                         ; preds = %sw.bb17
  %call21 = call i32 @con_clear_unimap(%struct.vc_data* noundef %vc) #9
  br label %return

sw.bb22:                                          ; preds = %entry, %entry
  %2 = bitcast i8* %up to %struct.unimapdesc*
  %call24 = call fastcc i32 @do_unimap_ioctl(i32 noundef %cmd, %struct.unimapdesc* noundef %2, i1 noundef %perm, %struct.vc_data* noundef %vc) #8
  br label %return

return:                                           ; preds = %entry, %sw.bb17, %sw.bb10, %sw.bb3, %sw.bb, %if.end20, %sw.bb22, %sw.bb15, %if.end13, %sw.bb8, %if.end6, %sw.bb1, %if.end
  %retval.0 = phi i32 [ %call24, %sw.bb22 ], [ 0, %if.end20 ], [ %call16, %sw.bb15 ], [ %call14, %if.end13 ], [ %call9, %sw.bb8 ], [ %call7, %if.end6 ], [ %call2, %sw.bb1 ], [ %call, %if.end ], [ -1, %sw.bb ], [ -1, %sw.bb3 ], [ -1, %sw.bb10 ], [ -1, %sw.bb17 ], [ -515, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tioclinux(%struct.tty_struct* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #4 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #10, !srcloc !20
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #10, !srcloc !21
  call void asm sideeffect "hint #20", "~{memory}"() #10, !srcloc !22
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @vt_in_use(i32 noundef %i) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %i to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %0 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #9
  %tobool2.not = icmp eq i32 %call1, 0
  %2 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %2, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !23

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt_ioctl.c\22; .popsection; .long 14472b - 14470b; .short 52; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %tobool19.not = icmp eq %struct.vc_data* %0, null
  br i1 %tobool19.not, label %land.end23, label %land.rhs20

land.rhs20:                                       ; preds = %if.end
  %kref = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i64 0, i32 0, i32 19
  %call21 = call fastcc i32 @kref_read(%struct.kref* noundef %kref) #8
  %cmp = icmp ugt i32 %call21, 1
  br label %land.end23

land.end23:                                       ; preds = %land.rhs20, %if.end
  %3 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs20 ]
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_allocate(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_console(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_setactivate(%struct.vt_setactivate* noundef %sa) unnamed_addr #0 {
entry:
  %vsa = alloca %struct.vt_setactivate, align 4
  %0 = bitcast %struct.vt_setactivate* %vsa to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false), !annotation !8
  %1 = bitcast %struct.vt_setactivate* %sa to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 12) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %console = getelementptr inbounds %struct.vt_setactivate, %struct.vt_setactivate* %vsa, i64 0, i32 0
  %2 = load i32, i32* %console, align 4
  %3 = add i32 %2, -64
  %4 = icmp ult i32 %3, -63
  br i1 %4, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv = zext i32 %2 to i64
  %call7 = call fastcc i64 @array_index_mask_nospec(i64 noundef %conv) #8
  %5 = trunc i64 %call7 to i32
  %conv12 = and i32 %2, %5
  %dec = add nsw i32 %conv12, -1
  store i32 %dec, i32* %console, align 4
  call void @console_lock() #9
  %6 = load i32, i32* %console, align 4
  %call16 = call i32 @vc_allocate(i32 noundef %6) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end4
  call void @console_unlock() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end4
  %7 = load i32, i32* %console, align 4
  %idxprom = zext i32 %7 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %8 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vt_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i64 0, i32 33
  %9 = getelementptr inbounds %struct.vt_setactivate, %struct.vt_setactivate* %vsa, i64 0, i32 1, i32 0
  %10 = bitcast i8* %9 to i64*
  %11 = bitcast %struct.vt_mode* %vt_mode to i64*
  %12 = load i64, i64* %10, align 4
  store i64 %12, i64* %11, align 4
  %frsig = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i64 0, i32 33, i32 4
  store i16 0, i16* %frsig, align 2
  %vt_pid = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i64 0, i32 34
  %13 = load %struct.pid*, %struct.pid** %vt_pid, align 8
  call void @put_pid(%struct.pid* noundef %13) #9
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !9
  %15 = inttoptr i64 %14 to %struct.task_struct*
  %call23 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %15) #8
  %call24 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call23) #8
  store %struct.pid* %call23, %struct.pid** %vt_pid, align 8
  call void @console_unlock() #9
  %16 = load i32, i32* %console, align 4
  %call27 = call i32 @set_console(i32 noundef %16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end19, %if.then18
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ 0, %if.end19 ], [ -14, %entry ], [ -6, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_reldisp(%struct.vc_data* nocapture noundef %vc, i32 noundef %swtch) unnamed_addr #0 {
entry:
  %mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 0
  %0 = load i8, i8* %mode, align 4
  %cmp.not = icmp eq i8 %0, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %vt_newvt = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 35
  %1 = load i32, i32* %vt_newvt, align 8
  %cmp2 = icmp slt i32 %1, 0
  br i1 %cmp2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp eq i32 %swtch, 2
  %cond = select i1 %cmp5, i32 0, i32 -22
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %swtch, 0
  store i32 -1, i32* %vt_newvt, align 8
  br i1 %cmp8, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call = call i32 @vc_allocate(i32 noundef %1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end12
  %idxprom27 = zext i32 %1 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom27, i32 0
  %2 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  call fastcc void @complete_change_console(%struct.vc_data* noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end12, %entry, %if.end16, %if.then4
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ 0, %if.end16 ], [ -22, %entry ], [ %call, %if.end12 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vt_disallocate_all() unnamed_addr #0 {
entry:
  %vc = alloca [63 x %struct.vc_data*], align 8
  %0 = bitcast [63 x %struct.vc_data*]* %vc to i8*
  call void @llvm.lifetime.start.p0i8(i64 504, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(504) %0, i8 0, i64 504, i1 false), !annotation !8
  call void @console_lock() #9
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.inc ]
  %1 = trunc i64 %indvars.iv to i32
  %call = call fastcc i1 @vt_busy(i32 noundef %1) #8
  br i1 %call, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call1 = call %struct.vc_data* @vc_deallocate(i32 noundef %1) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %call1.sink = phi %struct.vc_data* [ %call1, %if.then ], [ null, %for.body ]
  %2 = getelementptr [63 x %struct.vc_data*], [63 x %struct.vc_data*]* %vc, i64 0, i64 %indvars.iv
  store %struct.vc_data* %call1.sink, %struct.vc_data** %2, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call void @console_unlock() #9
  br label %for.body6

for.body6:                                        ; preds = %for.end, %for.inc14
  %indvars.iv32 = phi i64 [ 1, %for.end ], [ %indvars.iv.next33, %for.inc14 ]
  %arrayidx8 = getelementptr [63 x %struct.vc_data*], [63 x %struct.vc_data*]* %vc, i64 0, i64 %indvars.iv32
  %3 = load %struct.vc_data*, %struct.vc_data** %arrayidx8, align 8
  %tobool.not = icmp eq %struct.vc_data* %3, null
  br i1 %tobool.not, label %for.inc14, label %if.then10

if.then10:                                        ; preds = %for.body6
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i64 0, i32 0
  call void @tty_port_put(%struct.tty_port* noundef %port) #9
  br label %for.inc14

for.inc14:                                        ; preds = %for.body6, %if.then10
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, 63
  br i1 %exitcond35.not, label %for.end16, label %for.body6

for.end16:                                        ; preds = %for.inc14
  call void @llvm.lifetime.end.p0i8(i64 504, i8* nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_disallocate(i32 noundef %vc_num) unnamed_addr #0 {
entry:
  call void @console_lock() #9
  %call = call fastcc i1 @vt_busy(i32 noundef %vc_num) #8
  br i1 %call, label %if.end3, label %if.else

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %vc_num, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.else
  %call2 = call %struct.vc_data* @vc_deallocate(i32 noundef %vc_num) #9
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then1
  %vc.0 = phi %struct.vc_data* [ %call2, %if.then1 ], [ null, %if.else ], [ null, %entry ]
  %ret.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.else ], [ -16, %entry ]
  call void @console_unlock() #9
  %tobool4 = icmp ne %struct.vc_data* %vc.0, null
  %cmp = icmp ne i32 %vc_num, 0
  %or.cond = and i1 %cmp, %tobool4
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 0
  call void @tty_port_put(%struct.tty_port* noundef %port) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_resize(%struct.vc_data* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_resizex(%struct.vc_data* nocapture noundef readonly %vc, %struct.vt_consize* noundef %cs) unnamed_addr #0 {
entry:
  %v = alloca %struct.vt_consize, align 4
  %0 = bitcast %struct.vt_consize* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false), !annotation !8
  %1 = bitcast %struct.vt_consize* %cs to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 12) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup97

if.end:                                           ; preds = %entry
  %v_vlin = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 2
  %2 = load i16, i16* %v_vlin, align 4
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %vc_scan_lines = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 7
  %3 = load i32, i32* %vc_scan_lines, align 8
  %conv = trunc i32 %3 to i16
  store i16 %conv, i16* %v_vlin, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = phi i16 [ %conv, %if.then2 ], [ %2, %if.end ]
  %v_clin = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 3
  %5 = load i16, i16* %v_clin, align 2
  %tobool5.not = icmp eq i16 %5, 0
  br i1 %tobool5.not, label %if.end21, label %if.then6

if.then6:                                         ; preds = %if.end4
  %6 = udiv i16 %4, %5
  %v_rows = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 0
  %7 = load i16, i16* %v_rows, align 4
  %cmp.not = icmp eq i16 %7, %6
  br i1 %cmp.not, label %if.end21, label %if.then13

if.then13:                                        ; preds = %if.then6
  %tobool15.not = icmp eq i16 %7, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup97

if.end17:                                         ; preds = %if.then13
  store i16 %6, i16* %v_rows, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then6, %if.end4
  %v_vcol = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 4
  %8 = load i16, i16* %v_vcol, align 4
  %tobool23 = icmp ne i16 %8, 0
  %v_ccol = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 5
  %9 = load i16, i16* %v_ccol, align 2
  %tobool25 = icmp ne i16 %9, 0
  %or.cond = select i1 %tobool23, i1 %tobool25, i1 false
  br i1 %or.cond, label %if.then26, label %if.end46

if.then26:                                        ; preds = %if.end21
  %10 = udiv i16 %8, %9
  %v_cols = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 1
  %11 = load i16, i16* %v_cols, align 2
  %cmp33.not = icmp eq i16 %11, %10
  br i1 %cmp33.not, label %if.end46, label %if.then35

if.then35:                                        ; preds = %if.then26
  %tobool37.not = icmp eq i16 %11, 0
  br i1 %tobool37.not, label %if.end39, label %cleanup97

if.end39:                                         ; preds = %if.then35
  store i16 %10, i16* %v_cols, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.end39, %if.then26, %if.end21
  %cmp49 = icmp ugt i16 %5, 32
  br i1 %cmp49, label %cleanup97, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end46
  %v_cols78 = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 1
  %v_rows80 = getelementptr inbounds %struct.vt_consize, %struct.vt_consize* %v, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %indvars.iv, i32 0
  %12 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %tobool55.not = icmp eq %struct.vc_data* %12, null
  br i1 %tobool55.not, label %for.inc, label %if.end57

if.end57:                                         ; preds = %for.body
  call void @console_lock() #9
  %13 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %tobool61.not = icmp eq %struct.vc_data* %13, null
  br i1 %tobool61.not, label %if.end93, label %if.then62

if.then62:                                        ; preds = %if.end57
  %vc_scan_lines63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i64 0, i32 7
  %14 = load i32, i32* %vc_scan_lines63, align 8
  %vc_cell_height = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i64 0, i32 8
  %15 = load i32, i32* %vc_cell_height, align 4
  %16 = load i16, i16* %v_vlin, align 4
  %tobool65.not = icmp eq i16 %16, 0
  br i1 %tobool65.not, label %if.end70, label %if.then66

if.then66:                                        ; preds = %if.then62
  %conv68 = zext i16 %16 to i32
  store i32 %conv68, i32* %vc_scan_lines63, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.then62
  %17 = load i16, i16* %v_clin, align 2
  %tobool72.not = icmp eq i16 %17, 0
  br i1 %tobool72.not, label %if.end77, label %if.then73

if.then73:                                        ; preds = %if.end70
  %conv75 = zext i16 %17 to i32
  store i32 %conv75, i32* %vc_cell_height, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end70
  %vc_resize_user = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i64 0, i32 43
  store i32 1, i32* %vc_resize_user, align 8
  %18 = load i16, i16* %v_cols78, align 2
  %conv79 = zext i16 %18 to i32
  %19 = load i16, i16* %v_rows80, align 4
  %conv81 = zext i16 %19 to i32
  %call82 = call i32 @vc_resize(%struct.vc_data* noundef nonnull %13, i32 noundef %conv79, i32 noundef %conv81) #9
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end93, label %cleanup94

if.end93:                                         ; preds = %if.end77, %if.end57
  call void @console_unlock() #9
  br label %for.inc

cleanup94:                                        ; preds = %if.end77
  store i32 %14, i32* %vc_scan_lines63, align 8
  store i32 %15, i32* %vc_cell_height, align 4
  call void @console_unlock() #9
  br label %cleanup97

for.inc:                                          ; preds = %if.end93, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %cleanup97, label %for.body

cleanup97:                                        ; preds = %for.inc, %cleanup94, %if.then35, %if.then13, %if.end46, %entry
  %retval.8 = phi i32 [ %call82, %cleanup94 ], [ -14, %entry ], [ -22, %if.end46 ], [ -22, %if.then13 ], [ -22, %if.then35 ], [ 0, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #10
  ret i32 %retval.8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_event_wait_ioctl(%struct.vt_event* noundef %event) unnamed_addr #0 {
entry:
  %vw = alloca %struct.vt_event_wait, align 8
  %0 = bitcast %struct.vt_event_wait* %vw to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !8
  %event1 = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 1
  %1 = bitcast %struct.vt_event* %event1 to i8*
  %2 = bitcast %struct.vt_event* %event to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %1, i8* noundef %2, i64 noundef 28) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %event3 = getelementptr inbounds %struct.vt_event, %struct.vt_event* %event1, i64 0, i32 0
  %3 = load i32, i32* %event3, align 8
  %tobool4.not = icmp ult i32 %3, 16
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  call fastcc void @vt_event_wait(%struct.vt_event_wait* noundef nonnull %vw) #8
  %done = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %vw, i64 0, i32 2
  %4 = load i32, i32* %done, align 4
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call2.i16 = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef %1, i64 noundef 28) #9
  %tobool11.not = icmp eq i64 %call2.i16, 0
  %. = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then8, %if.end, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ -22, %if.end ], [ %., %if.then8 ], [ -4, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @reset_vc(%struct.vc_data* noundef %vc) local_unnamed_addr #0 {
entry:
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  store i8 0, i8* %vc_mode, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %0 = load i16, i16* %vc_num, align 8
  %conv = zext i16 %0 to i32
  call void @vt_reset_unicode(i32 noundef %conv) #9
  %mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 0
  store i8 0, i8* %mode, align 4
  %waitv = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 1
  store i8 0, i8* %waitv, align 1
  %relsig = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 2
  store i16 0, i16* %relsig, align 2
  %acqsig = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 3
  store i16 0, i16* %acqsig, align 4
  %frsig = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 4
  store i16 0, i16* %frsig, align 2
  %vt_pid = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 34
  %1 = load %struct.pid*, %struct.pid** %vt_pid, align 8
  call void @put_pid(%struct.pid* noundef %1) #9
  store %struct.pid* null, %struct.pid** %vt_pid, align 8
  %vt_newvt = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 35
  store i32 -1, i32* %vt_newvt, align 8
  call void @reset_palette(%struct.vc_data* noundef %vc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_reset_unicode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_palette(%struct.vc_data* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vc_SAK(%struct.work_struct* nocapture noundef readonly %work) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1, i32 2
  call void @console_lock() #9
  %d = bitcast void (%struct.work_struct*)** %add.ptr to %struct.vc_data**
  %0 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %tobool.not = icmp eq %struct.vc_data* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %tty1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i64 0, i32 0, i32 1
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %tobool2.not = icmp eq %struct.tty_struct* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__do_SAK(%struct.tty_struct* noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void @reset_vc(%struct.vc_data* noundef nonnull %0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  call void @console_unlock() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_SAK(%struct.tty_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @change_console(%struct.vc_data* noundef %new_vc) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.vc_data* %new_vc, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %new_vc, i64 0, i32 3
  %0 = load i16, i16* %vc_num, align 8
  %conv = zext i16 %0 to i32
  %1 = load i32, i32* @fg_console, align 4
  %cmp = icmp ne i32 %1, %conv
  %2 = load i8, i8* @vt_dont_switch, align 4
  %tobool3.not = icmp eq i8 %2, 0
  %or.cond = select i1 %cmp, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %1 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %3 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i64 0, i32 33, i32 0
  %4 = load i8, i8* %mode, align 4
  %cmp6 = icmp eq i8 %4, 1
  br i1 %cmp6, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.end
  %vt_newvt = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i64 0, i32 35
  store i32 %conv, i32* %vt_newvt, align 8
  %vt_pid = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i64 0, i32 34
  %5 = load %struct.pid*, %struct.pid** %vt_pid, align 8
  %relsig = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i64 0, i32 33, i32 2
  %6 = load i16, i16* %relsig, align 2
  %conv12 = sext i16 %6 to i32
  %call = call i32 @kill_pid(%struct.pid* noundef %5, i32 noundef %conv12, i32 noundef 1) #9
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then8
  call void @reset_vc(%struct.vc_data* noundef %3) #8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i64 0, i32 17
  %7 = load i8, i8* %vc_mode, align 4
  %cmp19 = icmp eq i8 %7, 1
  br i1 %cmp19, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end17
  call fastcc void @complete_change_console(%struct.vc_data* noundef nonnull %new_vc) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then8, %entry, %lor.lhs.false, %if.end22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(%struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @complete_change_console(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  store i32 %0, i32* @last_console, align 4
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 17
  %2 = load i8, i8* %vc_mode, align 4
  call void @redraw_screen(%struct.vc_data* noundef %vc, i32 noundef 1) #9
  %vc_mode1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %3 = load i8, i8* %vc_mode1, align 4
  %cmp.not = icmp eq i8 %2, %3
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %cmp6 = icmp eq i8 %3, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @do_unblank_screen(i32 noundef 1) #9
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @do_blank_screen(i32 noundef 1) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else, %entry
  %mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 0
  %4 = load i8, i8* %mode, align 4
  %cmp11 = icmp eq i8 %4, 1
  br i1 %cmp11, label %if.then13, label %if.end34

if.then13:                                        ; preds = %if.end9
  %vt_pid = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 34
  %5 = load %struct.pid*, %struct.pid** %vt_pid, align 8
  %acqsig = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 33, i32 3
  %6 = load i16, i16* %acqsig, align 4
  %conv15 = sext i16 %6 to i32
  %call = call i32 @kill_pid(%struct.pid* noundef %5, i32 noundef %conv15, i32 noundef 1) #9
  %cmp16.not = icmp eq i32 %call, 0
  br i1 %cmp16.not, label %if.end34, label %if.then18

if.then18:                                        ; preds = %if.then13
  call void @reset_vc(%struct.vc_data* noundef %vc) #8
  %7 = load i8, i8* %vc_mode1, align 4
  %cmp22.not = icmp eq i8 %2, %7
  br i1 %cmp22.not, label %if.end34, label %if.then24

if.then24:                                        ; preds = %if.then18
  %cmp27 = icmp eq i8 %7, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then24
  call void @do_unblank_screen(i32 noundef 1) #9
  br label %if.end34

if.else30:                                        ; preds = %if.then24
  call void @do_blank_screen(i32 noundef 1) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %if.then29, %if.else30, %if.then18, %if.end9
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %8 = load i16, i16* %vc_num, align 8
  %conv35 = zext i16 %8 to i32
  call void @vt_event_post(i32 noundef 1, i32 noundef %0, i32 noundef %conv35) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_move_to_console(i32 noundef %vt, i32 noundef %alloc) local_unnamed_addr #0 {
entry:
  call void @console_lock() #9
  %0 = load i32, i32* @disable_vt_switch, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @console_unlock() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @fg_console, align 4
  %tobool1.not = icmp eq i32 %alloc, 0
  br i1 %tobool1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = call i32 @vc_allocate(i32 noundef %vt) #9
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  call void @console_unlock() #9
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %call5 = call i32 @set_console(i32 noundef %vt) #9
  %tobool6.not = icmp eq i32 %call5, 0
  call void @console_unlock() #9
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %add = add i32 %vt, 1
  %call9 = call i32 @vt_waitactive(i32 noundef %add) #8
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 %1, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end8, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -28, %if.then3 ], [ %., %if.end8 ], [ -5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pm_set_vt_switch(i32 noundef %do_switch) local_unnamed_addr #0 {
entry:
  call void @console_lock() #9
  %tobool.not = icmp eq i32 %do_switch, 0
  %lnot.ext = zext i1 %tobool.not to i32
  store i32 %lnot.ext, i32* @disable_vt_switch, align 4
  call void @console_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #8
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.spinlock* @vt_event_lock to i8*), i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !25

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vt_event_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #10, !srcloc !26
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #10, !srcloc !27
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !28

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !30
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vt_event_lock, i64 0, i32 0, i32 0)) #8
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #10, !srcloc !33
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #6 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @vt_events, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @vt_events, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @vt_events, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #8
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
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #8
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
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kd_mksound(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kbd_rate(%struct.kbd_repeat* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_kdsetmode(%struct.vc_data* nocapture noundef %vc, i64 noundef %mode) unnamed_addr #0 {
entry:
  %0 = icmp ult i64 %mode, 4
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i64], [4 x i64]* @switch.table.vt_kdsetmode, i64 0, i64 %mode
  %switch.load = load i64, i64* %switch.gep, align 8
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %1 = load i8, i8* %vc_mode, align 4
  %conv = zext i8 %1 to i64
  %cmp = icmp eq i64 %switch.load, %conv
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %switch.lookup
  %conv2 = trunc i64 %switch.load to i8
  store i8 %conv2, i8* %vc_mode, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %2 = load i16, i16* %vc_num, align 8
  %conv4 = zext i16 %2 to i32
  %3 = load i32, i32* @fg_console, align 4
  %cmp5.not = icmp eq i32 %3, %conv4
  br i1 %cmp5.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.end
  %cmp9.not = icmp eq i64 %mode, 1
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @do_unblank_screen(i32 noundef 1) #9
  br label %return

if.else:                                          ; preds = %if.end8
  call void @do_blank_screen(i32 noundef 1) #9
  br label %return

return:                                           ; preds = %entry, %if.then11, %if.else, %if.end, %switch.lookup
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %switch.lookup ], [ 0, %if.end ], [ 0, %if.else ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskbmode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(%struct.tty_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskbmeta(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmeta(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kbkeycode_ioctl(i32 noundef, %struct.kbkeycode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdsk_ioctl(i32 noundef, %struct.kbentry* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkb_ioctl(i32 noundef, %struct.kbsentry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_diacrit(i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskled(i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_signal(i64 noundef %sig) unnamed_addr #7 {
entry:
  %cmp = icmp ult i64 %sig, 65
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_font_op(%struct.vc_data* noundef, %struct.console_font_op* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_unblank_screen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_blank_screen(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  call fastcc void @do_raw_spin_lock() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.vt_spawn_console* @vt_spawn_con to i8*), i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !25

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 0, i32 0, i32 0)) #8
  call fastcc void @arch_local_irq_enable() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #10, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_cmap(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_cmap(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_trans_old(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_trans_old(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_trans_new(i16* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_trans_new(i16* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_clear_unimap(%struct.vc_data* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_unimap_ioctl(i32 noundef %cmd, %struct.unimapdesc* noundef %user_ud, i1 noundef %perm, %struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.unimapdesc, align 8
  %0 = bitcast %struct.unimapdesc* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %1 = bitcast %struct.unimapdesc* %user_ud to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 16) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %cleanup [
    i32 19303, label %sw.bb
    i32 19302, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  br i1 %perm, label %if.end3, label %cleanup

if.end3:                                          ; preds = %sw.bb
  %entry_ct = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %tmp, i64 0, i32 0
  %2 = load i16, i16* %entry_ct, align 8
  %entries = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %tmp, i64 0, i32 1
  %3 = load %struct.unipair*, %struct.unipair** %entries, align 8
  %call4 = call i32 @con_set_unimap(%struct.vc_data* noundef %vc, i16 noundef %2, %struct.unipair* noundef %3) #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  br i1 %perm, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb5
  %4 = load i32, i32* @fg_console, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %5 = load i16, i16* %vc_num, align 8
  %conv = zext i16 %5 to i32
  %cmp.not = icmp eq i32 %4, %conv
  br i1 %cmp.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %land.lhs.true, %sw.bb5
  %entry_ct10 = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %tmp, i64 0, i32 0
  %6 = load i16, i16* %entry_ct10, align 8
  %entry_ct11 = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %user_ud, i64 0, i32 0
  %entries12 = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %tmp, i64 0, i32 1
  %7 = load %struct.unipair*, %struct.unipair** %entries12, align 8
  %call13 = call i32 @con_get_unimap(%struct.vc_data* noundef %vc, i16 noundef %6, i16* noundef %entry_ct11, %struct.unipair* noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %sw.bb, %entry, %if.end9, %if.end3
  %retval.0 = phi i32 [ %call13, %if.end9 ], [ %call4, %if.end3 ], [ -14, %entry ], [ -1, %sw.bb ], [ -1, %land.lhs.true ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_unimap(%struct.vc_data* noundef, i16 noundef, %struct.unipair* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_unimap(%struct.vc_data* noundef, i16 noundef, i16* noundef, %struct.unipair* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !28

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #8
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !25

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #9
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !28

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !25

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #9
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !37
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #8
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #9
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @kref_read(%struct.kref* noundef %kref) unnamed_addr #5 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %refcount) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @array_index_mask_nospec(i64 noundef %idx) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "\09cmp\09$1, $2\0A\09sbc\09$0, xzr, xzr\0A", "=r,r,Ir,~{cc}"(i64 %idx, i64 64) #10, !srcloc !38
  call void asm sideeffect "hint #20", "~{memory}"() #10, !srcloc !39
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @vt_busy(i32 noundef %i) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @vt_in_use(i32 noundef %i) #8
  %0 = load i32, i32* @fg_console, align 4
  %cmp = icmp eq i32 %0, %i
  %or.cond = select i1 %call, i1 true, i1 %cmp
  br i1 %or.cond, label %return, label %if.end2

if.end2:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %call3 = call i1 @vc_is_sel(%struct.vc_data* noundef %1) #9
  br label %return

return:                                           ; preds = %if.end2, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %call3, %if.end2 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vc_data* @vc_deallocate(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(%struct.tty_port* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @vc_is_sel(%struct.vc_data* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vt_event_wait(%struct.vt_event_wait* noundef %vw) unnamed_addr #0 {
entry:
  call fastcc void @__vt_event_queue(%struct.vt_event_wait* noundef %vw) #8
  call fastcc void @__vt_event_wait(%struct.vt_event_wait* noundef %vw) #8
  call fastcc void @__vt_event_dequeue(%struct.vt_event_wait* noundef %vw) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @redraw_screen(%struct.vc_data* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149759964}
!8 = !{!"auto-init"}
!9 = !{i64 1478224}
!10 = !{i64 2155271698, i64 2155271736, i64 2155271753, i64 2155271787, i64 2155271809, i64 2155271835, i64 2155271853, i64 2155272015, i64 2155272056, i64 2155272078, i64 2155272124}
!11 = !{i64 2155275654, i64 2155275692, i64 2155275709, i64 2155275743, i64 2155275765, i64 2155275791, i64 2155275809, i64 2155275971, i64 2155276012, i64 2155276034, i64 2155276080}
!12 = !{i64 2155280082, i64 2155280120, i64 2155280137, i64 2155280171, i64 2155280193, i64 2155280219, i64 2155280237, i64 2155280395, i64 2155280436, i64 2155280458, i64 2155280504}
!13 = !{i64 2155283716, i64 2155283753, i64 2155283770, i64 2155283805, i64 2155283827, i64 2155283853, i64 2155283876, i64 2155283894, i64 2155284057, i64 2155284098, i64 2155284120, i64 2155284166}
!14 = !{i64 2155287833, i64 2155287870, i64 2155287887, i64 2155287922, i64 2155287944, i64 2155287970, i64 2155287993, i64 2155288011, i64 2155288174, i64 2155288215, i64 2155288237, i64 2155288283}
!15 = !{i64 2155291993, i64 2155292031, i64 2155292048, i64 2155292082, i64 2155292104, i64 2155292130, i64 2155292148, i64 2155292310, i64 2155292351, i64 2155292373, i64 2155292419}
!16 = !{i64 2155252229, i64 2155252267, i64 2155252284, i64 2155252318, i64 2155252340, i64 2155252366, i64 2155252384, i64 2155252546, i64 2155252587, i64 2155252609, i64 2155252655}
!17 = !{i64 2155257196, i64 2155257234, i64 2155257251, i64 2155257285, i64 2155257307, i64 2155257333, i64 2155257351, i64 2155257509, i64 2155257550, i64 2155257572, i64 2155257618}
!18 = !{i64 2155261258, i64 2155261296, i64 2155261313, i64 2155261347, i64 2155261369, i64 2155261395, i64 2155261413, i64 2155261571, i64 2155261612, i64 2155261634, i64 2155261680}
!19 = !{i64 2155265301, i64 2155265339, i64 2155265356, i64 2155265390, i64 2155265412, i64 2155265438, i64 2155265456, i64 2155265614, i64 2155265655, i64 2155265677, i64 2155265723}
!20 = !{i64 3059454, i64 3059537, i64 3059761, i64 3059981, i64 3060004}
!21 = !{i64 3064156, i64 3064180}
!22 = !{i64 2150863614}
!23 = !{!"branch_weights", i32 1, i32 4001}
!24 = !{i64 2155244307}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148897952, i64 2148897999, i64 2148898005, i64 2148898042, i64 2148898060, i64 2148899371, i64 2148899419, i64 2148899467, i64 2148899530, i64 2148899579, i64 2148898138, i64 2148898163, i64 2148898189, i64 2148898195, i64 2148899037, i64 2148899077, i64 2148899095, i64 2148899127, i64 2148899155, i64 2148899209, i64 2148899229, i64 2148899326, i64 2148898218, i64 2148898232, i64 2148898238, i64 2148898288, i64 2148898334, i64 2148898367}
!27 = !{i64 2148900131, i64 2148900178, i64 2148900184, i64 2148900221, i64 2148900239, i64 2148901182, i64 2148901230, i64 2148901278, i64 2148901341, i64 2148901390, i64 2148900317, i64 2148900342, i64 2148900368, i64 2148900374, i64 2148900411, i64 2148900417, i64 2148900467, i64 2148900513, i64 2148900546}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2148892249, i64 2148892296, i64 2148892302, i64 2148892339, i64 2148892357, i64 2148893698, i64 2148893746, i64 2148893794, i64 2148893857, i64 2148893906, i64 2148892435, i64 2148892460, i64 2148892486, i64 2148892492, i64 2148893364, i64 2148893404, i64 2148893422, i64 2148893454, i64 2148893482, i64 2148893536, i64 2148893556, i64 2148893653, i64 2148892515, i64 2148892529, i64 2148892535, i64 2148892585, i64 2148892631, i64 2148892664}
!30 = !{i64 2147938108, i64 2147938141, i64 2147938194, i64 2147938253, i64 2147938287, i64 2147938342, i64 2147938371, i64 2147938391}
!31 = !{i64 2149789868}
!32 = !{i64 2149729094}
!33 = !{i64 2148903965, i64 2148904012, i64 2148904018, i64 2148904055, i64 2148904073, i64 2148905384, i64 2148905432, i64 2148905480, i64 2148905543, i64 2148905592, i64 2148904151, i64 2148904176, i64 2148904202, i64 2148904208, i64 2148905050, i64 2148905090, i64 2148905108, i64 2148905140, i64 2148905168, i64 2148905222, i64 2148905242, i64 2148905339, i64 2148904231, i64 2148904245, i64 2148904251, i64 2148904301, i64 2148904347, i64 2148904380}
!34 = !{i64 2149764257}
!35 = !{i64 2149793171}
!36 = !{i64 2148882793, i64 2148882840, i64 2148882846, i64 2148882883, i64 2148882901, i64 2148884241, i64 2148884289, i64 2148884337, i64 2148884400, i64 2148884449, i64 2148882979, i64 2148883004, i64 2148883030, i64 2148883036, i64 2148883907, i64 2148883947, i64 2148883965, i64 2148883997, i64 2148884025, i64 2148884079, i64 2148884099, i64 2148884196, i64 2148883059, i64 2148883073, i64 2148883079, i64 2148883129, i64 2148883175, i64 2148883208}
!37 = !{i64 2147848210, i64 2147848874, i64 2147848904, i64 2147848936, i64 2147848970, i64 2147849005, i64 2147849030}
!38 = !{i64 328221, i64 328239}
!39 = !{i64 2147815423}
