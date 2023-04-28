; ModuleID = 'fs/proc/task_mmu.c'
source_filename = "fs/proc/task_mmu.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.20, i64, i32 }
%union.anon.20 = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.22 }
%union.anon.22 = type { i64 }
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
%struct.kqid = type { %union.anon.23, i32 }
%union.anon.23 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.24, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.24 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.kernel_siginfo = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.60, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.60 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.25, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.25 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.13, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.47 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.30, %union.anon.31, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.26, %union.anon.27, %union.anon.28, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.33, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.26 = type { %struct.hlist_node }
%union.anon.27 = type { %struct.rb_node }
%union.anon.28 = type { %struct.anon.32 }
%struct.anon.32 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.33 = type { %struct.__call_single_data }
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
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.12 = type { %struct.pte_t }
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
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
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
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5, [48 x i8] }
%struct.anon.5 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.70, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.82, %struct.list_head, %struct.list_head, %union.anon.83 }
%struct.lockref = type { %union.anon.80 }
%union.anon.80 = type { i64 }
%union.anon.82 = type { %struct.list_head }
%union.anon.83 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.73 = type { %struct.callback_head }
%union.anon.74 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.75, %struct.qspinlock }
%union.anon.75 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.21 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.21 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.16 }
%union.anon.16 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.17, %union.anon.18 }
%union.anon.17 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.18 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.77 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.77 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mm_walk_ops = type { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (i64, i64, i32, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)*, void (%struct.mm_walk*)* }
%struct.mm_walk = type { %struct.mm_walk_ops*, %struct.mm_struct*, %struct.pgd_t*, %struct.vm_area_struct*, i32, i8, i8* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.proc_maps_private = type { %struct.inode*, %struct.task_struct*, %struct.mm_struct*, %struct.vm_area_struct* }
%struct.mmu_notifier_range = type { i64, i64 }
%struct.clear_refs_private = type { i32 }
%struct.pagemapread = type { i32, i32, %struct.pagemap_entry_t*, i8 }
%struct.pagemap_entry_t = type { i64 }
%struct.proc_inode = type { %struct.pid*, i32, %union.proc_op, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.ctl_table*, %struct.hlist_node, %struct.proc_ns_operations*, %struct.inode }
%union.proc_op = type { i32 (%struct.dentry*, %struct.path*)* }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.84, %struct.dentry_operations*, %union.anon.85, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.84 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%union.anon.85 = type { %struct.seq_operations* }
%struct.mem_size_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8 }

@.str = private unnamed_addr constant [9 x i8] c"VmPeak:\09\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" kB\0AVmSize:\09\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" kB\0AVmLck:\09\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" kB\0AVmPin:\09\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" kB\0AVmHWM:\09\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" kB\0AVmRSS:\09\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" kB\0ARssAnon:\09\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" kB\0ARssFile:\09\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" kB\0ARssShmem:\09\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" kB\0AVmData:\09\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" kB\0AVmStk:\09\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" kB\0AVmExe:\09\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" kB\0AVmLib:\09\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" kB\0AVmPTE:\09\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" kB\0AVmSwap:\09\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" kB\0A\00", align 1
@proc_pid_maps_operations = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @pid_maps_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @proc_map_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_pid_smaps_operations = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @pid_smaps_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @proc_map_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_pid_smaps_rollup_operations = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @smaps_rollup_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @smaps_rollup_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_clear_refs_operations = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* @clear_refs_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_pagemap_operations = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @mem_lseek, i64 (%struct.file*, i8*, i64, i64*)* @pagemap_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @pagemap_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @pagemap_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_pid_maps_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @m_start, void (%struct.seq_file*, i8*)* @m_stop, i8* (%struct.seq_file*, i8*, i64*)* @m_next, i32 (%struct.seq_file*, i8*)* @show_map }, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"[heap]\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"[stack]\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c":\00", align 1
@proc_pid_smaps_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @m_start, void (%struct.seq_file*, i8*)* @m_stop, i8* (%struct.seq_file*, i8*, i64*)* @m_next, i32 (%struct.seq_file*, i8*)* @show_smap }, align 8
@.str.23 = private unnamed_addr constant [17 x i8] c"Size:           \00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c" kB\0AKernelPageSize: \00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c" kB\0AMMUPageSize:    \00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"THPeligible:    %d\0A\00", align 1
@smaps_walk_ops = internal constant %struct.mm_walk_ops { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* @smaps_pte_range, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, i32, %struct.mm_walk*)* null, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, void (%struct.mm_walk*)* null }, align 8
@smaps_shmem_walk_ops = internal constant %struct.mm_walk_ops { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* @smaps_pte_range, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, i32, %struct.mm_walk*)* @smaps_pte_hole, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, void (%struct.mm_walk*)* null }, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@shmem_aops = external dso_local constant %struct.address_space_operations, align 8
@.str.29 = private unnamed_addr constant [17 x i8] c"Rss:            \00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c" kB\0APss:            \00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c" kB\0APss_Anon:       \00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c" kB\0APss_File:       \00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c" kB\0APss_Shmem:      \00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c" kB\0AShared_Clean:   \00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c" kB\0AShared_Dirty:   \00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c" kB\0APrivate_Clean:  \00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c" kB\0APrivate_Dirty:  \00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c" kB\0AReferenced:     \00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c" kB\0AAnonymous:      \00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c" kB\0ALazyFree:       \00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c" kB\0AAnonHugePages:  \00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c" kB\0AShmemPmdMapped: \00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c" kB\0AFilePmdMapped:  \00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c" kB\0AShared_Hugetlb: \00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c" kB\0APrivate_Hugetlb: \00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c" kB\0ASwap:           \00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c" kB\0ASwapPss:        \00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c" kB\0ALocked:         \00", align 1
@show_smap_vma_flags.mnemonics = internal unnamed_addr constant [64 x [2 x i8]] [[2 x i8] c"rd", [2 x i8] c"wr", [2 x i8] c"ex", [2 x i8] c"sh", [2 x i8] c"mr", [2 x i8] c"mw", [2 x i8] c"me", [2 x i8] c"ms", [2 x i8] c"gd", [2 x i8] c"um", [2 x i8] c"pf", [2 x i8] c"??", [2 x i8] c"uw", [2 x i8] c"lo", [2 x i8] c"io", [2 x i8] c"sr", [2 x i8] c"rr", [2 x i8] c"dc", [2 x i8] c"de", [2 x i8] c"??", [2 x i8] c"ac", [2 x i8] c"nr", [2 x i8] c"ht", [2 x i8] c"sf", [2 x i8] c"ar", [2 x i8] c"wf", [2 x i8] c"dd", [2 x i8] c"??", [2 x i8] c"mm", [2 x i8] c"hg", [2 x i8] c"nh", [2 x i8] c"mg", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??", [2 x i8] c"??"], align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"VmFlags: \00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.50 = private unnamed_addr constant [10 x i8] c"[rollup]\0A\00", align 1
@clear_refs_walk_ops = internal constant %struct.mm_walk_ops { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* @clear_refs_pte_range, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, i32, %struct.mm_walk*)* null, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* @clear_refs_test_walk, i32 (i64, i64, %struct.mm_walk*)* null, void (%struct.mm_walk*)* null }, align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@pagemap_ops = internal constant %struct.mm_walk_ops { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* @pagemap_pmd_range, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, i32, %struct.mm_walk*)* @pagemap_pte_hole, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, void (%struct.mm_walk*)* null }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @task_mem(%struct.seq_file* noundef %m, %struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #9
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #9
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #9
  %total_vm3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  %0 = load i64, i64* %total_vm3, align 8
  %hiwater_vm4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 18
  %1 = load i64, i64* %hiwater_vm4, align 8
  %cmp = icmp ult i64 %0, %1
  %spec.select = select i1 %cmp, i64 %1, i64 %0
  %add = add i64 %call1, %call
  %add6 = add i64 %add, %call2
  %hiwater_rss7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  %2 = load i64, i64* %hiwater_rss7, align 8
  %cmp8 = icmp ult i64 %add6, %2
  %hiwater_rss.0 = select i1 %cmp8, i64 %2, i64 %add6
  %end_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 29
  %3 = load i64, i64* %end_code, align 8
  %add12 = add i64 %3, 4095
  %and = and i64 %add12, -4096
  %start_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 28
  %4 = load i64, i64* %start_code, align 8
  %and13 = and i64 %4, -4096
  %sub = sub i64 %and, %and13
  %exec_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 23
  %5 = load i64, i64* %exec_vm, align 8
  %shl = shl i64 %5, 12
  %cmp14 = icmp ult i64 %sub, %shl
  %cond = select i1 %cmp14, i64 %sub, i64 %shl
  %sub17 = sub i64 %shl, %cond
  %call18 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 2) #9
  %shl19 = shl i64 %spec.select, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef %shl19, i32 noundef 8) #10
  %shl20 = shl i64 %0, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 noundef %shl20, i32 noundef 8) #10
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 20
  %6 = load i64, i64* %locked_vm, align 8
  %shl21 = shl i64 %6, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %shl21, i32 noundef 8) #10
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 21, i32 0
  %7 = load volatile i64, i64* %counter.i, align 8
  %shl23 = shl i64 %7, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 noundef %shl23, i32 noundef 8) #10
  %shl24 = shl i64 %hiwater_rss.0, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 noundef %shl24, i32 noundef 8) #10
  %shl25 = shl i64 %add6, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 noundef %shl25, i32 noundef 8) #10
  %shl26 = shl i64 %call, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 noundef %shl26, i32 noundef 8) #10
  %shl27 = shl i64 %call1, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 noundef %shl27, i32 noundef 8) #10
  %shl28 = shl i64 %call2, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 noundef %shl28, i32 noundef 8) #10
  %data_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 22
  %8 = load i64, i64* %data_vm, align 8
  %shl29 = shl i64 %8, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 noundef %shl29, i32 noundef 8) #10
  %stack_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 24
  %9 = load i64, i64* %stack_vm, align 8
  %shl30 = shl i64 %9, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 noundef %shl30, i32 noundef 8) #10
  %shr = lshr exact i64 %cond, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 noundef %shr, i32 noundef 8) #10
  %shr31 = lshr exact i64 %sub17, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 noundef %shr31, i32 noundef 8) #10
  %call32 = call fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %mm) #9
  %shr33 = lshr i64 %call32, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 noundef %shr33, i32 noundef 8) #10
  %shl34 = shl i64 %call18, 2
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64 noundef %shl34, i32 noundef 8) #10
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #2 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull_width(%struct.seq_file* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %mm) unnamed_addr #2 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @task_vsize(%struct.mm_struct* nocapture noundef readonly %mm) local_unnamed_addr #4 {
entry:
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  %0 = load i64, i64* %total_vm, align 8
  %mul = shl i64 %0, 12
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @task_statm(%struct.mm_struct* noundef %mm, i64* nocapture noundef %shared, i64* nocapture noundef writeonly %text, i64* nocapture noundef writeonly %data, i64* nocapture noundef writeonly %resident) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #9
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #9
  %add = add i64 %call1, %call
  store i64 %add, i64* %shared, align 8
  %end_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 29
  %0 = load i64, i64* %end_code, align 8
  %add2 = add i64 %0, 4095
  %and = and i64 %add2, -4096
  %start_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 28
  %1 = load i64, i64* %start_code, align 8
  %and3 = and i64 %1, -4096
  %sub = sub i64 %and, %and3
  %shr = lshr exact i64 %sub, 12
  store i64 %shr, i64* %text, align 8
  %data_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 22
  %2 = load i64, i64* %data_vm, align 8
  %stack_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 24
  %3 = load i64, i64* %stack_vm, align 8
  %add4 = add i64 %3, %2
  store i64 %add4, i64* %data, align 8
  %4 = load i64, i64* %shared, align 8
  %call5 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #9
  %add6 = add i64 %call5, %4
  store i64 %add6, i64* %resident, align 8
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  %5 = load i64, i64* %total_vm, align 8
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pid_maps_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call fastcc i32 @do_maps_open(%struct.inode* noundef %inode, %struct.file* noundef %file, %struct.seq_operations* noundef nonnull @proc_pid_maps_op) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_map_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 11
  %2 = bitcast i8** %private to %struct.proc_maps_private**
  %3 = load %struct.proc_maps_private*, %struct.proc_maps_private** %2, align 8
  %mm = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %3, i64 0, i32 2
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool.not = icmp eq %struct.mm_struct* %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mmdrop(%struct.mm_struct* noundef nonnull %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @seq_release_private(%struct.inode* noundef %inode, %struct.file* noundef %file) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pid_smaps_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call fastcc i32 @do_maps_open(%struct.inode* noundef %inode, %struct.file* noundef %file, %struct.seq_operations* noundef nonnull @proc_pid_smaps_op) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @smaps_rollup_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call fastcc i8* @kzalloc() #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef nonnull @show_smaps_rollup, i8* noundef nonnull %call) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out_free

if.end4:                                          ; preds = %if.end
  %inode5 = bitcast i8* %call to %struct.inode**
  store %struct.inode* %inode, %struct.inode** %inode5, align 8
  %call6 = call %struct.mm_struct* @proc_mem_open(%struct.inode* noundef %inode, i32 noundef 1) #10
  %mm = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %mm to %struct.mm_struct**
  store %struct.mm_struct* %call6, %struct.mm_struct** %0, align 8
  %1 = bitcast %struct.mm_struct* %call6 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %1) #9
  br i1 %call8, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end4
  %call11 = call fastcc i64 @PTR_ERR(i8* noundef %1) #9
  %conv = trunc i64 %call11 to i32
  %call12 = call i32 @single_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #10
  br label %out_free

