; ModuleID = 'fs/open.c'
source_filename = "fs/open.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.0, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.66 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.37, %struct.anon.38, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.37 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.38 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.39, %struct.qspinlock }
%union.anon.39 = type { %struct.atomic_t }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.36, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.36 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.41, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.41 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.10, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.61 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.77, %union.anon.78, %union.anon.79, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.82, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.82 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
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
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.56, i32, [12 x i8] }
%union.anon.56 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
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
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { i64 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.72, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.70 = type { %struct.callback_head }
%union.anon.71 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.72 = type { %struct.pipe_inode_info* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.62 }
%union.anon.62 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.63, %union.anon.64 }
%union.anon.63 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.64 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.67 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.67 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pt_regs = type { %union.anon.83, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.83 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.open_how = type { i64, i64, i64 }
%struct.open_flags = type { i32, i16, i32, i32, i32 }
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque

@.str = private unnamed_addr constant [5 x i8] c"\04\02\06\06\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\013VFS: Close: file count is 0\0A\00", align 1
@__cap_empty_set = external dso_local local_unnamed_addr constant %struct.kernel_cap_struct, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@do_dentry_open.empty_fops = internal constant %struct.file_operations zeroinitializer, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_truncate(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i64 noundef %length, i32 noundef %time_attrs, %struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  %0 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !8
  %cmp = icmp slt i64 %length, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ia_size = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 4
  store i64 %length, i64* %ia_size, align 8
  %or = or i32 %time_attrs, 8
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  store i32 %or, i32* %ia_valid, align 8
  %tobool.not = icmp eq %struct.file* %filp, null
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %ia_file = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 8
  store %struct.file* %filp, %struct.file** %ia_file, align 8
  %or3 = or i32 %time_attrs, 8200
  store i32 %or3, i32* %ia_valid, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %1 = phi i32 [ %or3, %if.then1 ], [ %or, %if.end ]
  %call = call i32 @dentry_needs_remove_privs(%struct.dentry* noundef %dentry) #15
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %or10 = or i32 %call, %1
  %or12 = or i32 %or10, 512
  store i32 %or12, i32* %ia_valid, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %2) #16
  %call14 = call i32 @notify_change(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef nonnull %newattrs, %struct.inode** noundef null) #15
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %if.end13
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -22, %entry ], [ %call, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dentry_needs_remove_privs(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef, %struct.inode** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_truncate(%struct.path* nocapture noundef readonly %path, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  switch i16 %3, label %if.then7 [
    i16 16384, label %cleanup
    i16 -32768, label %if.end8
  ]

if.then7:                                         ; preds = %entry
  br label %cleanup

if.end8:                                          ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call i32 @mnt_want_write(%struct.vfsmount* noundef %4) #15
  %conv9 = sext i32 %call to i64
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end8
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call13 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %5) #16
  %call14 = call i32 @inode_permission(%struct.user_namespace* noundef %call13, %struct.inode* noundef %1, i32 noundef 2) #15
  %conv15 = sext i32 %call14 to i64
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end18, label %mnt_drop_write_and_out

if.end18:                                         ; preds = %if.end11
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 4
  %6 = load i32, i32* %i_flags, align 4
  %and19 = and i32 %6, 4
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end22, label %mnt_drop_write_and_out

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @get_write_access(%struct.inode* noundef %1) #16
  %conv24 = sext i32 %call23 to i64
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end27, label %mnt_drop_write_and_out

if.end27:                                         ; preds = %if.end22
  %call28 = call fastcc i32 @break_lease(%struct.inode* noundef %1, i32 noundef 1) #16
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.end32, label %put_write_and_out

if.end32:                                         ; preds = %if.end27
  %7 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call38 = call i32 @do_truncate(%struct.user_namespace* noundef %call13, %struct.dentry* noundef %7, i64 noundef %length, i32 noundef 0, %struct.file* noundef null) #16
  br label %put_write_and_out

put_write_and_out:                                ; preds = %if.end32, %if.end27
  %error.0.in = phi i32 [ %call28, %if.end27 ], [ %call38, %if.end32 ]
  %error.0 = sext i32 %error.0.in to i64
  call fastcc void @put_write_access(%struct.inode* noundef %1) #16
  br label %mnt_drop_write_and_out

mnt_drop_write_and_out:                           ; preds = %if.end22, %if.end18, %if.end11, %put_write_and_out
  %error.1 = phi i64 [ %conv15, %if.end11 ], [ -1, %if.end18 ], [ %conv24, %if.end22 ], [ %error.0, %put_write_and_out ]
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %8) #15
  br label %cleanup

cleanup:                                          ; preds = %mnt_drop_write_and_out, %if.end8, %entry, %if.then7
  %retval.0 = phi i64 [ -22, %if.then7 ], [ -21, %entry ], [ %conv9, %if.end8 ], [ %error.1, %mnt_drop_write_and_out ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #14, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_write_access(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 34
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %i_writecount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %1 = bitcast %struct.atomic_t* %i_writecount to i8*
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %entry
  %c.0.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i, %do.cond.i.i ]
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %atomic_inc_unless_negative.exit, label %do.cond.i.i, !prof !10

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i, i32 noundef %add.i.i) #15
  %cmp.not.i.i.i = icmp eq i32 %c.0.i.i, %call11.i.i.i.i
  br i1 %cmp.not.i.i.i, label %atomic_inc_unless_negative.exit, label %do.body.i.i, !prof !11

atomic_inc_unless_negative.exit:                  ; preds = %do.body.i.i, %do.cond.i.i
  %cond = phi i32 [ -26, %do.body.i.i ], [ 0, %do.cond.i.i ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_lease(%struct.inode* noundef %inode, i32 noundef %mode) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %tobool.not = icmp eq %struct.file_lock_context* %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #16
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @__break_lease(%struct.inode* noundef %inode, i32 noundef %mode, i32 noundef 32) #15
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_write_access(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 34
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %i_writecount) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_sys_truncate(i8* noundef %pathname, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %cmp = icmp slt i64 %length, 0
  br i1 %cmp, label %cleanup, label %retry.preheader

retry.preheader:                                  ; preds = %entry
  %call.peel = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %pathname, i32 noundef 1, %struct.path* noundef nonnull %path) #16
  %tobool.not.peel = icmp eq i32 %call.peel, 0
  br i1 %tobool.not.peel, label %if.then1.peel, label %if.end3.peel

if.then1.peel:                                    ; preds = %retry.preheader
  %call2.peel = call i64 @vfs_truncate(%struct.path* noundef nonnull %path, i64 noundef %length) #16
  %conv.peel = trunc i64 %call2.peel to i32
  call void @path_put(%struct.path* noundef nonnull %path) #15
  br label %if.end3.peel

if.end3.peel:                                     ; preds = %if.then1.peel, %retry.preheader
  %error.0.peel = phi i32 [ %call.peel, %retry.preheader ], [ %conv.peel, %if.then1.peel ]
  %conv4.peel = sext i32 %error.0.peel to i64
  %call5.peel = call fastcc i1 @retry_estale(i64 noundef %conv4.peel, i32 noundef 1) #16
  br i1 %call5.peel, label %retry, label %cleanup

retry:                                            ; preds = %if.end3.peel, %if.end3
  %call = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %pathname, i32 noundef 33, %struct.path* noundef nonnull %path) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %retry
  %call2 = call i64 @vfs_truncate(%struct.path* noundef nonnull %path, i64 noundef %length) #16
  %conv = trunc i64 %call2 to i32
  call void @path_put(%struct.path* noundef nonnull %path) #15
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %retry
  %error.0 = phi i32 [ %call, %retry ], [ %conv, %if.then1 ]
  %conv4 = sext i32 %error.0 to i64
  %call5 = call fastcc i1 @retry_estale(i64 noundef %conv4, i32 noundef 33) #16
  br i1 %call5, label %retry, label %cleanup, !llvm.loop !13

cleanup:                                          ; preds = %if.end3, %if.end3.peel, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %conv4.peel, %if.end3.peel ], [ %conv4, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path) unnamed_addr #0 {
entry:
  %call = call i32 @user_path_at_empty(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path, i32* noundef null) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @retry_estale(i64 noundef %error, i32 noundef %flags) unnamed_addr #4 {
entry:
  %cmp = icmp eq i64 %error, -116
  %and = and i32 %flags, 32
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i1 %cmp, %tobool.not
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_truncate(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_truncate(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_truncate(i64 noundef %path, i64 noundef %length) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %path to i8*
  %call = call fastcc i64 @__do_sys_truncate(i8* noundef %0, i64 noundef %length) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_sys_ftruncate(i32 noundef %fd, i64 noundef %length, i32 noundef %small) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %length, 0
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out, label %if.end2

if.end2:                                          ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 7
  %1 = load i32, i32* %f_flags, align 8
  %and = and i32 %1, 131072
  %tobool4.not = icmp eq i32 %and, 0
  %dentry8 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry8, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 0
  %4 = load i16, i16* %i_mode, align 8
  %5 = and i16 %4, -4096
  %cmp10 = icmp eq i16 %5, -32768
  br i1 %cmp10, label %lor.lhs.false, label %out_putf

lor.lhs.false:                                    ; preds = %if.end2
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %6 = load i32, i32* %f_mode, align 4
  %and13 = and i32 %6, 2
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %out_putf, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false
  %tobool1764 = icmp ne i32 %small, 0
  %tobool17 = and i1 %tobool1764, %tobool4.not
  %cmp18 = icmp ugt i64 %length, 2147483647
  %or.cond = and i1 %cmp18, %tobool17
  br i1 %or.cond, label %out_putf, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call23 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %0) #16
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call23, i64 0, i32 4
  %7 = load i32, i32* %i_flags, align 4
  %and24 = and i32 %7, 4
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end27, label %out_putf

if.end27:                                         ; preds = %if.end21
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 6
  %8 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %8) #16
  %call34 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef nonnull %0) #16
  %call36 = call i32 @do_truncate(%struct.user_namespace* noundef %call34, %struct.dentry* noundef %2, i64 noundef %length, i32 noundef 96, %struct.file* noundef nonnull %0) #16
  %9 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_end_write(%struct.super_block* noundef %9) #16
  br label %out_putf