out_free:                                         ; preds = %if.end, %if.then9
  %ret.0 = phi i32 [ %call1, %if.end ], [ %conv, %if.then9 ]
  call void @kfree(i8* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %out_free
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %entry ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @smaps_rollup_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 11
  %2 = load i8*, i8** %private, align 8
  %mm = getelementptr inbounds i8, i8* %2, i64 16
  %3 = bitcast i8* %mm to %struct.mm_struct**
  %4 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %tobool.not = icmp eq %struct.mm_struct* %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mmdrop(%struct.mm_struct* noundef nonnull %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @kfree(i8* noundef %2) #10
  %call = call i32 @single_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clear_refs_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %buffer = alloca [13 x i8], align 1
  %itype = alloca i32, align 4
  %range = alloca %struct.mmu_notifier_range, align 8
  %cp = alloca %struct.clear_refs_private, align 4
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %0, i8 0, i64 13, i1 false), !annotation !7
  %1 = bitcast i32* %itype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  store i32 0, i32* %itype, align 4, !annotation !7
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 13) #10
  %2 = icmp ult i64 %count, 12
  %spec.store.select = select i1 %2, i64 %count, i64 12
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %buf, i64 noundef %spec.store.select) #10
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  %call6 = call fastcc i8* @strstrip(i8* noundef nonnull %0) #9
  %call7 = call i32 @kstrtoint(i8* noundef %call6, i32 noundef 10, i32* noundef nonnull %itype) #10
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  %conv = sext i32 %call7 to i64
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %3 = load i32, i32* %itype, align 4
  %4 = add i32 %3, -6
  %5 = icmp ult i32 %4, -5
  br i1 %5, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end10
  %call17 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %call18 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call17) #9
  %tobool19.not = icmp eq %struct.task_struct* %call18, null
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call22 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef nonnull %call18) #10
  %tobool23.not = icmp eq %struct.mm_struct* %call22, null
  br i1 %tobool23.not, label %if.end49, label %if.then24

if.then24:                                        ; preds = %if.end21
  %6 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #11
  %7 = bitcast %struct.clear_refs_private* %cp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #11
  %type25 = getelementptr inbounds %struct.clear_refs_private, %struct.clear_refs_private* %cp, i64 0, i32 0
  store i32 %3, i32* %type25, align 4
  %call26 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef nonnull %call22) #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %out_mm

if.end29:                                         ; preds = %if.then24
  switch i32 %3, label %out_unlock.critedge [
    i32 5, label %if.then32
    i32 4, label %if.then36
  ]

if.then32:                                        ; preds = %if.end29
  call fastcc void @reset_mm_hiwater_rss(%struct.mm_struct* noundef nonnull %call22) #9
  br label %out_unlock

if.then36:                                        ; preds = %if.end29
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call22, i64 0, i32 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then36
  %vma.0.in = phi %struct.vm_area_struct** [ %mmap, %if.then36 ], [ %vm_next, %for.cond ]
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.0.in, align 8
  %tobool37.not = icmp eq %struct.vm_area_struct* %vma.0, null
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 2
  br i1 %tobool37.not, label %if.then47, label %for.cond

if.then47:                                        ; preds = %for.cond
  call fastcc void @inc_tlb_flush_pending(%struct.mm_struct* noundef nonnull %call22) #9
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range) #9
  %highest_vm_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call22, i64 0, i32 0, i32 7
  %8 = load i64, i64* %highest_vm_end, align 8
  %call44 = call i32 @walk_page_range(%struct.mm_struct* noundef nonnull %call22, i64 noundef 0, i64 noundef %8, %struct.mm_walk_ops* noundef nonnull @clear_refs_walk_ops, i8* noundef nonnull %7) #10
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef nonnull %call22) #9
  call fastcc void @dec_tlb_flush_pending(%struct.mm_struct* noundef nonnull %call22) #9
  br label %out_unlock

out_unlock.critedge:                              ; preds = %if.end29
  %highest_vm_end.c = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call22, i64 0, i32 0, i32 7
  %9 = load i64, i64* %highest_vm_end.c, align 8
  %call44.c = call i32 @walk_page_range(%struct.mm_struct* noundef nonnull %call22, i64 noundef 0, i64 noundef %9, %struct.mm_walk_ops* noundef nonnull @clear_refs_walk_ops, i8* noundef nonnull %7) #10
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.critedge, %if.then47, %if.then32
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef nonnull %call22) #9
  br label %out_mm

out_mm:                                           ; preds = %if.then24, %out_unlock
  %count.addr.0 = phi i64 [ %spec.store.select, %out_unlock ], [ -4, %if.then24 ]
  call void @mmput(%struct.mm_struct* noundef nonnull %call22) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #11
  br label %if.end49

if.end49:                                         ; preds = %out_mm, %if.end21
  %count.addr.1 = phi i64 [ %count.addr.0, %out_mm ], [ %spec.store.select, %if.end21 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10, %entry, %if.end49, %if.then9
  %retval.0 = phi i64 [ %conv, %if.then9 ], [ %count.addr.1, %if.end49 ], [ -14, %entry ], [ -22, %if.end10 ], [ -3, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mem_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @pagemap_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %ppos) #0 {
entry:
  %pm = alloca %struct.pagemapread, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.mm_struct**
  %1 = load %struct.mm_struct*, %struct.mm_struct** %0, align 8
  %2 = bitcast %struct.pagemapread* %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.mm_struct* %1, null
  br i1 %tobool.not, label %cleanup68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef nonnull %1) #9
  br i1 %call, label %if.end, label %cleanup68

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %ppos, align 8
  %4 = or i64 %3, %count
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %if.end6, label %out_mm

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq i64 %count, 0
  br i1 %tobool7.not, label %out_mm, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = call i1 @file_ns_capable(%struct.file* noundef %file, %struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 21) #10
  %show_pfn = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 3
  %frombool = zext i1 %call10 to i8
  store i8 %frombool, i8* %show_pfn, align 8
  %len = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 1
  store i32 512, i32* %len, align 4
  %call12 = call fastcc i8* @kmalloc_array() #9
  %buffer = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 2
  %7 = bitcast %struct.pagemap_entry_t** %buffer to i8**
  store i8* %call12, i8** %7, align 8
  %tobool14.not = icmp eq i8* %call12, null
  br i1 %tobool14.not, label %out_mm, label %if.end16

if.end16:                                         ; preds = %if.end9
  %8 = load i64, i64* %ppos, align 8
  %task_size = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 6
  %9 = load i64, i64* %task_size, align 8
  %cmp = icmp ult i64 %8, 36028797018963968
  br i1 %cmp, label %if.end20, label %while.end.thread

if.end20:                                         ; preds = %if.end16
  %10 = shl nuw i64 %8, 9
  %shl = shl i64 %8, 17
  %shl.i = ashr exact i64 %shl, 8
  %shr.i = and i64 %10, -4096
  %and = and i64 %shr.i, %shl.i
  %cmp27143 = icmp ugt i64 %9, %and
  br i1 %cmp27143, label %while.body.lr.ph, label %while.end.thread

while.body.lr.ph:                                 ; preds = %if.end20
  %pos = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %buf.addr.0147 = phi i8* [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup ]
  %count.addr.0146 = phi i64 [ %count, %while.body.lr.ph ], [ %sub, %cleanup ]
  %copied.0145 = phi i32 [ 0, %while.body.lr.ph ], [ %add55, %cleanup ]
  %start_vaddr.2144 = phi i64 [ %and, %while.body.lr.ph ], [ %end.0, %cleanup ]
  store i32 0, i32* %pos, align 8
  %add = add i64 %start_vaddr.2144, 2097152
  %and30 = and i64 %add, -2097152
  %cmp31 = icmp ult i64 %and30, %start_vaddr.2144
  %cmp34 = icmp ugt i64 %and30, %9
  %or.cond128 = select i1 %cmp31, i1 true, i1 %cmp34
  %end.0 = select i1 %or.cond128, i64 %9, i64 %and30
  %call38 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef nonnull %1) #9
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %out_free

if.end41:                                         ; preds = %while.body
  %call42 = call i32 @walk_page_range(%struct.mm_struct* noundef nonnull %1, i64 noundef %start_vaddr.2144, i64 noundef %end.0, %struct.mm_walk_ops* noundef nonnull @pagemap_ops, i8* noundef nonnull %2) #10
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %1) #9
  %11 = load i32, i32* %pos, align 8
  %conv44 = sext i32 %11 to i64
  %mul = shl nsw i64 %conv44, 3
  %cmp46 = icmp ult i64 %count.addr.0146, %mul
  %cond = select i1 %cmp46, i64 %count.addr.0146, i64 %mul
  %sext = shl i64 %cond, 32
  %conv50 = ashr exact i64 %sext, 32
  %cmp11.i.i = icmp ugt i64 %sext, 9223372032559808512
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !8

copy_to_user.exit.thread:                         ; preds = %if.end41
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %out_free

copy_to_user.exit:                                ; preds = %if.end41
  %12 = load i8*, i8** %7, align 8
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf.addr.0147, i8* noundef %12, i64 noundef %conv50) #10
  %tobool52.not = icmp eq i64 %call2.i, 0
  br i1 %tobool52.not, label %cleanup, label %out_free

cleanup:                                          ; preds = %copy_to_user.exit
  %conv48 = trunc i64 %cond to i32
  %add55 = add i32 %copied.0145, %conv48
  %add.ptr = getelementptr i8, i8* %buf.addr.0147, i64 %conv50
  %sub = sub i64 %count.addr.0146, %conv50
  %tobool26 = icmp ne i64 %sub, 0
  %cmp27 = icmp ult i64 %end.0, %9
  %13 = select i1 %tobool26, i1 %cmp27, i1 false
  br i1 %13, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup
  %.pre = load i64, i64* %ppos, align 8
  %conv58 = sext i32 %add55 to i64
  %add59 = add i64 %.pre, %conv58
  store i64 %add59, i64* %ppos, align 8
  %14 = icmp ult i32 %call42, 2
  br i1 %14, label %while.end.thread, label %out_free

while.end.thread:                                 ; preds = %if.end16, %if.end20, %while.end
  %copied.0.lcssa156 = phi i32 [ %add55, %while.end ], [ 0, %if.end20 ], [ 0, %if.end16 ]
  br label %out_free

out_free:                                         ; preds = %copy_to_user.exit, %while.body, %while.end.thread, %while.end, %copy_to_user.exit.thread
  %ret.2 = phi i32 [ -14, %copy_to_user.exit.thread ], [ %copied.0.lcssa156, %while.end.thread ], [ %call42, %while.end ], [ %call38, %while.body ], [ -14, %copy_to_user.exit ]
  %15 = load i8*, i8** %7, align 8
  call void @kfree(i8* noundef %15) #10
  br label %out_mm

out_mm:                                           ; preds = %if.end9, %if.end6, %if.end, %out_free
  %ret.3 = phi i32 [ -22, %if.end ], [ %ret.2, %out_free ], [ -12, %if.end9 ], [ 0, %if.end6 ]
  call void @mmput(%struct.mm_struct* noundef nonnull %1) #10
  br label %cleanup68

cleanup68:                                        ; preds = %out_mm, %lor.lhs.false, %entry
  %ret.4 = phi i32 [ %ret.3, %out_mm ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %conv67 = sext i32 %ret.4 to i64
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #11
  ret i64 %conv67
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pagemap_open(%struct.inode* noundef %inode, %struct.file* nocapture noundef writeonly %file) #0 {
entry:
  %call = call %struct.mm_struct* @proc_mem_open(%struct.inode* noundef %inode, i32 noundef 1) #10
  %0 = bitcast %struct.mm_struct* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #9
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.mm_struct**
  store %struct.mm_struct* %call, %struct.mm_struct** %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pagemap_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.mm_struct**
  %1 = load %struct.mm_struct*, %struct.mm_struct** %0, align 8
  %tobool.not = icmp eq %struct.mm_struct* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mmdrop(%struct.mm_struct* noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_maps_open(%struct.inode* noundef %inode, %struct.file* noundef %file, %struct.seq_operations* noundef %ops) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @proc_maps_open(%struct.inode* noundef %inode, %struct.file* noundef %file, %struct.seq_operations* noundef %ops) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_maps_open(%struct.inode* noundef %inode, %struct.file* noundef %file, %struct.seq_operations* noundef %ops) unnamed_addr #0 {
entry:
  %call = call i8* @__seq_open_private(%struct.file* noundef %file, %struct.seq_operations* noundef %ops, i32 noundef 32) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %inode1 = bitcast i8* %call to %struct.inode**
  store %struct.inode* %inode, %struct.inode** %inode1, align 8
  %call2 = call %struct.mm_struct* @proc_mem_open(%struct.inode* noundef %inode, i32 noundef 1) #10
  %mm = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %mm to %struct.mm_struct**
  store %struct.mm_struct* %call2, %struct.mm_struct** %0, align 8
  %1 = bitcast %struct.mm_struct* %call2 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %1) #9
  br i1 %call4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  %call7 = call fastcc i64 @PTR_ERR(i8* noundef %1) #9
  %conv = trunc i64 %call7 to i32
  %call8 = call i32 @seq_release_private(%struct.inode* noundef %inode, %struct.file* noundef %file) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then5
  %retval.0 = phi i32 [ %conv, %if.then5 ], [ -12, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__seq_open_private(%struct.file* noundef, %struct.seq_operations* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @proc_mem_open(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @m_start(%struct.seq_file* nocapture noundef readonly %m, i64* nocapture noundef readonly %ppos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_maps_private**
  %1 = load %struct.proc_maps_private*, %struct.proc_maps_private** %0, align 8
  %2 = load i64, i64* %ppos, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %inode = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 0
  %3 = load %struct.inode*, %struct.inode** %inode, align 8
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %3) #9
  %task = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 1
  store %struct.task_struct* %call, %struct.task_struct** %task, align 8
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -3) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mm5 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 2
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm5, align 8
  %tobool6.not = icmp eq %struct.mm_struct* %4, null
  br i1 %tobool6.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %call7 = call fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef nonnull %4) #9
  br i1 %call7, label %if.end11, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load %struct.task_struct*, %struct.task_struct** %task, align 8
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end4
  %5 = phi %struct.task_struct* [ %.pre, %lor.lhs.false.if.then8_crit_edge ], [ %call, %if.end4 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef %5) #9
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef nonnull %4) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @mmput(%struct.mm_struct* noundef nonnull %4) #10
  %6 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef %6) #9
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef -4) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %tail_vma = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 3
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %tail_vma, align 8
  %call20 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef nonnull %4, i64 noundef %2) #10
  %tobool21.not = icmp eq %struct.vm_area_struct* %call20, null
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  %7 = bitcast %struct.vm_area_struct* %call20 to i8*
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %8 = bitcast %struct.vm_area_struct** %tail_vma to i8**
  %9 = load i8*, i8** %8, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end23, %if.then22, %if.then14, %if.then8, %if.then2
  %retval.0 = phi i8* [ %call17, %if.then14 ], [ %7, %if.then22 ], [ %9, %if.end23 ], [ null, %if.then8 ], [ %call3, %if.then2 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @m_stop(%struct.seq_file* nocapture noundef readonly %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_maps_private**
  %1 = load %struct.proc_maps_private*, %struct.proc_maps_private** %0, align 8
  %mm1 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 2
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %task = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 1
  %3 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool.not = icmp eq %struct.task_struct* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #9
  call void @mmput(%struct.mm_struct* noundef %2) #10
  %4 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef %4) #9
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i8* @m_next(%struct.seq_file* nocapture noundef readonly %m, i8* noundef readonly %v, i64* nocapture noundef writeonly %ppos) #6 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_maps_private**
  %1 = load %struct.proc_maps_private*, %struct.proc_maps_private** %0, align 8
  %2 = bitcast i8* %v to %struct.vm_area_struct*
  %tail_vma = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 3
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %tail_vma, align 8
  %cmp = icmp eq %struct.vm_area_struct* %3, %2
  br i1 %cmp, label %cond.end, label %if.end5

if.end5:                                          ; preds = %entry
  %vm_next = getelementptr inbounds i8, i8* %v, i64 16
  %4 = bitcast i8* %vm_next to %struct.vm_area_struct**
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %5, null
  %. = select i1 %tobool.not, %struct.vm_area_struct* %3, %struct.vm_area_struct* %5
  %tobool6.not = icmp eq %struct.vm_area_struct* %., null
  br i1 %tobool6.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end5
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %., i64 0, i32 0
  %6 = load i64, i64* %vm_start, align 8
  %phi.cast = bitcast %struct.vm_area_struct* %. to i8*
  br label %cond.end

cond.end:                                         ; preds = %entry, %if.end5, %cond.true
  %next.019 = phi i8* [ %phi.cast, %cond.true ], [ null, %if.end5 ], [ null, %entry ]
  %cond = phi i64 [ %6, %cond.true ], [ -1, %if.end5 ], [ -1, %entry ]
  store i64 %cond, i64* %ppos, align 8
  ret i8* %next.019
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_map(%struct.seq_file* noundef %m, i8* noundef %v) #0 {
entry:
  %0 = bitcast i8* %v to %struct.vm_area_struct*
  call fastcc void @show_map_vma(%struct.seq_file* noundef %m, %struct.vm_area_struct* noundef %0) #9
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %inode) #9
  %call1 = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %call, i32 noundef 0) #10
  ret %struct.task_struct* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_users = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %mm_users, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %mm_users to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %entry
  %c.0.i.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %atomic_inc_not_zero.exit, label %do.cond.i.i.i.i, !prof !8

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #10
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %atomic_inc_not_zero.exit, label %do.body.i.i.i.i, !prof !10