out_putf:                                         ; preds = %if.end21, %if.end16, %if.end2, %lor.lhs.false, %if.end27
  %error.1 = phi i32 [ -22, %if.end16 ], [ -1, %if.end21 ], [ %call36, %if.end27 ], [ -22, %lor.lhs.false ], [ -22, %if.end2 ]
  call fastcc void @fdput([2 x i64] %call) #16
  br label %out

out:                                              ; preds = %if.end, %entry, %out_putf
  %error.2 = phi i32 [ -22, %entry ], [ %error.1, %out_putf ], [ -9, %if.end ]
  %conv39 = sext i32 %error.2 to i64
  ret i64 %conv39
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #15
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #16
  ret [2 x i64] %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #6 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #16
  ret %struct.user_namespace* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_end_write(%struct.super_block* noundef %sb) #16
  ret void
}

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
  call void @fput(%struct.file* noundef %0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_ftruncate(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_ftruncate(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_ftruncate(i64 noundef %fd, i64 noundef %length) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %call = call fastcc i64 @__do_sys_ftruncate(i32 noundef %conv, i64 noundef %length) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fallocate(%struct.file* noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #16
  %cmp = icmp slt i64 %offset, 0
  %cmp1 = icmp slt i64 %len, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %mode, -124
  %tobool.not = icmp ne i32 %and, 0
  %and4 = and i32 %mode, 18
  %cmp5 = icmp eq i32 %and4, 18
  %or.cond149 = or i1 %tobool.not, %cmp5
  %0 = and i32 %mode, 3
  %1 = icmp eq i32 %0, 2
  %or.cond151 = or i1 %1, %or.cond149
  br i1 %or.cond151, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %and14 = and i32 %mode, 8
  %tobool15.not = icmp eq i32 %and14, 0
  %and17 = and i32 %mode, -9
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond145 = or i1 %tobool15.not, %tobool18.not
  br i1 %or.cond145, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end13
  %and21 = and i32 %mode, 32
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %mode, -33
  %tobool25.not = icmp eq i32 %and24, 0
  %or.cond146 = or i1 %tobool22.not, %tobool25.not
  br i1 %or.cond146, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end20
  %and28 = and i32 %mode, 64
  %tobool29.not = icmp eq i32 %and28, 0
  %and31 = and i32 %mode, -66
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond147 = or i1 %tobool29.not, %tobool32.not
  br i1 %or.cond147, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.end27
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and35 = and i32 %2, 2
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end34
  %tobool40.not = icmp ult i32 %mode, 2
  %i_flags46.phi.trans.insert = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %.pre = load i32, i32* %i_flags46.phi.trans.insert, align 4
  %and42 = and i32 %.pre, 4
  %tobool43.not = icmp eq i32 %and42, 0
  %or.cond152 = select i1 %tobool40.not, i1 true, i1 %tobool43.not
  %and47 = and i32 %.pre, 8
  %tobool48.not = icmp eq i32 %and47, 0
  %or.cond153 = select i1 %or.cond152, i1 %tobool48.not, i1 false
  br i1 %or.cond153, label %if.end50, label %cleanup

if.end50:                                         ; preds = %if.end38
  %and52 = and i32 %.pre, 256
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end55, label %cleanup

if.end55:                                         ; preds = %if.end50
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %3 = load i16, i16* %i_mode, align 8
  %4 = and i16 %3, -4096
  switch i16 %4, label %if.then85 [
    i16 4096, label %cleanup
    i16 16384, label %if.then72
    i16 -32768, label %if.end86
    i16 24576, label %if.end86
  ]

if.then72:                                        ; preds = %if.end55
  br label %cleanup

if.then85:                                        ; preds = %if.end55
  br label %cleanup

if.end86:                                         ; preds = %if.end55, %if.end55
  %add = add nuw i64 %len, %offset
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %5 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i64 0, i32 4
  %6 = load i64, i64* %s_maxbytes, align 32
  %cmp87 = icmp sgt i64 %add, %6
  %cmp91 = icmp slt i64 %add, 0
  %or.cond148 = or i1 %cmp91, %cmp87
  br i1 %or.cond148, label %cleanup, label %if.end94

if.end94:                                         ; preds = %if.end86
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %7 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fallocate = getelementptr inbounds %struct.file_operations, %struct.file_operations* %7, i64 0, i32 27
  %8 = load i64 (%struct.file*, i32, i64, i64)*, i64 (%struct.file*, i32, i64, i64)** %fallocate, align 8
  %tobool95.not = icmp eq i64 (%struct.file*, i32, i64, i64)* %8, null
  br i1 %tobool95.not, label %cleanup, label %if.end97

if.end97:                                         ; preds = %if.end94
  call fastcc void @file_start_write(%struct.file* noundef %file) #16
  %9 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fallocate99 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %9, i64 0, i32 27
  %10 = load i64 (%struct.file*, i32, i64, i64)*, i64 (%struct.file*, i32, i64, i64)** %fallocate99, align 8
  %call100 = call i64 %10(%struct.file* noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #15
  %cmp101 = icmp eq i64 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end97
  call fastcc void @fsnotify_modify(%struct.file* noundef %file) #16
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end97
  call fastcc void @file_end_write(%struct.file* noundef %file) #16
  %conv105 = trunc i64 %call100 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end94, %if.end86, %if.end55, %if.end50, %if.end34, %if.end27, %if.end20, %if.end13, %if.end, %entry, %if.end104, %if.then85, %if.then72
  %retval.0 = phi i32 [ -21, %if.then72 ], [ %conv105, %if.end104 ], [ -19, %if.then85 ], [ -22, %entry ], [ -95, %if.end ], [ -22, %if.end13 ], [ -22, %if.end20 ], [ -22, %if.end27 ], [ -9, %if.end34 ], [ -26, %if.end50 ], [ -29, %if.end55 ], [ -27, %if.end86 ], [ -95, %if.end94 ], [ -1, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_start_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #16
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %2) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_modify(%struct.file* nocapture noundef readonly %file) unnamed_addr #7 {
entry:
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef 2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_end_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #16
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @__sb_end_write(%struct.super_block* noundef %2) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ksys_fallocate(i32 noundef %fd, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call2 = call i32 @vfs_fallocate(%struct.file* noundef nonnull %0, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #16
  call fastcc void @fdput([2 x i64] %call) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ %call2, %if.then ], [ -9, %entry ]
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fallocate(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_fallocate(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fallocate(i64 noundef %fd, i64 noundef %mode, i64 noundef %offset, i64 noundef %len) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %mode to i32
  %call = call fastcc i64 @__do_sys_fallocate(i32 noundef %conv, i32 noundef %conv1, i64 noundef %offset, i64 noundef %len) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_faccessat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_faccessat(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_faccessat(i64 noundef %dfd, i64 noundef %filename, i64 noundef %mode) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %mode to i32
  %call = call fastcc i64 @__do_sys_faccessat(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_faccessat2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_faccessat2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_faccessat2(i64 noundef %dfd, i64 noundef %filename, i64 noundef %mode, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %mode to i32
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_faccessat2(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i32 noundef %conv2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_access(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_access(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_access(i64 noundef %filename, i64 noundef %mode) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %conv = trunc i64 %mode to i32
  %call = call fastcc i64 @__do_sys_access(i8* noundef %0, i32 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_chdir(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_chdir(i64 noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_chdir(i64 noundef %filename) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %call = call fastcc i64 @__do_sys_chdir(i8* noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fchdir(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_fchdir(i64 noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fchdir(i64 noundef %fd) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %call = call fastcc i64 @__do_sys_fchdir(i32 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_chroot(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_chroot(i64 noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_chroot(i64 noundef %filename) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %call = call fastcc i64 @__do_sys_chroot(i8* noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @chmod_common(%struct.path* nocapture noundef readonly %path, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %delegated_inode = alloca %struct.inode*, align 8
  %newattrs = alloca %struct.iattr, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %2 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  %3 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false), !annotation !8
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call i32 @mnt_want_write(%struct.vfsmount* noundef %4) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %retry_deleg.preheader, label %cleanup

retry_deleg.preheader:                            ; preds = %entry
  %5 = and i16 %mode, 4095
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 0
  %ia_mode = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 1
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  br label %retry_deleg

retry_deleg:                                      ; preds = %retry_deleg.preheader, %if.then13
  call fastcc void @inode_lock(%struct.inode* noundef %1) #16
  %6 = load i16, i16* %i_mode, align 8
  %7 = and i16 %6, -4096
  %or37 = or i16 %7, %5
  store i16 %or37, i16* %ia_mode, align 4
  store i32 65, i32* %ia_valid, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call9 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %8) #16
  %9 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call11 = call i32 @notify_change(%struct.user_namespace* noundef %call9, %struct.dentry* noundef %9, %struct.iattr* noundef nonnull %newattrs, %struct.inode** noundef nonnull %delegated_inode) #15
  call fastcc void @inode_unlock(%struct.inode* noundef %1) #16
  %10 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool12.not = icmp eq %struct.inode* %10, null
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %retry_deleg
  %call14 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %retry_deleg, label %if.end18

if.end18:                                         ; preds = %if.then13, %retry_deleg
  %error.1 = phi i32 [ %call14, %if.then13 ], [ %call11, %retry_deleg ]
  %11 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end18
  %retval.0 = phi i32 [ %error.1, %if.end18 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg_wait(%struct.inode** nocapture noundef %delegated_inode) unnamed_addr #0 {
entry:
  %0 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %call = call fastcc i32 @break_deleg(%struct.inode* noundef %0) #16
  %1 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  call void @iput(%struct.inode* noundef %1) #15
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fchmod(%struct.file* nocapture noundef readonly %file, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  %call = call i32 @chmod_common(%struct.path* noundef %f_path, i16 noundef %mode) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fchmod(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_fchmod(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fchmod(i64 noundef %fd, i64 noundef %mode) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_fchmod(i32 noundef %conv, i16 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fchmodat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_fchmodat(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fchmodat(i64 noundef %dfd, i64 noundef %filename, i64 noundef %mode) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_fchmodat(i32 noundef %conv, i8* noundef %0, i16 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_chmod(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_chmod(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_chmod(i64 noundef %filename, i64 noundef %mode) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %conv = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_chmod(i8* noundef %0, i16 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @chown_common(%struct.path* nocapture noundef readonly %path, i32 noundef %user, i32 noundef %group) local_unnamed_addr #0 {
entry:
  %delegated_inode = alloca %struct.inode*, align 8
  %newattrs = alloca %struct.iattr, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %2 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  %3 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false), !annotation !8
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call6 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %4) #16
  %coerce.val.ii = zext i32 %user to i64
  %call9 = call fastcc i32 @kuid_from_mnt(i64 %coerce.val.ii) #16
  %coerce.val.ii13 = zext i32 %group to i64
  %call14 = call fastcc i32 @kgid_from_mnt(i64 %coerce.val.ii13) #16
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  %cmp.not = icmp eq i32 %user, -1
  %coerce.val.ii17 = zext i32 %call9 to i64
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 2, i32 0
  %cmp22.not = icmp eq i32 %group, -1
  %coerce.val.ii25 = zext i32 %call14 to i64
  %gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 3, i32 0
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 0
  br label %retry_deleg

retry_deleg:                                      ; preds = %if.then48, %entry
  store i32 64, i32* %ia_valid, align 8
  br i1 %cmp.not, label %if.end21, label %if.then

if.then:                                          ; preds = %retry_deleg
  %call18 = call fastcc i1 @uid_valid(i64 %coerce.val.ii17) #16
  br i1 %call18, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  store i32 66, i32* %ia_valid, align 8
  store i32 %call9, i32* %uid.sroa.0.0..sroa_idx, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end, %retry_deleg
  %5 = phi i32 [ 66, %if.end ], [ 64, %retry_deleg ]
  br i1 %cmp22.not, label %if.end31, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call26 = call fastcc i1 @gid_valid(i64 %coerce.val.ii25) #16
  br i1 %call26, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.then23
  %or30 = or i32 %5, 4
  store i32 %or30, i32* %ia_valid, align 8
  store i32 %call14, i32* %gid.sroa.0.0..sroa_idx, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %if.end21
  %6 = phi i32 [ %or30, %if.end28 ], [ %5, %if.end21 ]
  %7 = load i16, i16* %i_mode, align 8
  %8 = and i16 %7, -4096
  %cmp32 = icmp eq i16 %8, 16384
  br i1 %cmp32, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end31
  %or36 = or i32 %6, 22528
  store i32 %or36, i32* %ia_valid, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31
  call fastcc void @inode_lock(%struct.inode* noundef %1) #16
  %9 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call45 = call i32 @notify_change(%struct.user_namespace* noundef %call6, %struct.dentry* noundef %9, %struct.iattr* noundef nonnull %newattrs, %struct.inode** noundef nonnull %delegated_inode) #15
  call fastcc void @inode_unlock(%struct.inode* noundef %1) #16
  %10 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool47.not = icmp eq %struct.inode* %10, null
  br i1 %tobool47.not, label %cleanup, label %if.then48

if.then48:                                        ; preds = %if.end37
  %call49 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #16
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %retry_deleg, label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then48, %if.then23, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then23 ], [ %call49, %if.then48 ], [ %call45, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_from_mnt(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_from_mnt(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #16
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #16
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_fchownat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef %flag) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %and = and i32 %flag, -4353
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %and1 = lshr i32 %flag, 8
  %and1.lobit = and i32 %and1, 1
  %and2 = shl nuw nsw i32 %flag, 2
  %1 = and i32 %and2, 16384
  %2 = or i32 %and1.lobit, %1
  %3 = xor i32 %2, 1
  %call29 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %3, %struct.path* noundef nonnull %path) #16
  %tobool6.not30 = icmp eq i32 %call29, 0
  br i1 %tobool6.not30, label %if.end8.lr.ph, label %out

if.end8.lr.ph:                                    ; preds = %if.end
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %4 = or i32 %3, 32
  br label %if.end8

retry:                                            ; preds = %out_release
  %call = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %4, %struct.path* noundef nonnull %path) #16
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end8.lr.ph, %retry
  %lookup_flags.131 = phi i32 [ %3, %if.end8.lr.ph ], [ %4, %retry ]
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call9 = call i32 @mnt_want_write(%struct.vfsmount* noundef %5) #15
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %out_release

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @chown_common(%struct.path* noundef nonnull %path, i32 noundef %user, i32 noundef %group) #16
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %6) #15
  br label %out_release

out_release:                                      ; preds = %if.end8, %if.end12
  %error.0 = phi i32 [ %call9, %if.end8 ], [ %call13, %if.end12 ]
  call void @path_put(%struct.path* noundef nonnull %path) #15
  %conv = sext i32 %error.0 to i64
  %call15 = call fastcc i1 @retry_estale(i64 noundef %conv, i32 noundef %lookup_flags.131) #16
  br i1 %call15, label %retry, label %out

out:                                              ; preds = %retry, %out_release, %if.end, %entry
  %error.1 = phi i32 [ -22, %entry ], [ %call29, %if.end ], [ %call, %retry ], [ %error.0, %out_release ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %error.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fchownat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
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
  %call = call fastcc i64 @__se_sys_fchownat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fchownat(i64 noundef %dfd, i64 noundef %filename, i64 noundef %user, i64 noundef %group, i64 noundef %flag) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %user to i32
  %conv2 = trunc i64 %group to i32
  %conv3 = trunc i64 %flag to i32
  %call = call fastcc i64 @__do_sys_fchownat(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_chown(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_chown(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_chown(i64 noundef %filename, i64 noundef %user, i64 noundef %group) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %conv = trunc i64 %user to i32
  %conv1 = trunc i64 %group to i32
  %call = call fastcc i64 @__do_sys_chown(i8* noundef %0, i32 noundef %conv, i32 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_lchown(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_lchown(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_lchown(i64 noundef %filename, i64 noundef %user, i64 noundef %group) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %conv = trunc i64 %user to i32
  %conv1 = trunc i64 %group to i32
  %call = call fastcc i64 @__do_sys_lchown(i8* noundef %0, i32 noundef %conv, i32 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fchown(%struct.file* noundef %file, i32 noundef %user, i32 noundef %group) local_unnamed_addr #0 {
entry:
  %call = call i32 @mnt_want_write_file(%struct.file* noundef %file) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  %call1 = call i32 @chown_common(%struct.path* noundef %f_path, i32 noundef %user, i32 noundef %group) #16
  call void @mnt_drop_write_file(%struct.file* noundef %file) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ksys_fchown(i32 noundef %fd, i32 noundef %user, i32 noundef %group) local_unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call2 = call i32 @vfs_fchown(%struct.file* noundef nonnull %0, i32 noundef %user, i32 noundef %group) #16
  call fastcc void @fdput([2 x i64] %call) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ %call2, %if.then ], [ -9, %entry ]
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fchown(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_fchown(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fchown(i64 noundef %fd, i64 noundef %user, i64 noundef %group) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %user to i32
  %conv2 = trunc i64 %group to i32
  %call = call fastcc i64 @__do_sys_fchown(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @finish_open(%struct.file* noundef %file, %struct.dentry* noundef %dentry, i32 (%struct.inode*, %struct.file*)* noundef %open) local_unnamed_addr #0 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/open.c\22; .popsection; .long 14472b - 14470b; .short 902; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  unreachable

do.end6:                                          ; preds = %entry
  %dentry7 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  store %struct.dentry* %dentry, %struct.dentry** %dentry7, align 8
  %call = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %dentry) #16
  %call8 = call fastcc i32 @do_dentry_open(%struct.file* noundef %file, %struct.inode* noundef %call, i32 (%struct.inode*, %struct.file*)* noundef %open) #16
  ret i32 %call8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_dentry_open(%struct.file* noundef %f, %struct.inode* noundef %inode, i32 (%struct.inode*, %struct.file*)* noundef readonly %open) unnamed_addr #0 {
entry:
  %f_path = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 1
  call void @path_get(%struct.path* noundef %f_path) #15
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  store %struct.inode* %inode, %struct.inode** %f_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 17
  store %struct.address_space* %0, %struct.address_space** %f_mapping, align 8
  %call = call fastcc i32 @filemap_sample_wb_err(%struct.address_space* noundef %0) #16
  %f_wb_err = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 18
  store i32 %call, i32* %f_wb_err, align 8
  %call2 = call fastcc i32 @file_sample_sb_err(%struct.file* noundef %f) #16
  %f_sb_err = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 19
  store i32 %call2, i32* %f_sb_err, align 4
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 7
  %1 = load i32, i32* %f_flags, align 8
  %and = and i32 %1, 2097152
  %tobool.not = icmp eq i32 %and, 0
  %f_mode5 = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 8
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  store i32 540672, i32* %f_mode5, align 4
  %f_op = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 3
  store %struct.file_operations* @do_dentry_open.empty_fops, %struct.file_operations** %f_op, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %f_mode5, align 4
  %and6 = and i32 %2, 2
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end53, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %3 = load i16, i16* %i_mode, align 8
  %4 = and i16 %3, -4096
  switch i16 %4, label %if.then28 [
    i16 8192, label %if.end53
    i16 24576, label %if.end53
    i16 4096, label %if.end53
    i16 -16384, label %if.end53
  ]

if.then28:                                        ; preds = %land.lhs.true
  %call29 = call fastcc i32 @get_write_access(%struct.inode* noundef %inode) #16
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end39, label %cleanup_file, !prof !11

if.end39:                                         ; preds = %if.then28
  %mnt = getelementptr inbounds %struct.path, %struct.path* %f_path, i64 0, i32 0
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call41 = call i32 @__mnt_want_write(%struct.vfsmount* noundef %5) #15
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end51, label %if.then50, !prof !11

if.then50:                                        ; preds = %if.end39
  call fastcc void @put_write_access(%struct.inode* noundef %inode) #16
  br label %cleanup_file

if.end51:                                         ; preds = %if.end39
  %6 = load i32, i32* %f_mode5, align 4
  %or = or i32 %6, 65536
  store i32 %or, i32* %f_mode5, align 4
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %if.end51, %if.end
  %7 = phi i32 [ %2, %land.lhs.true ], [ %2, %land.lhs.true ], [ %2, %land.lhs.true ], [ %2, %land.lhs.true ], [ %or, %if.end51 ], [ %2, %if.end ]
  %i_mode54 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %8 = load i16, i16* %i_mode54, align 8
  %9 = and i16 %8, -4096
  switch i16 %9, label %if.end68 [
    i16 -32768, label %if.then65
    i16 16384, label %if.then65
  ]

if.then65:                                        ; preds = %if.end53, %if.end53
  %or67 = or i32 %7, 32768
  store i32 %or67, i32* %f_mode5, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end53, %if.then65
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  %10 = load %struct.file_operations*, %struct.file_operations** %i_fop, align 8
  %tobool69.not = icmp eq %struct.file_operations* %10, null
  %f_op75329 = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 3
  br i1 %tobool69.not, label %cleanup_all.thread, label %if.end103

cleanup_all.thread:                               ; preds = %if.end68
  store %struct.file_operations* null, %struct.file_operations** %f_op75329, align 8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/open.c\22; .popsection; .long 14472b - 14470b; .short 804; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  br label %do.end

if.end103:                                        ; preds = %if.end68
  store %struct.file_operations* %10, %struct.file_operations** %f_op75329, align 8
  %call108 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %f) #16
  %11 = load i32, i32* %f_flags, align 8
  %call110 = call fastcc i32 @break_lease(%struct.inode* noundef %call108, i32 noundef %11) #16
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %cleanup_all

if.end113:                                        ; preds = %if.end103
  %12 = load i32, i32* %f_mode5, align 4
  %or115 = or i32 %12, 28
  store i32 %or115, i32* %f_mode5, align 4
  %tobool116.not = icmp eq i32 (%struct.inode*, %struct.file*)* %open, null
  br i1 %tobool116.not, label %if.end120, label %if.then122

if.end120:                                        ; preds = %if.end113
  %13 = load %struct.file_operations*, %struct.file_operations** %f_op75329, align 8
  %open119 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %13, i64 0, i32 14
  %14 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open119, align 8
  %tobool121.not = icmp eq i32 (%struct.inode*, %struct.file*)* %14, null
  br i1 %tobool121.not, label %if.end127, label %if.then122

if.then122:                                       ; preds = %if.end113, %if.end120
  %open.addr.0337 = phi i32 (%struct.inode*, %struct.file*)* [ %14, %if.end120 ], [ %open, %if.end113 ]
  %call123 = call i32 %open.addr.0337(%struct.inode* noundef %inode, %struct.file* noundef %f) #15
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then122.if.end127_crit_edge, label %cleanup_all

if.then122.if.end127_crit_edge:                   ; preds = %if.then122
  %.pre = load i32, i32* %f_mode5, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then122.if.end127_crit_edge, %if.end120
  %15 = phi i32 [ %.pre, %if.then122.if.end127_crit_edge ], [ %or115, %if.end120 ]
  %or129 = or i32 %15, 524288
  store i32 %or129, i32* %f_mode5, align 4
  %and131 = and i32 %15, 3
  %cmp132 = icmp eq i32 %and131, 1
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.end127
  call fastcc void @i_readcount_inc(%struct.inode* noundef %inode) #16
  %.pre348 = load i32, i32* %f_mode5, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end127
  %16 = phi i32 [ %.pre348, %if.then134 ], [ %or129, %if.end127 ]
  %and137 = and i32 %16, 1
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end154, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.end135
  %17 = load %struct.file_operations*, %struct.file_operations** %f_op75329, align 8
  %read = getelementptr inbounds %struct.file_operations, %struct.file_operations* %17, i64 0, i32 2
  %18 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %read, align 8
  %tobool141.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %18, null
  br i1 %tobool141.not, label %lor.rhs, label %if.then151

lor.rhs:                                          ; preds = %land.lhs.true139
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %17, i64 0, i32 4
  %19 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool143.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %19, null
  br i1 %tobool143.not, label %if.end154, label %if.then151, !prof !10

if.then151:                                       ; preds = %land.lhs.true139, %lor.rhs
  %or153 = or i32 %16, 131072
  store i32 %or153, i32* %f_mode5, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %lor.rhs, %if.end135
  %20 = phi i32 [ %or153, %if.then151 ], [ %16, %lor.rhs ], [ %16, %if.end135 ]
  %and156 = and i32 %20, 2
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end175, label %land.lhs.true158

land.lhs.true158:                                 ; preds = %if.end154
  %21 = load %struct.file_operations*, %struct.file_operations** %f_op75329, align 8
  %write = getelementptr inbounds %struct.file_operations, %struct.file_operations* %21, i64 0, i32 3
  %22 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %write, align 8
  %tobool160.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %22, null
  br i1 %tobool160.not, label %lor.rhs161, label %if.then172

lor.rhs161:                                       ; preds = %land.lhs.true158
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %21, i64 0, i32 5
  %23 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool163.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %23, null
  br i1 %tobool163.not, label %if.end175, label %if.then172, !prof !10

if.then172:                                       ; preds = %land.lhs.true158, %lor.rhs161
  %or174 = or i32 %20, 262144
  store i32 %or174, i32* %f_mode5, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %lor.rhs161, %if.end154
  %f_write_hint = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 5
  store i32 0, i32* %f_write_hint, align 4
  %24 = load i32, i32* %f_flags, align 8
  %and177 = and i32 %24, -961
  store i32 %and177, i32* %f_flags, align 8
  %f_ra = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 13
  %25 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i64 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %host, align 8
  %i_mapping179 = getelementptr inbounds %struct.inode, %struct.inode* %26, i64 0, i32 7
  %27 = load %struct.address_space*, %struct.address_space** %i_mapping179, align 8
  call void @file_ra_state_init(%struct.file_ra_state* noundef %f_ra, %struct.address_space* noundef %27) #15
  %28 = load i32, i32* %f_flags, align 8
  %and181 = and i32 %28, 65536
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end192, label %if.then183

if.then183:                                       ; preds = %if.end175
  %29 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i64 0, i32 9
  %30 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %tobool185.not = icmp eq %struct.address_space_operations* %30, null
  br i1 %tobool185.not, label %cleanup, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %if.then183
  %direct_IO = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %30, i64 0, i32 12
  %31 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %direct_IO, align 8
  %tobool189.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %31, null
  br i1 %tobool189.not, label %cleanup, label %if.end192

if.end192:                                        ; preds = %lor.lhs.false186, %if.end175
  %32 = load i32, i32* %f_mode5, align 4
  %and194 = and i32 %32, 2
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %cleanup, label %if.then196

if.then196:                                       ; preds = %if.end192
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  br label %cleanup

cleanup_all:                                      ; preds = %if.then122, %if.end103
  %error.0 = phi i32 [ %call110, %if.end103 ], [ %call123, %if.then122 ]
  %cmp204 = icmp sgt i32 %error.0, 0
  br i1 %cmp204, label %33, label %do.end, !prof !10

33:                                               ; preds = %cleanup_all
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/open.c\22; .popsection; .long 14472b - 14470b; .short 866; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !18
  br label %do.end

do.end:                                           ; preds = %33, %cleanup_all.thread, %cleanup_all
  %34 = phi i32 [ -22, %33 ], [ %error.0, %cleanup_all ], [ -19, %cleanup_all.thread ]
  %35 = load i32, i32* %f_mode5, align 4
  %and238 = and i32 %35, 65536
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %cleanup_file, label %if.then240

if.then240:                                       ; preds = %do.end
  call fastcc void @put_write_access(%struct.inode* noundef %inode) #16
  %mnt242 = getelementptr inbounds %struct.path, %struct.path* %f_path, i64 0, i32 0
  %36 = load %struct.vfsmount*, %struct.vfsmount** %mnt242, align 8
  call void @__mnt_drop_write(%struct.vfsmount* noundef %36) #15
  br label %cleanup_file

cleanup_file:                                     ; preds = %do.end, %if.then240, %if.then28, %if.then50
  %error.2 = phi i32 [ %34, %if.then240 ], [ %34, %do.end ], [ %call29, %if.then28 ], [ %call41, %if.then50 ]
  call void @path_put(%struct.path* noundef %f_path) #15
  %mnt246 = getelementptr inbounds %struct.path, %struct.path* %f_path, i64 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt246, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 1, i32 1
  store %struct.dentry* null, %struct.dentry** %dentry, align 8
  store %struct.inode* null, %struct.inode** %f_inode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %if.then196, %if.then183, %lor.lhs.false186, %cleanup_file, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %error.2, %cleanup_file ], [ -22, %lor.lhs.false186 ], [ -22, %if.then183 ], [ 0, %if.then196 ], [ 0, %if.end192 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_backing_inode(%struct.dentry* nocapture noundef readonly %upper) unnamed_addr #6 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %upper, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i32 @finish_no_open(%struct.file* nocapture noundef writeonly %file, %struct.dentry* noundef %dentry) local_unnamed_addr #8 {
entry:
  %dentry1 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  store %struct.dentry* %dentry, %struct.dentry** %dentry1, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @file_path(%struct.file* noundef %filp, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %f_path = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 1
  %call = call i8* @d_path(%struct.path* noundef %f_path, i8* noundef %buf, i32 noundef %buflen) #15
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @d_path(%struct.path* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_open(%struct.path* nocapture noundef readonly %path, %struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  %0 = bitcast %struct.path* %f_path to i8*
  %1 = bitcast %struct.path* %path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %2) #16
  %call1 = call fastcc i32 @do_dentry_open(%struct.file* noundef %file, %struct.inode* noundef %call, i32 (%struct.inode*, %struct.file*)* noundef null) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @dentry_open(%struct.path* nocapture noundef readonly %path, i32 noundef %flags, %struct.cred* noundef %cred) local_unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %tobool.not = icmp eq %struct.vfsmount* %0, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !10

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/open.c\22; .popsection; .long 14472b - 14470b; .short 957; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !19
  unreachable

do.end9:                                          ; preds = %entry
  %call = call %struct.file* @alloc_empty_file(i32 noundef %flags, %struct.cred* noundef %cred) #15
  %1 = bitcast %struct.file* %call to i8*
  %call10 = call fastcc i1 @IS_ERR(i8* noundef %1) #16
  br i1 %call10, label %if.end18, label %if.then11

if.then11:                                        ; preds = %do.end9
  %call12 = call i32 @vfs_open(%struct.path* noundef %path, %struct.file* noundef %call) #16
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @fput(%struct.file* noundef %call) #15
  %conv15 = sext i32 %call12 to i64
  %call16 = call fastcc i8* @ERR_PTR(i64 noundef %conv15) #16
  %2 = bitcast i8* %call16 to %struct.file*
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then14, %do.end9
  %f.0 = phi %struct.file* [ %call, %do.end9 ], [ %2, %if.then14 ], [ %call, %if.then11 ]
  ret %struct.file* %f.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @alloc_empty_file(i32 noundef, %struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @open_with_fake_path(%struct.path* nocapture noundef readonly %path, i32 noundef %flags, %struct.inode* noundef %inode, %struct.cred* noundef %cred) local_unnamed_addr #0 {
entry:
  %call = call %struct.file* @alloc_empty_file_noaccount(i32 noundef %flags, %struct.cred* noundef %cred) #15
  %0 = bitcast %struct.file* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #16
  br i1 %call1, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 1
  %1 = bitcast %struct.path* %f_path to i8*
  %2 = bitcast %struct.path* %path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %1, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %call2 = call fastcc i32 @do_dentry_open(%struct.file* noundef %call, %struct.inode* noundef %inode, i32 (%struct.inode*, %struct.file*)* noundef null) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @fput(%struct.file* noundef %call) #15
  %conv = sext i32 %call2 to i64
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #16
  %3 = bitcast i8* %call4 to %struct.file*
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then3, %entry
  %f.1 = phi %struct.file* [ %call, %entry ], [ %3, %if.then3 ], [ %call, %if.then ]
  ret %struct.file* %f.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @alloc_empty_file_noaccount(i32 noundef, %struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local void @build_open_how(%struct.open_how* noalias nocapture sret(%struct.open_how) align 8 %agg.result, i32 noundef %flags, i16 noundef %mode) local_unnamed_addr #9 {
entry:
  %flags1 = getelementptr inbounds %struct.open_how, %struct.open_how* %agg.result, i64 0, i32 0
  %and = and i32 %flags, 8388547
  %0 = zext i32 %and to i64
  store i64 %0, i64* %flags1, align 8
  %mode2 = getelementptr inbounds %struct.open_how, %struct.open_how* %agg.result, i64 0, i32 1
  %1 = and i16 %mode, 4095
  %2 = zext i16 %1 to i64
  store i64 %2, i64* %mode2, align 8
  %resolve = getelementptr inbounds %struct.open_how, %struct.open_how* %agg.result, i64 0, i32 2
  store i64 0, i64* %resolve, align 8
  %and7 = and i64 %0, 2097152
  %tobool.not = icmp eq i64 %and7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and9 = and i64 %0, 2670592
  store i64 %and9, i64* %flags1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i64 [ %and9, %if.then ], [ %0, %entry ]
  %and11 = and i64 %3, 4194368
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  store i64 0, i64* %mode2, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @build_open_flags(%struct.open_how* nocapture noundef readonly %how, %struct.open_flags* nocapture noundef writeonly %op) local_unnamed_addr #10 {
entry:
  %flags1 = getelementptr inbounds %struct.open_how, %struct.open_how* %how, i64 0, i32 0
  %0 = load i64, i64* %flags1, align 8
  %and = and i64 %0, 3
  %arrayidx = getelementptr [5 x i8], [5 x i8]* @.str, i64 0, i64 %and
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and2 = and i64 %0, -67633153
  %and3 = and i64 %0, -75497412
  %tobool.not = icmp eq i64 %and3, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %resolve = getelementptr inbounds %struct.open_how, %struct.open_how* %how, i64 0, i32 2
  %2 = load i64, i64* %resolve, align 8
  %tobool5.not = icmp ugt i64 %2, 63
  %3 = and i64 %2, 24
  %.not = icmp eq i64 %3, 24
  %or.cond = or i1 %tobool5.not, %.not
  br i1 %or.cond, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end
  %and16 = and i64 %0, 4194368
  %tobool17.not = icmp eq i64 %and16, 0
  %mode26 = getelementptr inbounds %struct.open_how, %struct.open_how* %how, i64 0, i32 1
  %4 = load i64, i64* %mode26, align 8
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %tobool20.not = icmp ult i64 %4, 4096
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.then18
  %5 = trunc i64 %4 to i16
  %conv24 = or i16 %5, -32768
  br label %if.end31

if.else:                                          ; preds = %if.end15
  %cmp.not = icmp eq i64 %4, 0
  br i1 %cmp.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.else, %if.end22
  %.sink = phi i16 [ %conv24, %if.end22 ], [ 0, %if.else ]
  %mode30 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 1
  store i16 %.sink, i16* %mode30, align 4
  %and32 = and i64 %0, 4194304
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.end44, label %if.then34

if.then34:                                        ; preds = %if.end31
  %and35 = and i64 %0, 4210752
  %cmp36.not = icmp ne i64 %and35, 4210688
  %and40 = and i32 %conv, 2
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond193 = select i1 %cmp36.not, i1 true, i1 %tobool41.not
  br i1 %or.cond193, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.then34, %if.end31
  %and45 = and i64 %0, 2097152
  %tobool46.not = icmp eq i64 %and45, 0
  br i1 %tobool46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %if.end44
  %and48 = and i64 %0, -69779457
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %if.end52, label %cleanup

if.end52:                                         ; preds = %if.then47, %if.end44
  %acc_mode.0 = phi i32 [ %conv, %if.end44 ], [ 0, %if.then47 ]
  %and53 = lshr i64 %0, 8
  %6 = and i64 %and53, 4096
  %7 = or i64 %6, %and2
  %conv58 = trunc i64 %7 to i32
  %open_flag = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 0
  store i32 %conv58, i32* %open_flag, align 4
  %8 = trunc i64 %0 to i32
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 2
  %11 = lshr i32 %8, 7
  %12 = and i32 %11, 8
  %13 = or i32 %12, %10
  %14 = or i32 %13, %acc_mode.0
  %acc_mode69 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 2
  store i32 %14, i32* %acc_mode69, align 4
  %15 = lshr i32 %conv58, 13
  %16 = and i32 %15, 256
  %17 = xor i32 %16, 256
  %intent = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 3
  store i32 %17, i32* %intent, align 4
  %and72 = and i64 %0, 64
  %tobool73.not = icmp eq i64 %and72, 0
  br i1 %tobool73.not, label %if.end84, label %if.then74

if.then74:                                        ; preds = %if.end52
  %or76 = or i32 %17, 512
  store i32 %or76, i32* %intent, align 4
  %and77 = and i64 %0, 128
  %tobool78.not = icmp eq i64 %and77, 0
  br i1 %tobool78.not, label %if.end84, label %if.then79

if.then79:                                        ; preds = %if.then74
  %or81 = or i32 %17, 1536
  store i32 %or81, i32* %intent, align 4
  %or82 = or i64 %7, 32768
  %.pre = trunc i64 %or82 to i32
  %.pre194 = lshr i32 %.pre, 13
  br label %if.end84

if.end84:                                         ; preds = %if.then74, %if.then79, %if.end52
  %.pre-phi195 = phi i32 [ %15, %if.then74 ], [ %.pre194, %if.then79 ], [ %15, %if.end52 ]
  %.pre-phi = phi i32 [ %conv58, %if.then74 ], [ %.pre, %if.then79 ], [ %conv58, %if.end52 ]
  %flags.1 = phi i64 [ %7, %if.then74 ], [ %or82, %if.then79 ], [ %7, %if.end52 ]
  %18 = and i32 %.pre-phi195, 2
  %19 = lshr i32 %.pre-phi, 15
  %20 = and i32 %19, 1
  %21 = or i32 %20, %18
  %22 = load i64, i64* %resolve, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 18
  %25 = and i32 %24, 262144
  %26 = or i32 %21, %25
  %27 = shl i32 %23, 16
  %28 = and i32 %27, 131072
  %29 = or i32 %26, %28
  %30 = shl i32 %23, 14
  %31 = and i32 %30, 65536
  %32 = or i32 %29, %31
  %33 = and i32 %27, 524288
  %34 = or i32 %32, %33
  %35 = and i32 %27, 1048576
  %36 = or i32 %34, %35
  %37 = xor i32 %36, 1
  %and126 = and i64 %22, 32
  %tobool127.not = icmp eq i64 %and126, 0
  br i1 %tobool127.not, label %if.end134, label %if.then128

if.then128:                                       ; preds = %if.end84
  %and129 = and i64 %flags.1, 4211264
  %tobool130.not = icmp eq i64 %and129, 0
  br i1 %tobool130.not, label %if.end132, label %cleanup

if.end132:                                        ; preds = %if.then128
  %or133 = or i32 %37, 2097152
  br label %if.end134

if.end134:                                        ; preds = %if.end132, %if.end84
  %lookup_flags.7 = phi i32 [ %or133, %if.end132 ], [ %37, %if.end84 ]
  %lookup_flags135 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 4
  store i32 %lookup_flags.7, i32* %lookup_flags135, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %if.then47, %if.then34, %if.else, %if.then18, %if.end, %entry, %if.end134
  %retval.0 = phi i32 [ 0, %if.end134 ], [ -22, %entry ], [ -22, %if.end ], [ -22, %if.then18 ], [ -22, %if.else ], [ -22, %if.then34 ], [ -22, %if.then47 ], [ -11, %if.then128 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @file_open_name(%struct.filename* noundef %name, i32 noundef %flags, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %op = alloca %struct.open_flags, align 4
  %how = alloca %struct.open_how, align 8
  %0 = bitcast %struct.open_flags* %op to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !annotation !8
  %1 = bitcast %struct.open_how* %how to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  call void @build_open_how(%struct.open_how* nonnull sret(%struct.open_how) align 8 %how, i32 noundef %flags, i16 noundef %mode) #16
  %call = call i32 @build_open_flags(%struct.open_how* noundef nonnull %how, %struct.open_flags* noundef nonnull %op) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #16
  %2 = bitcast i8* %call1 to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.file* @do_filp_open(i32 noundef -100, %struct.filename* noundef %name, %struct.open_flags* noundef nonnull %op) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.file* [ %2, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #14
  ret %struct.file* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @do_filp_open(i32 noundef, %struct.filename* noundef, %struct.open_flags* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @filp_open(i8* noundef %filename, i32 noundef %flags, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %filename) #15
  %0 = bitcast %struct.filename* %call to i8*
  %1 = bitcast %struct.filename* %call to %struct.file*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #16
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call %struct.file* @file_open_name(%struct.filename* noundef %call, i32 noundef %flags, i16 noundef %mode) #16
  call void @putname(%struct.filename* noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %file.0 = phi %struct.file* [ %1, %entry ], [ %call3, %if.then ]
  ret %struct.file* %file.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname_kernel(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(%struct.filename* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @file_open_root(%struct.path* noundef %root, i8* noundef %filename, i32 noundef %flags, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %op = alloca %struct.open_flags, align 4
  %how = alloca %struct.open_how, align 8
  %0 = bitcast %struct.open_flags* %op to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !annotation !8
  %1 = bitcast %struct.open_how* %how to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  call void @build_open_how(%struct.open_how* nonnull sret(%struct.open_how) align 8 %how, i32 noundef %flags, i16 noundef %mode) #16
  %call = call i32 @build_open_flags(%struct.open_how* noundef nonnull %how, %struct.open_flags* noundef nonnull %op) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #16
  %2 = bitcast i8* %call1 to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.file* @do_file_open_root(%struct.path* noundef %root, i8* noundef %filename, %struct.open_flags* noundef nonnull %op) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.file* [ %2, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #14
  ret %struct.file* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @do_file_open_root(%struct.path* noundef, i8* noundef, %struct.open_flags* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_sys_open(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %how = alloca %struct.open_how, align 8
  %0 = bitcast %struct.open_how* %how to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !8
  call void @build_open_how(%struct.open_how* nonnull sret(%struct.open_how) align 8 %how, i32 noundef %flags, i16 noundef %mode) #16
  %call = call fastcc i64 @do_sys_openat2(i32 noundef %dfd, i8* noundef %filename, %struct.open_how* noundef nonnull %how) #16
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_sys_openat2(i32 noundef %dfd, i8* noundef %filename, %struct.open_how* nocapture noundef readonly %how) unnamed_addr #0 {
entry:
  %op = alloca %struct.open_flags, align 4
  %0 = bitcast %struct.open_flags* %op to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !annotation !8
  %call = call i32 @build_open_flags(%struct.open_how* noundef %how, %struct.open_flags* noundef nonnull %op) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.filename* @getname(i8* noundef %filename) #15
  %1 = bitcast %struct.filename* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #16
  br i1 %call2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %1) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.open_how, %struct.open_how* %how, i64 0, i32 0
  %2 = load i64, i64* %flags, align 8
  %conv6 = trunc i64 %2 to i32
  %call7 = call i32 @get_unused_fd_flags(i32 noundef %conv6) #15
  %cmp = icmp sgt i32 %call7, -1
  br i1 %cmp, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end5
  %call10 = call %struct.file* @do_filp_open(i32 noundef %dfd, %struct.filename* noundef %call1, %struct.open_flags* noundef nonnull %op) #15
  %3 = bitcast %struct.file* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %3) #16
  br i1 %call11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  call void @put_unused_fd(i32 noundef %call7) #15
  %call13 = call fastcc i64 @PTR_ERR(i8* noundef %3) #16
  %conv14 = trunc i64 %call13 to i32
  br label %if.end16

if.else:                                          ; preds = %if.then9
  call fastcc void @fsnotify_open(%struct.file* noundef %call10) #16
  call void @fd_install(i32 noundef %call7, %struct.file* noundef %call10) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else, %if.end5
  %fd.1 = phi i32 [ %call7, %if.end5 ], [ %conv14, %if.then12 ], [ %call7, %if.else ]
  call void @putname(%struct.filename* noundef %call1) #15
  %conv17 = sext i32 %fd.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then3, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %call4, %if.then3 ], [ %conv17, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_open(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_open(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_open(i64 noundef %filename, i64 noundef %flags, i64 noundef %mode) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %conv = trunc i64 %flags to i32
  %conv1 = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_open(i8* noundef %0, i32 noundef %conv, i16 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_openat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_openat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_openat(i64 noundef %dfd, i64 noundef %filename, i64 noundef %flags, i64 noundef %mode) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %flags to i32
  %conv2 = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_openat(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i16 noundef %conv2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_openat2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_openat2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_openat2(i64 noundef %dfd, i64 noundef %filename, i64 noundef %how, i64 noundef %usize) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %1 = inttoptr i64 %how to %struct.open_how*
  %call = call fastcc i64 @__do_sys_openat2(i32 noundef %conv, i8* noundef %0, %struct.open_how* noundef %1, i64 noundef %usize) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_creat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_creat(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_creat(i64 noundef %pathname, i64 noundef %mode) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %conv = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_creat(i8* noundef %0, i16 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filp_close(%struct.file* noundef %filp, i8* noundef %id) local_unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 6, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %flush = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 15
  %2 = load i32 (%struct.file*, i8*)*, i32 (%struct.file*, i8*)** %flush, align 8
  %tobool3.not = icmp eq i32 (%struct.file*, i8*)* %2, null
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %call7 = call i32 %2(%struct.file* noundef %filp, i8* noundef %id) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %retval1.0 = phi i32 [ %call7, %if.then4 ], [ 0, %if.end ]
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %3 = load i32, i32* %f_mode, align 4
  %and = and i32 %3, 16384
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then13, label %if.end14, !prof !11

if.then13:                                        ; preds = %if.end8
  call void @locks_remove_posix(%struct.file* noundef %filp, i8* noundef %id) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end8
  call void @fput(%struct.file* noundef %filp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end
  %retval.0 = phi i32 [ %retval1.0, %if.end14 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_remove_posix(%struct.file* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_close(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_close(i64 noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_close(i64 noundef %fd) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %call = call fastcc i64 @__do_sys_close(i32 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_close_range(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_close_range(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_close_range(i64 noundef %fd, i64 noundef %max_fd, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %max_fd to i32
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_close_range(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_vhangup(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %call = call i1 @capable(i32 noundef 26) #15
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call void @tty_vhangup_self() #15
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup_self() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @generic_file_open(%struct.inode* nocapture noundef readonly %inode, %struct.file* nocapture noundef readonly %filp) local_unnamed_addr #6 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 131072
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #16
  %cmp = icmp ugt i64 %call, 2147483647
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -75, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #6 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @nonseekable_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef %filp) local_unnamed_addr #10 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, -29
  store i32 %and, i32* %f_mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @stream_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef %filp) local_unnamed_addr #10 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, -2129949
  %or = or i32 %and, 2097152
  store i32 %or, i32* %f_mode, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #14, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #14, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.list_head*
  %cmp = icmp eq %struct.list_head* %1, %head
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp2 = icmp eq %struct.list_head* %2, %head
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(%struct.inode* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, i8* noundef, i32 noundef, %struct.path* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_truncate(i8* noundef %path, i64 noundef %length) unnamed_addr #0 {
entry:
  %call = call i64 @do_sys_truncate(i8* noundef %path, i64 noundef %length) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #4 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #16
  br i1 %call, label %do.body7, label %if.else, !prof !11

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !24
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #7 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #14, !srcloc !27
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !28
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #16
  br i1 %call, label %do.body3, label %if.else, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !30
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_ftruncate(i32 noundef %fd, i64 noundef %length) unnamed_addr #0 {
entry:
  %call = call i64 @do_sys_ftruncate(i32 noundef %fd, i64 noundef %length, i32 noundef 1) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_file(%struct.file* nocapture noundef readonly %file, i32 noundef %mask) unnamed_addr #7 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %1, i32 noundef %mask) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry, i32 noundef %mask) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #16
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fallocate(i32 noundef %fd, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call i32 @ksys_fallocate(i32 noundef %fd, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_faccessat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %mode) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @do_faccessat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %mode, i32 noundef 0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_faccessat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %mode, i32 noundef %flags) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %tobool.not = icmp ult i32 %mode, 8
  %and1 = and i32 %flags, -4865
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  %and5 = lshr i32 %flags, 8
  %and5.lobit = and i32 %and5, 1
  %and10 = shl nuw nsw i32 %flags, 2
  %1 = and i32 %and10, 16384
  %2 = or i32 %and5.lobit, %1
  %3 = xor i32 %2, 1
  %and14 = and i32 %flags, 512
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end4
  %call = call fastcc %struct.cred* @access_override_creds() #16
  %tobool17.not = icmp eq %struct.cred* %call, null
  br i1 %tobool17.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end4
  %old_cred.0 = phi %struct.cred* [ null, %if.end4 ], [ %call, %if.then16 ]
  %call21109 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %3, %struct.path* noundef nonnull %path) #16
  %tobool22.not110 = icmp eq i32 %call21109, 0
  br i1 %tobool22.not110, label %if.end24.lr.ph, label %out

if.end24.lr.ph:                                   ; preds = %if.end20
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %and26 = and i32 %mode, 1
  %tobool27.not = icmp eq i32 %and26, 0
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %or36 = or i32 %mode, 16
  %and39 = and i32 %mode, 2
  %tobool40.not = icmp eq i32 %and39, 0
  %4 = or i32 %3, 32
  br label %if.end24

retry:                                            ; preds = %out_path_release
  %call21 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %4, %struct.path* noundef nonnull %path) #16
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %out

if.end24:                                         ; preds = %if.end24.lr.ph, %retry
  %lookup_flags.2111 = phi i32 [ %3, %if.end24.lr.ph ], [ %4, %retry ]
  %5 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call25 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %5) #16
  br i1 %tobool27.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call25, i64 0, i32 0
  %6 = load i16, i16* %i_mode, align 8
  %7 = and i16 %6, -4096
  %cmp = icmp eq i16 %7, -32768
  br i1 %cmp, label %if.then30, label %if.end34

if.then30:                                        ; preds = %land.lhs.true
  %call31 = call i1 @path_noexec(%struct.path* noundef nonnull %path) #15
  br i1 %call31, label %out_path_release, label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true, %if.end24
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call35 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %8) #16
  %call37 = call i32 @inode_permission(%struct.user_namespace* noundef %call35, %struct.inode* noundef %call25, i32 noundef %or36) #15
  %tobool38.not = icmp ne i32 %call37, 0
  %brmerge = or i1 %tobool38.not, %tobool40.not
  br i1 %brmerge, label %out_path_release, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end34
  %i_mode42 = getelementptr inbounds %struct.inode, %struct.inode* %call25, i64 0, i32 0
  %9 = load i16, i16* %i_mode42, align 8
  %10 = and i16 %9, -4096
  switch i16 %10, label %if.end66 [
    i16 8192, label %out_path_release
    i16 24576, label %out_path_release
    i16 4096, label %out_path_release
    i16 -16384, label %out_path_release
  ]

if.end66:                                         ; preds = %lor.lhs.false41
  %11 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call68 = call i1 @__mnt_is_readonly(%struct.vfsmount* noundef %11) #15
  %spec.select108 = select i1 %call68, i32 -30, i32 0
  br label %out_path_release

out_path_release:                                 ; preds = %if.end34, %if.end66, %lor.lhs.false41, %lor.lhs.false41, %lor.lhs.false41, %lor.lhs.false41, %if.then30
  %res.0 = phi i32 [ -13, %if.then30 ], [ %call37, %if.end34 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false41 ], [ %spec.select108, %if.end66 ]
  call void @path_put(%struct.path* noundef nonnull %path) #15
  %conv71 = sext i32 %res.0 to i64
  %call72 = call fastcc i1 @retry_estale(i64 noundef %conv71, i32 noundef %lookup_flags.2111) #16
  br i1 %call72, label %retry, label %out

out:                                              ; preds = %retry, %out_path_release, %if.end20
  %res.1 = phi i32 [ %call21109, %if.end20 ], [ %res.0, %out_path_release ], [ %call21, %retry ]
  %tobool76.not = icmp eq %struct.cred* %old_cred.0, null
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %out
  call void @revert_creds(%struct.cred* noundef nonnull %old_cred.0) #15
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %out
  %conv79 = sext i32 %res.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %entry, %if.end78
  %retval.0 = phi i64 [ %conv79, %if.end78 ], [ -22, %entry ], [ -12, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @access_override_creds() unnamed_addr #0 {
entry:
  %call = call %struct.cred* @prepare_creds() #15
  %tobool.not = icmp eq %struct.cred* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 1, i32 0
  %1 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 7, i32 0
  %2 = load i32, i32* %0, align 4
  store i32 %2, i32* %1, align 4
  %3 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 2, i32 0
  %4 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 8, i32 0
  %5 = load i32, i32* %3, align 8
  store i32 %5, i32* %4, align 8
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !36
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 80
  %8 = load %struct.cred*, %struct.cred** %cred, align 8
  %securebits = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 9
  %9 = load i32, i32* %securebits, align 4
  %and = and i32 %9, 4
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end17

if.then4:                                         ; preds = %if.end
  %coerce.val.ii = zext i32 %2 to i64
  %call10 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 0) #16
  %cap_effective15 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 12
  br i1 %call10, label %if.else, label %do.body12

do.body12:                                        ; preds = %if.then4
  %10 = bitcast %struct.kernel_cap_struct* %cap_effective15 to i64*
  %11 = load i64, i64* bitcast (%struct.kernel_cap_struct* @__cap_empty_set to i64*), align 4
  store i64 %11, i64* %10, align 8
  br label %if.end17

if.else:                                          ; preds = %if.then4
  %cap_permitted = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 11
  %12 = bitcast %struct.kernel_cap_struct* %cap_permitted to i64*
  %13 = bitcast %struct.kernel_cap_struct* %cap_effective15 to i64*
  %14 = load i64, i64* %12, align 8
  store i64 %14, i64* %13, align 8
  br label %if.end17

if.end17:                                         ; preds = %do.body12, %if.else, %if.end
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 19
  %non_rcu = bitcast %union.anon.35* %15 to i32*
  store i32 1, i32* %non_rcu, align 8
  %call18 = call %struct.cred* @override_creds(%struct.cred* noundef nonnull %call) #15
  call fastcc void @put_cred(%struct.cred* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17
  %retval.0 = phi %struct.cred* [ %call18, %if.end17 ], [ null, %entry ]
  ret %struct.cred* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @path_noexec(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__mnt_is_readonly(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(%struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #16
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #16
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @override_creds(%struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #15
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !37
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_faccessat2(i32 noundef %dfd, i8* noundef %filename, i32 noundef %mode, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @do_faccessat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %mode, i32 noundef %flags) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_access(i8* noundef %filename, i32 noundef %mode) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @do_faccessat(i32 noundef -100, i8* noundef %filename, i32 noundef %mode, i32 noundef 0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_chdir(i8* noundef %filename) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  br label %retry

retry:                                            ; preds = %dput_and_out, %entry
  %lookup_flags.0 = phi i32 [ 3, %entry ], [ 35, %dput_and_out ]
  %call = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %filename, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %path) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %retry.out_crit_edge

retry.out_crit_edge:                              ; preds = %retry
  %.pre = sext i32 %call to i64
  br label %out

if.end:                                           ; preds = %retry
  %call1 = call fastcc i32 @path_permission(%struct.path* noundef nonnull %path) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %dput_and_out

if.end4:                                          ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !36
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call void @set_fs_pwd(%struct.fs_struct* noundef %3, %struct.path* noundef nonnull %path) #15
  br label %dput_and_out

dput_and_out:                                     ; preds = %if.end, %if.end4
  call void @path_put(%struct.path* noundef nonnull %path) #15
  %conv = sext i32 %call1 to i64
  %call6 = call fastcc i1 @retry_estale(i64 noundef %conv, i32 noundef %lookup_flags.0) #16
  br i1 %call6, label %retry, label %out

out:                                              ; preds = %dput_and_out, %retry.out_crit_edge
  %conv9.pre-phi = phi i64 [ %.pre, %retry.out_crit_edge ], [ %conv, %dput_and_out ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %conv9.pre-phi
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @path_permission(%struct.path* nocapture noundef readonly %path) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #16
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %1) #16
  %call2 = call i32 @inode_permission(%struct.user_namespace* noundef %call, %struct.inode* noundef %call1, i32 noundef 65) #15
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fchdir(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget_raw(i32 noundef %fd) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %dentry = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call2 = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %1) #16
  br i1 %call2, label %if.end4, label %out_putf

if.end4:                                          ; preds = %if.end
  %call6 = call fastcc i32 @file_permission(%struct.file* noundef nonnull %0) #16
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %out_putf

if.then8:                                         ; preds = %if.end4
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !36
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 83
  %4 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call void @set_fs_pwd(%struct.fs_struct* noundef %4, %struct.path* noundef %f_path) #15
  br label %out_putf

out_putf:                                         ; preds = %if.end4, %if.then8, %if.end
  %error.0 = phi i32 [ %call6, %if.end4 ], [ 0, %if.then8 ], [ -20, %if.end ]
  call fastcc void @fdput([2 x i64] %call) #16
  br label %out

out:                                              ; preds = %entry, %out_putf
  %error.1 = phi i32 [ %error.0, %out_putf ], [ -9, %entry ]
  %conv = sext i32 %error.1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget_raw(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget_raw(i32 noundef %fd) #15
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #16
  ret [2 x i64] %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_can_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #16
  %cmp = icmp eq i32 %call, 2097152
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @file_permission(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #16
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #16
  %call2 = call i32 @inode_permission(%struct.user_namespace* noundef %call, %struct.inode* noundef %call1, i32 noundef 65) #15
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget_raw(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_chroot(i8* noundef %filename) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  br label %retry

retry:                                            ; preds = %dput_and_out, %entry
  %lookup_flags.0 = phi i32 [ 3, %entry ], [ 35, %dput_and_out ]
  %call = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %filename, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %path) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %retry.out_crit_edge

retry.out_crit_edge:                              ; preds = %retry
  %.pre = sext i32 %call to i64
  br label %out

if.end:                                           ; preds = %retry
  %call1 = call fastcc i32 @path_permission(%struct.path* noundef nonnull %path) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %dput_and_out

if.end4:                                          ; preds = %if.end
  %call6 = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 18) #15
  br i1 %call6, label %if.end8, label %dput_and_out

if.end8:                                          ; preds = %if.end4
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !36
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call void @set_fs_root(%struct.fs_struct* noundef %3, %struct.path* noundef nonnull %path) #15
  br label %dput_and_out

dput_and_out:                                     ; preds = %if.end4, %if.end, %if.end8
  %error.0 = phi i32 [ %call1, %if.end ], [ 0, %if.end8 ], [ -1, %if.end4 ]
  call void @path_put(%struct.path* noundef nonnull %path) #15
  %conv = sext i32 %error.0 to i64
  %call14 = call fastcc i1 @retry_estale(i64 noundef %conv, i32 noundef %lookup_flags.0) #16
  br i1 %call14, label %retry, label %out

out:                                              ; preds = %dput_and_out, %retry.out_crit_edge
  %conv17.pre-phi = phi i64 [ %.pre, %retry.out_crit_edge ], [ %conv, %dput_and_out ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %conv17.pre-phi
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !38
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %tobool.not = icmp eq %struct.file_lock_context* %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #16
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @__break_lease(%struct.inode* noundef %inode, i32 noundef 1, i32 noundef 4) #15
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fchmod(i32 noundef %fd, i16 noundef %mode) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call2 = call i32 @vfs_fchmod(%struct.file* noundef nonnull %0, i16 noundef %mode) #16
  call fastcc void @fdput([2 x i64] %call) #16
  %phi.cast = sext i32 %call2 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i64 [ %phi.cast, %if.then ], [ -9, %entry ]
  ret i64 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fchmodat(i32 noundef %dfd, i8* noundef %filename, i16 noundef %mode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_fchmodat(i32 noundef %dfd, i8* noundef %filename, i16 noundef %mode) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_fchmodat(i32 noundef %dfd, i8* noundef %filename, i16 noundef %mode) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  br label %retry

retry:                                            ; preds = %if.then, %entry
  %lookup_flags.0 = phi i32 [ 1, %entry ], [ 33, %if.then ]
  %call = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %path) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %retry
  %call1 = call i32 @chmod_common(%struct.path* noundef nonnull %path, i16 noundef %mode) #16
  call void @path_put(%struct.path* noundef nonnull %path) #15
  %conv = sext i32 %call1 to i64
  %call2 = call fastcc i1 @retry_estale(i64 noundef %conv, i32 noundef %lookup_flags.0) #16
  br i1 %call2, label %retry, label %if.end4

if.end4:                                          ; preds = %if.then, %retry
  %error.0 = phi i32 [ %call, %retry ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_chmod(i8* noundef %filename, i16 noundef %mode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_fchmodat(i32 noundef -100, i8* noundef %filename, i16 noundef %mode) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fchownat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef %flag) unnamed_addr #0 {
entry:
  %call = call i32 @do_fchownat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef %flag) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_chown(i8* noundef %filename, i32 noundef %user, i32 noundef %group) unnamed_addr #0 {
entry:
  %call = call i32 @do_fchownat(i32 noundef -100, i8* noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef 0) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_lchown(i8* noundef %filename, i32 noundef %user, i32 noundef %group) unnamed_addr #0 {
entry:
  %call = call i32 @do_fchownat(i32 noundef -100, i8* noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef 256) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fchown(i32 noundef %fd, i32 noundef %user, i32 noundef %group) unnamed_addr #0 {
entry:
  %call = call i32 @ksys_fchown(i32 noundef %fd, i32 noundef %user, i32 noundef %group) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_sample_wb_err(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %wb_err = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 11
  %call = call i32 @errseq_sample(i32* noundef %wb_err) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @file_sample_sb_err(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 43
  %call = call i32 @errseq_sample(i32* noundef %s_wb_err) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_readcount_inc(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_readcount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 35
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_readcount) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @file_ra_state_init(%struct.file_ra_state* noundef, %struct.address_space* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_open(%struct.file* nocapture noundef readonly %file) unnamed_addr #7 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 32, i32 4128
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef %spec.select) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_open(i8* noundef %filename, i32 noundef %flags, i16 noundef %mode) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 131072
  %call = call i64 @do_sys_open(i32 noundef -100, i8* noundef %filename, i32 noundef %or, i16 noundef %mode) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_openat(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags, i16 noundef %mode) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 131072
  %call = call i64 @do_sys_open(i32 noundef %dfd, i8* noundef %filename, i32 noundef %or, i16 noundef %mode) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_openat2(i32 noundef %dfd, i8* noundef %filename, %struct.open_how* noundef %how, i64 noundef %usize) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.open_how, align 8
  %0 = bitcast %struct.open_how* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !8
  %cmp = icmp ult i64 %usize, 24
  br i1 %cmp, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.open_how* %how to i8*
  %cmp.i.not = icmp eq i64 %usize, 24
  br i1 %cmp.i.not, label %if.end19.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end
  %sub.i = add i64 %usize, -24
  %add.ptr10.i21 = getelementptr %struct.open_how, %struct.open_how* %how, i64 1
  %add.ptr10.i = bitcast %struct.open_how* %add.ptr10.i21 to i8*
  %call11.i = call i32 @check_zeroed_user(i8* noundef %add.ptr10.i, i64 noundef %sub.i) #15
  %cmp12.i = icmp slt i32 %call11.i, 1
  %tobool.not.i = icmp eq i32 %call11.i, 0
  %..i = select i1 %tobool.not.i, i32 -7, i32 %call11.i
  br i1 %cmp12.i, label %if.then6, label %if.end19.i

if.end19.i:                                       ; preds = %if.then9.i, %if.end
  %call2.i.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 24) #15
  %tobool21.not.i = icmp eq i64 %call2.i.i, 0
  br i1 %tobool21.not.i, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then9.i, %if.end19.i
  %retval.1.i.ph = phi i32 [ -14, %if.end19.i ], [ %..i, %if.then9.i ]
  %conv7 = sext i32 %retval.1.i.ph to i64
  br label %cleanup

if.end8:                                          ; preds = %if.end19.i
  %flags = getelementptr inbounds %struct.open_how, %struct.open_how* %tmp, i64 0, i32 0
  %2 = load i64, i64* %flags, align 8
  %and = and i64 %2, 2097152
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %or = or i64 %2, 131072
  store i64 %or, i64* %flags, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %call13 = call fastcc i64 @do_sys_openat2(i32 noundef %dfd, i8* noundef %filename, %struct.open_how* noundef nonnull %tmp) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then6
  %retval.0 = phi i64 [ %conv7, %if.then6 ], [ %call13, %if.end12 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #16
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !11

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #14, !srcloc !40
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #14, !srcloc !41
  call void asm sideeffect "hint #20", "~{memory}"() #14, !srcloc !42
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_creat(i8* noundef %pathname, i16 noundef %mode) unnamed_addr #0 {
entry:
  %call = call i64 @do_sys_open(i32 noundef -100, i8* noundef %pathname, i32 noundef 131649, i16 noundef %mode) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_close(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i32 @close_fd(i32 noundef %fd) #15
  %switch.tableidx = add i32 %call, 516
  %0 = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %1, 0
  %spec.select = select i1 %switch.lobit.not, i32 %call, i32 -4
  %retval1.0 = select i1 %0, i32 %spec.select, i32 %call
  %conv7 = sext i32 %retval1.0 to i64
  ret i64 %conv7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @close_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_close_range(i32 noundef %fd, i32 noundef %max_fd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i32 @__close_range(i32 noundef %fd, i32 noundef %max_fd, i32 noundef %flags) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__close_range(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i64 2152356826}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152445205}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = !{i64 2155882991}
!16 = !{i64 2155879298}
!17 = !{i64 2155880114}
!18 = !{i64 2155881460}
!19 = !{i64 2155884559}
!20 = !{i64 2148107649, i64 2148107682, i64 2148107734, i64 2148107793, i64 2148107827, i64 2148107883, i64 2148107912, i64 2148107939}
!21 = !{i64 2148804726}
!22 = !{i64 2148004300, i64 2148004816, i64 2148004846, i64 2148004873, i64 2148004907, i64 2148004937}
!23 = !{i64 2152295095}
!24 = !{i64 2152298518}
!25 = !{i64 2152299360}
!26 = !{i64 2152300546}
!27 = !{i64 2149182260, i64 2149182302, i64 2149182361, i64 2149182414}
!28 = !{i64 2149157370, i64 2149157417, i64 2149157423, i64 2149157460, i64 2149157478, i64 2149158405, i64 2149158453, i64 2149158501, i64 2149158564, i64 2149158613, i64 2149157556, i64 2149157581, i64 2149157607, i64 2149157613, i64 2149157650, i64 2149157656, i64 2149157706, i64 2149157752, i64 2149157785}
!29 = !{i64 2152313455}
!30 = !{i64 2152317316}
!31 = !{i64 2152318158}
!32 = !{i64 2152319412}
!33 = !{i64 2152323235}
!34 = !{i64 2152324077}
!35 = !{i64 2152325329}
!36 = !{i64 1397799}
!37 = !{i64 2148005152, i64 2148005800, i64 2148005830, i64 2148005862, i64 2148005896, i64 2148005932, i64 2148005957}
!38 = !{i64 2152445444}
!39 = !{i64 2147994579, i64 2147995095, i64 2147995125, i64 2147995152, i64 2147995186, i64 2147995216}
!40 = !{i64 4615535, i64 4615618, i64 4615842, i64 4616062, i64 4616085}
!41 = !{i64 4620237, i64 4620261}
!42 = !{i64 2152135076}