atomic_inc_not_zero.exit:                         ; preds = %do.body.i.i.i.i, %do.cond.i.i.i.i
  %2 = xor i1 %cmp.i.i.i.i, true
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #9
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %mmap_lock) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @get_pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @proc_pid(%struct.inode* noundef readonly %inode) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #9
  %pid = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 0
  %0 = load %struct.pid*, %struct.pid** %pid, align 8
  ret %struct.pid* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef readnone %inode) unnamed_addr #5 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 11
  %0 = bitcast i32* %add.ptr to %struct.proc_inode*
  ret %struct.proc_inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #11, !srcloc !11
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #9
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #9
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #10
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !10

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !13
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_map_vma(%struct.seq_file* noundef %m, %struct.vm_area_struct* noundef %vma) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %tobool.not = icmp eq %struct.file* %1, null
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %1) #9
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 1
  %4 = load i32, i32* %s_dev, align 16
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  %5 = load i64, i64* %i_ino, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %6 = load i64, i64* %vm_pgoff, align 8
  %shl = shl i64 %6, 12
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %7 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %8 = load i64, i64* %vm_end, align 8
  call fastcc void @show_vma_header_prefix(%struct.seq_file* noundef %m, i64 noundef %7, i64 noundef %8, i64 noundef %2, i64 noundef %shl, i32 noundef %4, i64 noundef %5) #9
  call void @seq_pad(%struct.seq_file* noundef %m, i8 noundef 32) #10
  %call4 = call i32 @seq_file_path(%struct.seq_file* noundef %m, %struct.file* noundef nonnull %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #10
  br label %if.end37

if.end5:                                          ; preds = %entry
  %vm_start81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %9 = load i64, i64* %vm_start81, align 8
  %vm_end82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %10 = load i64, i64* %vm_end82, align 8
  call fastcc void @show_vma_header_prefix(%struct.seq_file* noundef %m, i64 noundef %9, i64 noundef %10, i64 noundef %2, i64 noundef 0, i32 noundef 0, i64 noundef 0) #9
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %11 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool6.not = icmp eq %struct.vm_operations_struct* %11, null
  br i1 %tobool6.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %name8 = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %11, i64 0, i32 12
  %12 = load i8* (%struct.vm_area_struct*)*, i8* (%struct.vm_area_struct*)** %name8, align 8
  %tobool9.not = icmp eq i8* (%struct.vm_area_struct*)* %12, null
  br i1 %tobool9.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call13 = call i8* %12(%struct.vm_area_struct* noundef %vma) #10
  %tobool14.not = icmp eq i8* %call13, null
  br i1 %tobool14.not, label %if.end17, label %if.then36

if.end17:                                         ; preds = %if.then10, %land.lhs.true, %if.end5
  %call18 = call i8* @arch_vma_name(%struct.vm_area_struct* noundef %vma) #10
  %tobool19.not = icmp eq i8* %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.then36

if.then20:                                        ; preds = %if.end17
  %tobool21.not = icmp eq %struct.mm_struct* %0, null
  br i1 %tobool21.not, label %if.then36, label %if.end23

if.end23:                                         ; preds = %if.then20
  %13 = load i64, i64* %vm_start81, align 8
  %brk = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 33
  %14 = load i64, i64* %brk, align 8
  %cmp.not = icmp ugt i64 %13, %14
  br i1 %cmp.not, label %if.end29, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end23
  %15 = load i64, i64* %vm_end82, align 8
  %start_brk = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 32
  %16 = load i64, i64* %start_brk, align 8
  %cmp27.not = icmp ult i64 %15, %16
  br i1 %cmp27.not, label %if.end29, label %if.then36

if.end29:                                         ; preds = %land.lhs.true25, %if.end23
  %call30 = call fastcc i32 @is_stack(%struct.vm_area_struct* noundef %vma) #9
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.then10, %if.end17, %if.then20, %land.lhs.true25, %if.end29
  %name.0.ph = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), %if.end29 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), %land.lhs.true25 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %if.then20 ], [ %call18, %if.end17 ], [ %call13, %if.then10 ]
  call void @seq_pad(%struct.seq_file* noundef %m, i8 noundef 32) #10
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef nonnull %name.0.ph) #10
  br label %if.end37

if.end37:                                         ; preds = %if.end29, %if.then3, %if.then36
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #4 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_vma_header_prefix(%struct.seq_file* noundef %m, i64 noundef %start, i64 noundef %end, i64 noundef %flags, i64 noundef %pgoff, i32 noundef %dev, i64 noundef %ino) unnamed_addr #0 {
entry:
  call fastcc void @seq_setwidth(%struct.seq_file* noundef %m) #9
  call void @seq_put_hex_ll(%struct.seq_file* noundef %m, i8* noundef null, i64 noundef %start, i32 noundef 8) #10
  call void @seq_put_hex_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 noundef %end, i32 noundef 8) #10
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #10
  %and = and i64 %flags, 1
  %tobool.not = icmp eq i64 %and, 0
  %conv = select i1 %tobool.not, i8 45, i8 114
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %conv) #10
  %and1 = and i64 %flags, 2
  %tobool2.not = icmp eq i64 %and1, 0
  %conv4 = select i1 %tobool2.not, i8 45, i8 119
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %conv4) #10
  %and5 = and i64 %flags, 4
  %tobool6.not = icmp eq i64 %and5, 0
  %conv8 = select i1 %tobool6.not, i8 45, i8 120
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %conv8) #10
  %and9 = and i64 %flags, 128
  %tobool10.not = icmp eq i64 %and9, 0
  %conv12 = select i1 %tobool10.not, i8 112, i8 115
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %conv12) #10
  call void @seq_put_hex_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 noundef %pgoff, i32 noundef 8) #10
  %shr = lshr i32 %dev, 20
  %conv13 = zext i32 %shr to i64
  call void @seq_put_hex_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 noundef %conv13, i32 noundef 2) #10
  %and14 = and i32 %dev, 1048575
  %conv15 = zext i32 %and14 to i64
  call void @seq_put_hex_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 noundef %conv15, i32 noundef 2) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 noundef %ino) #10
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_file_path(%struct.seq_file* noundef, %struct.file* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @arch_vma_name(%struct.vm_area_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_stack(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #4 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %start_stack = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 34
  %2 = load i64, i64* %start_stack, align 8
  %cmp.not = icmp ugt i64 %0, %2
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %3 = load i64, i64* %vm_end, align 8
  %cmp3 = icmp uge i64 %3, %2
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @seq_setwidth(%struct.seq_file* nocapture noundef %m) unnamed_addr #6 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %add = add i64 %0, 72
  %pad_until = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 4
  store i64 %add, i64* %pad_until, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_hex_ll(%struct.seq_file* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #10
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_smap(%struct.seq_file* noundef %m, i8* noundef %v) #0 {
entry:
  %mss = alloca %struct.mem_size_stats, align 8
  %0 = bitcast i8* %v to %struct.vm_area_struct*
  %1 = bitcast %struct.mem_size_stats* %mss to i8*
  call void @llvm.lifetime.start.p0i8(i64 168, i8* nonnull %1) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(168) %1, i8 0, i64 168, i1 false), !annotation !7
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 168) #10
  call fastcc void @smap_gather_stats(%struct.vm_area_struct* noundef %0, %struct.mem_size_stats* noundef nonnull %mss, i64 noundef 0) #9
  call fastcc void @show_map_vma(%struct.seq_file* noundef %m, %struct.vm_area_struct* noundef %0) #9
  %vm_end = getelementptr inbounds i8, i8* %v, i64 8
  %2 = bitcast i8* %vm_end to i64*
  %3 = load i64, i64* %2, align 8
  %vm_start = bitcast i8* %v to i64*
  %4 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %3, %4
  %shr = lshr i64 %sub, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i64 noundef %shr, i32 noundef 8) #10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i64 noundef 4, i32 noundef 8) #10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i64 noundef 4, i32 noundef 8) #10
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #10
  call fastcc void @__show_smap(%struct.seq_file* noundef %m, %struct.mem_size_stats* noundef nonnull %mss, i1 noundef false) #9
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 noundef 0) #10
  call fastcc void @show_smap_vma_flags(%struct.seq_file* noundef %m, %struct.vm_area_struct* noundef %0) #9
  call void @llvm.lifetime.end.p0i8(i64 168, i8* nonnull %1) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smap_gather_stats(%struct.vm_area_struct* noundef %vma, %struct.mem_size_stats* noundef %mss, i64 noundef %start) unnamed_addr #0 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %cmp.not = icmp ugt i64 %0, %start
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %check_shmem_swap = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 20
  store i8 0, i8* %check_shmem_swap, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %1, null
  br i1 %tobool.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %call = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %2) #9
  br i1 %call, label %if.then2, label %if.end15

if.then2:                                         ; preds = %land.lhs.true
  %call3 = call i64 @shmem_swap_usage(%struct.vm_area_struct* noundef %vma) #10
  %tobool4.not = icmp eq i64 %start, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %if.then2
  %tobool6.not = icmp eq i64 %call3, 0
  br i1 %tobool6.not, label %if.end15.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %3 = load i64, i64* %vm_flags, align 8
  %4 = and i64 %3, 10
  %.not = icmp eq i64 %4, 2
  br i1 %.not, label %if.else, label %if.end15.thread

if.end15.thread:                                  ; preds = %land.lhs.true5, %lor.lhs.false
  %swap = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 11
  %5 = load i64, i64* %swap, align 8
  %add = add i64 %5, %call3
  store i64 %add, i64* %swap, align 8
  br label %if.then17

if.else:                                          ; preds = %lor.lhs.false, %if.then2
  store i8 1, i8* %check_shmem_swap, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %land.lhs.true, %if.end
  %ops.1 = phi %struct.mm_walk_ops* [ @smaps_walk_ops, %land.lhs.true ], [ @smaps_walk_ops, %if.end ], [ @smaps_shmem_walk_ops, %if.else ]
  %tobool16.not = icmp eq i64 %start, 0
  br i1 %tobool16.not, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end15.thread, %if.end15
  %ops.144 = phi %struct.mm_walk_ops* [ @smaps_walk_ops, %if.end15.thread ], [ %ops.1, %if.end15 ]
  %6 = bitcast %struct.mem_size_stats* %mss to i8*
  %call18 = call i32 @walk_page_vma(%struct.vm_area_struct* noundef %vma, %struct.mm_walk_ops* noundef nonnull %ops.144, i8* noundef %6) #10
  br label %cleanup

if.else19:                                        ; preds = %if.end15
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %7 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %8 = load i64, i64* %vm_end, align 8
  %9 = bitcast %struct.mem_size_stats* %mss to i8*
  %call21 = call i32 @walk_page_range(%struct.mm_struct* noundef %7, i64 noundef %start, i64 noundef %8, %struct.mm_walk_ops* noundef nonnull %ops.1, i8* noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.else19, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__show_smap(%struct.seq_file* noundef %m, %struct.mem_size_stats* nocapture noundef readonly %mss, i1 noundef %rollup_mode) unnamed_addr #0 {
entry:
  %resident = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 0
  %0 = load i64, i64* %resident, align 8
  %shr = lshr i64 %0, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i64 noundef %shr, i32 noundef 8) #10
  %pss = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 14
  %1 = load i64, i64* %pss, align 8
  %shr1 = lshr i64 %1, 22
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i64 noundef %shr1, i32 noundef 8) #10
  br i1 %rollup_mode, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pss_anon = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 15
  %2 = load i64, i64* %pss_anon, align 8
  %shr3 = lshr i64 %2, 22
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i64 noundef %shr3, i32 noundef 8) #10
  %pss_file = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 16
  %3 = load i64, i64* %pss_file, align 8
  %shr5 = lshr i64 %3, 22
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i64 noundef %shr5, i32 noundef 8) #10
  %pss_shmem = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 17
  %4 = load i64, i64* %pss_shmem, align 8
  %shr7 = lshr i64 %4, 22
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i64 noundef %shr7, i32 noundef 8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %shared_clean = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 1
  %5 = load i64, i64* %shared_clean, align 8
  %shr9 = lshr i64 %5, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i64 noundef %shr9, i32 noundef 8) #10
  %shared_dirty = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 2
  %6 = load i64, i64* %shared_dirty, align 8
  %shr10 = lshr i64 %6, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i64 noundef %shr10, i32 noundef 8) #10
  %private_clean = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 3
  %7 = load i64, i64* %private_clean, align 8
  %shr11 = lshr i64 %7, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0), i64 noundef %shr11, i32 noundef 8) #10
  %private_dirty = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 4
  %8 = load i64, i64* %private_dirty, align 8
  %shr12 = lshr i64 %8, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i64 noundef %shr12, i32 noundef 8) #10
  %referenced = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 5
  %9 = load i64, i64* %referenced, align 8
  %shr13 = lshr i64 %9, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i64 noundef %shr13, i32 noundef 8) #10
  %anonymous = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 6
  %10 = load i64, i64* %anonymous, align 8
  %shr14 = lshr i64 %10, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i64 noundef %shr14, i32 noundef 8) #10
  %lazyfree = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 7
  %11 = load i64, i64* %lazyfree, align 8
  %shr15 = lshr i64 %11, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i64 noundef %shr15, i32 noundef 8) #10
  %anonymous_thp = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 8
  %12 = load i64, i64* %anonymous_thp, align 8
  %shr16 = lshr i64 %12, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i64 noundef %shr16, i32 noundef 8) #10
  %shmem_thp = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 9
  %13 = load i64, i64* %shmem_thp, align 8
  %shr17 = lshr i64 %13, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i64 noundef %shr17, i32 noundef 8) #10
  %file_thp = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 10
  %14 = load i64, i64* %file_thp, align 8
  %shr18 = lshr i64 %14, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i64 noundef %shr18, i32 noundef 8) #10
  %shared_hugetlb = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 12
  %15 = load i64, i64* %shared_hugetlb, align 8
  %shr19 = lshr i64 %15, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0), i64 noundef %shr19, i32 noundef 8) #10
  %private_hugetlb = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 13
  %16 = load i64, i64* %private_hugetlb, align 8
  %shr20 = lshr i64 %16, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i64 noundef %shr20, i32 noundef 7) #10
  %swap = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 11
  %17 = load i64, i64* %swap, align 8
  %shr21 = lshr i64 %17, 10
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i64 noundef %shr21, i32 noundef 8) #10
  %swap_pss = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 19
  %18 = load i64, i64* %swap_pss, align 8
  %shr22 = lshr i64 %18, 22
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i64 noundef %shr22, i32 noundef 8) #10
  %pss_locked = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 18
  %19 = load i64, i64* %pss_locked, align 8
  %shr24 = lshr i64 %19, 22
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0), i64 noundef %shr24, i32 noundef 8) #10
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_smap_vma_flags(%struct.seq_file* noundef %m, %struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #0 {
entry:
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0)) #10
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.019 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i64, i64* %vm_flags, align 8
  %shl = shl nuw i64 1, %i.019
  %and = and i64 %0, %shl
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  %arrayidx1 = getelementptr [64 x [2 x i8]], [64 x [2 x i8]]* @show_smap_vma_flags.mnemonics, i64 0, i64 %i.019, i64 0
  %1 = load i8, i8* %arrayidx1, align 1
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %1) #10
  %arrayidx7 = getelementptr [64 x [2 x i8]], [64 x [2 x i8]]* @show_smap_vma_flags.mnemonics, i64 0, i64 %i.019, i64 1
  %2 = load i8, i8* %arrayidx7, align 1
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %2) #10
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %inc = add nuw nsw i64 %i.019, 1
  %exitcond.not = icmp eq i64 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @shmem_mapping(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #4 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %cmp = icmp eq %struct.address_space_operations* %0, @shmem_aops
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @shmem_swap_usage(%struct.vm_area_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_vma(%struct.vm_area_struct* noundef, %struct.mm_walk_ops* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(%struct.mm_struct* noundef, i64 noundef, i64 noundef, %struct.mm_walk_ops* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @smaps_pte_range(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* nocapture noundef readonly %walk) #0 {
entry:
  %call6 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #9
  %call7 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #9
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call6, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %cmp.not32 = icmp eq i64 %addr, %end
  br i1 %cmp.not32, label %do.body, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %addr.addr.034 = phi i64 [ %add, %for.body ], [ %addr, %entry ]
  %pte.033 = phi %struct.pte_t* [ %incdec.ptr, %for.body ], [ %call7, %entry ]
  call fastcc void @smaps_pte_entry(%struct.pte_t* noundef %pte.033, i64 noundef %addr.addr.034, %struct.mm_walk* noundef %walk) #9
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.033, i64 1
  %add = add i64 %addr.addr.034, 4096
  %cmp.not = icmp eq i64 %add, %end
  br i1 %cmp.not, label %do.body, label %for.body

do.body:                                          ; preds = %for.body, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @_cond_resched() #9
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* nocapture noundef readonly %pmd) unnamed_addr #4 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %1 = load i64, i64* %coerce.dive, align 8
  %and = lshr i64 %1, 12
  %shr2 = and i64 %and, 68719476735
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr2
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #9
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #4 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #9
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #9
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smaps_pte_entry(%struct.pte_t* nocapture noundef readonly %pte, i64 noundef %addr, %struct.mm_walk* nocapture noundef readonly %walk) unnamed_addr #0 {
entry:
  %private = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %0 = bitcast i8** %private to %struct.mem_size_stats**
  %1 = load %struct.mem_size_stats*, %struct.mem_size_stats** %0, align 8
  %vma1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 8
  %3 = load i64, i64* %vm_flags, align 8
  %and = and i64 %3, 8192
  %tobool = icmp ne i64 %and, 0
  %pte3 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i64 0, i32 0
  %4 = load i64, i64* %pte3, align 8
  %and4 = and i64 %4, 288230376151711745
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.end54

if.else:                                          ; preds = %entry
  %call7 = call fastcc i32 @is_swap_pte(i64 %4) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else34, label %if.then9

if.then9:                                         ; preds = %if.else
  %swap = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %1, i64 0, i32 11
  %5 = load i64, i64* %swap, align 8
  %add = add i64 %5, 4096
  store i64 %add, i64* %swap, align 8
  %swap_pss24 = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %1, i64 0, i32 19
  %6 = load i64, i64* %swap_pss24, align 8
  %add25 = add i64 %6, 16777216
  store i64 %add25, i64* %swap_pss24, align 8
  br label %cleanup

if.else34:                                        ; preds = %if.else
  %check_shmem_swap = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %1, i64 0, i32 20
  %7 = load i8, i8* %check_shmem_swap, align 8, !range !15
  %tobool35.not = icmp ne i8 %7, 0
  %tobool38.not = icmp eq i64 %4, 0
  %or.cond = select i1 %tobool35.not, i1 %tobool38.not, i1 false
  br i1 %or.cond, label %if.then44, label %cleanup, !prof !16

if.then44:                                        ; preds = %if.else34
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 14
  %8 = load %struct.file*, %struct.file** %vm_file, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %8, i64 0, i32 17
  %9 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i64 0, i32 1
  %call45 = call fastcc i64 @linear_page_index(%struct.vm_area_struct* noundef %2, i64 noundef %addr) #9
  %call46 = call i8* @xa_load(%struct.xarray* noundef %i_pages, i64 noundef %call45) #10
  %call47 = call fastcc i1 @xa_is_value(i8* noundef %call46) #9
  br i1 %call47, label %if.then48, label %cleanup

if.then48:                                        ; preds = %if.then44
  %swap49 = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %1, i64 0, i32 11
  %10 = load i64, i64* %swap49, align 8
  %add50 = add i64 %10, 4096
  store i64 %add50, i64* %swap49, align 8
  br label %cleanup

if.end54:                                         ; preds = %entry
  %call = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %2, i64 noundef %addr, i64 %4) #10
  %tobool55.not = icmp eq %struct.page* %call, null
  br i1 %tobool55.not, label %cleanup, label %if.end57

if.end57:                                         ; preds = %if.end54
  %11 = load i64, i64* %pte3, align 8
  %and59 = and i64 %11, 1024
  %tobool60 = icmp ne i64 %and59, 0
  %and66 = and i64 %11, 36028797018963968
  %tobool67.not = icmp eq i64 %and66, 0
  br i1 %tobool67.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end57
  %and69 = and i64 %11, 2251799813685248
  %tobool70.not = icmp eq i64 %and69, 0
  br i1 %tobool70.not, label %lor.end, label %land.rhs71

land.rhs71:                                       ; preds = %lor.rhs
  %and73 = and i64 %11, 128
  %tobool74.not = icmp eq i64 %and73, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs71, %if.end57
  %12 = phi i1 [ true, %if.end57 ], [ false, %lor.rhs ], [ %tobool74.not, %land.rhs71 ]
  call fastcc void @smaps_account(%struct.mem_size_stats* noundef %1, %struct.page* noundef nonnull %call, i1 noundef %tobool60, i1 noundef %12, i1 noundef %tobool) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.then9, %if.end54, %if.then44, %if.then48, %lor.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #5 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #9
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #5 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef, i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_swap_pte(i64 %pte.coerce) unnamed_addr #5 {
entry:
  %tobool.not = icmp ne i64 %pte.coerce, 0
  %and = and i64 %pte.coerce, 288230376151711745
  %tobool3.not = icmp eq i64 %and, 0
  %narrow = and i1 %tobool.not, %tobool3.not
  %0 = zext i1 %narrow to i32
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_to_swp_entry(i64 %pte.coerce) unnamed_addr #5 {
entry:
  %shr = lshr i64 %pte.coerce, 2
  %and = and i64 %shr, 63
  %shr6 = lshr i64 %pte.coerce, 8
  %and7 = and i64 %shr6, 1125899906842623
  %call8 = call fastcc i64 @swp_entry(i64 noundef %and, i64 noundef %and7) #9
  ret i64 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @linear_page_index(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address) unnamed_addr #4 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %address, %0
  %shr = lshr i64 %sub, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %1 = load i64, i64* %vm_pgoff, align 8
  %add = add i64 %shr, %1
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smaps_account(%struct.mem_size_stats* nocapture noundef %mss, %struct.page* noundef %page, i1 noundef %young, i1 noundef %dirty, i1 noundef %locked) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool6.not = icmp eq i64 %3, 0
  br i1 %tobool6.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %anonymous = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 6
  %4 = load i64, i64* %anonymous, align 8
  %add = add i64 %4, 4096
  store i64 %add, i64* %anonymous, align 8
  %call.i1 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %5 = inttoptr i64 %call.i1 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 524288
  %tobool8.not = icmp ne i64 %7, 0
  %brmerge = or i1 %tobool8.not, %dirty
  br i1 %brmerge, label %if.end15, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.then
  %call.i2 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %8 = inttoptr i64 %call.i2 to %struct.page*
  %flags.i3 = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  %9 = load volatile i64, i64* %flags.i3, align 8
  %10 = and i64 %9, 8
  %tobool12.not = icmp eq i64 %10, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true10
  %lazyfree = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 7
  %11 = load i64, i64* %lazyfree, align 8
  %add14 = add i64 %11, 4096
  store i64 %add14, i64* %lazyfree, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then, %land.lhs.true10, %if.then13, %entry
  %resident = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 0
  %12 = load i64, i64* %resident, align 8
  %add16 = add i64 %12, 4096
  store i64 %add16, i64* %resident, align 8
  br i1 %young, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %call.i5 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %13 = inttoptr i64 %call.i5 to %struct.page*
  %flags.i6 = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  %14 = load volatile i64, i64* %flags.i6, align 8
  %15 = and i64 %14, 2
  %tobool23.not = icmp eq i64 %15, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false, %if.end15
  %referenced = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 5
  %16 = load i64, i64* %referenced, align 8
  %add25 = add i64 %16, 4096
  store i64 %add25, i64* %referenced, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %lor.lhs.false
  %call27 = call fastcc i32 @page_count(%struct.page* noundef %page) #9
  %cmp = icmp eq i32 %call27, 1
  br i1 %cmp, label %if.then29, label %for.body

if.then29:                                        ; preds = %if.end26
  call fastcc void @smaps_page_accumulate(%struct.mem_size_stats* noundef %mss, %struct.page* noundef %page, i64 noundef 16777216, i1 noundef %dirty, i1 noundef %locked, i1 noundef true) #9
  br label %cleanup

for.body:                                         ; preds = %if.end26
  %call35 = call fastcc i32 @page_mapcount(%struct.page* noundef %page) #9
  %cmp36 = icmp sgt i32 %call35, 1
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.body
  %div9 = udiv i32 16777216, %call35
  %div.zext = zext i32 %div9 to i64
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.body
  %pss.0 = phi i64 [ %div.zext, %if.then38 ], [ 16777216, %for.body ]
  %cmp43 = icmp slt i32 %call35, 2
  call fastcc void @smaps_page_accumulate(%struct.mem_size_stats* noundef %mss, %struct.page* noundef %page, i64 noundef %pss.0, i1 noundef %dirty, i1 noundef %locked, i1 noundef %cmp43) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @swp_entry(i64 noundef %type, i64 noundef %offset) unnamed_addr #5 {
entry:
  %shl = shl i64 %type, 58
  %and = and i64 %offset, 288230376151711743
  %or = or i64 %and, %shl
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @swp_offset(i64 %entry.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %entry.coerce, 288230376151711743
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.13* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_count(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #9
  %0 = inttoptr i64 %call to %struct.page*
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 3, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @smaps_page_accumulate(%struct.mem_size_stats* nocapture noundef %mss, %struct.page* noundef %page, i64 noundef %pss, i1 noundef %dirty, i1 noundef %locked, i1 noundef %private) unnamed_addr #2 {
entry:
  %pss3 = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 14
  %0 = load i64, i64* %pss3, align 8
  %add = add i64 %0, %pss
  store i64 %add, i64* %pss3, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %1 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %3 = ptrtoint %struct.address_space* %2 to i64
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pss_anon = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 15
  br label %if.end11

if.else:                                          ; preds = %entry
  %call.i1 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %5 = inttoptr i64 %call.i1 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 524288
  %tobool6.not = icmp eq i64 %7, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  %pss_shmem = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 17
  br label %if.end11

if.else9:                                         ; preds = %if.else
  %pss_file = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 16
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else9, %if.then
  %pss_shmem.sink5 = phi i64* [ %pss_shmem, %if.then7 ], [ %pss_file, %if.else9 ], [ %pss_anon, %if.then ]
  %8 = load i64, i64* %pss_shmem.sink5, align 8
  %add8 = add i64 %8, %pss
  store i64 %add8, i64* %pss_shmem.sink5, align 8
  br i1 %locked, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %pss_locked = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 18
  %9 = load i64, i64* %pss_locked, align 8
  %add14 = add i64 %9, %pss
  store i64 %add14, i64* %pss_locked, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  br i1 %dirty, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %call.i2 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %10 = inttoptr i64 %call.i2 to %struct.page*
  %flags.i3 = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 0
  %11 = load volatile i64, i64* %flags.i3, align 8
  %12 = and i64 %11, 8
  %tobool18.not = icmp eq i64 %12, 0
  br i1 %tobool18.not, label %if.else26, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false, %if.end15
  br i1 %private, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.then19
  %private_dirty = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 4
  br label %if.end33

if.else23:                                        ; preds = %if.then19
  %shared_dirty = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 2
  br label %if.end33

if.else26:                                        ; preds = %lor.lhs.false
  br i1 %private, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else26
  %private_clean = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 3
  br label %if.end33

if.else30:                                        ; preds = %if.else26
  %shared_clean = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %mss, i64 0, i32 1
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.else30, %if.then21, %if.else23
  %private_clean.sink6 = phi i64* [ %private_clean, %if.then28 ], [ %shared_clean, %if.else30 ], [ %private_dirty, %if.then21 ], [ %shared_dirty, %if.else23 ]
  %13 = load i64, i64* %private_clean.sink6, align 8
  %add29 = add i64 %13, 4096
  store i64 %add29, i64* %private_clean.sink6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_mapcount(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.13* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry, %PageCompound.exit
  %call3 = call i32 @__page_mapcount(%struct.page* noundef %page) #10
  br label %return

if.end:                                           ; preds = %PageCompound.exit
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %add = add i32 %5, 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %add, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @smaps_pte_hole(i64 noundef %addr, i64 noundef %end, i32 noundef %depth, %struct.mm_walk* nocapture noundef readonly %walk) #0 {
entry:
  %private = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %0 = bitcast i8** %private to %struct.mem_size_stats**
  %1 = load %struct.mem_size_stats*, %struct.mem_size_stats** %0, align 8
  %vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 14
  %3 = load %struct.file*, %struct.file** %vm_file, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 17
  %4 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %call = call i64 @shmem_partial_swap_usage(%struct.address_space* noundef %4, i64 noundef %addr, i64 noundef %end) #10
  %swap = getelementptr inbounds %struct.mem_size_stats, %struct.mem_size_stats* %1, i64 0, i32 11
  %5 = load i64, i64* %swap, align 8
  %add = add i64 %5, %call
  store i64 %add, i64* %swap, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @shmem_partial_swap_usage(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 4197824) #10
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(%struct.file* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_smaps_rollup(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %mss = alloca %struct.mem_size_stats, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_maps_private**
  %1 = load %struct.proc_maps_private*, %struct.proc_maps_private** %0, align 8
  %2 = bitcast %struct.mem_size_stats* %mss to i8*
  call void @llvm.lifetime.start.p0i8(i64 168, i8* nonnull %2) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(168) %2, i8 0, i64 168, i1 false), !annotation !7
  %inode = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 0
  %3 = load %struct.inode*, %struct.inode** %inode, align 8
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %3) #9
  %task = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 1
  store %struct.task_struct* %call, %struct.task_struct** %task, align 8
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mm2 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %1, i64 0, i32 2
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm2, align 8
  %tobool3.not = icmp eq %struct.mm_struct* %4, null
  br i1 %tobool3.not, label %out_put_task, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = call fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef nonnull %4) #9
  br i1 %call4, label %if.end6, label %out_put_task

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 168) #10
  %call8 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef nonnull %4) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out_put_mm

if.end11:                                         ; preds = %if.end6
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm2, align 8
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i64 0, i32 0, i32 0
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool13.not83 = icmp eq %struct.vm_area_struct* %6, null
  br i1 %tobool13.not83, label %for.end, label %for.body

for.body:                                         ; preds = %if.end11, %for.cond.backedge
  %vma.084 = phi %struct.vm_area_struct* [ %vma.0.be, %for.cond.backedge ], [ %6, %if.end11 ]
  call fastcc void @smap_gather_stats(%struct.vm_area_struct* noundef nonnull %vma.084, %struct.mem_size_stats* noundef nonnull %mss, i64 noundef 0) #9
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.084, i64 0, i32 1
  %7 = load i64, i64* %vm_end, align 8
  %call14 = call fastcc i32 @mmap_lock_is_contended(%struct.mm_struct* noundef nonnull %4) #9
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end31, label %if.then16

if.then16:                                        ; preds = %for.body
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %4) #9
  %call17 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef nonnull %4) #9
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %out_put_mm

if.end20:                                         ; preds = %if.then16
  %sub = add i64 %7, -1
  %call21 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef nonnull %4, i64 noundef %sub) #10
  %tobool22.not = icmp eq %struct.vm_area_struct* %call21, null
  br i1 %tobool22.not, label %for.end.loopexit, label %if.end24

if.end24:                                         ; preds = %if.end20
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call21, i64 0, i32 0
  %8 = load i64, i64* %vm_start, align 8
  %cmp.not = icmp ult i64 %8, %7
  br i1 %cmp.not, label %if.end26, label %for.cond.backedge

if.end26:                                         ; preds = %if.end24
  %vm_end27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call21, i64 0, i32 1
  %9 = load i64, i64* %vm_end27, align 8
  %cmp28 = icmp ugt i64 %9, %7
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  call fastcc void @smap_gather_stats(%struct.vm_area_struct* noundef nonnull %call21, %struct.mem_size_stats* noundef nonnull %mss, i64 noundef %7) #9
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.then29, %for.body
  %vma.1 = phi %struct.vm_area_struct* [ %call21, %if.then29 ], [ %call21, %if.end26 ], [ %vma.084, %for.body ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.1, i64 0, i32 2
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end31, %if.end24
  %vma.0.be = phi %struct.vm_area_struct* [ %call21, %if.end24 ], [ %10, %if.end31 ]
  %tobool13.not = icmp eq %struct.vm_area_struct* %vma.0.be, null
  br i1 %tobool13.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %if.end20, %for.cond.backedge
  %.pre = load %struct.mm_struct*, %struct.mm_struct** %mm2, align 8
  %mmap33.phi.trans.insert = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %.pre, i64 0, i32 0, i32 0
  %.pre87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap33.phi.trans.insert, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end11
  %11 = phi %struct.vm_area_struct* [ null, %if.end11 ], [ %.pre87, %for.end.loopexit ]
  %last_vma_end.1 = phi i64 [ 0, %if.end11 ], [ %7, %for.end.loopexit ]
  %vm_start34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i64 0, i32 0
  %12 = load i64, i64* %vm_start34, align 8
  call fastcc void @show_vma_header_prefix(%struct.seq_file* noundef %m, i64 noundef %12, i64 noundef %last_vma_end.1, i64 noundef 0, i64 noundef 0, i32 noundef 0, i64 noundef 0) #9
  call void @seq_pad(%struct.seq_file* noundef %m, i8 noundef 32) #10
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0)) #10
  call fastcc void @__show_smap(%struct.seq_file* noundef %m, %struct.mem_size_stats* noundef nonnull %mss, i1 noundef true) #9
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %4) #9
  br label %out_put_mm

out_put_mm:                                       ; preds = %if.then16, %if.end6, %for.end
  %ret.3 = phi i32 [ %call8, %if.end6 ], [ 0, %for.end ], [ %call17, %if.then16 ]
  call void @mmput(%struct.mm_struct* noundef nonnull %4) #10
  br label %out_put_task

out_put_task:                                     ; preds = %if.end, %lor.lhs.false, %out_put_mm
  %ret.4 = phi i32 [ %ret.3, %out_put_mm ], [ -3, %lor.lhs.false ], [ -3, %if.end ]
  %13 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef %13) #9
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_put_task
  %retval.0 = phi i32 [ %ret.4, %out_put_task ], [ -3, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 168, i8* nonnull %2) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @mmap_lock_is_contended(%struct.mm_struct* noundef %mm) unnamed_addr #2 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call fastcc i32 @rwsem_is_contended(%struct.rw_semaphore* noundef %mmap_lock) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rwsem_is_contended(%struct.rw_semaphore* noundef %sem) unnamed_addr #2 {
entry:
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @strstrip(i8* noundef %str) unnamed_addr #0 {
entry:
  %call = call i8* @strim(i8* noundef %str) #10
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @reset_mm_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #9
  %hiwater_rss = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  store i64 %call, i64* %hiwater_rss, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_tlb_flush_pending(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %tlb_flush_pending = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %tlb_flush_pending) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* nocapture noundef writeonly %range) unnamed_addr #8 {
entry:
  %start1 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 0, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 -1, i64* %end2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !21
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %0, 48
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %shl) #11, !srcloc !22
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #9
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %shl, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #11, !srcloc !23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #11, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_tlb_flush_pending(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %tlb_flush_pending = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %tlb_flush_pending) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #9
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #9
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !10

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #11, !srcloc !25
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #11, !srcloc !26
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !27
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strim(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #9
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #9
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #9
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clear_refs_pte_range(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* nocapture noundef readonly %walk) #0 {
entry:
  %private = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %0 = bitcast i8** %private to %struct.clear_refs_private**
  %1 = load %struct.clear_refs_private*, %struct.clear_refs_private** %0, align 8
  %vma1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %call20 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #9
  %call21 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #9
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call20, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %cmp22.not90 = icmp eq i64 %addr, %end
  br i1 %cmp22.not90, label %do.body, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %type23 = getelementptr inbounds %struct.clear_refs_private, %struct.clear_refs_private* %1, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %addr.addr.093 = phi i64 [ %addr, %for.body.lr.ph ], [ %add, %for.inc ]
  %pte.091 = phi %struct.pte_t* [ %call21, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %ptent.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.091, i64 0, i32 0
  %ptent.sroa.0.0.copyload = load i64, i64* %ptent.sroa.0.0..sroa_idx, align 8
  %3 = load i32, i32* %type23, align 4
  %cmp24 = icmp eq i32 %3, 4
  %and28 = and i64 %ptent.sroa.0.0.copyload, 288230376151711745
  %tobool29.not = icmp eq i64 %and28, 0
  %or.cond = select i1 %cmp24, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %for.inc, label %if.end31

if.end31:                                         ; preds = %for.body
  %call33 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %2, i64 noundef %addr.addr.093, i64 %ptent.sroa.0.0.copyload) #10
  %tobool34.not = icmp eq %struct.page* %call33, null
  br i1 %tobool34.not, label %for.inc, label %if.end36

if.end36:                                         ; preds = %if.end31
  call fastcc void @ptep_test_and_clear_young(%struct.pte_t* noundef %pte.091) #9
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call33) #10
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags.i) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end31, %if.end36
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.091, i64 1
  %add = add i64 %addr.addr.093, 4096
  %cmp22.not = icmp eq i64 %add, %end
  br i1 %cmp22.not, label %do.body, label %for.body

do.body:                                          ; preds = %for.inc, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @_cond_resched() #9
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @clear_refs_test_walk(i64 noundef %start, i64 noundef %end, %struct.mm_walk* nocapture noundef readonly %walk) #4 {
entry:
  %vma1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %and = and i64 %1, 1024
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %2 = bitcast i8** %private to %struct.clear_refs_private**
  %3 = load %struct.clear_refs_private*, %struct.clear_refs_private** %2, align 8
  %type = getelementptr inbounds %struct.clear_refs_private, %struct.clear_refs_private* %3, i64 0, i32 0
  %4 = load i32, i32* %type, align 4
  switch i32 %4, label %if.end11 [
    i32 2, label %land.lhs.true
    i32 3, label %land.lhs.true7
  ]

land.lhs.true:                                    ; preds = %if.end
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %5 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool2.not = icmp eq %struct.file* %5, null
  br i1 %tobool2.not, label %if.end11, label %cleanup

land.lhs.true7:                                   ; preds = %if.end
  %vm_file8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %6 = load %struct.file*, %struct.file** %vm_file8, align 8
  %tobool9.not = icmp eq %struct.file* %6, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true, %land.lhs.true7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true7, %land.lhs.true, %entry, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 1, %entry ], [ 1, %land.lhs.true ], [ 1, %land.lhs.true7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptep_test_and_clear_young(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  call fastcc void @__ptep_test_and_clear_young(%struct.pte_t* noundef %ptep) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #11, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ptep_test_and_clear_young(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  %pte.sroa.0.0.sroa_cast2 = bitcast i64* %pte.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast2)
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pte.sroa.0.0.copyload, i64* %pte.sroa.0, align 8
  %0 = bitcast %struct.pte_t* %ptep to i8*
  br label %do.body1

do.body1:                                         ; preds = %do.body1, %entry
  %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21 = phi i64 [ %call14.i, %do.body1 ], [ %pte.sroa.0.0.copyload, %entry ]
  %call = call fastcc i64 @pte_mkold(i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21) #9
  store i64 %call, i64* %pte.sroa.0, align 8
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %0, i64 noundef %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21, i64 noundef %call) #10
  store i64 %call14.i, i64* %pte.sroa.0, align 8
  %cmp.not = icmp eq i64 %call14.i, %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21
  br i1 %cmp.not, label %do.end13, label %do.body1

do.end13:                                         ; preds = %do.body1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast2)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkold(i64 %pte.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.coerce) #9
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clear_pte_bit(i64 %pte.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %pte.coerce, -1025
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #11, !srcloc !30
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #2 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #10
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap() #10
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 2199023255552
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #2 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @file_ns_capable(%struct.file* noundef, %struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmalloc_array() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #10
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pagemap_pmd_range(%struct.pmd_t* nocapture noundef readonly %pmdp, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* nocapture noundef readonly %walk) #0 {
entry:
  %pme = alloca %struct.pagemap_entry_t, align 8
  %vma1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %private = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %1 = bitcast i8** %private to %struct.pagemapread**
  %2 = load %struct.pagemapread*, %struct.pagemapread** %1, align 8
  %call = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmdp) #9
  %call2 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmdp, i64 noundef %addr) #9
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %3 = bitcast %struct.pagemap_entry_t* %pme to i8*
  %cmp36 = icmp ult i64 %addr, %end
  br i1 %cmp36, label %for.body.lr.ph, label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %4 = getelementptr inbounds %struct.pagemap_entry_t, %struct.pagemap_entry_t* %pme, i64 0, i32 0, !annotation !7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %addr.addr.038 = phi i64 [ %addr, %for.body.lr.ph ], [ %add, %for.inc ]
  %pte.037 = phi %struct.pte_t* [ %call2, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.037, i64 0, i32 0
  %5 = load i64, i64* %coerce.dive, align 8
  %call4 = call fastcc i64 @pte_to_pagemap_entry(%struct.pagemapread* noundef %2, %struct.vm_area_struct* noundef %0, i64 noundef %addr.addr.038, i64 %5) #9
  store i64 %call4, i64* %4, align 8
  %call6 = call fastcc i32 @add_to_pagemap(%struct.pagemap_entry_t* noundef nonnull %pme, %struct.pagemapread* noundef %2) #9
  %tobool.not = icmp eq i32 %call6, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  br i1 %tobool.not, label %for.inc, label %do.body

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.037, i64 1
  %add = add i64 %addr.addr.038, 4096
  %cmp = icmp ult i64 %add, %end
  br i1 %cmp, label %for.body, label %do.body

do.body:                                          ; preds = %for.inc, %for.body, %entry
  %err.1 = phi i32 [ 0, %entry ], [ %call6, %for.body ], [ 0, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @_cond_resched() #9
  ret i32 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pagemap_pte_hole(i64 noundef %start, i64 noundef %end, i32 noundef %depth, %struct.mm_walk* nocapture noundef readonly %walk) #0 {
entry:
  %pme = alloca %struct.pagemap_entry_t, align 8
  %private = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %0 = bitcast i8** %private to %struct.pagemapread**
  %1 = load %struct.pagemapread*, %struct.pagemapread** %0, align 8
  %cmp88 = icmp ult i64 %start, %end
  br i1 %cmp88, label %while.body.lr.ph, label %cleanup35

while.body.lr.ph:                                 ; preds = %entry
  %mm = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 1
  %2 = bitcast %struct.pagemap_entry_t* %pme to i8*
  %3 = getelementptr inbounds %struct.pagemap_entry_t, %struct.pagemap_entry_t* %pme, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %addr.089 = phi i64 [ %start, %while.body.lr.ph ], [ %addr.2.lcssa, %cleanup ]
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %4, i64 noundef %addr.089) #10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  %call1 = call fastcc i64 @make_pme(i64 noundef 0, i64 noundef 0) #9
  store i64 %call1, i64* %3, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %5 = load i64, i64* %vm_start, align 8
  %cmp2 = icmp ugt i64 %5, %end
  %cond = select i1 %cmp2, i64 %end, i64 %5
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %hole_end.0 = phi i64 [ %cond, %if.then ], [ %end, %while.body ]
  %cmp381 = icmp ult i64 %addr.089, %hole_end.0
  br i1 %cmp381, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %addr.182 = phi i64 [ %add, %for.inc ], [ %addr.089, %if.end ]
  %call4 = call fastcc i32 @add_to_pagemap(%struct.pagemap_entry_t* noundef nonnull %pme, %struct.pagemapread* noundef %1) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %cleanup.thread

for.inc:                                          ; preds = %for.body
  %add = add i64 %addr.182, 4096
  %cmp3 = icmp ult i64 %add, %hole_end.0
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %addr.1.lcssa = phi i64 [ %addr.089, %if.end ], [ %add, %for.inc ]
  br i1 %tobool.not, label %cleanup.thread, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  %6 = load i64, i64* %vm_end, align 8
  %cmp1983 = icmp ugt i64 %6, %end
  %cond2384 = select i1 %cmp1983, i64 %end, i64 %6
  %cmp2485 = icmp ult i64 %addr.1.lcssa, %cond2384
  br i1 %cmp2485, label %for.body25, label %cleanup

for.body25:                                       ; preds = %for.cond17.preheader, %for.inc30
  %addr.286 = phi i64 [ %add31, %for.inc30 ], [ %addr.1.lcssa, %for.cond17.preheader ]
  %call26 = call fastcc i32 @add_to_pagemap(%struct.pagemap_entry_t* noundef nonnull %pme, %struct.pagemapread* noundef %1) #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.inc30, label %cleanup.thread

for.inc30:                                        ; preds = %for.body25
  %add31 = add i64 %addr.286, 4096
  %7 = load i64, i64* %vm_end, align 8
  %cmp19 = icmp ugt i64 %7, %end
  %cond23 = select i1 %cmp19, i64 %end, i64 %7
  %cmp24 = icmp ult i64 %add31, %cond23
  br i1 %cmp24, label %for.body25, label %cleanup

cleanup.thread:                                   ; preds = %for.end, %for.body, %for.body25
  %err.3.ph = phi i32 [ %call26, %for.body25 ], [ 1, %for.body ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  br label %cleanup35

cleanup:                                          ; preds = %for.inc30, %for.cond17.preheader
  %addr.2.lcssa = phi i64 [ %addr.1.lcssa, %for.cond17.preheader ], [ %add31, %for.inc30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  %cmp = icmp ult i64 %addr.2.lcssa, %end
  br i1 %cmp, label %while.body, label %cleanup35

cleanup35:                                        ; preds = %cleanup, %entry, %cleanup.thread
  %retval.0 = phi i32 [ %err.3.ph, %cleanup.thread ], [ 0, %entry ], [ 0, %cleanup ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pte_to_pagemap_entry(%struct.pagemapread* nocapture noundef readonly %pm, %struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %and = and i64 %pte.coerce, 288230376151711745
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end56

if.else:                                          ; preds = %entry
  %call20 = call fastcc i32 @is_swap_pte(i64 %pte.coerce) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end74, label %if.then22

if.then22:                                        ; preds = %if.else
  %call37 = call fastcc i64 @pte_to_swp_entry(i64 %pte.coerce) #9
  %show_pfn39 = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 3
  %0 = load i8, i8* %show_pfn39, align 8, !range !15
  %tobool40.not = icmp eq i8 %0, 0
  br i1 %tobool40.not, label %if.end74, label %if.then41

if.then41:                                        ; preds = %if.then22
  %call43 = call fastcc i32 @swp_type(i64 %call37) #9
  %conv = zext i32 %call43 to i64
  %call45 = call fastcc i64 @swp_offset(i64 %call37) #9
  %shl = shl i64 %call45, 5
  %or46 = or i64 %shl, %conv
  br label %if.end74

if.end56:                                         ; preds = %entry
  %show_pfn = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 3
  %1 = load i8, i8* %show_pfn, align 8, !range !15
  %tobool2.not = icmp eq i8 %1, 0
  %and5 = lshr i64 %pte.coerce, 12
  %shr = and i64 %and5, 68719476735
  %frame.0 = select i1 %tobool2.not, i64 0, i64 %shr
  %call = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pte.coerce) #10
  %tobool57.not = icmp eq %struct.page* %call, null
  br i1 %tobool57.not, label %if.end74, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.end56
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call) #10
  %2 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 1
  %3 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %4 = ptrtoint %struct.address_space* %3 to i64
  %5 = and i64 %4, 1
  %tobool59.not = icmp eq i64 %5, 0
  %spec.select = select i1 %tobool59.not, i64 -6917529027641081856, i64 -9223372036854775808
  %call65 = call fastcc i32 @page_mapcount(%struct.page* noundef nonnull %call) #9
  %cmp = icmp eq i32 %call65, 1
  %or68 = or i64 %spec.select, 72057594037927936
  %spec.select108 = select i1 %cmp, i64 %or68, i64 %spec.select
  br label %if.end74

if.end74:                                         ; preds = %if.then22, %if.then41, %if.else, %if.end56, %land.lhs.true64
  %frame.2114120 = phi i64 [ %frame.0, %land.lhs.true64 ], [ %frame.0, %if.end56 ], [ 0, %if.then22 ], [ %or46, %if.then41 ], [ 0, %if.else ]
  %flags.5 = phi i64 [ %spec.select108, %land.lhs.true64 ], [ -9223372036854775808, %if.end56 ], [ 4611686018427387904, %if.then22 ], [ 4611686018427387904, %if.then41 ], [ 0, %if.else ]
  %call75 = call fastcc i64 @make_pme(i64 noundef %frame.2114120, i64 noundef %flags.5) #9
  ret i64 %call75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @add_to_pagemap(%struct.pagemap_entry_t* nocapture noundef readonly %pme, %struct.pagemapread* nocapture noundef %pm) unnamed_addr #6 {
entry:
  %buffer = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 2
  %0 = load %struct.pagemap_entry_t*, %struct.pagemap_entry_t** %buffer, align 8
  %pos = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 0
  %1 = load i32, i32* %pos, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %pos, align 8
  %idxprom = sext i32 %1 to i64
  %2 = getelementptr %struct.pagemap_entry_t, %struct.pagemap_entry_t* %pme, i64 0, i32 0
  %3 = getelementptr %struct.pagemap_entry_t, %struct.pagemap_entry_t* %0, i64 %idxprom, i32 0
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %pos, align 8
  %len = getelementptr inbounds %struct.pagemapread, %struct.pagemapread* %pm, i64 0, i32 1
  %6 = load i32, i32* %len, align 4
  %cmp.not = icmp sge i32 %5, %6
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @swp_type(i64 %entry.coerce) unnamed_addr #5 {
entry:
  %shr = lshr i64 %entry.coerce, 58
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @make_pme(i64 noundef %frame, i64 noundef %flags) unnamed_addr #5 {
entry:
  %and = and i64 %frame, 36028797018963967
  %or = or i64 %and, %flags
  ret i64 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #9
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #9
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #10
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }

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
!9 = !{i64 2148913510}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148111297, i64 2148111330, i64 2148111382, i64 2148111441, i64 2148111475, i64 2148111531, i64 2148111560, i64 2148111587}
!12 = !{i64 2150267354}
!13 = !{i64 2148015973, i64 2148016647, i64 2148016677, i64 2148016709, i64 2148016743, i64 2148016779, i64 2148016804}
!14 = !{i64 2148008800, i64 2148009448, i64 2148009478, i64 2148009510, i64 2148009544, i64 2148009580, i64 2148009605}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 1, i32 4001}
!17 = !{i64 2149595154}
!18 = !{i64 2149387384}
!19 = !{i64 2149587873}
!20 = !{i64 2148098150, i64 2148098183, i64 2148098236, i64 2148098295, i64 2148098329, i64 2148098384, i64 2148098413, i64 2148098433}
!21 = !{i64 2151333184}
!22 = !{i64 2151334570, i64 2151334295, i64 2151334934, i64 2151334980, i64 2151334986, i64 2151336374, i64 2151335023, i64 2151335041, i64 2151336449, i64 2151336497, i64 2151336545, i64 2151336608, i64 2151336657, i64 2151335119, i64 2151335144, i64 2151335170, i64 2151335176, i64 2151336395, i64 2151335213, i64 2151335219, i64 2151335269, i64 2151335315, i64 2151335348}
!23 = !{i64 2151337416, i64 2151337109, i64 2151337780, i64 2151337826, i64 2151337832, i64 2151339220, i64 2151337869, i64 2151337887, i64 2151339295, i64 2151339343, i64 2151339391, i64 2151339454, i64 2151339503, i64 2151337965, i64 2151337990, i64 2151338016, i64 2151338022, i64 2151339241, i64 2151338059, i64 2151338065, i64 2151338115, i64 2151338161, i64 2151338194}
!24 = !{i64 2151339567}
!25 = !{i64 4632913, i64 4632996, i64 4633220, i64 4633440, i64 4633463}
!26 = !{i64 4637615, i64 4637639}
!27 = !{i64 2152152454}
!28 = !{i64 2147998227, i64 2147998743, i64 2147998773, i64 2147998800, i64 2147998834, i64 2147998864}
!29 = !{i64 2148077877, i64 2148078398, i64 2148078428, i64 2148078454, i64 2148078486, i64 2148078515}
!30 = !{i64 2148089169, i64 2148089202, i64 2148089253, i64 2148089309, i64 2148089342, i64 2148089396, i64 2148089425, i64 2148089445}
!31 = !{i64 2148007948, i64 2148008464, i64 2148008494, i64 2148008521, i64 2148008555, i64 2148008585}
