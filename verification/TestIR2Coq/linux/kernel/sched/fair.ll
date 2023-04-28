; ModuleID = 'kernel/sched/fair.c'
source_filename = "kernel/sched/fair.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i64, [40 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct*, i64, %struct.mm_struct*, i32, i64, i64, i64, i64, %struct.atomic_t, i32, %struct.root_domain*, %struct.sched_domain*, i64, i64, %struct.callback_head*, i8, i8, i64, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [24 x i8], %struct.sched_avg, %struct.sched_avg, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cpu_stop_work, [16 x i8] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i64, i64, %struct.rb_root_cached, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, [32 x i8], %struct.sched_avg, %struct.anon }
%struct.load_weight = type { i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.sched_statistics = type {}
%struct.anon = type { %struct.raw_spinlock, i32, i64, i64, i64, [32 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.5, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [2 x i64], [100 x %struct.list_head] }
%struct.anon.5 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.6, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.6 = type { i64, i64 }
%struct.mm_struct = type { %struct.anon.7, [0 x i64] }
%struct.anon.7 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.8, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.8 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.9, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.10, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.9 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.10 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.11, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.97, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.98, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.99, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.100, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.35, %struct.list_head, %struct.list_head, %union.anon.36 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.15, i8* }
%union.anon.15 = type { i64 }
%struct.lockref = type { %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
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
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.20, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.20 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.21, %struct.device* }
%union.anon.21 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.22, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.22 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.23, %union.anon.24, %union.anon.25, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.30, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.23 = type { %struct.hlist_node }
%union.anon.24 = type { %struct.rb_node }
%union.anon.25 = type { %struct.anon.29 }
%struct.anon.29 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.30 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.27, %union.anon.28, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
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
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.98 = type { %struct.callback_head }
%union.anon.99 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.37 }
%union.anon.37 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.38, %union.anon.41 }
%union.anon.38 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.41 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.43 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.39, %struct.qspinlock }
%union.anon.39 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.43 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.100 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.59 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.45 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.45 = type { %struct.callback_head }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.kernel_siginfo = type { %struct.anon.60 }
%struct.anon.60 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.64 }
%struct.anon.64 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32, [48 x i8] }
%struct.anon.32 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.33, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.14, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic_t = type { i32 }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i64, %struct.perf_domain* }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], %struct.cpudl_item* }
%struct.cpudl_item = type { i64, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, void (%struct.irq_work*)* }
%struct.cpumask = type { [4 x i64] }
%struct.cpupri = type { [101 x %struct.cpupri_vec], i32* }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.perf_domain = type { %struct.em_perf_domain*, %struct.perf_domain*, %struct.callback_head }
%struct.em_perf_domain = type { %struct.em_perf_state*, i32, i32, [0 x i64] }
%struct.em_perf_state = type { i64, i64, i64 }
%struct.sched_domain = type { %struct.sched_domain*, %struct.sched_domain*, %struct.sched_group*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, %union.anon.74, %struct.sched_domain_shared*, i32, [0 x i64] }
%struct.sched_group = type { %struct.sched_group*, %struct.atomic_t, i32, %struct.sched_group_capacity*, i32, [0 x i64] }
%struct.sched_group_capacity = type { %struct.atomic_t, i64, i64, i64, i64, i32, [0 x i64] }
%union.anon.74 = type { %struct.callback_head }
%struct.sched_domain_shared = type { %struct.atomic_t, %struct.atomic_t, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.cpu_stop_work = type { %struct.list_head, i32 (i8*)*, i64, i8*, %struct.cpu_stop_done* }
%struct.cpu_stop_done = type opaque
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.95, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.sched_class = type { void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, {}*, {}*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.net_device = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.80, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.80 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.82, %union.anon.85, %union.anon.86, [48 x i8], %union.anon.87, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.89, i32, i32, i32, i16, i16, %union.anon.91, %union.anon.92, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.84 }
%union.anon.84 = type { %struct.net_device* }
%union.anon.85 = type { %struct.sock* }
%union.anon.86 = type { i64 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i64, void (%struct.sk_buff*)* }
%union.anon.89 = type { i32 }
%union.anon.91 = type { i32 }
%union.anon.92 = type { i16 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.93 }
%struct.bpf_prog = type opaque
%union.anon.93 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.94, i32, [12 x i8] }
%union.anon.94 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.95 = type { %struct.callback_head }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.96, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.96 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.rq_flags = type { i64, %struct.pin_cookie }
%struct.pin_cookie = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.cfs_bandwidth = type {}
%struct.task_group = type opaque
%struct.softirq_action = type { {}* }
%struct.lb_env = type { %struct.sched_domain*, %struct.rq*, i32, i32, %struct.rq*, %struct.cpumask*, i32, i32, i64, %struct.cpumask*, i32, i32, i32, i32, i32, i32, %struct.list_head }
%struct.sd_lb_stats = type { %struct.sched_group*, %struct.sched_group*, i64, i64, i64, i32, %struct.sg_lb_stats, %struct.sg_lb_stats }
%struct.sg_lb_stats = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64 }

@sysctl_sched_latency = dso_local local_unnamed_addr global i32 6000000, align 4
@sysctl_sched_tunable_scaling = dso_local local_unnamed_addr global i32 1, align 4
@sysctl_sched_min_granularity = dso_local local_unnamed_addr global i32 750000, align 4
@sysctl_sched_wakeup_granularity = dso_local local_unnamed_addr global i32 1000000, align 4
@sysctl_sched_migration_cost = dso_local local_unnamed_addr constant i32 500000, align 4
@__setup_str_setup_sched_thermal_decay_shift = internal constant [27 x i8] c"sched_thermal_decay_shift=\00", section ".init.rodata", align 1
@__setup_setup_sched_thermal_decay_shift = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__setup_str_setup_sched_thermal_decay_shift, i32 0, i32 0), i32 (i8*)* @setup_sched_thermal_decay_shift, i32 0 }, section ".init.setup", align 8
@sched_prio_to_weight = external dso_local local_unnamed_addr constant [40 x i32], align 4
@sched_prio_to_wmult = external dso_local local_unnamed_addr constant [40 x i32], align 4
@max_load_balance_interval = internal unnamed_addr global i64 25, section ".data..read_mostly", align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@fair_sched_class = dso_local constant { void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.task_struct*)*, void (%struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* } { void (%struct.rq*, %struct.task_struct*, i32)* @enqueue_task_fair, void (%struct.rq*, %struct.task_struct*, i32)* @dequeue_task_fair, void (%struct.rq*)* @yield_task_fair, i1 (%struct.rq*, %struct.task_struct*)* @yield_to_task_fair, void (%struct.rq*, %struct.task_struct*, i32)* @check_preempt_wakeup, %struct.task_struct* (%struct.rq*)* @__pick_next_task_fair, void (%struct.rq*, %struct.task_struct*)* @put_prev_task_fair, void (%struct.rq*, %struct.task_struct*, i1)* @set_next_task_fair, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)* @balance_fair, i32 (%struct.task_struct*, i32, i32)* @select_task_rq_fair, %struct.task_struct* (%struct.rq*)* @pick_task_fair, void (%struct.task_struct*, i32)* @migrate_task_rq_fair, void (%struct.rq*, %struct.task_struct*)* null, void (%struct.task_struct*, %struct.cpumask*, i32)* @set_cpus_allowed_common, void (%struct.rq*)* @rq_online_fair, void (%struct.rq*)* @rq_offline_fair, %struct.rq* (%struct.task_struct*, %struct.rq*)* null, void (%struct.rq*, %struct.task_struct*, i32)* @task_tick_fair, void (%struct.task_struct*)* @task_fork_fair, void (%struct.task_struct*)* @task_dead_fair, void (%struct.rq*, %struct.task_struct*)* @switched_from_fair, void (%struct.rq*, %struct.task_struct*)* @switched_to_fair, void (%struct.rq*, %struct.task_struct*, i32)* @prio_changed_fair, i32 (%struct.rq*, %struct.task_struct*)* @get_rr_interval_fair, void (%struct.rq*)* @update_curr_fair }, section "__fair_sched_class", align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@sysctl_sched_child_runs_first = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sched_thermal_decay_shift = dso_local local_unnamed_addr global i32 0, align 4
@load_balance_mask = dso_local global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 8
@select_idle_mask = dso_local global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"\014Unable to set scheduler thermal pressure decay shift parameter\0A\00", align 1
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_scale = external dso_local global i64, section ".data..percpu", align 8
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@rt_sched_class = external dso_local constant %struct.sched_class, align 8
@dl_sched_class = external dso_local constant %struct.sched_class, align 8
@__cpu_active_mask = external dso_local global %struct.cpumask, align 8
@sysctl_sched_nr_migrate = external dso_local local_unnamed_addr constant i32, align 4
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@sd_asym_cpucapacity = external dso_local global %struct.sched_domain*, section ".data..percpu", align 8
@sd_llc_size = external dso_local global i32, section ".data..percpu", align 4
@sd_llc = external dso_local global %struct.sched_domain*, section ".data..percpu", align 8
@sched_numa_balancing = external dso_local global %struct.static_key_false, align 4
@balancing = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_setup_sched_thermal_decay_shift to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_sched_thermal_decay_shift(i8* noundef %str) #0 section ".init.text" {
entry:
  %_shift = alloca i32, align 4
  %0 = bitcast i32* %_shift to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  store i32 0, i32* %_shift, align 4
  %call = call i32 @kstrtoint(i8* noundef %str, i32 noundef 0, i32* noundef nonnull %_shift) #25
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0)) #26
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load i32, i32* %_shift, align 4
  %cmp = icmp sgt i32 %1, 0
  %cond = select i1 %cmp, i32 %1, i32 0
  %cmp4 = icmp ult i32 %cond, 10
  %cond8 = select i1 %cmp4, i32 %cond, i32 10
  store i32 %cond8, i32* @sched_thermal_decay_shift, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @arch_asym_cpu_priority(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %sub = sub i32 0, %cpu
  ret i32 %sub
}

; Function Attrs: cold mustprogress nofree noinline nounwind null_pointer_is_valid optsize willreturn
define dso_local void @sched_init_granularity() local_unnamed_addr #2 section ".init.text" {
entry:
  call fastcc void @update_sysctl() #27
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_sysctl() unnamed_addr #3 {
entry:
  %call = call fastcc i32 @get_update_sysctl_factor() #27
  %mul = mul i32 %call, 750000
  store i32 %mul, i32* @sysctl_sched_min_granularity, align 4
  %mul1 = mul i32 %call, 6000000
  store i32 %mul1, i32* @sysctl_sched_latency, align 4
  %mul2 = mul i32 %call, 1000000
  store i32 %mul2, i32* @sysctl_sched_wakeup_granularity, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* nocapture noundef readonly %cfs_rq) local_unnamed_addr #4 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 6, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -1, i32 1
  %1 = bitcast %struct.rb_node** %add.ptr to %struct.sched_entity*
  %retval.0 = select i1 %tobool.not, %struct.sched_entity* null, %struct.sched_entity* %1
  ret %struct.sched_entity* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_entity_runnable_average(%struct.sched_entity* noundef %se) local_unnamed_addr #1 {
entry:
  %avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11
  %0 = bitcast %struct.sched_avg* %avg to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 64) #25
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %1 = load i64, i64* %weight, align 64
  %tobool.not = icmp eq i64 %1, 0
  %shr = lshr i64 %1, 10
  %2 = icmp ugt i64 %shr, 2
  %cond = select i1 %2, i64 %shr, i64 2
  %__w.0 = select i1 %tobool.not, i64 0, i64 %cond
  %load_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  store i64 %__w.0, i64* %load_avg, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @post_init_entity_util_avg(%struct.task_struct* noundef %p) local_unnamed_addr #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se1) #27
  %call2 = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %call) #27
  %call3 = call fastcc i32 @cpu_of(%struct.rq* noundef %call2) #27
  %call4 = call fastcc i64 @topology_get_cpu_scale(i32 noundef %call3) #27
  %util_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 12, i32 7
  %0 = load i64, i64* %util_avg, align 16
  %sub = sub i64 %call4, %0
  %div = sdiv i64 %sub, 2
  %cmp = icmp sgt i64 %sub, 1
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  %util_avg23.phi.trans.insert = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 7
  %.pre = load i64, i64* %util_avg23.phi.trans.insert, align 16
  br label %if.end22

if.then:                                          ; preds = %entry
  %cmp8.not = icmp eq i64 %0, 0
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se1, i64 0, i32 0, i32 0
  %1 = load i64, i64* %weight, align 64
  %mul = mul i64 %1, %0
  %util_avg12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 7
  store i64 %mul, i64* %util_avg12, align 16
  %load_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 12, i32 5
  %2 = load i64, i64* %load_avg, align 32
  %add = add i64 %2, 1
  %div15 = udiv i64 %mul, %add
  %cmp17 = icmp ugt i64 %div15, %div
  %spec.store.select = select i1 %cmp17, i64 %div, i64 %div15
  store i64 %spec.store.select, i64* %util_avg12, align 16
  br label %if.end22

if.else:                                          ; preds = %if.then
  %util_avg20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 7
  store i64 %div, i64* %util_avg20, align 16
  br label %if.end22

if.end22:                                         ; preds = %entry.if.end22_crit_edge, %if.then9, %if.else
  %3 = phi i64 [ %.pre, %entry.if.end22_crit_edge ], [ %spec.store.select, %if.then9 ], [ %div, %if.else ]
  %runnable_avg = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 6
  store i64 %3, i64* %runnable_avg, align 8
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %4 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp24.not = icmp eq %struct.sched_class* %4, bitcast ({ void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.task_struct*)*, void (%struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* }* @fair_sched_class to %struct.sched_class*)
  br i1 %cmp24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call26 = call fastcc i64 @cfs_rq_clock_pelt(%struct.cfs_rq* noundef %call) #27
  %last_update_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 0
  store i64 %call26, i64* %last_update_time, align 64
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  call fastcc void @attach_entity_cfs_rq(%struct.sched_entity* noundef %se1) #27
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.task_struct* @task_of(%struct.sched_entity* noundef %se) #27
  %call2 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %call) #27
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 5
  ret %struct.cfs_rq* %cfs
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @cpu_scale to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @cpu_of(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef readnone %cfs_rq) unnamed_addr #8 {
entry:
  %add.ptr = getelementptr %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 -1, i32 13
  %0 = bitcast %struct.anon* %add.ptr to %struct.rq*
  ret %struct.rq* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cfs_rq_clock_pelt(%struct.cfs_rq* noundef readonly %cfs_rq) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  %call1 = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %call) #27
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_entity_cfs_rq(%struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) #27
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se, i32 noundef 0) #27
  call fastcc void @attach_entity_load_avg(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @reweight_task(%struct.task_struct* noundef %p, i32 noundef %prio) local_unnamed_addr #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se1) #27
  %idxprom = sext i32 %prio to i64
  %arrayidx = getelementptr [40 x i32], [40 x i32]* @sched_prio_to_weight, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %0, 10
  %conv = sext i32 %shl to i64
  call fastcc void @reweight_entity(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se1, i64 noundef %conv) #27
  %arrayidx4 = getelementptr [40 x i32], [40 x i32]* @sched_prio_to_wmult, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx4, align 4
  %inv_weight = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 0, i32 1
  store i32 %1, i32* %inv_weight, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @reweight_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i64 noundef %weight) unnamed_addr #1 {
entry:
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 3
  %0 = load i32, i32* %on_rq, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %curr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  %1 = load %struct.sched_entity*, %struct.sched_entity** %curr, align 64
  %cmp = icmp eq %struct.sched_entity* %1, %se
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call fastcc void @update_curr(%struct.cfs_rq* noundef %cfs_rq) #27
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %load = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 0
  %weight3 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %2 = load i64, i64* %weight3, align 64
  call fastcc void @update_load_sub(%struct.load_weight* noundef %load, i64 noundef %2) #27
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  call fastcc void @dequeue_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %load5 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0
  call fastcc void @update_load_set(%struct.load_weight* noundef %load5, i64 noundef %weight) #27
  %avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11
  %call = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #27
  %call6 = call fastcc i64 @se_weight(%struct.sched_entity* noundef %se) #27
  %load_sum = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %3 = load i64, i64* %load_sum, align 8
  %mul = mul i64 %3, %call6
  %call8 = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef %call) #27
  %load_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  store i64 %call8, i64* %load_avg, align 32
  call fastcc void @enqueue_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %4 = load i32, i32* %on_rq, align 8
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end4
  %load13 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 0
  %weight15 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %5 = load i64, i64* %weight15, align 64
  call fastcc void @update_load_add(%struct.load_weight* noundef %load13, i64 noundef %5) #27
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @init_cfs_bandwidth(%struct.cfs_bandwidth* nocapture noundef %cfs_b) local_unnamed_addr #8 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @pick_next_task_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef readnone %rf) local_unnamed_addr #1 {
entry:
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5
  %tobool12.not = icmp eq %struct.rq_flags* %rf, null
  br label %again

again:                                            ; preds = %if.end17, %entry
  %call = call fastcc i1 @sched_fair_runnable(%struct.rq* noundef %rq) #27
  br i1 %call, label %if.end, label %idle

if.end:                                           ; preds = %again
  %tobool.not = icmp eq %struct.task_struct* %prev, null
  br i1 %tobool.not, label %do.body, label %if.then1

if.then1:                                         ; preds = %if.end
  call fastcc void @put_prev_task(%struct.rq* noundef %rq, %struct.task_struct* noundef nonnull %prev) #27
  br label %do.body

do.body:                                          ; preds = %if.end, %if.then1
  %call3 = call fastcc %struct.sched_entity* @pick_next_entity(%struct.cfs_rq* noundef %cfs, %struct.sched_entity* noundef null) #27
  call fastcc void @set_next_entity(%struct.cfs_rq* noundef %cfs, %struct.sched_entity* noundef %call3) #27
  %call6 = call fastcc %struct.task_struct* @task_of(%struct.sched_entity* noundef %call3) #27
  %group_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call6, i64 0, i32 20, i32 2
  %cfs_tasks = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 34
  call fastcc void @list_move(%struct.list_head* noundef %group_node, %struct.list_head* noundef %cfs_tasks) #27
  call fastcc void @update_misfit_status(%struct.task_struct* noundef %call6, %struct.rq* noundef %rq) #27
  br label %cleanup

idle:                                             ; preds = %again
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %idle
  %call15 = call fastcc i32 @newidle_balance(%struct.rq* noundef %rq) #27
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end14
  %cmp18.not = icmp eq i32 %call15, 0
  br i1 %cmp18.not, label %if.end20, label %again

if.end20:                                         ; preds = %if.end17
  call fastcc void @update_idle_rq_clock_pelt(%struct.rq* noundef %rq) #27
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %idle, %if.end20, %do.body
  %retval.0 = phi %struct.task_struct* [ %call6, %do.body ], [ null, %if.end20 ], [ inttoptr (i64 -1 to %struct.task_struct*), %if.end14 ], [ null, %idle ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sched_fair_runnable(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 1
  %0 = load i32, i32* %nr_running, align 16
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_prev_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev) unnamed_addr #1 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp.not = icmp eq %struct.task_struct* %0, %prev
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/sched.h\22; .popsection; .long 14472b - 14470b; .short 2179; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %put_prev_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %1, i64 0, i32 6
  %2 = load void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)** %put_prev_task, align 8
  call void %2(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_entity* @pick_next_entity(%struct.cfs_rq* nocapture noundef readonly %cfs_rq, %struct.sched_entity* noundef %curr) unnamed_addr #1 {
entry:
  %call = call %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* noundef %cfs_rq) #27
  %tobool.not = icmp eq %struct.sched_entity* %call, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tobool1.not = icmp eq %struct.sched_entity* %curr, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = call fastcc i1 @entity_before(%struct.sched_entity* noundef nonnull %curr, %struct.sched_entity* noundef nonnull %call) #27
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %left.0 = phi %struct.sched_entity* [ %curr, %if.then ], [ %call, %land.lhs.true ], [ %call, %lor.lhs.false ]
  %skip = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 10
  %0 = load %struct.sched_entity*, %struct.sched_entity** %skip, align 8
  %tobool3.not = icmp ne %struct.sched_entity* %0, null
  %cmp = icmp eq %struct.sched_entity* %0, %left.0
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then6, label %if.end25

if.then6:                                         ; preds = %if.end
  %cmp7 = icmp eq %struct.sched_entity* %left.0, %curr
  br i1 %cmp7, label %if.end18, label %if.else

if.else:                                          ; preds = %if.then6
  %call10 = call fastcc %struct.sched_entity* @__pick_next_entity(%struct.sched_entity* noundef %left.0) #27
  %tobool11.not = icmp eq %struct.sched_entity* %call10, null
  br i1 %tobool11.not, label %if.end18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else
  %tobool13.not = icmp eq %struct.sched_entity* %curr, null
  br i1 %tobool13.not, label %land.lhs.true20, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %lor.lhs.false12
  %call15 = call fastcc i1 @entity_before(%struct.sched_entity* noundef nonnull %curr, %struct.sched_entity* noundef nonnull %call10) #27
  %spec.select81 = select i1 %call15, %struct.sched_entity* %curr, %struct.sched_entity* %call10
  br label %land.lhs.true20

if.end18:                                         ; preds = %if.else, %if.then6
  %second.0 = phi %struct.sched_entity* [ %call, %if.then6 ], [ %curr, %if.else ]
  %tobool19.not = icmp eq %struct.sched_entity* %second.0, null
  br i1 %tobool19.not, label %if.end25, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true14, %lor.lhs.false12, %if.end18
  %second.077 = phi %struct.sched_entity* [ %second.0, %if.end18 ], [ %call10, %lor.lhs.false12 ], [ %spec.select81, %land.lhs.true14 ]
  %call21 = call fastcc i32 @wakeup_preempt_entity(%struct.sched_entity* noundef nonnull %second.077, %struct.sched_entity* noundef %left.0) #27
  %cmp22 = icmp slt i32 %call21, 1
  %spec.select = select i1 %cmp22, %struct.sched_entity* %second.077, %struct.sched_entity* %left.0
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true20, %if.end18, %if.end
  %se.1 = phi %struct.sched_entity* [ %left.0, %if.end ], [ %left.0, %if.end18 ], [ %spec.select, %land.lhs.true20 ]
  %next = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 8
  %1 = load %struct.sched_entity*, %struct.sched_entity** %next, align 8
  %tobool26.not = icmp eq %struct.sched_entity* %1, null
  br i1 %tobool26.not, label %if.else33, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25
  %call29 = call fastcc i32 @wakeup_preempt_entity(%struct.sched_entity* noundef nonnull %1, %struct.sched_entity* noundef %left.0) #27
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %land.lhs.true27
  %2 = load %struct.sched_entity*, %struct.sched_entity** %next, align 8
  br label %if.end42

if.else33:                                        ; preds = %land.lhs.true27, %if.end25
  %last = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 9
  %3 = load %struct.sched_entity*, %struct.sched_entity** %last, align 16
  %tobool34.not = icmp eq %struct.sched_entity* %3, null
  br i1 %tobool34.not, label %if.end42, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.else33
  %call37 = call fastcc i32 @wakeup_preempt_entity(%struct.sched_entity* noundef nonnull %3, %struct.sched_entity* noundef %left.0) #27
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %land.lhs.true35
  %4 = load %struct.sched_entity*, %struct.sched_entity** %last, align 16
  br label %if.end42

if.end42:                                         ; preds = %if.else33, %land.lhs.true35, %if.then39, %if.then31
  %se.2 = phi %struct.sched_entity* [ %2, %if.then31 ], [ %4, %if.then39 ], [ %se.1, %land.lhs.true35 ], [ %se.1, %if.else33 ]
  ret %struct.sched_entity* %se.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_next_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  call fastcc void @clear_buddies(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 3
  %0 = load i32, i32* %on_rq, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__dequeue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef 1) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @update_stats_curr_start(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %curr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  store %struct.sched_entity* %se, %struct.sched_entity** %curr, align 64
  %sum_exec_runtime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 5
  %1 = load i64, i64* %sum_exec_runtime, align 8
  %prev_sum_exec_runtime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 7
  store i64 %1, i64* %prev_sum_exec_runtime, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.task_struct* @task_of(%struct.sched_entity* noundef readnone %se) unnamed_addr #8 {
entry:
  %add.ptr = getelementptr %struct.sched_entity, %struct.sched_entity* %se, i64 -1, i32 4
  %0 = bitcast i64* %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #27
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #27
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @update_misfit_status(%struct.task_struct* noundef %p, %struct.rq* nocapture noundef %rq) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #27
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq %struct.task_struct* %p, null
  br i1 %tobool4.not, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp5 = icmp eq i32 %0, 1
  br i1 %cmp5, label %return.sink.split, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #27
  %call10 = call fastcc i64 @capacity_of(i32 noundef %call9) #27
  %call11 = call fastcc i32 @task_fits_capacity(%struct.task_struct* noundef nonnull %p, i64 noundef %call10) #27
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %return.sink.split

if.end15:                                         ; preds = %if.end8
  %call16 = call fastcc i64 @task_h_load(%struct.task_struct* noundef nonnull %p) #27
  %cmp18 = icmp ugt i64 %call16, 1
  %cond = select i1 %cmp18, i64 %call16, i64 1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end8, %if.end, %lor.lhs.false, %if.end15
  %cond.sink = phi i64 [ %cond, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end8 ]
  %misfit_task_load20 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 28
  store i64 %cond.sink, i64* %misfit_task_load20, align 16
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @newidle_balance(%struct.rq* noundef %this_rq) unnamed_addr #1 {
entry:
  %next_balance = alloca i64, align 8
  %continue_balancing = alloca i32, align 4
  %0 = bitcast i64* %next_balance to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  %1 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %1, 250
  store i64 %add, i64* %next_balance, align 8
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call fastcc void @update_misfit_status(%struct.task_struct* noundef null, %struct.rq* noundef %this_rq) #27
  %ttwu_pending = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 2
  %3 = load i32, i32* %ttwu_pending, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %cleanup87

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @rq_clock(%struct.rq* noundef %this_rq) #27
  %idle_stamp = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 38
  store i64 %call, i64* %idle_stamp, align 64
  %call1 = call fastcc i1 @cpu_active(i32 noundef %2) #27
  br i1 %call1, label %if.end3, label %cleanup87

if.end3:                                          ; preds = %if.end
  %avg_idle = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 39
  %4 = load i64, i64* %avg_idle, align 8
  %cmp = icmp ult i64 %4, 500000
  br i1 %cmp, label %if.then5, label %do.end

do.end:                                           ; preds = %if.end3
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 21
  %5 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %overload = getelementptr inbounds %struct.root_domain, %struct.root_domain* %5, i64 0, i32 5
  %6 = load volatile i32, i32* %overload, align 8
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.end18

if.then5:                                         ; preds = %do.end, %if.end3
  call fastcc void @__rcu_read_lock() #25
  %sd10 = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 22
  %7 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd10, align 8
  %tobool15.not = icmp eq %struct.sched_domain* %7, null
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then5
  call fastcc void @update_next_balance(%struct.sched_domain* noundef nonnull %7, i64* noundef nonnull %next_balance) #27
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then5
  call fastcc void @rcu_read_unlock() #27
  br label %out

if.end18:                                         ; preds = %do.end
  call void @raw_spin_rq_unlock(%struct.rq* noundef %this_rq) #25
  call fastcc void @update_blocked_averages(i32 noundef %2) #27
  call fastcc void @__rcu_read_lock() #25
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %add29 = add i64 %8, ptrtoint (%struct.rq* @runqueues to i64)
  %9 = inttoptr i64 %add29 to %struct.rq*
  %sd30 = getelementptr inbounds %struct.rq, %struct.rq* %9, i64 0, i32 22
  %10 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd30, align 8
  %tobool35.not12 = icmp eq %struct.sched_domain* %10, null
  br i1 %tobool35.not12, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end18
  %11 = bitcast i32* %continue_balancing to i8*
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %sd.014 = phi %struct.sched_domain* [ %10, %for.body.lr.ph ], [ %18, %for.inc ]
  %curr_cost.013 = phi i64 [ 0, %for.body.lr.ph ], [ %curr_cost.123, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #24
  %12 = load i64, i64* %avg_idle, align 8
  %max_newidle_lb_cost = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.014, i64 0, i32 14
  %13 = load i64, i64* %max_newidle_lb_cost, align 8
  %add37 = add i64 %13, %curr_cost.013
  %cmp38 = icmp ult i64 %12, %add37
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body
  call fastcc void @update_next_balance(%struct.sched_domain* noundef nonnull %sd.014, i64* noundef nonnull %next_balance) #27
  br label %cleanup.thread

if.end40:                                         ; preds = %for.body
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.014, i64 0, i32 9
  %14 = load i32, i32* %flags, align 8
  %and = and i32 %14, 1
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end52.thread, label %if.then42

if.end52.thread:                                  ; preds = %if.end40
  call fastcc void @update_next_balance(%struct.sched_domain* noundef nonnull %sd.014, i64* noundef nonnull %next_balance) #27
  br label %lor.lhs.false54

if.then42:                                        ; preds = %if.end40
  %call43 = call i64 @sched_clock_cpu(i32 noundef %2) #25
  %call44 = call fastcc i32 @load_balance(i32 noundef %2, %struct.rq* noundef %this_rq, %struct.sched_domain* noundef nonnull %sd.014, i32 noundef 2, i32* noundef nonnull %continue_balancing) #27
  %call45 = call i64 @sched_clock_cpu(i32 noundef %2) #25
  %sub = sub i64 %call45, %call43
  %15 = load i64, i64* %max_newidle_lb_cost, align 8
  %cmp47 = icmp ugt i64 %sub, %15
  br i1 %cmp47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.then42
  store i64 %sub, i64* %max_newidle_lb_cost, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then42, %if.then48
  %add51 = add i64 %sub, %curr_cost.013
  call fastcc void @update_next_balance(%struct.sched_domain* noundef nonnull %sd.014, i64* noundef nonnull %next_balance) #27
  %tobool53.not = icmp eq i32 %call44, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %cleanup.thread

lor.lhs.false54:                                  ; preds = %if.end52.thread, %if.end52
  %curr_cost.123 = phi i64 [ %curr_cost.013, %if.end52.thread ], [ %add51, %if.end52 ]
  %16 = load i32, i32* %nr_running, align 4
  %cmp55.not = icmp eq i32 %16, 0
  br i1 %cmp55.not, label %lor.lhs.false56, label %cleanup.thread

lor.lhs.false56:                                  ; preds = %lor.lhs.false54
  %17 = load i32, i32* %ttwu_pending, align 8
  %tobool58.not = icmp eq i32 %17, 0
  br i1 %tobool58.not, label %for.inc, label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false54, %if.end52, %lor.lhs.false56, %if.then39
  %curr_cost.2.ph = phi i64 [ %curr_cost.013, %if.then39 ], [ %curr_cost.123, %lor.lhs.false56 ], [ %add51, %if.end52 ], [ %curr_cost.123, %lor.lhs.false54 ]
  %pulled_task.2.ph = phi i32 [ 0, %if.then39 ], [ 0, %lor.lhs.false56 ], [ %call44, %if.end52 ], [ 0, %lor.lhs.false54 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #24
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #24
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.014, i64 0, i32 0
  %18 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool35.not = icmp eq %struct.sched_domain* %18, null
  br i1 %tobool35.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end18, %cleanup.thread
  %curr_cost.3 = phi i64 [ %curr_cost.2.ph, %cleanup.thread ], [ 0, %if.end18 ], [ %curr_cost.123, %for.inc ]
  %pulled_task.3 = phi i32 [ %pulled_task.2.ph, %cleanup.thread ], [ 0, %if.end18 ], [ 0, %for.inc ]
  call fastcc void @rcu_read_unlock() #27
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %this_rq) #27
  %max_idle_balance_cost = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 42
  %19 = load i64, i64* %max_idle_balance_cost, align 32
  %cmp63 = icmp ugt i64 %curr_cost.3, %19
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %for.end
  store i64 %curr_cost.3, i64* %max_idle_balance_cost, align 32
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %for.end
  %h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 5, i32 2
  %20 = load i32, i32* %h_nr_running, align 4
  %tobool67 = icmp eq i32 %20, 0
  %tobool68 = icmp ne i32 %pulled_task.3, 0
  %or.cond = select i1 %tobool67, i1 true, i1 %tobool68
  %spec.store.select = select i1 %or.cond, i32 %pulled_task.3, i32 1
  %nr_running71 = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 1
  %21 = load i32, i32* %nr_running71, align 4
  %cmp74.not = icmp eq i32 %21, %20
  %spec.select = select i1 %cmp74.not, i32 %spec.store.select, i32 -1
  br label %out

out:                                              ; preds = %if.end66, %if.end17
  %pulled_task.4 = phi i32 [ 0, %if.end17 ], [ %spec.select, %if.end66 ]
  %22 = load i64, i64* %next_balance, align 8
  %next_balance77 = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 12
  %23 = load i64, i64* %next_balance77, align 32
  %sub78 = sub i64 %22, %23
  %cmp79 = icmp slt i64 %sub78, 0
  br i1 %cmp79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %out
  store i64 %22, i64* %next_balance77, align 32
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %out
  %tobool83.not = icmp eq i32 %pulled_task.4, 0
  br i1 %tobool83.not, label %cleanup87, label %if.then84

if.then84:                                        ; preds = %if.end82
  store i64 0, i64* %idle_stamp, align 64
  br label %cleanup87

cleanup87:                                        ; preds = %if.then84, %if.end82, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end82 ], [ %pulled_task.4, %if.then84 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_idle_rq_clock_pelt(%struct.rq* nocapture noundef %rq) unnamed_addr #11 {
entry:
  %util_sum1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 12, i32 3
  %0 = load i32, i32* %util_sum1, align 8
  %util_sum2 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 3
  %1 = load i32, i32* %util_sum2, align 8
  %add = add i32 %1, %0
  %util_sum3 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 3
  %2 = load i32, i32* %util_sum3, align 8
  %add4 = add i32 %add, %2
  %cmp = icmp ugt i32 %add4, 47791489
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @rq_clock_task(%struct.rq* noundef %rq) #27
  %clock_pelt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 17
  %3 = load i64, i64* %clock_pelt, align 8
  %sub = sub i64 %call, %3
  %lost_idle_time = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 18
  %4 = load i64, i64* %lost_idle_time, align 16
  %add5 = add i64 %sub, %4
  store i64 %add5, i64* %lost_idle_time, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_group_capacity(%struct.sched_domain* nocapture noundef readonly %sd, i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %child1 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 1
  %0 = load %struct.sched_domain*, %struct.sched_domain** %child1, align 8
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  %1 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %balance_interval = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 12
  %2 = load i32, i32* %balance_interval, align 8
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %2) #25
  %cmp = icmp ugt i64 %call2.i, 1
  %3 = select i1 %cmp, i64 %call2.i, i64 1
  %4 = load i64, i64* @max_load_balance_interval, align 8
  %cmp3 = icmp ult i64 %3, %4
  %cond7 = select i1 %cmp3, i64 %3, i64 %4
  %5 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %cond7, %5
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %1, i64 0, i32 3
  %6 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %next_update = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %6, i64 0, i32 4
  store i64 %add, i64* %next_update, align 8
  %tobool.not = icmp eq %struct.sched_domain* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @update_cpu_capacity(%struct.sched_domain* noundef %sd, i32 noundef %cpu) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 9
  %7 = load i32, i32* %flags, align 8
  %and = and i32 %7, 4096
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call10 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %1) #27
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %call11124 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %call10) #28
  %cmp12125 = icmp ult i32 %call11124, %8
  br i1 %cmp12125, label %for.body, label %if.end48

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %call11129 = phi i32 [ %call11, %for.body ], [ %call11124, %for.cond.preheader ]
  %capacity.0128 = phi i64 [ %add14, %for.body ], [ 0, %for.cond.preheader ]
  %min_capacity.0127 = phi i64 [ %cond20, %for.body ], [ -1, %for.cond.preheader ]
  %max_capacity.0126 = phi i64 [ %cond26, %for.body ], [ 0, %for.cond.preheader ]
  %call13 = call fastcc i64 @capacity_of(i32 noundef %call11129) #27
  %add14 = add i64 %call13, %capacity.0128
  %cmp16 = icmp ult i64 %call13, %min_capacity.0127
  %cond20 = select i1 %cmp16, i64 %call13, i64 %min_capacity.0127
  %cmp22 = icmp ugt i64 %call13, %max_capacity.0126
  %cond26 = select i1 %cmp22, i64 %call13, i64 %max_capacity.0126
  %call11 = call i32 @cpumask_next(i32 noundef %call11129, %struct.cpumask* noundef %call10) #28
  %cmp12 = icmp ult i32 %call11, %8
  br i1 %cmp12, label %for.body, label %if.end48

if.else:                                          ; preds = %if.end
  %groups27 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 2
  %9 = load %struct.sched_group*, %struct.sched_group** %groups27, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.else
  %max_capacity.1 = phi i64 [ 0, %if.else ], [ %cond45, %do.body ]
  %min_capacity.1 = phi i64 [ -1, %if.else ], [ %cond38, %do.body ]
  %capacity.1 = phi i64 [ 0, %if.else ], [ %add31, %do.body ]
  %group.0 = phi %struct.sched_group* [ %9, %if.else ], [ %14, %do.body ]
  %sgc29 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group.0, i64 0, i32 3
  %10 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc29, align 8
  %capacity30 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %10, i64 0, i32 1
  %11 = load i64, i64* %capacity30, align 8
  %add31 = add i64 %11, %capacity.1
  %min_capacity32 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %10, i64 0, i32 2
  %12 = load i64, i64* %min_capacity32, align 8
  %cmp34 = icmp ult i64 %12, %min_capacity.1
  %cond38 = select i1 %cmp34, i64 %12, i64 %min_capacity.1
  %max_capacity39 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %10, i64 0, i32 3
  %13 = load i64, i64* %max_capacity39, align 8
  %cmp41 = icmp ugt i64 %13, %max_capacity.1
  %cond45 = select i1 %cmp41, i64 %13, i64 %max_capacity.1
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group.0, i64 0, i32 0
  %14 = load %struct.sched_group*, %struct.sched_group** %next, align 8
  %cmp47.not = icmp eq %struct.sched_group* %14, %9
  br i1 %cmp47.not, label %if.end48, label %do.body

if.end48:                                         ; preds = %for.body, %do.body, %for.cond.preheader
  %max_capacity.2 = phi i64 [ 0, %for.cond.preheader ], [ %cond45, %do.body ], [ %cond26, %for.body ]
  %min_capacity.2 = phi i64 [ -1, %for.cond.preheader ], [ %cond38, %do.body ], [ %cond20, %for.body ]
  %capacity.2 = phi i64 [ 0, %for.cond.preheader ], [ %add31, %do.body ], [ %add14, %for.body ]
  %15 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %capacity50 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %15, i64 0, i32 1
  store i64 %capacity.2, i64* %capacity50, align 8
  %16 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %min_capacity52 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %16, i64 0, i32 2
  store i64 %min_capacity.2, i64* %min_capacity52, align 8
  %17 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %max_capacity54 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %17, i64 0, i32 3
  store i64 %max_capacity.2, i64* %max_capacity54, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_cpu_capacity(%struct.sched_domain* nocapture noundef readonly %sd, i32 noundef %cpu) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @scale_rt_capacity(i32 noundef %cpu) #27
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  %0 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %call1 = call fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) #27
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %cpu_capacity_orig = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 24
  store i64 %call1, i64* %cpu_capacity_orig, align 8
  %tobool.not = icmp eq i64 %call, 0
  %spec.store.select = select i1 %tobool.not, i64 1, i64 %call
  %3 = load i64, i64* %arrayidx, align 8
  %add12 = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add12 to %struct.rq*
  %cpu_capacity = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 23
  store i64 %spec.store.select, i64* %cpu_capacity, align 16
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %0, i64 0, i32 3
  %5 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %capacity23 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %5, i64 0, i32 1
  store i64 %spec.store.select, i64* %capacity23, align 8
  %6 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %min_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %6, i64 0, i32 2
  store i64 %spec.store.select, i64* %min_capacity, align 8
  %7 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %max_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %7, i64 0, i32 3
  store i64 %spec.store.select, i64* %max_capacity, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef readnone %sg) unnamed_addr #8 {
entry:
  %arraydecay = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 5, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @capacity_of(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cpu_capacity = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 23
  %2 = load i64, i64* %cpu_capacity, align 16
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local void @update_max_interval() local_unnamed_addr #7 {
entry:
  %call = call fastcc i32 @num_online_cpus() #27
  %mul = mul i32 %call, 250
  %div = udiv i32 %mul, 10
  %conv = zext i32 %div to i64
  store i64 %conv, i64* @max_load_balance_interval, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @trigger_load_balance(%struct.rq* noundef %rq) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @on_null_domain(%struct.rq* noundef %rq) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %return, !prof !8

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #27
  %call2 = call fastcc i1 @cpu_active(i32 noundef %call1) #27
  br i1 %call2, label %if.end, label %return, !prof !8

if.end:                                           ; preds = %lor.rhs
  %0 = load volatile i64, i64* @jiffies, align 64
  %next_balance = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 12
  %1 = load i64, i64* %next_balance, align 32
  %sub = sub i64 %0, %1
  %cmp = icmp sgt i64 %sub, -1
  br i1 %cmp, label %if.then7, label %return

if.then7:                                         ; preds = %if.end
  call void @raise_softirq(i32 noundef 7) #25
  br label %return

return:                                           ; preds = %if.end, %if.then7, %entry, %lor.rhs
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @on_null_domain(%struct.rq* noundef %rq) unnamed_addr #7 {
entry:
  %sd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 22
  %0 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %tobool.not = icmp eq %struct.sched_domain* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_active(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_active_mask) #27
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @init_cfs_rq(%struct.cfs_rq* nocapture noundef writeonly %cfs_rq) local_unnamed_addr #13 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 6, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.0.0..sroa_idx, align 16
  %.compoundliteral.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 6, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.2.0..sroa_idx2, align 8
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 5
  store i64 -1048576, i64* %min_vruntime, align 8
  %.compoundliteral1.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral1.sroa.0.0..sroa_idx, align 64
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @free_fair_sched_group(%struct.task_group* nocapture noundef %tg) local_unnamed_addr #8 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @alloc_fair_sched_group(%struct.task_group* nocapture noundef readnone %tg, %struct.task_group* nocapture noundef readnone %parent) local_unnamed_addr #8 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @online_fair_sched_group(%struct.task_group* nocapture noundef %tg) local_unnamed_addr #8 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @unregister_fair_sched_group(%struct.task_group* nocapture noundef %tg) local_unnamed_addr #8 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @enqueue_task_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc i32 @task_has_idle_policy(%struct.task_struct* noundef %p) #27
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5
  call fastcc void @util_est_enqueue(%struct.cfs_rq* noundef %cfs, %struct.task_struct* noundef %p) #27
  %tobool3.not91 = icmp eq %struct.sched_entity* %se1, null
  br i1 %tobool3.not91, label %for.end39, label %for.body

for.body:                                         ; preds = %entry
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 3
  %0 = load i32, i32* %on_rq, align 8
  %tobool4.not = icmp eq i32 %0, 0
  %call7 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se1) #27
  br i1 %tobool4.not, label %if.end6, label %for.body19

if.end6:                                          ; preds = %for.body
  call fastcc void @enqueue_entity(%struct.cfs_rq* noundef %call7, %struct.sched_entity* noundef nonnull %se1, i32 noundef %flags) #27
  br label %for.end39.sink.split

for.body19:                                       ; preds = %for.body
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %call7, %struct.sched_entity* noundef nonnull %se1, i32 noundef 1) #27
  br label %for.end39.sink.split

for.end39.sink.split:                             ; preds = %for.body19, %if.end6
  %h_nr_running21 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call7, i64 0, i32 2
  %1 = load i32, i32* %h_nr_running21, align 4
  %inc22 = add i32 %1, 1
  store i32 %inc22, i32* %h_nr_running21, align 4
  %idle_h_nr_running23 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call7, i64 0, i32 3
  %2 = load i32, i32* %idle_h_nr_running23, align 8
  %add = add i32 %2, %call
  store i32 %add, i32* %idle_h_nr_running23, align 8
  br label %for.end39

for.end39:                                        ; preds = %for.end39.sink.split, %entry
  call fastcc void @add_nr_running(%struct.rq* noundef %rq) #27
  br i1 %tobool.not, label %enqueue_throttle, label %if.then41

if.then41:                                        ; preds = %for.end39
  call fastcc void @update_overutilized_status(%struct.rq* noundef %rq) #27
  br label %enqueue_throttle

enqueue_throttle:                                 ; preds = %for.end39, %if.then41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dequeue_task_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc i32 @task_has_idle_policy(%struct.task_struct* noundef %p) #27
  %call2 = call fastcc i32 @sched_idle_rq(%struct.rq* noundef %rq) #27
  %tobool.not = icmp eq i32 %call2, 0
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5
  call fastcc void @util_est_dequeue(%struct.cfs_rq* noundef %cfs, %struct.task_struct* noundef %p) #27
  %tobool3.not88 = icmp eq %struct.sched_entity* %se1, null
  br i1 %tobool3.not88, label %for.end40, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %call4 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se1) #27
  call fastcc void @dequeue_entity(%struct.cfs_rq* noundef %call4, %struct.sched_entity* noundef nonnull %se1, i32 noundef %flags) #27
  %h_nr_running = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call4, i64 0, i32 2
  %0 = load i32, i32* %h_nr_running, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %h_nr_running, align 4
  %idle_h_nr_running5 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call4, i64 0, i32 3
  %1 = load i32, i32* %idle_h_nr_running5, align 8
  %sub = sub i32 %1, %call
  store i32 %sub, i32* %idle_h_nr_running5, align 8
  br label %for.end40

for.end40:                                        ; preds = %for.body.lr.ph, %entry
  call fastcc void @sub_nr_running(%struct.rq* noundef %rq) #27
  br i1 %tobool.not, label %land.rhs, label %dequeue_throttle

land.rhs:                                         ; preds = %for.end40
  %call42 = call fastcc i32 @sched_idle_rq(%struct.rq* noundef %rq) #27
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %dequeue_throttle, label %if.then46, !prof !8

if.then46:                                        ; preds = %land.rhs
  %2 = load volatile i64, i64* @jiffies, align 64
  %next_balance = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 12
  store i64 %2, i64* %next_balance, align 32
  br label %dequeue_throttle

dequeue_throttle:                                 ; preds = %for.end40, %land.rhs, %if.then46
  %and = and i32 %flags, 1
  %tobool49 = icmp ne i32 %and, 0
  call fastcc void @util_est_update(%struct.cfs_rq* noundef %cfs, %struct.task_struct* noundef %p, i1 noundef %tobool49) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @yield_task_fair(%struct.rq* noundef %rq) #1 {
entry:
  %curr1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr1, align 8
  %call = call fastcc %struct.cfs_rq* @task_cfs_rq(%struct.task_struct* noundef %0) #27
  %se2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  call fastcc void @clear_buddies(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se2) #27
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 23
  %2 = load i32, i32* %policy, align 16
  %cmp4.not = icmp eq i32 %2, 3
  br i1 %cmp4.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @update_rq_clock(%struct.rq* noundef %rq) #25
  call fastcc void @update_curr(%struct.cfs_rq* noundef %call) #27
  call fastcc void @rq_clock_skip_update(%struct.rq* noundef %rq) #27
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  call fastcc void @set_skip_buddy(%struct.sched_entity* noundef %se2) #27
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @yield_to_task_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 3
  %0 = load i32, i32* %on_rq, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se1) #27
  call fastcc void @set_next_buddy(%struct.sched_entity* noundef %se1) #27
  call void @yield_task_fair(%struct.rq* noundef %rq) #27
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @check_preempt_wakeup(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %wake_flags) #1 {
entry:
  %curr1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr1, align 8
  %se2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20
  %se3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc %struct.cfs_rq* @task_cfs_rq(%struct.task_struct* noundef %0) #27
  %nr_running = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 16
  %cmp = icmp ult i32 %1, 8
  %cmp4 = icmp eq %struct.task_struct* %0, %p
  br i1 %cmp4, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %call8 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se3) #27
  %call20 = call fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %0) #27
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.end
  %call24 = call fastcc i32 @task_has_idle_policy(%struct.task_struct* noundef %0) #27
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end45, label %land.lhs.true, !prof !8

land.lhs.true:                                    ; preds = %if.end23
  %call33 = call fastcc i32 @task_has_idle_policy(%struct.task_struct* noundef %p) #27
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %preempt, label %if.end45, !prof !8

if.end45:                                         ; preds = %land.lhs.true, %if.end23
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %2 = load i32, i32* %policy, align 16
  %cmp46.not = icmp eq i32 %2, 0
  br i1 %cmp46.not, label %if.end56, label %cleanup, !prof !8

if.end56:                                         ; preds = %if.end45
  %tobool57.not = icmp eq %struct.sched_entity* %se3, null
  br i1 %tobool57.not, label %do.body68, label %do.end74, !prof !10

do.body68:                                        ; preds = %if.end56
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/fair.c\22; .popsection; .long 14472b - 14470b; .short 7183; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !11
  unreachable

do.end74:                                         ; preds = %if.end56
  %call86 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se2) #27
  call fastcc void @update_curr(%struct.cfs_rq* noundef %call86) #27
  %call87 = call fastcc i32 @wakeup_preempt_entity(%struct.sched_entity* noundef %se2, %struct.sched_entity* noundef nonnull %se3) #27
  %cmp88 = icmp eq i32 %call87, 1
  br i1 %cmp88, label %if.then92, label %cleanup

if.then92:                                        ; preds = %do.end74
  call fastcc void @set_next_buddy(%struct.sched_entity* noundef nonnull %se3) #27
  br label %preempt

preempt:                                          ; preds = %if.then92, %land.lhs.true
  call void @resched_curr(%struct.rq* noundef %rq) #25
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20, i32 3
  %3 = load i32, i32* %on_rq, align 8
  %tobool95.not = icmp eq i32 %3, 0
  br i1 %tobool95.not, label %cleanup, label %lor.rhs, !prof !10

lor.rhs:                                          ; preds = %preempt
  %idle = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 10
  %4 = load %struct.task_struct*, %struct.task_struct** %idle, align 16
  %cmp96 = icmp eq %struct.task_struct* %0, %4
  %brmerge = select i1 %cmp96, i1 true, i1 %cmp
  br i1 %brmerge, label %cleanup, label %if.then108, !prof !12

if.then108:                                       ; preds = %lor.rhs
  call fastcc void @set_last_buddy(%struct.sched_entity* noundef %se2) #27
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %preempt, %if.then108, %do.end74, %if.end45, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.task_struct* @__pick_next_task_fair(%struct.rq* noundef %rq) #1 {
entry:
  %call = call %struct.task_struct* @pick_next_task_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef null, %struct.rq_flags* noundef null) #27
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @put_prev_task_fair(%struct.rq* nocapture noundef readnone %rq, %struct.task_struct* noundef %prev) #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 20
  %tobool.not6 = icmp eq %struct.sched_entity* %se1, null
  br i1 %tobool.not6, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se1) #27
  call fastcc void @put_prev_entity(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef nonnull %se1) #27
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @set_next_task_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i1 noundef %first) #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %group_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 2
  %cfs_tasks = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 34
  call fastcc void @list_move(%struct.list_head* noundef %group_node, %struct.list_head* noundef %cfs_tasks) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool2.not11 = icmp eq %struct.sched_entity* %se1, null
  br i1 %tobool2.not11, label %for.end, label %for.body

for.body:                                         ; preds = %if.end
  %call3 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se1) #27
  call fastcc void @set_next_entity(%struct.cfs_rq* noundef %call3, %struct.sched_entity* noundef nonnull %se1) #27
  br label %for.end

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @balance_fair(%struct.rq* noundef %rq, %struct.task_struct* nocapture noundef readnone %prev, %struct.rq_flags* nocapture noundef readnone %rf) #1 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @newidle_balance(%struct.rq* noundef %rq) #27
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @select_task_rq_fair(%struct.task_struct* noundef %p, i32 noundef %prev_cpu, i32 noundef %wake_flags) #1 {
entry:
  %and = and i32 %wake_flags, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #29, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and1 = lshr i32 %2, 2
  %and1.lobit = and i32 %and1, 1
  %3 = xor i32 %and1.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %3, %land.rhs ]
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call5, ptrtoint (i32* @cpu_number to i64)
  %5 = inttoptr i64 %add to i32*
  %6 = load i32, i32* %5, align 4
  %and6 = and i32 %wake_flags, 15
  %and10 = and i32 %wake_flags, 8
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end24, label %if.then

if.then:                                          ; preds = %land.end
  call fastcc void @record_wakee(%struct.task_struct* noundef %p) #27
  %call17 = call fastcc i32 @wake_wide(%struct.task_struct* noundef %p) #27
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.rhs19, label %if.end24

land.rhs19:                                       ; preds = %if.then
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %7 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call20 = call fastcc i32 @cpumask_test_cpu(i32 noundef %6, %struct.cpumask* noundef %7) #27
  %tobool21 = icmp ne i32 %call20, 0
  %phi.cast129 = zext i1 %tobool21 to i32
  br label %if.end24

if.end24:                                         ; preds = %if.then, %land.rhs19, %land.end
  %want_affine.0 = phi i32 [ 0, %land.end ], [ 0, %if.then ], [ %phi.cast129, %land.rhs19 ]
  call fastcc void @__rcu_read_lock() #25
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %add36 = add i64 %8, ptrtoint (%struct.rq* @runqueues to i64)
  %9 = inttoptr i64 %add36 to %struct.rq*
  %sd37 = getelementptr inbounds %struct.rq, %struct.rq* %9, i64 0, i32 22
  %10 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd37, align 8
  %tobool42.not136 = icmp eq %struct.sched_domain* %10, null
  br i1 %tobool42.not136, label %if.else71, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end24
  %tobool43.not = icmp eq i32 %want_affine.0, 0
  %tobool43.not.not = xor i1 %tobool43.not, true
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %tmp.0138 = phi %struct.sched_domain* [ %10, %for.body.lr.ph ], [ %13, %for.inc ]
  %sd.0137 = phi %struct.sched_domain* [ null, %for.body.lr.ph ], [ %tmp.0.mux, %for.inc ]
  %flags57 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp.0138, i64 0, i32 9
  %11 = load i32, i32* %flags57, align 8
  br i1 %tobool43.not, label %if.end56, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %and45 = and i32 %11, 16
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end56.thread, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true
  %call48 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %tmp.0138) #27
  %call49 = call fastcc i32 @cpumask_test_cpu(i32 noundef %prev_cpu, %struct.cpumask* noundef %call48) #27
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56.thread, label %if.then51

if.then51:                                        ; preds = %land.lhs.true47
  %cmp52.not = icmp eq i32 %6, %prev_cpu
  br i1 %cmp52.not, label %if.else71, label %if.then53

if.then53:                                        ; preds = %if.then51
  %call54 = call fastcc i32 @wake_affine(%struct.sched_domain* noundef nonnull %tmp.0138, %struct.task_struct* noundef %p, i32 noundef %6, i32 noundef %prev_cpu, i32 noundef %4) #27
  br label %if.else71

if.end56.thread:                                  ; preds = %land.lhs.true47, %land.lhs.true
  %flags57142 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp.0138, i64 0, i32 9
  %12 = load i32, i32* %flags57142, align 8
  %and58143 = and i32 %12, %and6
  %tobool59.not144 = icmp ne i32 %and58143, 0
  br label %for.inc

if.end56:                                         ; preds = %for.body
  %and58 = and i32 %11, %and6
  %tobool59.not = icmp ne i32 %and58, 0
  %brmerge = select i1 %tobool59.not, i1 true, i1 %tobool43.not.not
  br i1 %brmerge, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.end56.thread, %if.end56
  %tobool59.not146 = phi i1 [ %tobool59.not144, %if.end56.thread ], [ %tobool59.not, %if.end56 ]
  %tmp.0.mux = select i1 %tobool59.not146, %struct.sched_domain* %tmp.0138, %struct.sched_domain* %sd.0137
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp.0138, i64 0, i32 0
  %13 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool42.not = icmp eq %struct.sched_domain* %13, null
  br i1 %tobool42.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end56
  %sd.0.lcssa = phi %struct.sched_domain* [ %tmp.0.mux, %for.inc ], [ %sd.0137, %if.end56 ]
  %tobool65.not = icmp eq %struct.sched_domain* %sd.0.lcssa, null
  br i1 %tobool65.not, label %if.else71, label %if.then69, !prof !8

if.then69:                                        ; preds = %for.end
  %call70 = call fastcc i32 @find_idlest_cpu(%struct.sched_domain* noundef nonnull %sd.0.lcssa, %struct.task_struct* noundef %p, i32 noundef %6, i32 noundef %prev_cpu, i32 noundef %and6) #27
  br label %if.end77

if.else71:                                        ; preds = %if.end24, %if.then51, %if.then53, %for.end
  %new_cpu.3133 = phi i32 [ %prev_cpu, %for.end ], [ %prev_cpu, %if.then51 ], [ %call54, %if.then53 ], [ %prev_cpu, %if.end24 ]
  br i1 %tobool11.not, label %if.end77, label %if.then74

if.then74:                                        ; preds = %if.else71
  %call75 = call fastcc i32 @select_idle_sibling(%struct.task_struct* noundef %p, i32 noundef %prev_cpu, i32 noundef %new_cpu.3133) #27
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then74, %if.then69
  %new_cpu.4 = phi i32 [ %call70, %if.then69 ], [ %call75, %if.then74 ], [ %new_cpu.3133, %if.else71 ]
  call fastcc void @rcu_read_unlock() #27
  ret i32 %new_cpu.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.task_struct* @pick_task_fair(%struct.rq* noundef %rq) #1 {
entry:
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 1
  %0 = load i32, i32* %nr_running, align 16
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup16, label %do.body

do.body:                                          ; preds = %entry
  %curr1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 7
  %1 = load %struct.sched_entity*, %struct.sched_entity** %curr1, align 64
  %tobool2.not = icmp eq %struct.sched_entity* %1, null
  br i1 %tobool2.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %do.body
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %1, i64 0, i32 3
  %2 = load i32, i32* %on_rq, align 8
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then3
  call fastcc void @update_curr(%struct.cfs_rq* noundef %cfs) #27
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.then3, %do.body
  %curr.1 = phi %struct.sched_entity* [ null, %do.body ], [ %1, %if.then5 ], [ null, %if.then3 ]
  %call12 = call fastcc %struct.sched_entity* @pick_next_entity(%struct.cfs_rq* noundef %cfs, %struct.sched_entity* noundef %curr.1) #27
  %call15 = call fastcc %struct.task_struct* @task_of(%struct.sched_entity* noundef %call12) #27
  br label %cleanup16

cleanup16:                                        ; preds = %entry, %if.end11
  %retval.0 = phi %struct.task_struct* [ %call15, %if.end11 ], [ null, %entry ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @migrate_task_rq_fair(%struct.task_struct* noundef %p, i32 noundef %new_cpu) #1 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %cmp = icmp eq i32 %0, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se1) #27
  %min_vruntime2 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 5
  %1 = load i64, i64* %min_vruntime2, align 8
  %vruntime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 6
  %2 = load i64, i64* %vruntime, align 16
  %sub = sub i64 %2, %1
  store i64 %sub, i64* %vruntime, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %3 = load i32, i32* %on_rq, align 32
  %cmp3 = icmp eq i32 %3, 2
  br i1 %cmp3, label %do.body5, label %if.else

do.body5:                                         ; preds = %if.end
  %call9 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #27
  %se10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  call fastcc void @detach_entity_cfs_rq(%struct.sched_entity* noundef %se10) #27
  br label %if.end12

if.else:                                          ; preds = %if.end
  %se11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  call fastcc void @remove_entity_load_avg(%struct.sched_entity* noundef %se11) #27
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.body5
  %last_update_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 0
  store i64 0, i64* %last_update_time, align 64
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 4
  store i64 0, i64* %exec_start, align 64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(%struct.task_struct* noundef, %struct.cpumask* noundef, i32 noundef) #6

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal void @rq_online_fair(%struct.rq* nocapture noundef readnone %rq) #3 {
entry:
  call fastcc void @update_sysctl() #27
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal void @rq_offline_fair(%struct.rq* nocapture noundef readnone %rq) #3 {
entry:
  call fastcc void @update_sysctl() #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @task_tick_fair(%struct.rq* nocapture noundef %rq, %struct.task_struct* noundef %curr, i32 noundef %queued) #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %curr, i64 0, i32 20
  %tobool.not22 = icmp eq %struct.sched_entity* %se1, null
  br i1 %tobool.not22, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se1) #27
  call fastcc void @entity_tick(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef nonnull %se1) #27
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  %call2 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_numa_balancing, i64 0, i32 0)) #27
  call fastcc void @update_misfit_status(%struct.task_struct* noundef %curr, %struct.rq* noundef %rq) #27
  %call9 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %curr) #27
  %idxprom = zext i32 %call9 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  call fastcc void @update_overutilized_status(%struct.rq* noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @task_fork_fair(%struct.task_struct* noundef %p) #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %0 = inttoptr i64 %add to %struct.rq*
  %1 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #24
  call fastcc void @rq_lock(%struct.rq* noundef %0, %struct.rq_flags* noundef nonnull %rf) #27
  call void @update_rq_clock(%struct.rq* noundef %0) #25
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #29, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call4 = call fastcc %struct.cfs_rq* @task_cfs_rq(%struct.task_struct* noundef %3) #27
  %curr5 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call4, i64 0, i32 7
  %4 = load %struct.sched_entity*, %struct.sched_entity** %curr5, align 64
  %tobool = icmp ne %struct.sched_entity* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @update_curr(%struct.cfs_rq* noundef %call4) #27
  %vruntime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %4, i64 0, i32 6
  %5 = load i64, i64* %vruntime, align 16
  %vruntime6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 6
  store i64 %5, i64* %vruntime6, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @place_entity(%struct.cfs_rq* noundef %call4, %struct.sched_entity* noundef %se1, i32 noundef 1) #27
  %6 = load i32, i32* @sysctl_sched_child_runs_first, align 4
  %tobool7 = icmp ne i32 %6, 0
  %or.cond = select i1 %tobool7, i1 %tobool, i1 false
  br i1 %or.cond, label %land.lhs.true9, label %if.end19

land.lhs.true9:                                   ; preds = %if.end
  %call10 = call fastcc i1 @entity_before(%struct.sched_entity* noundef nonnull %4, %struct.sched_entity* noundef %se1) #27
  br i1 %call10, label %do.body12, label %if.end19

do.body12:                                        ; preds = %land.lhs.true9
  %vruntime13 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %4, i64 0, i32 6
  %7 = load i64, i64* %vruntime13, align 16
  %vruntime14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 6
  %8 = load i64, i64* %vruntime14, align 16
  store i64 %8, i64* %vruntime13, align 16
  store i64 %7, i64* %vruntime14, align 16
  call void @resched_curr(%struct.rq* noundef %0) #25
  br label %if.end19

if.end19:                                         ; preds = %do.body12, %land.lhs.true9, %if.end
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call4, i64 0, i32 5
  %9 = load i64, i64* %min_vruntime, align 8
  %vruntime20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 6
  %10 = load i64, i64* %vruntime20, align 16
  %sub = sub i64 %10, %9
  store i64 %sub, i64* %vruntime20, align 16
  call fastcc void @rq_unlock(%struct.rq* noundef %0) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @task_dead_fair(%struct.task_struct* noundef %p) #1 {
entry:
  %se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  call fastcc void @remove_entity_load_avg(%struct.sched_entity* noundef %se) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @switched_from_fair(%struct.rq* nocapture noundef readnone %rq, %struct.task_struct* noundef %p) #1 {
entry:
  call fastcc void @detach_task_cfs_rq(%struct.task_struct* noundef %p) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @switched_to_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #1 {
entry:
  call fastcc void @attach_task_cfs_rq(%struct.task_struct* noundef %p) #27
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #27
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @resched_curr(%struct.rq* noundef %rq) #25
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @check_preempt_curr(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef 0) #25
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.else, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @prio_changed_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %oldprio) #1 {
entry:
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.end

if.end:                                           ; preds = %entry
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 1
  %0 = load i32, i32* %nr_running, align 16
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.end9, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #27
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end2
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %1 = load i32, i32* %prio, align 4
  %cmp6 = icmp sgt i32 %1, %oldprio
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @resched_curr(%struct.rq* noundef %rq) #25
  br label %if.end9

if.else:                                          ; preds = %if.end2
  call void @check_preempt_curr(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef 0) #25
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then7, %if.end, %entry, %if.else
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal i32 @get_rr_interval_fair(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* noundef %task) #10 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 20
  %weight = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 0, i32 0
  %0 = load i64, i64* %weight, align 64
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se1) #27
  %call2 = call fastcc i64 @sched_slice(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se1) #27
  %div = udiv i64 %call2, 4000000
  %conv = trunc i64 %div to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rr_interval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %rr_interval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @update_curr_fair(%struct.rq* nocapture noundef readonly %rq) #1 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) #27
  call fastcc void @update_curr(%struct.cfs_rq* noundef %call) #27
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_sched_fair_class() local_unnamed_addr #0 section ".init.text" {
entry:
  call void @open_softirq(i32 noundef 7, void (%struct.softirq_action*)* noundef nonnull @run_rebalance_domains) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, void (%struct.softirq_action*)* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @run_rebalance_domains(%struct.softirq_action* nocapture noundef readnone %h) #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %0 = inttoptr i64 %add to %struct.rq*
  %idle_balance = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 27
  %1 = load i8, i8* %idle_balance, align 1
  %tobool.not = icmp eq i8 %1, 0
  %cond = zext i1 %tobool.not to i32
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call fastcc void @update_blocked_averages(i32 noundef %2) #27
  call fastcc void @rebalance_domains(%struct.rq* noundef %0, i32 noundef %cond) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.sched_avg* @sched_trace_cfs_rq_avg(%struct.cfs_rq* noundef readnone %cfs_rq) local_unnamed_addr #8 {
entry:
  %tobool.not = icmp eq %struct.cfs_rq* %cfs_rq, null
  %avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12
  %cond = select i1 %tobool.not, %struct.sched_avg* null, %struct.sched_avg* %avg
  ret %struct.sched_avg* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @sched_trace_cfs_rq_path(%struct.cfs_rq* noundef readnone %cfs_rq, i8* noundef %str, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.cfs_rq* %cfs_rq, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i8* %str, null
  br i1 %tobool1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  %conv = sext i32 %len to i64
  %call = call i64 @strlcpy(i8* noundef nonnull %str, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 noundef %conv) #25
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry
  call fastcc void @cfs_rq_tg_path(i8* noundef %str, i32 noundef %len) #27
  br label %return

return:                                           ; preds = %if.then, %if.end3
  ret i8* %str
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cfs_rq_tg_path(i8* noundef %path, i32 noundef %len) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %path, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %len to i64
  %call = call i64 @strlcpy(i8* noundef nonnull %path, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 noundef %conv) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @sched_trace_cfs_rq_cpu(%struct.cfs_rq* noundef readonly %cfs_rq) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.cfs_rq* %cfs_rq, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef nonnull %cfs_rq) #27
  %call1 = call fastcc i32 @cpu_of(%struct.rq* noundef %call) #27
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.sched_avg* @sched_trace_rq_avg_rt(%struct.rq* noundef readnone %rq) local_unnamed_addr #8 {
entry:
  %tobool.not = icmp eq %struct.rq* %rq, null
  %avg_rt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36
  %cond = select i1 %tobool.not, %struct.sched_avg* null, %struct.sched_avg* %avg_rt
  ret %struct.sched_avg* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.sched_avg* @sched_trace_rq_avg_dl(%struct.rq* noundef readnone %rq) local_unnamed_addr #8 {
entry:
  %tobool.not = icmp eq %struct.rq* %rq, null
  %avg_dl = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37
  %cond = select i1 %tobool.not, %struct.sched_avg* null, %struct.sched_avg* %avg_dl
  ret %struct.sched_avg* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local noalias %struct.sched_avg* @sched_trace_rq_avg_irq(%struct.rq* nocapture noundef readnone %rq) local_unnamed_addr #8 {
entry:
  ret %struct.sched_avg* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @sched_trace_rq_cpu(%struct.rq* noundef readonly %rq) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.rq* %rq, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call fastcc i32 @cpu_of(%struct.rq* noundef nonnull %rq) #27
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @sched_trace_rq_cpu_capacity(%struct.rq* noundef readonly %rq) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.rq* %rq, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %cpu_capacity = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 23
  %0 = load i64, i64* %cpu_capacity, align 16
  %phi.cast = trunc i64 %0 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %phi.cast, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.cpumask* @sched_trace_rd_span(%struct.root_domain* noundef readnone %rd) local_unnamed_addr #8 {
entry:
  %tobool.not = icmp eq %struct.root_domain* %rd, null
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 3, i64 0
  %cond = select i1 %tobool.not, %struct.cpumask* null, %struct.cpumask* %arraydecay
  ret %struct.cpumask* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @sched_trace_rq_nr_running(%struct.rq* noundef readonly %rq) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.rq* %rq, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @get_update_sysctl_factor() unnamed_addr #3 {
entry:
  %call = call fastcc i32 @num_online_cpus() #27
  %cmp = icmp ult i32 %call, 8
  %cond = select i1 %cmp, i32 %call, i32 8
  %0 = load i32, i32* @sysctl_sched_tunable_scaling, align 4
  switch i32 %0, label %cond.end11 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

cond.end11:                                       ; preds = %entry
  %call10 = call fastcc i32 @__ilog2_u32(i32 noundef %cond) #30
  %add = add i32 %call10, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end11, %sw.bb1
  %factor.0 = phi i32 [ %add, %cond.end11 ], [ %cond, %sw.bb1 ], [ 1, %entry ]
  ret i32 %factor.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #16 {
entry:
  %tobool.not.i = icmp eq i32 %n, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #24, !range !14
  %narrow.i.op = sub nsw i32 31, %0
  %sub = select i1 %tobool.not.i, i32 -1, i32 %narrow.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock_pelt(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %clock_pelt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 17
  %0 = load i64, i64* %clock_pelt, align 8
  %lost_idle_time = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 18
  %1 = load i64, i64* %lost_idle_time, align 16
  %sub = sub i64 %0, %1
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_curr(%struct.cfs_rq* noundef %cfs_rq) unnamed_addr #1 {
entry:
  %curr1 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  %0 = load %struct.sched_entity*, %struct.sched_entity** %curr1, align 64
  %call = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  %call2 = call fastcc i64 @rq_clock_task(%struct.rq* noundef %call) #27
  %tobool.not = icmp eq %struct.sched_entity* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %exec_start = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %0, i64 0, i32 4
  %1 = load i64, i64* %exec_start, align 64
  %sub = sub i64 %call2, %1
  %cmp = icmp slt i64 %sub, 1
  br i1 %cmp, label %cleanup, label %if.end15, !prof !10

if.end15:                                         ; preds = %if.end
  store i64 %call2, i64* %exec_start, align 64
  %sum_exec_runtime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %0, i64 0, i32 5
  %2 = load i64, i64* %sum_exec_runtime, align 8
  %add = add i64 %2, %sub
  store i64 %add, i64* %sum_exec_runtime, align 8
  %call20 = call fastcc i64 @calc_delta_fair(i64 noundef %sub, %struct.sched_entity* noundef nonnull %0) #27
  %vruntime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %0, i64 0, i32 6
  %3 = load i64, i64* %vruntime, align 16
  %add21 = add i64 %3, %call20
  store i64 %add21, i64* %vruntime, align 16
  call fastcc void @update_min_vruntime(%struct.cfs_rq* noundef %cfs_rq) #27
  %call22 = call fastcc %struct.task_struct* @task_of(%struct.sched_entity* noundef nonnull %0) #27
  call fastcc void @account_group_exec_runtime(%struct.task_struct* noundef %call22, i64 noundef %sub) #27
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_load_sub(%struct.load_weight* nocapture noundef %lw, i64 noundef %dec) unnamed_addr #11 {
entry:
  %weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 0
  %0 = load i64, i64* %weight, align 8
  %sub = sub i64 %0, %dec
  store i64 %sub, i64* %weight, align 8
  %inv_weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 1
  store i32 0, i32* %inv_weight, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* nocapture noundef readonly %se) unnamed_addr #10 {
entry:
  %avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11
  %call = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #27
  %load_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 5
  %load_avg3 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  %0 = load i64, i64* %load_avg3, align 32
  %1 = load volatile i64, i64* %load_avg, align 8
  %2 = call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  store volatile i64 %2, i64* %load_avg, align 8
  %conv = zext i32 %call to i64
  %mul = mul i64 %2, %conv
  %load_sum = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 1
  store i64 %mul, i64* %load_sum, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @update_load_set(%struct.load_weight* nocapture noundef writeonly %lw, i64 noundef %w) unnamed_addr #13 {
entry:
  %weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 0
  store i64 %w, i64* %weight, align 8
  %inv_weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 1
  store i32 0, i32* %inv_weight, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_pelt_divider(%struct.sched_avg* nocapture noundef readonly %avg) unnamed_addr #4 {
entry:
  %period_contrib = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg, i64 0, i32 4
  %0 = load i32, i32* %period_contrib, align 4
  %add = add i32 %0, 46718
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #18 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* noundef nonnull %remainder) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @se_weight(%struct.sched_entity* nocapture noundef readonly %se) unnamed_addr #4 {
entry:
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %weight, align 64
  %tobool.not = icmp eq i64 %0, 0
  %shr = lshr i64 %0, 10
  %1 = icmp ugt i64 %shr, 2
  %cond = select i1 %1, i64 %shr, i64 2
  %__w.0 = select i1 %tobool.not, i64 0, i64 %cond
  ret i64 %__w.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @enqueue_load_avg(%struct.cfs_rq* nocapture noundef %cfs_rq, %struct.sched_entity* nocapture noundef readonly %se) unnamed_addr #11 {
entry:
  %load_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  %0 = load i64, i64* %load_avg, align 32
  %load_avg2 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 5
  %1 = load i64, i64* %load_avg2, align 32
  %add = add i64 %1, %0
  store i64 %add, i64* %load_avg2, align 32
  %call = call fastcc i64 @se_weight(%struct.sched_entity* noundef %se) #27
  %load_sum = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %2 = load i64, i64* %load_sum, align 8
  %mul = mul i64 %2, %call
  %load_sum5 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 1
  %3 = load i64, i64* %load_sum5, align 8
  %add6 = add i64 %3, %mul
  store i64 %add6, i64* %load_sum5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_load_add(%struct.load_weight* nocapture noundef %lw, i64 noundef %inc) unnamed_addr #11 {
entry:
  %weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 0
  %0 = load i64, i64* %weight, align 8
  %add = add i64 %0, %inc
  store i64 %add, i64* %weight, align 8
  %inv_weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 1
  store i32 0, i32* %inv_weight, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock_task(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %clock_task = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 16
  %0 = load i64, i64* %clock_task, align 64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @calc_delta_fair(i64 noundef %delta, %struct.sched_entity* nocapture noundef %se) unnamed_addr #19 {
entry:
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %weight, align 64
  %cmp.not = icmp eq i64 %0, 1048576
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %load = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0
  %call = call fastcc i64 @__calc_delta(i64 noundef %delta, i64 noundef 1048576, %struct.load_weight* noundef %load) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %delta.addr.0 = phi i64 [ %call, %if.then ], [ %delta, %entry ]
  ret i64 %delta.addr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_min_vruntime(%struct.cfs_rq* nocapture noundef %cfs_rq) unnamed_addr #11 {
entry:
  %curr1 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  %0 = load %struct.sched_entity*, %struct.sched_entity** %curr1, align 64
  %rb_leftmost = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 6, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 5
  %2 = load i64, i64* %min_vruntime, align 8
  %tobool.not = icmp eq %struct.sched_entity* %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %0, i64 0, i32 3
  %3 = load i32, i32* %on_rq, align 8
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.then
  %vruntime4 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %0, i64 0, i32 6
  %4 = load i64, i64* %vruntime4, align 16
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then3, %entry
  %vruntime.0 = phi i64 [ %4, %if.then3 ], [ %2, %entry ], [ %2, %if.then ]
  %curr.0 = phi %struct.sched_entity* [ %0, %if.then3 ], [ null, %entry ], [ null, %if.then ]
  %tobool6.not = icmp eq %struct.rb_node* %1, null
  br i1 %tobool6.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end5
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %1, i64 -1, i32 1
  %tobool8.not = icmp eq %struct.sched_entity* %curr.0, null
  %vruntime10 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 10
  %5 = bitcast %struct.rb_node** %vruntime10 to i64*
  %6 = load i64, i64* %5, align 16
  br i1 %tobool8.not, label %if.end14, label %if.else11

if.else11:                                        ; preds = %if.then7
  %call = call fastcc i64 @min_vruntime(i64 noundef %vruntime.0, i64 noundef %6) #27
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.else11, %if.end5
  %vruntime.2 = phi i64 [ %vruntime.0, %if.end5 ], [ %call, %if.else11 ], [ %6, %if.then7 ]
  %call16 = call fastcc i64 @max_vruntime(i64 noundef %2, i64 noundef %vruntime.2) #27
  store i64 %call16, i64* %min_vruntime, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @account_group_exec_runtime(%struct.task_struct* nocapture noundef readonly %tsk, i64 noundef %ns) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.thread_group_cputimer* @get_running_cputimer(%struct.task_struct* noundef %tsk) #27
  %tobool.not = icmp eq %struct.thread_group_cputimer* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sum_exec_runtime = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %call, i64 0, i32 0, i32 2
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %ns, %struct.atomic64_t* noundef %sum_exec_runtime) #25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__calc_delta(i64 noundef %delta_exec, i64 noundef %weight, %struct.load_weight* nocapture noundef %lw) unnamed_addr #19 {
entry:
  %tobool.not = icmp eq i64 %weight, 0
  %shr = lshr i64 %weight, 10
  %0 = icmp ugt i64 %shr, 2
  %cond = select i1 %0, i64 %shr, i64 2
  %__w.0 = select i1 %tobool.not, i64 0, i64 %cond
  %shr2 = lshr i64 %__w.0, 32
  %conv = trunc i64 %shr2 to i32
  call fastcc void @__update_inv_weight(%struct.load_weight* noundef %lw) #27
  %tobool3.not = icmp eq i32 %conv, 0
  br i1 %tobool3.not, label %if.end9, label %if.then7, !prof !8

if.then7:                                         ; preds = %entry
  %1 = call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #24, !range !14
  %narrow.i = sub nuw nsw i32 32, %1
  %sh_prom = zext i32 %narrow.i to i64
  %shr8 = lshr i64 %__w.0, %sh_prom
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry
  %fact.0 = phi i64 [ %shr8, %if.then7 ], [ %__w.0, %entry ]
  %shift.0 = phi i32 [ %1, %if.then7 ], [ 32, %entry ]
  %conv10 = trunc i64 %fact.0 to i32
  %inv_weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 1
  %2 = load i32, i32* %inv_weight, align 8
  %call11 = call fastcc i64 @mul_u32_u32(i32 noundef %conv10, i32 noundef %2) #27
  %shr12 = lshr i64 %call11, 32
  %conv13 = trunc i64 %shr12 to i32
  %tobool14.not = icmp eq i32 %conv13, 0
  %3 = call i32 @llvm.ctlz.i32(i32 %conv13, i1 false) #24, !range !14
  %narrow.i49 = sub nuw nsw i32 32, %3
  %narrow = select i1 %tobool14.not, i32 0, i32 %narrow.i49
  %shr19 = zext i32 %narrow to i64
  %fact.1 = lshr i64 %call11, %shr19
  %shift.1 = sub nsw i32 %shift.0, %narrow
  %conv21 = trunc i64 %fact.1 to i32
  %call22 = call fastcc i64 @mul_u64_u32_shr(i64 noundef %delta_exec, i32 noundef %conv21, i32 noundef %shift.1) #27
  ret i64 %call22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__update_inv_weight(%struct.load_weight* nocapture noundef %lw) unnamed_addr #11 {
entry:
  %inv_weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 1
  %0 = load i32, i32* %inv_weight, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !10

if.end:                                           ; preds = %entry
  %weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %lw, i64 0, i32 0
  %1 = load i64, i64* %weight, align 8
  %tobool3.not = icmp eq i64 %1, 0
  %shr = lshr i64 %1, 10
  %2 = icmp ugt i64 %shr, 2
  %cond = select i1 %2, i64 %shr, i64 2
  %__w.0 = select i1 %tobool3.not, i64 0, i64 %cond
  %cmp8 = icmp ugt i64 %__w.0, 4294967294
  %brmerge = or i1 %cmp8, %tobool3.not
  %.mux = select i1 %cmp8, i32 1, i32 -1, !prof !15
  br i1 %brmerge, label %cleanup.sink.split, label %if.else31, !prof !16

if.else31:                                        ; preds = %if.end
  %div.rhs.trunc = trunc i64 %__w.0 to i32
  %div50 = udiv i32 -1, %div.rhs.trunc
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.else31
  %.sink = phi i32 [ %div50, %if.else31 ], [ %.mux, %if.end ]
  store i32 %.sink, i32* %inv_weight, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mul_u32_u32(i32 noundef %a, i32 noundef %b) unnamed_addr #8 {
entry:
  %conv = zext i32 %a to i64
  %conv1 = zext i32 %b to i64
  %mul = mul nuw i64 %conv1, %conv
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mul_u64_u32_shr(i64 noundef %a, i32 noundef %mul, i32 noundef %shift) unnamed_addr #8 {
entry:
  %conv = zext i64 %a to i128
  %conv1 = zext i32 %mul to i128
  %mul2 = mul nuw nsw i128 %conv1, %conv
  %sh_prom = zext i32 %shift to i128
  %shr = lshr i128 %mul2, %sh_prom
  %conv3 = trunc i128 %shr to i64
  ret i64 %conv3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @min_vruntime(i64 noundef %min_vruntime, i64 noundef %vruntime) unnamed_addr #8 {
entry:
  %sub = sub i64 %vruntime, %min_vruntime
  %cmp = icmp slt i64 %sub, 0
  %spec.select = select i1 %cmp, i64 %vruntime, i64 %min_vruntime
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @max_vruntime(i64 noundef %max_vruntime, i64 noundef %vruntime) unnamed_addr #8 {
entry:
  %sub = sub i64 %vruntime, %max_vruntime
  %cmp = icmp sgt i64 %sub, 0
  %spec.select = select i1 %cmp, i64 %vruntime, i64 %max_vruntime
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.thread_group_cputimer* @get_running_cputimer(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #7 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 1
  %1 = load volatile i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cputimer1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 19
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %tobool3.not = icmp eq %struct.sighand_struct* %2, null
  %.cputimer1 = select i1 %tobool3.not, %struct.thread_group_cputimer* null, %struct.thread_group_cputimer* %cputimer1, !prof !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.thread_group_cputimer* [ null, %entry ], [ %.cputimer1, %if.end ]
  ret %struct.thread_group_cputimer* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #24, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #13 {
entry:
  %conv = zext i32 %divisor to i64
  %div = udiv i64 %dividend, %conv
  %0 = mul i64 %div, %conv
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @entity_before(%struct.sched_entity* nocapture noundef readonly %a, %struct.sched_entity* nocapture noundef readonly %b) unnamed_addr #4 {
entry:
  %vruntime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %a, i64 0, i32 6
  %0 = load i64, i64* %vruntime, align 16
  %vruntime1 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %b, i64 0, i32 6
  %1 = load i64, i64* %vruntime1, align 16
  %sub = sub i64 %0, %1
  %cmp = icmp slt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_entity* @__pick_next_entity(%struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  %run_node = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 1
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %run_node) #25
  %tobool.not = icmp eq %struct.rb_node* %call, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %call, i64 -1, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.sched_entity*
  %retval.0 = select i1 %tobool.not, %struct.sched_entity* null, %struct.sched_entity* %0
  ret %struct.sched_entity* %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @wakeup_preempt_entity(%struct.sched_entity* nocapture noundef readonly %curr, %struct.sched_entity* nocapture noundef %se) unnamed_addr #19 {
entry:
  %vruntime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %curr, i64 0, i32 6
  %0 = load i64, i64* %vruntime, align 16
  %vruntime1 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 6
  %1 = load i64, i64* %vruntime1, align 16
  %sub = sub i64 %0, %1
  %cmp = icmp slt i64 %sub, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @wakeup_gran(%struct.sched_entity* noundef %se) #27
  %cmp2 = icmp sgt i64 %sub, %call
  %. = zext i1 %cmp2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @wakeup_gran(%struct.sched_entity* nocapture noundef %se) unnamed_addr #19 {
entry:
  %0 = load i32, i32* @sysctl_sched_wakeup_granularity, align 4
  %conv = zext i32 %0 to i64
  %call = call fastcc i64 @calc_delta_fair(i64 noundef %conv, %struct.sched_entity* noundef %se) #27
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @clear_buddies(%struct.cfs_rq* nocapture noundef readonly %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %last = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 9
  %0 = load %struct.sched_entity*, %struct.sched_entity** %last, align 16
  %cmp = icmp eq %struct.sched_entity* %0, %se
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__clear_buddies_last(%struct.sched_entity* noundef %se) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %next = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 8
  %1 = load %struct.sched_entity*, %struct.sched_entity** %next, align 8
  %cmp1 = icmp eq %struct.sched_entity* %1, %se
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call fastcc void @__clear_buddies_next(%struct.sched_entity* noundef %se) #27
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %skip = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 10
  %2 = load %struct.sched_entity*, %struct.sched_entity** %skip, align 8
  %cmp4 = icmp eq %struct.sched_entity* %2, %se
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call fastcc void @__clear_buddies_skip(%struct.sched_entity* noundef %se) #27
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dequeue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  %run_node = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 1
  %tasks_timeline = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 6
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %run_node, %struct.rb_root_cached* noundef %tasks_timeline) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef %flags) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @cfs_rq_clock_pelt(%struct.cfs_rq* noundef %cfs_rq) #27
  %last_update_time = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 0
  %0 = load i64, i64* %last_update_time, align 64
  %tobool.not = icmp ne i64 %0, 0
  %and = and i32 %flags, 2
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @__update_load_avg_se(i64 noundef %call, %struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call fastcc i32 @update_cfs_rq_load_avg(i64 noundef %call, %struct.cfs_rq* noundef %cfs_rq) #27
  %1 = load i64, i64* %last_update_time, align 64
  %tobool7.not = icmp ne i64 %1, 0
  %and9 = and i32 %flags, 4
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond36 = or i1 %tobool10.not, %tobool7.not
  br i1 %or.cond36, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.end
  call fastcc void @attach_entity_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_stats_curr_start(%struct.cfs_rq* noundef readonly %cfs_rq, %struct.sched_entity* nocapture noundef writeonly %se) unnamed_addr #11 {
entry:
  %call = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  %call1 = call fastcc i64 @rq_clock_task(%struct.rq* noundef %call) #27
  %exec_start = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 4
  store i64 %call1, i64* %exec_start, align 64
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__clear_buddies_last(%struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %tobool.not8 = icmp eq %struct.sched_entity* %se, null
  br i1 %tobool.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se) #27
  %last = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 9
  %0 = load %struct.sched_entity*, %struct.sched_entity** %last, align 16
  %cmp.not = icmp eq %struct.sched_entity* %0, %se
  br i1 %cmp.not, label %cleanup, label %for.end

cleanup:                                          ; preds = %for.body
  store %struct.sched_entity* null, %struct.sched_entity** %last, align 16
  br label %for.end

for.end:                                          ; preds = %for.body, %cleanup, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__clear_buddies_next(%struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %tobool.not8 = icmp eq %struct.sched_entity* %se, null
  br i1 %tobool.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se) #27
  %next = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 8
  %0 = load %struct.sched_entity*, %struct.sched_entity** %next, align 8
  %cmp.not = icmp eq %struct.sched_entity* %0, %se
  br i1 %cmp.not, label %cleanup, label %for.end

cleanup:                                          ; preds = %for.body
  store %struct.sched_entity* null, %struct.sched_entity** %next, align 8
  br label %for.end

for.end:                                          ; preds = %for.body, %cleanup, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__clear_buddies_skip(%struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %tobool.not8 = icmp eq %struct.sched_entity* %se, null
  br i1 %tobool.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se) #27
  %skip = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 10
  %0 = load %struct.sched_entity*, %struct.sched_entity** %skip, align 8
  %cmp.not = icmp eq %struct.sched_entity* %0, %se
  br i1 %cmp.not, label %cleanup, label %for.end

cleanup:                                          ; preds = %for.body
  store %struct.sched_entity* null, %struct.sched_entity** %skip, align 8
  br label %for.end

for.end:                                          ; preds = %for.body, %cleanup, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_erase_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root) unnamed_addr #1 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %cmp = icmp eq %struct.rb_node* %0, %node
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %node) #25
  store %struct.rb_node* %call, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_erase(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__update_load_avg_se(i64 noundef, %struct.cfs_rq* noundef, %struct.sched_entity* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @update_cfs_rq_load_avg(i64 noundef %now, %struct.cfs_rq* noundef %cfs_rq) unnamed_addr #1 {
entry:
  %nr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 13, i32 1
  %0 = load i32, i32* %nr, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end104, label %if.then

if.then:                                          ; preds = %entry
  %avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12
  %call = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #27
  %lock = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 13, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #27
  %util_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 13, i32 3
  %1 = load i64, i64* %util_avg, align 16
  store i64 0, i64* %util_avg, align 16
  %load_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 13, i32 2
  %2 = load i64, i64* %load_avg, align 8
  store i64 0, i64* %load_avg, align 8
  %runnable_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 13, i32 4
  %3 = load i64, i64* %runnable_avg, align 8
  store i64 0, i64* %runnable_avg, align 8
  store i32 0, i32* %nr, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #27
  %load_avg25 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 5
  %4 = load volatile i64, i64* %load_avg25, align 8
  %5 = call i64 @llvm.usub.sat.i64(i64 %4, i64 %2)
  store volatile i64 %5, i64* %load_avg25, align 8
  %conv = zext i32 %call to i64
  %mul = mul i64 %5, %conv
  %load_sum = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 1
  store i64 %mul, i64* %load_sum, align 8
  %util_avg44 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 7
  %6 = load volatile i64, i64* %util_avg44, align 8
  %7 = call i64 @llvm.usub.sat.i64(i64 %6, i64 %1)
  store volatile i64 %7, i64* %util_avg44, align 8
  %8 = trunc i64 %7 to i32
  %conv71 = mul i32 %call, %8
  %util_sum = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 3
  store i32 %conv71, i32* %util_sum, align 8
  %runnable_avg74 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 6
  %9 = load volatile i64, i64* %runnable_avg74, align 8
  %10 = call i64 @llvm.usub.sat.i64(i64 %9, i64 %3)
  store volatile i64 %10, i64* %runnable_avg74, align 8
  %mul100 = mul i64 %10, %conv
  %runnable_sum = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 2
  store i64 %mul100, i64* %runnable_sum, align 16
  br label %if.end104

if.end104:                                        ; preds = %if.then, %entry
  %decayed.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  %call105 = call i32 @__update_load_avg_cfs_rq(i64 noundef %now, %struct.cfs_rq* noundef %cfs_rq) #25
  %or = or i32 %call105, %decayed.0
  ret i32 %or
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @attach_entity_load_avg(%struct.cfs_rq* nocapture noundef %cfs_rq, %struct.sched_entity* nocapture noundef %se) unnamed_addr #19 {
entry:
  %avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12
  %call = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #27
  %last_update_time = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg, i64 0, i32 0
  %0 = load i64, i64* %last_update_time, align 64
  %last_update_time3 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 0
  store i64 %0, i64* %last_update_time3, align 64
  %period_contrib = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 4
  %1 = load i32, i32* %period_contrib, align 4
  %period_contrib6 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 4
  store i32 %1, i32* %period_contrib6, align 4
  %util_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 7
  %2 = load i64, i64* %util_avg, align 16
  %conv = zext i32 %call to i64
  %3 = trunc i64 %2 to i32
  %conv8 = mul i32 %call, %3
  %util_sum = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 3
  store i32 %conv8, i32* %util_sum, align 8
  %runnable_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 6
  %4 = load i64, i64* %runnable_avg, align 8
  %mul12 = mul i64 %4, %conv
  %runnable_sum = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 2
  store i64 %mul12, i64* %runnable_sum, align 16
  %load_sum = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  store i64 %conv, i64* %load_sum, align 8
  %call16 = call fastcc i64 @se_weight(%struct.sched_entity* noundef %se) #27
  %tobool.not = icmp eq i64 %call16, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %load_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  %5 = load i64, i64* %load_avg, align 32
  %mul20 = mul i64 %5, %conv
  %conv22 = trunc i64 %call16 to i32
  %call23 = call fastcc i64 @div_u64(i64 noundef %mul20, i32 noundef %conv22) #27
  store i64 %call23, i64* %load_sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @enqueue_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %6 = load i64, i64* %util_avg, align 16
  %util_avg29 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 7
  %7 = load i64, i64* %util_avg29, align 16
  %add = add i64 %7, %6
  store i64 %add, i64* %util_avg29, align 16
  %8 = load i32, i32* %util_sum, align 8
  %util_sum33 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 3
  %9 = load i32, i32* %util_sum33, align 8
  %add34 = add i32 %9, %8
  store i32 %add34, i32* %util_sum33, align 8
  %10 = load i64, i64* %runnable_avg, align 8
  %runnable_avg38 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 6
  %11 = load i64, i64* %runnable_avg38, align 8
  %add39 = add i64 %11, %10
  store i64 %add39, i64* %runnable_avg38, align 8
  %12 = load i64, i64* %runnable_sum, align 16
  %runnable_sum43 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 2
  %13 = load i64, i64* %runnable_sum43, align 16
  %add44 = add i64 %13, %12
  store i64 %add44, i64* %runnable_sum43, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #27
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__update_load_avg_cfs_rq(i64 noundef, %struct.cfs_rq* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #25
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #27
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #24, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #24, !srcloc !21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_fits_capacity(%struct.task_struct* noundef %p, i64 noundef %capacity) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @uclamp_task_util(%struct.task_struct* noundef %p) #27
  %mul = mul i64 %call, 1280
  %mul1 = shl i64 %capacity, 10
  %cmp = icmp ult i64 %mul, %mul1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @task_h_load(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %load_avg = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 5
  %0 = load i64, i64* %load_avg, align 32
  ret i64 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @uclamp_task_util(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @task_util_est(%struct.task_struct* noundef %p) #27
  ret i64 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @task_util_est(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @task_util(%struct.task_struct* noundef %p) #27
  %call1 = call fastcc i64 @_task_util_est(%struct.task_struct* noundef %p) #27
  %cmp = icmp ugt i64 %call, %call1
  %cond = select i1 %cmp, i64 %call, i64 %call1
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_util(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %util_avg = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 7
  %0 = load volatile i64, i64* %util_avg, align 16
  ret i64 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_task_util_est(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %ue.sroa.0 = alloca i32, align 8
  %ue.sroa.5 = alloca i32, align 4
  %ue.sroa.0.0.sroa_cast18 = bitcast i32* %ue.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %ue.sroa.0.0.sroa_cast18)
  %ue.sroa.5.0.sroa_cast16 = bitcast i32* %ue.sroa.5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %ue.sroa.5.0.sroa_cast16)
  %ue.sroa.0.0..sroa_idx = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 8, i32 0
  %ue.sroa.0.0.copyload = load volatile i32, i32* %ue.sroa.0.0..sroa_idx, align 8
  store volatile i32 %ue.sroa.0.0.copyload, i32* %ue.sroa.0, align 8
  %ue.sroa.5.0..sroa_idx8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 8, i32 1
  %ue.sroa.5.0.copyload = load volatile i32, i32* %ue.sroa.5.0..sroa_idx8, align 4
  store volatile i32 %ue.sroa.5.0.copyload, i32* %ue.sroa.5, align 4
  %and = and i32 %ue.sroa.0.0.copyload, 2147483647
  %cmp = icmp ugt i32 %ue.sroa.5.0.copyload, %and
  %cond = select i1 %cmp, i32 %ue.sroa.5.0.copyload, i32 %and
  %conv = zext i32 %cond to i64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %ue.sroa.0.0.sroa_cast18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %ue.sroa.5.0.sroa_cast16)
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @scale_rt_capacity(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call = call fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) #27
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %do.end6, !prof !10

do.end6:                                          ; preds = %entry
  %util_avg = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 36, i32 7
  %2 = load volatile i64, i64* %util_avg, align 16
  %util_avg12 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 37, i32 7
  %3 = load volatile i64, i64* %util_avg12, align 16
  %add13 = add i64 %3, %2
  %cmp16.not = icmp ugt i64 %call, %add13
  %sub = sub i64 %call, %add13
  %spec.select = select i1 %cmp16.not, i64 %sub, i64 1, !prof !8
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ %spec.select, %do.end6 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %clock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 15
  %0 = load i64, i64* %clock, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_next_balance(%struct.sched_domain* nocapture noundef readonly %sd, i64* nocapture noundef %next_balance) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @get_sd_balance_interval(%struct.sched_domain* noundef %sd, i32 noundef 0) #27
  %last_balance = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 11
  %0 = load i64, i64* %last_balance, align 8
  %add = add i64 %0, %call
  %1 = load i64, i64* %next_balance, align 8
  %sub = sub i64 %add, %1
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %add, i64* %next_balance, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(%struct.rq* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_blocked_averages(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %2 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #24
  %3 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !22
  store i64 0, i64* %3, align 8, !annotation !22
  call fastcc void @rq_lock_irqsave(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #27
  call void @update_rq_clock(%struct.rq* noundef %1) #25
  %call = call fastcc i1 @__update_blocked_others(%struct.rq* noundef %1) #27
  %call4 = call fastcc i1 @__update_blocked_fair(%struct.rq* noundef %1) #27
  call fastcc void @rq_unlock_irqrestore(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock_cpu(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @load_balance(i32 noundef %this_cpu, %struct.rq* noundef %this_rq, %struct.sched_domain* noundef %sd, i32 noundef %idle, i32* nocapture noundef writeonly %continue_balancing) unnamed_addr #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %env = alloca %struct.lb_env, align 8
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 0
  %0 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %1 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #24
  %2 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !22
  store i64 0, i64* %2, align 8, !annotation !22
  %call = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call, ptrtoint ([1 x %struct.cpumask]* @load_balance_mask to i64)
  %3 = inttoptr i64 %add to %struct.cpumask*
  %4 = bitcast %struct.lb_env* %env to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %4) #24
  %sd2 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  store %struct.sched_domain* %sd, %struct.sched_domain** %sd2, align 8
  %src_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 1
  store %struct.rq* null, %struct.rq** %src_rq, align 8
  %src_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 2
  store i32 0, i32* %src_cpu, align 8
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  store i32 %this_cpu, i32* %dst_cpu, align 4
  %dst_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 4
  store %struct.rq* %this_rq, %struct.rq** %dst_rq, align 8
  %dst_grpmask = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 5
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  %5 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %call3 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %5) #27
  store %struct.cpumask* %call3, %struct.cpumask** %dst_grpmask, align 8
  %new_dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 6
  store i32 0, i32* %new_dst_cpu, align 8
  %idle4 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  store i32 %idle, i32* %idle4, align 4
  %imbalance = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 0, i64* %imbalance, align 8
  %cpus5 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 9
  store %struct.cpumask* %3, %struct.cpumask** %cpus5, align 8
  %flags = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 10
  store i32 0, i32* %flags, align 8
  %loop = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 11
  store i32 0, i32* %loop, align 4
  %loop_break = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 12
  store i32 32, i32* %loop_break, align 8
  %loop_max = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 13
  store i32 0, i32* %loop_max, align 4
  %fbq_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 14
  store i32 2, i32* %fbq_type, align 8
  %migration_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 0, i32* %migration_type, align 4
  %tasks = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 16
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %tasks, i64 0, i32 0
  store %struct.list_head* %tasks, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 16, i32 1
  store %struct.list_head* %tasks, %struct.list_head** %prev, align 8
  %call8 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #27
  call fastcc void @cpumask_and(%struct.cpumask* noundef %3, %struct.cpumask* noundef %call8, %struct.cpumask* noundef nonnull @__cpu_active_mask) #27
  %call13326 = call fastcc i32 @should_we_balance(%struct.lb_env* noundef nonnull %env) #27
  %tobool.not327 = icmp eq i32 %call13326, 0
  br i1 %tobool.not327, label %if.then, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %6 = load i32, i32* @sysctl_sched_nr_migrate, align 4
  %tobool106.not = icmp eq %struct.sched_domain* %0, null
  %groups108 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 2
  br label %if.end

if.then:                                          ; preds = %if.then135, %entry
  store i32 0, i32* %continue_balancing, align 4
  br label %out_balanced

if.end:                                           ; preds = %if.end.lr.ph, %if.then135
  %call14 = call fastcc %struct.sched_group* @find_busiest_group(%struct.lb_env* noundef nonnull %env) #27
  %tobool15.not = icmp eq %struct.sched_group* %call14, null
  br i1 %tobool15.not, label %out_balanced, label %if.end20

if.end20:                                         ; preds = %if.end
  %call21 = call fastcc %struct.rq* @find_busiest_queue(%struct.lb_env* noundef nonnull %env, %struct.sched_group* noundef nonnull %call14) #27
  %tobool22.not = icmp eq %struct.rq* %call21, null
  br i1 %tobool22.not, label %out_balanced, label %do.body28

do.body28:                                        ; preds = %if.end20
  %7 = load %struct.rq*, %struct.rq** %dst_rq, align 8
  %cmp = icmp eq %struct.rq* %call21, %7
  br i1 %cmp, label %do.body33, label %do.end44, !prof !10

do.body33:                                        ; preds = %do.body28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/fair.c\22; .popsection; .long 14472b - 14470b; .short 9827; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !23
  unreachable

do.end44:                                         ; preds = %do.body28
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %call21, i64 0, i32 32
  %8 = load i32, i32* %cpu, align 16
  store i32 %8, i32* %src_cpu, align 8
  store %struct.rq* %call21, %struct.rq** %src_rq, align 8
  %9 = load i32, i32* %flags, align 8
  %or = or i32 %9, 1
  store i32 %or, i32* %flags, align 8
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %call21, i64 0, i32 1
  %10 = load i32, i32* %nr_running, align 4
  %cmp48 = icmp ugt i32 %10, 1
  br i1 %cmp48, label %if.then50, label %do.end145

if.then50:                                        ; preds = %do.end44
  %cmp53 = icmp ult i32 %6, %10
  %cond = select i1 %cmp53, i32 %6, i32 %10
  store i32 %cond, i32* %loop_max, align 4
  br label %more_balance

more_balance:                                     ; preds = %more_balance.backedge, %if.then50
  %ld_moved.0 = phi i32 [ 0, %if.then50 ], [ %ld_moved.1, %more_balance.backedge ]
  call fastcc void @rq_lock_irqsave(%struct.rq* noundef nonnull %call21, %struct.rq_flags* noundef nonnull %rf) #27
  call void @update_rq_clock(%struct.rq* noundef nonnull %call21) #25
  %call56 = call fastcc i32 @detach_tasks(%struct.lb_env* noundef nonnull %env) #27
  call fastcc void @rq_unlock(%struct.rq* noundef nonnull %call21) #27
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body62, label %if.then58

if.then58:                                        ; preds = %more_balance
  call fastcc void @attach_tasks(%struct.lb_env* noundef nonnull %env) #27
  %add59 = add i32 %call56, %ld_moved.0
  br label %do.body62

do.body62:                                        ; preds = %if.then58, %more_balance
  %ld_moved.1 = phi i32 [ %add59, %if.then58 ], [ %ld_moved.0, %more_balance ]
  %11 = load i64, i64* %2, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %11) #27
  %12 = load i32, i32* %flags, align 8
  %and = and i32 %12, 2
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %if.end79, label %if.then76

if.then76:                                        ; preds = %do.body62
  %and78 = and i32 %12, -3
  store i32 %and78, i32* %flags, align 8
  br label %more_balance.backedge

more_balance.backedge:                            ; preds = %if.then76, %if.then86
  br label %more_balance

if.end79:                                         ; preds = %do.body62
  %and81 = and i32 %12, 4
  %tobool82 = icmp ne i32 %and81, 0
  %13 = load i64, i64* %imbalance, align 8
  %cmp84 = icmp sgt i64 %13, 0
  %or.cond = select i1 %tobool82, i1 %cmp84, i1 false
  br i1 %or.cond, label %if.then86, label %if.end105

if.then86:                                        ; preds = %if.end79
  %14 = load i32, i32* %dst_cpu, align 4
  %15 = load %struct.cpumask*, %struct.cpumask** %cpus5, align 8
  call fastcc void @__cpumask_clear_cpu(i32 noundef %14, %struct.cpumask* noundef %15) #27
  %16 = load i32, i32* %new_dst_cpu, align 8
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  %add97 = add i64 %17, ptrtoint (%struct.rq* @runqueues to i64)
  %18 = inttoptr i64 %add97 to %struct.rq*
  store %struct.rq* %18, %struct.rq** %dst_rq, align 8
  store i32 %16, i32* %dst_cpu, align 4
  %19 = load i32, i32* %flags, align 8
  %and102 = and i32 %19, -5
  store i32 %and102, i32* %flags, align 8
  store i32 0, i32* %loop, align 4
  store i32 32, i32* %loop_break, align 8
  br label %more_balance.backedge

if.end105:                                        ; preds = %if.end79
  br i1 %tobool106.not, label %if.end119, label %if.then107

if.then107:                                       ; preds = %if.end105
  %and111 = and i32 %12, 8
  %tobool112 = icmp ne i32 %and111, 0
  %or.cond239 = select i1 %tobool112, i1 %cmp84, i1 false
  br i1 %or.cond239, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.then107
  %20 = load %struct.sched_group*, %struct.sched_group** %groups108, align 8
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %20, i64 0, i32 3
  %21 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %imbalance109 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %21, i64 0, i32 5
  store i32 1, i32* %imbalance109, align 4
  %.pre = load i32, i32* %flags, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then107, %if.then117, %if.end105
  %22 = phi i32 [ %12, %if.then107 ], [ %.pre, %if.then117 ], [ %12, %if.end105 ]
  %and121 = and i32 %22, 1
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end140, label %if.then130, !prof !8

if.then130:                                       ; preds = %if.end119
  %call131 = call fastcc i32 @cpu_of(%struct.rq* noundef nonnull %call21) #27
  call fastcc void @__cpumask_clear_cpu(i32 noundef %call131, %struct.cpumask* noundef %3) #27
  %23 = load %struct.cpumask*, %struct.cpumask** %dst_grpmask, align 8
  %call133 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %3, %struct.cpumask* noundef %23) #27
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %do.end208

if.then135:                                       ; preds = %if.then130
  store i32 0, i32* %loop, align 4
  store i32 32, i32* %loop_break, align 8
  %call13 = call fastcc i32 @should_we_balance(%struct.lb_env* noundef nonnull %env) #27
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.end140:                                        ; preds = %if.end119
  %tobool141.not = icmp eq i32 %ld_moved.1, 0
  br i1 %tobool141.not, label %do.end145, label %if.else

do.end145:                                        ; preds = %do.end44, %if.end140
  %cmp146.not = icmp eq i32 %idle, 2
  br i1 %cmp146.not, label %if.end149, label %if.then148

if.then148:                                       ; preds = %do.end145
  %nr_balance_failed = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 13
  %24 = load i32, i32* %nr_balance_failed, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %nr_balance_failed, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %do.end145
  %call150 = call fastcc i32 @need_active_balance(%struct.lb_env* noundef nonnull %env) #27
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then189, label %if.then152

if.then152:                                       ; preds = %if.end149
  %call155 = call fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef nonnull %call21) #27
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %call21, i64 0, i32 9
  %25 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i64 0, i32 25
  %26 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call158 = call fastcc i32 @cpumask_test_cpu(i32 noundef %this_cpu, %struct.cpumask* noundef %26) #27
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %cleanup, label %if.end161

if.end161:                                        ; preds = %if.then152
  %27 = load i32, i32* %flags, align 8
  %and163 = and i32 %27, -2
  store i32 %and163, i32* %flags, align 8
  %active_balance164 = getelementptr inbounds %struct.rq, %struct.rq* %call21, i64 0, i32 29
  %28 = load i32, i32* %active_balance164, align 8
  %tobool165.not = icmp eq i32 %28, 0
  br i1 %tobool165.not, label %lor.lhs.false, label %if.end176.thread318

if.end176.thread318:                              ; preds = %if.end161
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef nonnull %call21, i64 noundef %call155) #27
  br label %if.then189

cleanup:                                          ; preds = %if.then152
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef nonnull %call21, i64 noundef %call155) #27
  br label %out_one_pinned

if.else:                                          ; preds = %if.end140
  %nr_balance_failed175 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 13
  store i32 0, i32* %nr_balance_failed175, align 4
  br label %if.then189

lor.lhs.false:                                    ; preds = %if.end161
  store i32 1, i32* %active_balance164, align 8
  %push_cpu = getelementptr inbounds %struct.rq, %struct.rq* %call21, i64 0, i32 30
  store i32 %this_cpu, i32* %push_cpu, align 4
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef nonnull %call21, i64 noundef %call155) #27
  %call171 = call fastcc i32 @cpu_of(%struct.rq* noundef nonnull %call21) #27
  %29 = bitcast %struct.rq* %call21 to i8*
  %active_balance_work = getelementptr inbounds %struct.rq, %struct.rq* %call21, i64 0, i32 31
  %call172 = call i1 @stop_one_cpu_nowait(i32 noundef %call171, i32 (i8*)* noundef nonnull @active_load_balance_cpu_stop, i8* noundef nonnull %29, %struct.cpu_stop_work* noundef %active_balance_work) #25
  %call187 = call fastcc i32 @need_active_balance(%struct.lb_env* noundef nonnull %env) #27
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %cleanup230, label %if.then189

if.then189:                                       ; preds = %if.end149, %if.else, %if.end176.thread318, %lor.lhs.false
  %ld_moved.2308317 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end176.thread318 ], [ 0, %if.end149 ], [ %ld_moved.1, %if.else ]
  %min_interval = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 3
  %30 = load i64, i64* %min_interval, align 8
  %conv190 = trunc i64 %30 to i32
  %balance_interval = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 12
  store i32 %conv190, i32* %balance_interval, align 8
  br label %cleanup230

out_balanced:                                     ; preds = %if.end20, %if.end, %if.then
  %tobool192.not = icmp eq %struct.sched_domain* %0, null
  br i1 %tobool192.not, label %do.end208, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %out_balanced
  %31 = load i32, i32* %flags, align 8
  %and195 = and i32 %31, 1
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.then197, label %do.end208

if.then197:                                       ; preds = %land.lhs.true193
  %groups199 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 2
  %32 = load %struct.sched_group*, %struct.sched_group** %groups199, align 8
  %sgc200 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %32, i64 0, i32 3
  %33 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc200, align 8
  %imbalance201 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %33, i64 0, i32 5
  %34 = load i32, i32* %imbalance201, align 4
  %tobool202.not = icmp eq i32 %34, 0
  br i1 %tobool202.not, label %do.end208, label %if.then203

if.then203:                                       ; preds = %if.then197
  store i32 0, i32* %imbalance201, align 4
  br label %do.end208

do.end208:                                        ; preds = %if.then130, %if.then197, %if.then203, %land.lhs.true193, %out_balanced
  %nr_balance_failed209 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 13
  store i32 0, i32* %nr_balance_failed209, align 4
  br label %out_one_pinned

out_one_pinned:                                   ; preds = %cleanup, %do.end208
  %35 = load i32, i32* %idle4, align 4
  %cmp211 = icmp eq i32 %35, 2
  br i1 %cmp211, label %cleanup230, label %if.end214

if.end214:                                        ; preds = %out_one_pinned
  %36 = load i32, i32* %flags, align 8
  %and216 = and i32 %36, 1
  %tobool217.not = icmp ne i32 %and216, 0
  %balance_interval223.phi.trans.insert = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 12
  %.pre335 = load i32, i32* %balance_interval223.phi.trans.insert, align 8
  %cmp220 = icmp ult i32 %.pre335, 512
  %or.cond343 = select i1 %tobool217.not, i1 %cmp220, i1 false
  br i1 %or.cond343, label %if.then227, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %if.end214
  %conv224 = zext i32 %.pre335 to i64
  %max_interval = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 4
  %37 = load i64, i64* %max_interval, align 8
  %cmp225 = icmp ugt i64 %37, %conv224
  br i1 %cmp225, label %if.then227, label %cleanup230

if.then227:                                       ; preds = %if.end214, %lor.lhs.false222
  %balance_interval228 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 12
  %mul = shl i32 %.pre335, 1
  store i32 %mul, i32* %balance_interval228, align 8
  br label %cleanup230

cleanup230:                                       ; preds = %if.then189, %lor.lhs.false, %out_one_pinned, %if.then227, %lor.lhs.false222
  %retval.0 = phi i32 [ 0, %out_one_pinned ], [ 0, %if.then227 ], [ 0, %lor.lhs.false222 ], [ %ld_moved.2308317, %if.then189 ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %4) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #24
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %rq, i32 noundef 0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_sd_balance_interval(%struct.sched_domain* nocapture noundef readonly %sd, i32 noundef %cpu_busy) unnamed_addr #1 {
entry:
  %balance_interval = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 12
  %0 = load i32, i32* %balance_interval, align 8
  %tobool.not = icmp eq i32 %cpu_busy, 0
  br i1 %tobool.not, label %if.else.i, label %if.then

if.then:                                          ; preds = %entry
  %busy_factor = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 5
  %1 = load i32, i32* %busy_factor, align 8
  %mul = mul i32 %1, %0
  br label %if.else.i

if.else.i:                                        ; preds = %entry, %if.then
  %interval.0 = phi i32 [ %mul, %if.then ], [ %0, %entry ]
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %interval.0) #25
  %not.tobool.not = xor i1 %tobool.not, true
  %sub = sext i1 %not.tobool.not to i64
  %spec.select = add i64 %call2.i, %sub
  %cmp = icmp ugt i64 %spec.select, 1
  %cond = select i1 %cmp, i64 %spec.select, i64 1
  %2 = load i64, i64* @max_load_balance_interval, align 8
  %cmp8 = icmp ult i64 %cond, %2
  %cond13 = select i1 %cmp8, i64 %cond, i64 %2
  ret i64 %cond13
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !25
  call void @rcu_read_unlock_strict() #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_lock_irqsave(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef writeonly %rf) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %rq) #27
  %flags = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0
  store i64 %call, i64* %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(%struct.rq* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__update_blocked_others(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #27
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp = icmp eq %struct.sched_class* %1, @rt_sched_class
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @update_rt_rq_load_avg(i64 noundef %call, %struct.rq* noundef %rq, i32 noundef %conv) #25
  %cmp4 = icmp eq %struct.sched_class* %1, @dl_sched_class
  %conv5 = zext i1 %cmp4 to i32
  %call6 = call i32 @update_dl_rq_load_avg(i64 noundef %call, %struct.rq* noundef %rq, i32 noundef %conv5) #25
  %or = or i32 %call6, %call3
  %tobool = icmp ne i32 %or, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__update_blocked_fair(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5
  %call = call fastcc i64 @cfs_rq_clock_pelt(%struct.cfs_rq* noundef %cfs) #27
  %call1 = call fastcc i32 @update_cfs_rq_load_avg(i64 noundef %call, %struct.cfs_rq* noundef %cfs) #27
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_unlock_irqrestore(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readonly %rf) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %rq, i64 noundef %0) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #27
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) #27
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #27
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #27
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #24, !srcloc !26
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #24, !srcloc !27
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #27
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #24, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_rt_rq_load_avg(i64 noundef, %struct.rq* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_dl_rq_load_avg(i64 noundef, %struct.rq* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %rq, i64 noundef %flags) unnamed_addr #1 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #25
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #24, !srcloc !29
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #21 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #31, !srcloc !30
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_and(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef readnone %sd) unnamed_addr #8 {
entry:
  %arraydecay = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 20, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @should_we_balance(%struct.lb_env* nocapture noundef readonly %env) unnamed_addr #1 {
entry:
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %0 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 2
  %1 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %2 = load i32, i32* %dst_cpu, align 4
  %cpus = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 9
  %3 = load %struct.cpumask*, %struct.cpumask** %cpus, align 8
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %2, %struct.cpumask* noundef %3) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %4 = load i32, i32* %idle, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %cleanup, label %for.cond

for.cond:                                         ; preds = %if.end, %for.body
  %cpu.0 = phi i32 [ %call5, %for.body ], [ -1, %if.end ]
  %call3 = call fastcc %struct.cpumask* @group_balance_mask(%struct.sched_group* noundef %1) #27
  %5 = load %struct.cpumask*, %struct.cpumask** %cpus, align 8
  %call5 = call i32 @cpumask_next_and(i32 noundef %cpu.0, %struct.cpumask* noundef %call3, %struct.cpumask* noundef %5) #28
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp6 = icmp ult i32 %call5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call i32 @idle_cpu(i32 noundef %call5) #25
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond, label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %call13 = call i32 @group_balance_cpu(%struct.sched_group* noundef %1) #25
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body, %for.end
  %call13.sink = phi i32 [ %call13, %for.end ], [ %call5, %for.body ]
  %7 = load i32, i32* %dst_cpu, align 4
  %cmp15 = icmp eq i32 %call13.sink, %7
  %phi.cast = zext i1 %cmp15 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %entry
  %retval.0.shrunk = phi i32 [ 0, %entry ], [ 1, %if.end ], [ %phi.cast, %cleanup.sink.split ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_group* @find_busiest_group(%struct.lb_env* nocapture noundef %env) unnamed_addr #1 {
entry:
  %sds = alloca %struct.sd_lb_stats, align 8
  %0 = bitcast %struct.sd_lb_stats* %sds to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(192) %0, i8 0, i64 192, i1 false), !annotation !22
  call fastcc void @init_sd_lb_stats(%struct.sd_lb_stats* noundef nonnull %sds) #27
  call fastcc void @update_sd_lb_stats(%struct.lb_env* noundef %env, %struct.sd_lb_stats* noundef nonnull %sds) #27
  %busiest13 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 0
  %1 = load %struct.sched_group*, %struct.sched_group** %busiest13, align 8
  %tobool14.not = icmp eq %struct.sched_group* %1, null
  br i1 %tobool14.not, label %out_balanced, label %if.end16

if.end16:                                         ; preds = %entry
  %group_type = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 9
  %2 = load i32, i32* %group_type, align 8
  %.off = add i32 %2, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %force_balance, label %if.end26

if.end26:                                         ; preds = %if.end16
  %group_type27 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 9
  %3 = load i32, i32* %group_type27, align 8
  %cmp29 = icmp ugt i32 %3, %2
  br i1 %cmp29, label %out_balanced, label %if.end31

if.end31:                                         ; preds = %if.end26
  %cmp33 = icmp eq i32 %3, 5
  br i1 %cmp33, label %if.then34, label %if.end53

if.then34:                                        ; preds = %if.end31
  %avg_load = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 0
  %4 = load i64, i64* %avg_load, align 8
  %avg_load35 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 0
  %5 = load i64, i64* %avg_load35, align 8
  %cmp36.not = icmp ult i64 %4, %5
  br i1 %cmp36.not, label %if.end38, label %out_balanced

if.end38:                                         ; preds = %if.then34
  %total_load = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 2
  %6 = load i64, i64* %total_load, align 8
  %mul = shl i64 %6, 10
  %total_capacity = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 3
  %7 = load i64, i64* %total_capacity, align 8
  %div = udiv i64 %mul, %7
  %avg_load39 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 4
  store i64 %div, i64* %avg_load39, align 8
  %cmp42.not = icmp ult i64 %4, %div
  br i1 %cmp42.not, label %if.end44, label %out_balanced

if.end44:                                         ; preds = %if.end38
  %mul46 = mul i64 %5, 100
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %8 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %imbalance_pct = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %8, i64 0, i32 6
  %9 = load i32, i32* %imbalance_pct, align 4
  %conv = zext i32 %9 to i64
  %mul48 = mul i64 %4, %conv
  %cmp49.not = icmp ugt i64 %mul46, %mul48
  br i1 %cmp49.not, label %if.end64, label %out_balanced

if.end53:                                         ; preds = %if.end31
  %prefer_sibling = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 5
  %10 = load i32, i32* %prefer_sibling, align 8
  %tobool54.not = icmp ne i32 %10, 0
  %cmp57 = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool54.not, i1 %cmp57, i1 false
  br i1 %or.cond, label %land.lhs.true59, label %if.end64

land.lhs.true59:                                  ; preds = %if.end53
  %sum_nr_running = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 5
  %11 = load i32, i32* %sum_nr_running, align 8
  %sum_nr_running60 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 5
  %12 = load i32, i32* %sum_nr_running60, align 8
  %add = add i32 %12, 1
  %cmp61 = icmp ugt i32 %11, %add
  %cmp66.not = icmp eq i32 %2, 5
  %or.cond123 = select i1 %cmp61, i1 true, i1 %cmp66.not
  br i1 %or.cond123, label %force_balance, label %if.then68

if.end64:                                         ; preds = %if.end44, %if.end53
  %cmp66.not.old = icmp eq i32 %2, 5
  br i1 %cmp66.not.old, label %force_balance, label %if.then68

if.then68:                                        ; preds = %land.lhs.true59, %if.end64
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %13 = load i32, i32* %idle, align 4
  %cmp69 = icmp eq i32 %13, 1
  br i1 %cmp69, label %out_balanced, label %if.end72

if.end72:                                         ; preds = %if.then68
  %group_weight = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 8
  %14 = load i32, i32* %group_weight, align 4
  %cmp73 = icmp ugt i32 %14, 1
  br i1 %cmp73, label %land.lhs.true75, label %if.end81

land.lhs.true75:                                  ; preds = %if.end72
  %idle_cpus = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 7
  %15 = load i32, i32* %idle_cpus, align 8
  %idle_cpus76 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 7
  %16 = load i32, i32* %idle_cpus76, align 8
  %add77 = add i32 %16, 1
  %cmp78.not = icmp ule i32 %15, %add77
  %sum_h_nr_running = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 6
  %17 = load i32, i32* %sum_h_nr_running, align 4
  %cmp82 = icmp eq i32 %17, 1
  %or.cond125 = select i1 %cmp78.not, i1 true, i1 %cmp82
  br i1 %or.cond125, label %out_balanced, label %force_balance

if.end81:                                         ; preds = %if.end72
  %sum_h_nr_running.old = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 6
  %.old124 = load i32, i32* %sum_h_nr_running.old, align 4
  %cmp82.old = icmp eq i32 %.old124, 1
  br i1 %cmp82.old, label %out_balanced, label %force_balance

force_balance:                                    ; preds = %if.end16, %land.lhs.true75, %if.end64, %if.end81, %land.lhs.true59
  call fastcc void @calculate_imbalance(%struct.lb_env* noundef %env, %struct.sd_lb_stats* noundef nonnull %sds) #27
  %imbalance = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  %18 = load i64, i64* %imbalance, align 8
  %tobool87.not = icmp eq i64 %18, 0
  %19 = load %struct.sched_group*, %struct.sched_group** %busiest13, align 8
  %cond = select i1 %tobool87.not, %struct.sched_group* null, %struct.sched_group* %19
  br label %cleanup90

out_balanced:                                     ; preds = %if.end81, %land.lhs.true75, %if.then68, %if.end44, %if.end38, %if.then34, %if.end26, %entry
  %imbalance89 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 0, i64* %imbalance89, align 8
  br label %cleanup90

cleanup90:                                        ; preds = %out_balanced, %force_balance
  %retval.0 = phi %struct.sched_group* [ null, %out_balanced ], [ %cond, %force_balance ]
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #24
  ret %struct.sched_group* %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rq* @find_busiest_queue(%struct.lb_env* nocapture noundef readonly %env, %struct.sched_group* noundef %group) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %group) #27
  %cpus = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 9
  %0 = load %struct.cpumask*, %struct.cpumask** %cpus, align 8
  %call1110 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %call, %struct.cpumask* noundef %0) #28
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp111 = icmp ult i32 %call1110, %1
  br i1 %cmp111, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %migration_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  %imbalance = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %call1122 = phi i32 [ %call1110, %for.body.lr.ph ], [ %call1, %cleanup ]
  %busiest.0120 = phi %struct.rq* [ null, %for.body.lr.ph ], [ %busiest.2, %cleanup ]
  %busiest_util.0118 = phi i64 [ 0, %for.body.lr.ph ], [ %busiest_util.2, %cleanup ]
  %busiest_load.0116 = phi i64 [ 0, %for.body.lr.ph ], [ %busiest_load.2, %cleanup ]
  %busiest_capacity.0114 = phi i64 [ 1, %for.body.lr.ph ], [ %busiest_capacity.2, %cleanup ]
  %busiest_nr.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %busiest_nr.2, %cleanup ]
  %idxprom = sext i32 %call1122 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 5, i32 2
  %4 = load i32, i32* %h_nr_running, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %for.body
  %call7 = call fastcc i64 @capacity_of(i32 noundef %call1122) #27
  %5 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %5, i64 0, i32 9
  %6 = load i32, i32* %flags, align 8
  %and = and i32 %6, 32
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %7 = load i32, i32* %dst_cpu, align 4
  %call9 = call fastcc i64 @capacity_of(i32 noundef %7) #27
  %mul = shl i64 %call9, 10
  %mul10 = mul i64 %call7, 1078
  %cmp11 = icmp ule i64 %mul, %mul10
  %cmp13 = icmp eq i32 %4, 1
  %or.cond = select i1 %cmp11, i1 %cmp13, i1 false
  br i1 %or.cond, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end6
  %8 = load i32, i32* %migration_type, align 4
  switch i32 %8, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %sw.bb40
    i32 3, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end15
  %call16 = call fastcc i64 @cpu_load(%struct.rq* noundef %3) #27
  %cmp17 = icmp eq i32 %4, 1
  br i1 %cmp17, label %land.lhs.true18, label %if.end25

land.lhs.true18:                                  ; preds = %sw.bb
  %9 = load i64, i64* %imbalance, align 8
  %cmp19 = icmp ugt i64 %call16, %9
  br i1 %cmp19, label %land.lhs.true20, label %if.end25

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %call22 = call fastcc i32 @check_cpu_capacity(%struct.rq* noundef %3, %struct.sched_domain* noundef %5) #27
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %land.lhs.true20, %land.lhs.true18, %sw.bb
  %mul26 = mul i64 %call16, %busiest_capacity.0114
  %mul27 = mul i64 %call7, %busiest_load.0116
  %cmp28 = icmp ugt i64 %mul26, %mul27
  br i1 %cmp28, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.end25
  br label %cleanup

sw.bb31:                                          ; preds = %if.end15
  %call32 = call fastcc i32 @cpu_of(%struct.rq* noundef %3) #27
  %call33 = call fastcc i64 @cpu_util(i32 noundef %call32) #27
  %cmp34 = icmp ult i32 %4, 2
  br i1 %cmp34, label %cleanup, label %if.end36

if.end36:                                         ; preds = %sw.bb31
  %cmp37 = icmp ult i64 %busiest_util.0118, %call33
  %spec.select = select i1 %cmp37, i64 %call33, i64 %busiest_util.0118
  %spec.select105 = select i1 %cmp37, %struct.rq* %3, %struct.rq* %busiest.0120
  br label %cleanup

sw.bb40:                                          ; preds = %if.end15
  %cmp41 = icmp ult i32 %busiest_nr.0112, %4
  %spec.select106 = select i1 %cmp41, i32 %4, i32 %busiest_nr.0112
  %spec.select107 = select i1 %cmp41, %struct.rq* %3, %struct.rq* %busiest.0120
  br label %cleanup

sw.bb44:                                          ; preds = %if.end15
  %misfit_task_load = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 28
  %10 = load i64, i64* %misfit_task_load, align 16
  %cmp45 = icmp ugt i64 %10, %busiest_load.0116
  %spec.select108 = select i1 %cmp45, i64 %10, i64 %busiest_load.0116
  %spec.select109 = select i1 %cmp45, %struct.rq* %3, %struct.rq* %busiest.0120
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %sw.bb40, %if.end36, %if.end15, %land.lhs.true20, %if.then29, %if.end25, %sw.bb31, %land.lhs.true, %for.body
  %busiest_nr.2 = phi i32 [ %busiest_nr.0112, %for.body ], [ %busiest_nr.0112, %land.lhs.true ], [ %busiest_nr.0112, %sw.bb31 ], [ %busiest_nr.0112, %if.end15 ], [ %busiest_nr.0112, %if.then29 ], [ %busiest_nr.0112, %if.end25 ], [ %busiest_nr.0112, %land.lhs.true20 ], [ %busiest_nr.0112, %if.end36 ], [ %spec.select106, %sw.bb40 ], [ %busiest_nr.0112, %sw.bb44 ]
  %busiest_capacity.2 = phi i64 [ %busiest_capacity.0114, %for.body ], [ %busiest_capacity.0114, %land.lhs.true ], [ %busiest_capacity.0114, %sw.bb31 ], [ %busiest_capacity.0114, %if.end15 ], [ %call7, %if.then29 ], [ %busiest_capacity.0114, %if.end25 ], [ %busiest_capacity.0114, %land.lhs.true20 ], [ %busiest_capacity.0114, %if.end36 ], [ %busiest_capacity.0114, %sw.bb40 ], [ %busiest_capacity.0114, %sw.bb44 ]
  %busiest_load.2 = phi i64 [ %busiest_load.0116, %for.body ], [ %busiest_load.0116, %land.lhs.true ], [ %busiest_load.0116, %sw.bb31 ], [ %busiest_load.0116, %if.end15 ], [ %call16, %if.then29 ], [ %busiest_load.0116, %if.end25 ], [ %busiest_load.0116, %land.lhs.true20 ], [ %busiest_load.0116, %if.end36 ], [ %busiest_load.0116, %sw.bb40 ], [ %spec.select108, %sw.bb44 ]
  %busiest_util.2 = phi i64 [ %busiest_util.0118, %for.body ], [ %busiest_util.0118, %land.lhs.true ], [ %busiest_util.0118, %sw.bb31 ], [ %busiest_util.0118, %if.end15 ], [ %busiest_util.0118, %if.then29 ], [ %busiest_util.0118, %if.end25 ], [ %busiest_util.0118, %land.lhs.true20 ], [ %spec.select, %if.end36 ], [ %busiest_util.0118, %sw.bb40 ], [ %busiest_util.0118, %sw.bb44 ]
  %busiest.2 = phi %struct.rq* [ %busiest.0120, %for.body ], [ %busiest.0120, %land.lhs.true ], [ %busiest.0120, %sw.bb31 ], [ %busiest.0120, %if.end15 ], [ %3, %if.then29 ], [ %busiest.0120, %if.end25 ], [ %busiest.0120, %land.lhs.true20 ], [ %spec.select105, %if.end36 ], [ %spec.select107, %sw.bb40 ], [ %spec.select109, %sw.bb44 ]
  %11 = load %struct.cpumask*, %struct.cpumask** %cpus, align 8
  %call1 = call i32 @cpumask_next_and(i32 noundef %call1122, %struct.cpumask* noundef %call, %struct.cpumask* noundef %11) #28
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  %busiest.0.lcssa = phi %struct.rq* [ null, %entry ], [ %busiest.2, %cleanup ]
  ret %struct.rq* %busiest.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @detach_tasks(%struct.lb_env* noundef %env) unnamed_addr #1 {
entry:
  %src_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 1
  %0 = load %struct.rq*, %struct.rq** %src_rq, align 8
  %cfs_tasks = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 34
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 4
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 10
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, -2
  store i32 %and, i32* %flags, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %imbalance = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  %3 = load i64, i64* %imbalance, align 8
  %cmp3 = icmp slt i64 %3, 1
  br i1 %cmp3, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %prev = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 34, i32 1
  %4 = bitcast %struct.list_head** %prev to i8**
  %loop = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 11
  %loop_max = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 13
  %loop_break = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 12
  %migration_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  %src_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 2
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %tasks57 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 16
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.preheader, %sw.epilog
  %detached.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %inc58, %sw.epilog ]
  %call156 = call fastcc i32 @list_empty(%struct.list_head* noundef %cfs_tasks) #27
  %tobool.not157 = icmp eq i32 %call156, 0
  br i1 %tobool.not157, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond.outer, %next
  %5 = load i32, i32* %idle, align 4
  %cmp6.not = icmp eq i32 %5, 1
  br i1 %cmp6.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.rq*, %struct.rq** %src_rq, align 8
  %nr_running8 = getelementptr inbounds %struct.rq, %struct.rq* %6, i64 0, i32 1
  %7 = load i32, i32* %nr_running8, align 4
  %cmp9 = icmp ult i32 %7, 2
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %while.body
  %8 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 -168
  %9 = bitcast i8* %add.ptr to %struct.task_struct*
  %10 = load i32, i32* %loop, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %loop, align 4
  %11 = load i32, i32* %loop_max, align 4
  %cmp13 = icmp ugt i32 %inc, %11
  br i1 %cmp13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end11
  %12 = load i32, i32* %loop_break, align 8
  %cmp17 = icmp ugt i32 %inc, %12
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %add = add i32 %12, 32
  store i32 %add, i32* %loop_break, align 8
  %flags20 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 10
  %13 = load i32, i32* %flags20, align 8
  %or = or i32 %13, 2
  store i32 %or, i32* %flags20, align 8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %call22 = call fastcc i32 @can_migrate_task(%struct.task_struct* noundef %9, %struct.lb_env* noundef %env) #27
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %next, label %if.end25

if.end25:                                         ; preds = %if.end21
  %14 = load i32, i32* %migration_type, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
    i32 2, label %sw.bb48
    i32 3, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end25
  %call26 = call fastcc i64 @task_h_load(%struct.task_struct* noundef %9) #27
  %cmp28 = icmp ugt i64 %call26, 1
  %cond = select i1 %cmp28, i64 %call26, i64 1
  %15 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %nr_balance_failed = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %15, i64 0, i32 13
  %16 = load i32, i32* %nr_balance_failed, align 4
  %cmp30 = icmp ult i32 %16, 63
  %cond34 = select i1 %cmp30, i32 %16, i32 63
  %sh_prom = zext i32 %cond34 to i64
  %shr = lshr i64 %cond, %sh_prom
  %17 = load i64, i64* %imbalance, align 8
  %cmp36 = icmp ugt i64 %shr, %17
  br i1 %cmp36, label %next, label %if.end38

if.end38:                                         ; preds = %sw.bb
  %sub = sub i64 %17, %cond
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %if.end25
  %call41 = call fastcc i64 @task_util_est(%struct.task_struct* noundef %9) #27
  %18 = load i64, i64* %imbalance, align 8
  %cmp43 = icmp ult i64 %18, %call41
  br i1 %cmp43, label %next, label %if.end45

if.end45:                                         ; preds = %sw.bb40
  %sub47 = sub i64 %18, %call41
  br label %sw.epilog.sink.split

sw.bb48:                                          ; preds = %if.end25
  %19 = load i64, i64* %imbalance, align 8
  %dec = add i64 %19, -1
  br label %sw.epilog.sink.split

sw.bb50:                                          ; preds = %if.end25
  %20 = load i32, i32* %src_cpu, align 8
  %call51 = call fastcc i64 @capacity_of(i32 noundef %20) #27
  %call52 = call fastcc i32 @task_fits_capacity(%struct.task_struct* noundef %9, i64 noundef %call51) #27
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %sw.epilog.sink.split, label %next

sw.epilog.sink.split:                             ; preds = %sw.bb50, %if.end38, %if.end45, %sw.bb48
  %.sink = phi i64 [ %dec, %sw.bb48 ], [ %sub47, %if.end45 ], [ %sub, %if.end38 ], [ 0, %sw.bb50 ]
  store i64 %.sink, i64* %imbalance, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %sw.epilog.sink.split
  %21 = bitcast i8* %add.ptr to %struct.task_struct*
  call fastcc void @detach_task(%struct.task_struct* noundef %21, %struct.lb_env* noundef %env) #27
  %22 = bitcast i8* %8 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %22, %struct.list_head* noundef %tasks57) #27
  %inc58 = add i32 %detached.0.ph, 1
  %23 = load i64, i64* %imbalance, align 8
  %cmp60 = icmp slt i64 %23, 1
  br i1 %cmp60, label %cleanup, label %while.cond.outer

next:                                             ; preds = %sw.bb50, %sw.bb40, %sw.bb, %if.end21
  %24 = bitcast i8* %8 to %struct.list_head*
  call fastcc void @list_move(%struct.list_head* noundef %24, %struct.list_head* noundef %cfs_tasks) #27
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %cfs_tasks) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %cleanup

cleanup:                                          ; preds = %while.cond.outer, %sw.epilog, %next, %land.lhs.true, %if.end11, %if.then18, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ %detached.0.ph, %if.then18 ], [ %detached.0.ph, %if.end11 ], [ %detached.0.ph, %land.lhs.true ], [ %detached.0.ph, %next ], [ %detached.0.ph, %while.cond.outer ], [ %inc58, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_unlock(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_tasks(%struct.lb_env* noundef %env) unnamed_addr #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %tasks1 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 16
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  %dst_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 4
  %1 = load %struct.rq*, %struct.rq** %dst_rq, align 8
  call fastcc void @rq_lock(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #27
  %2 = load %struct.rq*, %struct.rq** %dst_rq, align 8
  call void @update_rq_clock(%struct.rq* noundef %2) #25
  %call14 = call fastcc i32 @list_empty(%struct.list_head* noundef %tasks1) #27
  %tobool.not15 = icmp eq i32 %call14, 0
  br i1 %tobool.not15, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = bitcast %struct.list_head* %tasks1 to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %4 = load i8*, i8** %3, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 -168
  %5 = bitcast i8* %add.ptr to %struct.task_struct*
  %6 = bitcast i8* %4 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %6) #27
  %7 = load %struct.rq*, %struct.rq** %dst_rq, align 8
  call fastcc void @attach_task(%struct.rq* noundef %7, %struct.task_struct* noundef %5) #27
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %tasks1) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %8 = load %struct.rq*, %struct.rq** %dst_rq, align 8
  call fastcc void @rq_unlock(%struct.rq* noundef %8) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* nocapture noundef %dstp) unnamed_addr #11 {
entry:
  %rem.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %cpu, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %0 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_subset(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay, i64* noundef %arraydecay2) #27
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @need_active_balance(%struct.lb_env* nocapture noundef readonly %env) unnamed_addr #1 {
entry:
  %sd1 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %0 = load %struct.sched_domain*, %struct.sched_domain** %sd1, align 8
  %call = call fastcc i1 @asym_active_balance(%struct.lb_env* noundef %env) #27
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @imbalanced_active_balance(%struct.lb_env* noundef %env) #27
  br i1 %call2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %1 = load i32, i32* %idle, align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %src_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 1
  %2 = load %struct.rq*, %struct.rq** %src_rq, align 8
  %h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 5, i32 2
  %3 = load i32, i32* %h_nr_running, align 4
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %land.lhs.true
  %call8 = call fastcc i32 @check_cpu_capacity(%struct.rq* noundef %2, %struct.sched_domain* noundef %0) #27
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end17, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.then6
  %src_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 2
  %4 = load i32, i32* %src_cpu, align 8
  %call10 = call fastcc i64 @capacity_of(i32 noundef %4) #27
  %imbalance_pct = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 6
  %5 = load i32, i32* %imbalance_pct, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %call10, %conv
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %6 = load i32, i32* %dst_cpu, align 4
  %call11 = call fastcc i64 @capacity_of(i32 noundef %6) #27
  %mul12 = mul i64 %call11, 100
  %cmp13 = icmp ult i64 %mul, %mul12
  br i1 %cmp13, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then6, %land.lhs.true9, %land.lhs.true, %if.end4
  %migration_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  %7 = load i32, i32* %migration_type, align 4
  %cmp18 = icmp eq i32 %7, 3
  %. = zext i1 %cmp18 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true9, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %land.lhs.true9 ], [ %., %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #7 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @stop_one_cpu_nowait(i32 noundef, i32 (i8*)* noundef, i8* noundef, %struct.cpu_stop_work* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @active_load_balance_cpu_stop(i8* noundef %data) #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %env = alloca %struct.lb_env, align 8
  %0 = bitcast i8* %data to %struct.rq*
  %call = call fastcc i32 @cpu_of(%struct.rq* noundef %0) #27
  %push_cpu = getelementptr inbounds i8, i8* %data, i64 2268
  %1 = bitcast i8* %push_cpu to i32*
  %2 = load i32, i32* %1, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add to %struct.rq*
  %5 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #24
  %6 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !22
  store i64 0, i64* %6, align 8, !annotation !22
  call fastcc void @rq_lock_irq(%struct.rq* noundef %0, %struct.rq_flags* noundef nonnull %rf) #27
  %call2 = call fastcc i1 @cpu_active(i32 noundef %call) #27
  br i1 %call2, label %lor.lhs.false, label %out_unlock.thread

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i1 @cpu_active(i32 noundef %2) #27
  br i1 %call3, label %if.end, label %out_unlock.thread

if.end:                                           ; preds = %lor.lhs.false
  %call11 = call fastcc i64 @__kern_my_cpu_offset() #27
  %add12 = add i64 %call11, ptrtoint (i32* @cpu_number to i64)
  %7 = inttoptr i64 %add12 to i32*
  %8 = load i32, i32* %7, align 4
  %cmp.not = icmp eq i32 %call, %8
  br i1 %cmp.not, label %lor.rhs, label %out_unlock.thread, !prof !8

lor.rhs:                                          ; preds = %if.end
  %active_balance = getelementptr inbounds i8, i8* %data, i64 2264
  %9 = bitcast i8* %active_balance to i32*
  %10 = load i32, i32* %9, align 8
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %out_unlock.thread, label %if.end17, !prof !10

if.end17:                                         ; preds = %lor.rhs
  %nr_running = getelementptr inbounds i8, i8* %data, i64 4
  %11 = bitcast i8* %nr_running to i32*
  %12 = load i32, i32* %11, align 4
  %cmp18 = icmp ult i32 %12, 2
  br i1 %cmp18, label %out_unlock.thread, label %do.body22

do.body22:                                        ; preds = %if.end17
  %cmp23 = icmp eq %struct.rq* %0, %4
  br i1 %cmp23, label %do.body33, label %do.end41, !prof !10

do.body33:                                        ; preds = %do.body22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/fair.c\22; .popsection; .long 14472b - 14470b; .short 10123; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !31
  unreachable

do.end41:                                         ; preds = %do.body22
  call fastcc void @__rcu_read_lock() #25
  %13 = load i64, i64* %arrayidx, align 8
  %add55 = add i64 %13, ptrtoint (%struct.rq* @runqueues to i64)
  %14 = inttoptr i64 %add55 to %struct.rq*
  %sd56 = getelementptr inbounds %struct.rq, %struct.rq* %14, i64 0, i32 22
  %15 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd56, align 8
  %tobool61.not140 = icmp eq %struct.sched_domain* %15, null
  br i1 %tobool61.not140, label %out_unlock, label %for.body

for.body:                                         ; preds = %do.end41, %for.inc
  %sd.0141 = phi %struct.sched_domain* [ %16, %for.inc ], [ %15, %do.end41 ]
  %call62 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %sd.0141) #27
  %call63 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call, %struct.cpumask* noundef %call62) #27
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.inc, label %if.then75

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0141, i64 0, i32 0
  %16 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool61.not = icmp eq %struct.sched_domain* %16, null
  br i1 %tobool61.not, label %out_unlock, label %for.body

if.then75:                                        ; preds = %for.body
  %17 = bitcast %struct.lb_env* %env to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %17) #24
  %sd76 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  store %struct.sched_domain* %sd.0141, %struct.sched_domain** %sd76, align 8
  %src_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 1
  %18 = bitcast %struct.rq** %src_rq to i8**
  store i8* %data, i8** %18, align 8
  %src_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 2
  %cpu = getelementptr inbounds i8, i8* %data, i64 2320
  %19 = bitcast i8* %cpu to i32*
  %20 = load i32, i32* %19, align 16
  store i32 %20, i32* %src_cpu, align 8
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  store i32 %2, i32* %dst_cpu, align 4
  %dst_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 4
  store %struct.rq* %4, %struct.rq** %dst_rq, align 8
  %dst_grpmask = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 5
  store %struct.cpumask* null, %struct.cpumask** %dst_grpmask, align 8
  %new_dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 6
  store i32 0, i32* %new_dst_cpu, align 8
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  store i32 0, i32* %idle, align 4
  %imbalance = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 0, i64* %imbalance, align 8
  %cpus = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 9
  store %struct.cpumask* null, %struct.cpumask** %cpus, align 8
  %flags = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 10
  store i32 16, i32* %flags, align 8
  %loop = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 11
  store i32 0, i32* %loop, align 4
  %loop_break = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 12
  store i32 0, i32* %loop_break, align 8
  %loop_max = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 13
  store i32 0, i32* %loop_max, align 4
  %fbq_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 14
  store i32 0, i32* %fbq_type, align 8
  %migration_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 0, i32* %migration_type, align 4
  %tasks = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 16
  %21 = bitcast %struct.list_head* %tasks to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @update_rq_clock(%struct.rq* noundef %0) #25
  %call80 = call fastcc %struct.task_struct* @detach_one_task(%struct.lb_env* noundef nonnull %env) #27
  %tobool81.not = icmp eq %struct.task_struct* %call80, null
  br i1 %tobool81.not, label %if.end89, label %do.end85

do.end85:                                         ; preds = %if.then75
  %nr_balance_failed = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0141, i64 0, i32 13
  store i32 0, i32* %nr_balance_failed, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then75, %do.end85
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %17) #24
  br label %out_unlock

out_unlock.thread:                                ; preds = %lor.rhs, %if.end17, %lor.lhs.false, %entry, %if.end
  %active_balance91137 = getelementptr inbounds i8, i8* %data, i64 2264
  %22 = bitcast i8* %active_balance91137 to i32*
  store i32 0, i32* %22, align 8
  call fastcc void @rq_unlock(%struct.rq* noundef %0) #27
  br label %do.body95

out_unlock:                                       ; preds = %for.inc, %do.end41, %if.end89
  %p.0 = phi %struct.task_struct* [ %call80, %if.end89 ], [ null, %do.end41 ], [ null, %for.inc ]
  call fastcc void @rcu_read_unlock() #27
  store i32 0, i32* %9, align 8
  call fastcc void @rq_unlock(%struct.rq* noundef %0) #27
  %tobool92.not = icmp eq %struct.task_struct* %p.0, null
  br i1 %tobool92.not, label %do.body95, label %if.then93

if.then93:                                        ; preds = %out_unlock
  call fastcc void @attach_one_task(%struct.rq* noundef %4, %struct.task_struct* noundef nonnull %p.0) #27
  br label %do.body95

do.body95:                                        ; preds = %out_unlock.thread, %out_unlock, %if.then93
  call fastcc void @arch_local_irq_enable() #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #24
  ret i32 0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #22

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cpumask* @group_balance_mask(%struct.sched_group* nocapture noundef readonly %sg) unnamed_addr #4 {
entry:
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 3
  %0 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %arraydecay = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %0, i64 0, i32 6, i64 0
  %1 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idle_cpu(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_balance_cpu(%struct.sched_group* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @init_sd_lb_stats(%struct.sd_lb_stats* nocapture noundef writeonly %sds) unnamed_addr #19 {
entry:
  %.compoundliteral.sroa.0.0..sroa_cast = bitcast %struct.sd_lb_stats* %sds to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(96) %.compoundliteral.sroa.0.0..sroa_cast, i8 0, i64 96, i1 false)
  %.compoundliteral.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 7
  store i32 -1, i32* %.compoundliteral.sroa.2.0..sroa_idx2, align 8
  %.compoundliteral.sroa.3.0..sroa_idx3 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 8
  store i32 0, i32* %.compoundliteral.sroa.3.0..sroa_idx3, align 4
  %.compoundliteral.sroa.34.0..sroa_idx5 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 9
  store i32 0, i32* %.compoundliteral.sroa.34.0..sroa_idx5, align 8
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 10
  %.compoundliteral.sroa.4.0..sroa_cast = bitcast i32* %.compoundliteral.sroa.4.0..sroa_idx to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 4 dereferenceable(84) %.compoundliteral.sroa.4.0..sroa_cast, i8 0, i64 84, i1 false)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_sd_lb_stats(%struct.lb_env* nocapture noundef %env, %struct.sd_lb_stats* noundef %sds) unnamed_addr #1 {
entry:
  %tmp_sgs = alloca %struct.sg_lb_stats, align 8
  %sg_status = alloca i32, align 4
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %0 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %child1 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 1
  %1 = load %struct.sched_domain*, %struct.sched_domain** %child1, align 8
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 2
  %2 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %local_stat = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7
  %3 = bitcast %struct.sg_lb_stats* %tmp_sgs to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %3) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false), !annotation !22
  %4 = bitcast i32* %sg_status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #24
  store i32 0, i32* %sg_status, align 4
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %local4 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 1
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %busiest = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 0
  %busiest_stat = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6
  %5 = bitcast %struct.sg_lb_stats* %busiest_stat to i8*
  %total_load = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 2
  %total_capacity = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 3
  br label %do.body

do.body:                                          ; preds = %next_group, %entry
  %sg.0 = phi %struct.sched_group* [ %2, %entry ], [ %17, %next_group ]
  %6 = load i32, i32* %dst_cpu, align 4
  %call = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %sg.0) #27
  %call3 = call fastcc i32 @cpumask_test_cpu(i32 noundef %6, %struct.cpumask* noundef %call) #27
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %do.body
  store %struct.sched_group* %sg.0, %struct.sched_group** %local4, align 8
  %7 = load i32, i32* %idle, align 4
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %8 = load volatile i64, i64* @jiffies, align 64
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.0, i64 0, i32 3
  %9 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %next_update = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %9, i64 0, i32 4
  %10 = load i64, i64* %next_update, align 8
  %sub = sub i64 %8, %10
  %cmp5 = icmp sgt i64 %sub, -1
  br i1 %cmp5, label %if.then6, label %if.end9.thread

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  %11 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %12 = load i32, i32* %dst_cpu, align 4
  call void @update_group_capacity(%struct.sched_domain* noundef %11, i32 noundef %12) #27
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %lor.lhs.false, %if.then6
  call fastcc void @update_sg_lb_stats(%struct.lb_env* noundef %env, %struct.sched_group* noundef %sg.0, %struct.sg_lb_stats* noundef %local_stat, i32* noundef nonnull %sg_status) #27
  br label %next_group

if.end12:                                         ; preds = %do.body
  call fastcc void @update_sg_lb_stats(%struct.lb_env* noundef %env, %struct.sched_group* noundef %sg.0, %struct.sg_lb_stats* noundef nonnull %tmp_sgs, i32* noundef nonnull %sg_status) #27
  %call13 = call fastcc i1 @update_sd_pick_busiest(%struct.lb_env* noundef %env, %struct.sd_lb_stats* noundef %sds, %struct.sched_group* noundef %sg.0, %struct.sg_lb_stats* noundef nonnull %tmp_sgs) #27
  br i1 %call13, label %if.then14, label %next_group

if.then14:                                        ; preds = %if.end12
  store %struct.sched_group* %sg.0, %struct.sched_group** %busiest, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(72) %5, i8* noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  br label %next_group

next_group:                                       ; preds = %if.end9.thread, %if.end12, %if.then14
  %sgs.0120 = phi %struct.sg_lb_stats* [ %local_stat, %if.end9.thread ], [ %tmp_sgs, %if.end12 ], [ %tmp_sgs, %if.then14 ]
  %group_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs.0120, i64 0, i32 1
  %13 = load i64, i64* %group_load, align 8
  %14 = load i64, i64* %total_load, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %total_load, align 8
  %group_capacity = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs.0120, i64 0, i32 2
  %15 = load i64, i64* %group_capacity, align 8
  %16 = load i64, i64* %total_capacity, align 8
  %add16 = add i64 %16, %15
  store i64 %add16, i64* %total_capacity, align 8
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.0, i64 0, i32 0
  %17 = load %struct.sched_group*, %struct.sched_group** %next, align 8
  %18 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %groups18 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %18, i64 0, i32 2
  %19 = load %struct.sched_group*, %struct.sched_group** %groups18, align 8
  %cmp19.not = icmp eq %struct.sched_group* %17, %19
  br i1 %cmp19.not, label %do.end, label %do.body

do.end:                                           ; preds = %next_group
  %tobool20.not = icmp eq %struct.sched_domain* %1, null
  br i1 %tobool20.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.end
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %1, i64 0, i32 9
  %20 = load i32, i32* %flags, align 8
  %and = lshr i32 %20, 11
  %and.lobit = and i32 %and, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %21 = phi i32 [ 0, %do.end ], [ %and.lobit, %land.rhs ]
  %prefer_sibling = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 5
  store i32 %21, i32* %prefer_sibling, align 8
  %22 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %flags23 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %22, i64 0, i32 9
  %23 = load i32, i32* %flags23, align 8
  %and24 = and i32 %23, 8192
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %land.end
  %fbq_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 14
  store i32 2, i32* %fbq_type, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.end
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %22, i64 0, i32 0
  %24 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool31.not = icmp eq %struct.sched_domain* %24, null
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end29
  %dst_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 4
  %25 = load %struct.rq*, %struct.rq** %dst_rq, align 8
  %rd33 = getelementptr inbounds %struct.rq, %struct.rq* %25, i64 0, i32 21
  %26 = load %struct.root_domain*, %struct.root_domain** %rd33, align 32
  %27 = load i32, i32* %sg_status, align 4
  %and39 = and i32 %27, 1
  %overload = getelementptr inbounds %struct.root_domain, %struct.root_domain* %26, i64 0, i32 5
  store volatile i32 %and39, i32* %overload, align 8
  %and49 = and i32 %27, 2
  br label %if.end73.sink.split

if.else:                                          ; preds = %if.end29
  %28 = load i32, i32* %sg_status, align 4
  %and56 = and i32 %28, 2
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end73, label %if.then58

if.then58:                                        ; preds = %if.else
  %dst_rq60 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 4
  %29 = load %struct.rq*, %struct.rq** %dst_rq60, align 8
  %rd61 = getelementptr inbounds %struct.rq, %struct.rq* %29, i64 0, i32 21
  %30 = load %struct.root_domain*, %struct.root_domain** %rd61, align 32
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %if.then32, %if.then58
  %.sink121 = phi %struct.root_domain* [ %30, %if.then58 ], [ %26, %if.then32 ]
  %.sink = phi i32 [ 2, %if.then58 ], [ %and49, %if.then32 ]
  %overutilized67 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %.sink121, i64 0, i32 6
  store volatile i32 %.sink, i32* %overutilized67, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %if.else
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #24
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @calculate_imbalance(%struct.lb_env* nocapture noundef %env, %struct.sd_lb_stats* noundef %sds) unnamed_addr #19 {
entry:
  %local_stat = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7
  %busiest_stat = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6
  %group_type = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 9
  %0 = load i32, i32* %group_type, align 8
  switch i32 %0, label %if.end13 [
    i32 2, label %if.then
    i32 3, label %if.then3
    i32 4, label %if.then10
  ]

if.then:                                          ; preds = %entry
  %migration_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 3, i32* %migration_type, align 4
  %imbalance = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 1, i64* %imbalance, align 8
  br label %cleanup

if.then3:                                         ; preds = %entry
  %migration_type4 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 2, i32* %migration_type4, align 4
  %sum_h_nr_running = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 6
  %1 = load i32, i32* %sum_h_nr_running, align 4
  %conv = zext i32 %1 to i64
  %imbalance5 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 %conv, i64* %imbalance5, align 8
  br label %cleanup

if.then10:                                        ; preds = %entry
  %migration_type11 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 2, i32* %migration_type11, align 4
  %imbalance12 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 1, i64* %imbalance12, align 8
  br label %cleanup

if.end13:                                         ; preds = %entry
  %group_type14 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 9
  %2 = load i32, i32* %group_type14, align 8
  %cmp15 = icmp eq i32 %2, 0
  br i1 %cmp15, label %if.then17, label %if.end79

if.then17:                                        ; preds = %if.end13
  %cmp19 = icmp ugt i32 %0, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.then17
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %3 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %3, i64 0, i32 9
  %4 = load i32, i32* %flags, align 8
  %and = and i32 %4, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then21, label %if.end37

if.then21:                                        ; preds = %land.lhs.true
  %migration_type22 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 1, i32* %migration_type22, align 4
  %group_capacity = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 2
  %5 = load i64, i64* %group_capacity, align 8
  %group_util = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 3
  %6 = load i64, i64* %group_util, align 8
  %7 = call i64 @llvm.usub.sat.i64(i64 %5, i64 %6)
  %imbalance26 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 %7, i64* %imbalance26, align 8
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %8 = load i32, i32* %idle, align 4
  %cmp27.not = icmp eq i32 %8, 1
  %cmp31.not = icmp ugt i64 %5, %6
  %or.cond = select i1 %cmp27.not, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %cleanup, label %if.then33

if.then33:                                        ; preds = %if.then21
  store i32 2, i32* %migration_type22, align 4
  store i64 1, i64* %imbalance26, align 8
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true, %if.then17
  %group_weight = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 8
  %9 = load i32, i32* %group_weight, align 4
  %cmp38 = icmp eq i32 %9, 1
  br i1 %cmp38, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37
  %prefer_sibling = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 5
  %10 = load i32, i32* %prefer_sibling, align 8
  %tobool40.not = icmp eq i32 %10, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %lor.lhs.false, %if.end37
  %sum_nr_running = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 5
  %11 = load i32, i32* %sum_nr_running, align 8
  %migration_type42 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 2, i32* %migration_type42, align 4
  %sum_nr_running43 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 5
  %12 = load i32, i32* %sum_nr_running43, align 8
  %13 = call i32 @llvm.usub.sat.i32(i32 %11, i32 %12)
  br label %if.end67

if.else:                                          ; preds = %lor.lhs.false
  %migration_type54 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 2, i32* %migration_type54, align 4
  %idle_cpus = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 7
  %14 = load i32, i32* %idle_cpus, align 8
  %idle_cpus55 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 7
  %15 = load i32, i32* %idle_cpus55, align 8
  %sub56 = sub i32 %14, %15
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then41
  %sub56.sink = phi i32 [ %sub56, %if.else ], [ %13, %if.then41 ]
  %shr57 = lshr i32 %sub56.sink, 1
  %conv58 = zext i32 %shr57 to i64
  %imbalance66 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 %conv58, i64* %imbalance66, align 8
  %sd68 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %16 = load %struct.sched_domain*, %struct.sched_domain** %sd68, align 8
  %flags69 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %16, i64 0, i32 9
  %17 = load i32, i32* %flags69, align 8
  %and70 = and i32 %17, 8192
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %cleanup, label %if.then72

if.then72:                                        ; preds = %if.end67
  %imbalance73 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  %sum_nr_running75 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 5
  %18 = load i32, i32* %sum_nr_running75, align 8
  %19 = load i32, i32* %group_weight, align 4
  %call = call fastcc i64 @adjust_numa_imbalance(i32 noundef %shr57, i32 noundef %18, i32 noundef %19) #27
  store i64 %call, i64* %imbalance73, align 8
  br label %cleanup

if.end79:                                         ; preds = %if.end13
  %cmp81 = icmp ult i32 %2, 5
  br i1 %cmp81, label %if.then83, label %if.end95

if.then83:                                        ; preds = %if.end79
  %group_load = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 1
  %20 = load i64, i64* %group_load, align 8
  %mul = shl i64 %20, 10
  %group_capacity84 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 2
  %21 = load i64, i64* %group_capacity84, align 8
  %div = udiv i64 %mul, %21
  %avg_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %local_stat, i64 0, i32 0
  store i64 %div, i64* %avg_load, align 8
  %total_load = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 2
  %22 = load i64, i64* %total_load, align 8
  %mul85 = shl i64 %22, 10
  %total_capacity = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 3
  %23 = load i64, i64* %total_capacity, align 8
  %div86 = udiv i64 %mul85, %23
  %avg_load87 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 4
  store i64 %div86, i64* %avg_load87, align 8
  %avg_load89 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %busiest_stat, i64 0, i32 0
  %24 = load i64, i64* %avg_load89, align 8
  %cmp90.not = icmp ult i64 %div, %24
  br i1 %cmp90.not, label %if.end95, label %if.then92

if.then92:                                        ; preds = %if.then83
  %imbalance93 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 0, i64* %imbalance93, align 8
  br label %cleanup

if.end95:                                         ; preds = %if.then83, %if.end79
  %migration_type96 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  store i32 0, i32* %migration_type96, align 4
  %avg_load97 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %busiest_stat, i64 0, i32 0
  %25 = load i64, i64* %avg_load97, align 8
  %avg_load98 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 4
  %26 = load i64, i64* %avg_load98, align 8
  %sub99 = sub i64 %25, %26
  %group_capacity100 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 2
  %27 = load i64, i64* %group_capacity100, align 8
  %mul101 = mul i64 %sub99, %27
  %avg_load103 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %local_stat, i64 0, i32 0
  %28 = load i64, i64* %avg_load103, align 8
  %sub104 = sub i64 %26, %28
  %group_capacity105 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 2
  %29 = load i64, i64* %group_capacity105, align 8
  %mul106 = mul i64 %sub104, %29
  %cmp108 = icmp ult i64 %mul101, %mul106
  %cond113 = select i1 %cmp108, i64 %mul101, i64 %mul106
  %div114 = lshr i64 %cond113, 10
  %imbalance115 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 8
  store i64 %div114, i64* %imbalance115, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then72, %if.then21, %if.then33, %if.end95, %if.then92, %if.then10, %if.then3, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_sg_lb_stats(%struct.lb_env* nocapture noundef readonly %env, %struct.sched_group* noundef %group, %struct.sg_lb_stats* noundef %sgs, i32* nocapture noundef %sg_status) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.sg_lb_stats* %sgs to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 72) #25
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %1 = load i32, i32* %dst_cpu, align 4
  %call1 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %group) #27
  %call2 = call fastcc i32 @cpumask_test_cpu(i32 noundef %1, %struct.cpumask* noundef %call1) #27
  %cpus = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 9
  %2 = load %struct.cpumask*, %struct.cpumask** %cpus, align 8
  %call4107 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %call1, %struct.cpumask* noundef %2) #28
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp108 = icmp ult i32 %call4107, %3
  br i1 %cmp108, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %group_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 1
  %group_util = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 3
  %group_runnable = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 4
  %sum_h_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 6
  %sum_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 5
  %idle_cpus = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 7
  %tobool24.not = icmp eq i32 %call2, 0
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %group_misfit_task_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %call4109 = phi i32 [ %call4107, %for.body.lr.ph ], [ %call4, %cleanup ]
  %idxprom = sext i32 %call4109 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, ptrtoint (%struct.rq* @runqueues to i64)
  %5 = inttoptr i64 %add to %struct.rq*
  %call6 = call fastcc i64 @cpu_load(%struct.rq* noundef %5) #27
  %6 = load i64, i64* %group_load, align 8
  %add7 = add i64 %6, %call6
  store i64 %add7, i64* %group_load, align 8
  %call8 = call fastcc i64 @cpu_util(i32 noundef %call4109) #27
  %7 = load i64, i64* %group_util, align 8
  %add9 = add i64 %7, %call8
  store i64 %add9, i64* %group_util, align 8
  %call10 = call fastcc i64 @cpu_runnable(%struct.rq* noundef %5) #27
  %8 = load i64, i64* %group_runnable, align 8
  %add11 = add i64 %8, %call10
  store i64 %add11, i64* %group_runnable, align 8
  %h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 5, i32 2
  %9 = load i32, i32* %h_nr_running, align 4
  %10 = load i32, i32* %sum_h_nr_running, align 4
  %add12 = add i32 %10, %9
  store i32 %add12, i32* %sum_h_nr_running, align 4
  %nr_running13 = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 1
  %11 = load i32, i32* %nr_running13, align 4
  %12 = load i32, i32* %sum_nr_running, align 8
  %add14 = add i32 %12, %11
  store i32 %add14, i32* %sum_nr_running, align 8
  %cmp15 = icmp sgt i32 %11, 1
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %sg_status, align 4
  %or = or i32 %13, 1
  store i32 %or, i32* %sg_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call16 = call fastcc i1 @cpu_overutilized(i32 noundef %call4109) #27
  br i1 %call16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  %14 = load i32, i32* %sg_status, align 4
  %or18 = or i32 %14, 2
  store i32 %or18, i32* %sg_status, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end19
  %call20 = call i32 @idle_cpu(i32 noundef %call4109) #25
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %idle_cpus, align 8
  %inc = add i32 %15, 1
  store i32 %inc, i32* %idle_cpus, align 8
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true, %if.end19
  br i1 %tobool24.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end23
  %16 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %16, i64 0, i32 9
  %17 = load i32, i32* %flags, align 8
  %and = and i32 %17, 32
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %cleanup, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end26
  %18 = load i64, i64* %group_misfit_task_load, align 8
  %misfit_task_load = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 28
  %19 = load i64, i64* %misfit_task_load, align 16
  %cmp29 = icmp ult i64 %18, %19
  br i1 %cmp29, label %if.then30, label %cleanup

if.then30:                                        ; preds = %land.lhs.true28
  store i64 %19, i64* %group_misfit_task_load, align 8
  %20 = load i32, i32* %sg_status, align 4
  %or33 = or i32 %20, 1
  store i32 %or33, i32* %sg_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %land.lhs.true28, %if.then30, %if.end23, %if.then22
  %21 = load %struct.cpumask*, %struct.cpumask** %cpus, align 8
  %call4 = call i32 @cpumask_next_and(i32 noundef %call4109, %struct.cpumask* noundef %call1, %struct.cpumask* noundef %21) #28
  %22 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call4, %22
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  %sd35 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %23 = load %struct.sched_domain*, %struct.sched_domain** %sd35, align 8
  %flags36 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %23, i64 0, i32 9
  %24 = load i32, i32* %flags36, align 8
  %and37 = and i32 %24, 1024
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end48, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %for.end
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %25 = load i32, i32* %idle, align 4
  %cmp40.not = icmp eq i32 %25, 1
  br i1 %cmp40.not, label %if.end48, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %sum_h_nr_running42 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 6
  %26 = load i32, i32* %sum_h_nr_running42, align 4
  %tobool43.not = icmp eq i32 %26, 0
  br i1 %tobool43.not, label %if.end48, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %27 = load i32, i32* %dst_cpu, align 4
  %asym_prefer_cpu = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 4
  %28 = load i32, i32* %asym_prefer_cpu, align 8
  %call46 = call fastcc i1 @sched_asym_prefer(i32 noundef %27, i32 noundef %28) #27
  br i1 %call46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %land.lhs.true44
  %group_asym_packing = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 10
  store i32 1, i32* %group_asym_packing, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %land.lhs.true44, %land.lhs.true41, %land.lhs.true39, %for.end
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 3
  %29 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %29, i64 0, i32 1
  %30 = load i64, i64* %capacity, align 8
  %group_capacity = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 2
  store i64 %30, i64* %group_capacity, align 8
  %group_weight = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 2
  %31 = load i32, i32* %group_weight, align 4
  %group_weight49 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 8
  store i32 %31, i32* %group_weight49, align 4
  %32 = load %struct.sched_domain*, %struct.sched_domain** %sd35, align 8
  %imbalance_pct = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %32, i64 0, i32 6
  %33 = load i32, i32* %imbalance_pct, align 4
  %call51 = call fastcc i32 @group_classify(i32 noundef %33, %struct.sched_group* noundef %group, %struct.sg_lb_stats* noundef %sgs) #27
  %group_type = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 9
  store i32 %call51, i32* %group_type, align 8
  %cmp53 = icmp eq i32 %call51, 5
  br i1 %cmp53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end48
  %group_load55 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 1
  %34 = load i64, i64* %group_load55, align 8
  %mul = shl i64 %34, 10
  %div = udiv i64 %mul, %30
  %avg_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 0
  store i64 %div, i64* %avg_load, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @update_sd_pick_busiest(%struct.lb_env* nocapture noundef readonly %env, %struct.sd_lb_stats* nocapture noundef readonly %sds, %struct.sched_group* nocapture noundef readonly %sg, %struct.sg_lb_stats* nocapture noundef readonly %sgs) unnamed_addr #1 {
entry:
  %busiest_stat = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6
  %sum_h_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 6
  %0 = load i32, i32* %sum_h_nr_running, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %group_type = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 9
  %1 = load i32, i32* %group_type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %2 = load i32, i32* %dst_cpu, align 4
  %call = call fastcc i64 @capacity_of(i32 noundef %2) #27
  %mul = shl i64 %call, 10
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 3
  %3 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %max_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %3, i64 0, i32 3
  %4 = load i64, i64* %max_capacity, align 8
  %mul1 = mul i64 %4, 1078
  %cmp2 = icmp ugt i64 %mul, %mul1
  br i1 %cmp2, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %group_type3 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 7, i32 9
  %5 = load i32, i32* %group_type3, align 8
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %lor.lhs.false, %if.end
  %group_type8 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 9
  %6 = load i32, i32* %group_type8, align 8
  %cmp9 = icmp ugt i32 %1, %6
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %cmp14 = icmp ult i32 %1, %6
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  switch i32 %1, label %sw.epilog [
    i32 5, label %sw.bb
    i32 4, label %cleanup
    i32 3, label %sw.bb23
    i32 2, label %sw.bb29
    i32 1, label %sw.bb34
    i32 0, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.end16
  %avg_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 0
  %7 = load i64, i64* %avg_load, align 8
  %avg_load18 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %busiest_stat, i64 0, i32 0
  %8 = load i64, i64* %avg_load18, align 8
  %cmp19.not = icmp ugt i64 %7, %8
  br i1 %cmp19.not, label %sw.epilog, label %cleanup

sw.bb23:                                          ; preds = %if.end16
  %asym_prefer_cpu = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 4
  %9 = load i32, i32* %asym_prefer_cpu, align 8
  %busiest24 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 0
  %10 = load %struct.sched_group*, %struct.sched_group** %busiest24, align 8
  %asym_prefer_cpu25 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %10, i64 0, i32 4
  %11 = load i32, i32* %asym_prefer_cpu25, align 8
  %call26 = call fastcc i1 @sched_asym_prefer(i32 noundef %9, i32 noundef %11) #27
  br i1 %call26, label %cleanup, label %sw.epilog

sw.bb29:                                          ; preds = %if.end16
  %group_misfit_task_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 11
  %12 = load i64, i64* %group_misfit_task_load, align 8
  %group_misfit_task_load30 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 11
  %13 = load i64, i64* %group_misfit_task_load30, align 8
  %cmp31 = icmp ult i64 %12, %13
  br i1 %cmp31, label %cleanup, label %sw.epilog

sw.bb34:                                          ; preds = %if.end16
  %avg_load35 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 0
  %14 = load i64, i64* %avg_load35, align 8
  %avg_load36 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %busiest_stat, i64 0, i32 0
  %15 = load i64, i64* %avg_load36, align 8
  %cmp37.not = icmp ugt i64 %14, %15
  br i1 %cmp37.not, label %sw.epilog, label %cleanup

sw.bb40:                                          ; preds = %if.end16
  %idle_cpus = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 7
  %16 = load i32, i32* %idle_cpus, align 8
  %idle_cpus41 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 7
  %17 = load i32, i32* %idle_cpus41, align 8
  %cmp42 = icmp ugt i32 %16, %17
  br i1 %cmp42, label %cleanup, label %if.else

if.else:                                          ; preds = %sw.bb40
  %cmp46 = icmp eq i32 %16, %17
  br i1 %cmp46, label %land.lhs.true47, label %sw.epilog

land.lhs.true47:                                  ; preds = %if.else
  %sum_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 5
  %18 = load i32, i32* %sum_nr_running, align 8
  %sum_nr_running48 = getelementptr inbounds %struct.sd_lb_stats, %struct.sd_lb_stats* %sds, i64 0, i32 6, i32 5
  %19 = load i32, i32* %sum_nr_running48, align 8
  %cmp49.not = icmp ugt i32 %18, %19
  br i1 %cmp49.not, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true47, %if.else, %sw.bb34, %sw.bb29, %sw.bb23, %sw.bb, %if.end16
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %20 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %20, i64 0, i32 9
  %21 = load i32, i32* %flags, align 8
  %and = and i32 %21, 32
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.end65, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %sw.epilog
  %22 = load i32, i32* %group_type, align 8
  %cmp56 = icmp ult i32 %22, 2
  br i1 %cmp56, label %land.lhs.true57, label %if.end65

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %sgc58 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 3
  %23 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc58, align 8
  %min_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %23, i64 0, i32 2
  %24 = load i64, i64* %min_capacity, align 8
  %mul59 = shl i64 %24, 10
  %dst_cpu60 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %25 = load i32, i32* %dst_cpu60, align 4
  %call61 = call fastcc i64 @capacity_of(i32 noundef %25) #27
  %mul62 = mul i64 %call61, 1078
  %cmp63 = icmp ugt i64 %mul59, %mul62
  br i1 %cmp63, label %cleanup, label %if.end65

if.end65:                                         ; preds = %land.lhs.true57, %land.lhs.true54, %sw.epilog
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true57, %land.lhs.true47, %sw.bb40, %sw.bb34, %sw.bb29, %sw.bb23, %if.end16, %sw.bb, %if.end11, %if.end6, %land.lhs.true, %lor.lhs.false, %entry, %if.end65
  %retval.0 = phi i1 [ true, %if.end65 ], [ false, %entry ], [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ true, %if.end6 ], [ false, %if.end11 ], [ false, %sw.bb ], [ false, %if.end16 ], [ false, %sw.bb23 ], [ false, %sw.bb29 ], [ false, %sw.bb34 ], [ false, %sw.bb40 ], [ false, %land.lhs.true47 ], [ false, %land.lhs.true57 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cpu_load(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5
  %call = call fastcc i64 @cfs_rq_load_avg(%struct.cfs_rq* noundef %cfs) #27
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @cpu_util(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %util_avg = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 5, i32 12, i32 7
  %2 = load volatile i64, i64* %util_avg, align 16
  %conv = trunc i64 %2 to i32
  %enqueued = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 5, i32 12, i32 8, i32 0
  %3 = load volatile i32, i32* %enqueued, align 8
  %cmp = icmp ult i32 %3, %conv
  %cond = select i1 %cmp, i32 %conv, i32 %3
  %conv13 = zext i32 %cond to i64
  %call = call fastcc i64 @capacity_orig_of(i32 noundef %cpu) #27
  %cmp15 = icmp ugt i64 %call, %conv13
  %cond20 = select i1 %cmp15, i64 %conv13, i64 %call
  ret i64 %cond20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cpu_runnable(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5
  %call = call fastcc i64 @cfs_rq_runnable_avg(%struct.cfs_rq* noundef %cfs) #27
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_overutilized(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @cpu_util(i32 noundef %cpu) #27
  %mul = mul i64 %call, 1280
  %call1 = call fastcc i64 @capacity_of(i32 noundef %cpu) #27
  %mul2 = shl i64 %call1, 10
  %cmp = icmp uge i64 %mul, %mul2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sched_asym_prefer(i32 noundef %a, i32 noundef %b) unnamed_addr #1 {
entry:
  %call = call i32 @arch_asym_cpu_priority(i32 noundef %a) #27
  %call1 = call i32 @arch_asym_cpu_priority(i32 noundef %b) #27
  %cmp = icmp sgt i32 %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @group_classify(i32 noundef %imbalance_pct, %struct.sched_group* nocapture noundef readonly %group, %struct.sg_lb_stats* nocapture noundef readonly %sgs) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @group_is_overloaded(i32 noundef %imbalance_pct, %struct.sg_lb_stats* noundef %sgs) #27
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @sg_imbalanced(%struct.sched_group* noundef %group) #27
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %group_asym_packing = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 10
  %0 = load i32, i32* %group_asym_packing, align 4
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end3
  %group_misfit_task_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 11
  %1 = load i64, i64* %group_misfit_task_load, align 8
  %tobool7.not = icmp eq i64 %1, 0
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %if.end6
  %call10 = call fastcc i1 @group_has_capacity(i32 noundef %imbalance_pct, %struct.sg_lb_stats* noundef %sgs) #27
  %not.call10 = xor i1 %call10, true
  %. = zext i1 %not.call10 to i32
  br label %return

return:                                           ; preds = %if.end9, %if.end6, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 5, %entry ], [ 4, %if.end ], [ 3, %if.end3 ], [ 2, %if.end6 ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cfs_rq_load_avg(%struct.cfs_rq* nocapture noundef readonly %cfs_rq) unnamed_addr #4 {
entry:
  %load_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 5
  %0 = load i64, i64* %load_avg, align 32
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @capacity_orig_of(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cpu_capacity_orig = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 24
  %2 = load i64, i64* %cpu_capacity_orig, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cfs_rq_runnable_avg(%struct.cfs_rq* nocapture noundef readonly %cfs_rq) unnamed_addr #4 {
entry:
  %runnable_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 6
  %0 = load i64, i64* %runnable_avg, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @group_is_overloaded(i32 noundef %imbalance_pct, %struct.sg_lb_stats* nocapture noundef readonly %sgs) unnamed_addr #4 {
entry:
  %sum_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 5
  %0 = load i32, i32* %sum_nr_running, align 8
  %group_weight = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 8
  %1 = load i32, i32* %group_weight, align 4
  %cmp.not = icmp ugt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %group_capacity = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 2
  %2 = load i64, i64* %group_capacity, align 8
  %mul = mul i64 %2, 100
  %group_util = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 3
  %3 = load i64, i64* %group_util, align 8
  %conv = zext i32 %imbalance_pct to i64
  %mul1 = mul i64 %3, %conv
  %cmp2 = icmp ult i64 %mul, %mul1
  br i1 %cmp2, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %mul8 = mul i64 %2, %conv
  %group_runnable = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 4
  %4 = load i64, i64* %group_runnable, align 8
  %mul9 = mul i64 %4, 100
  %cmp10 = icmp ult i64 %mul8, %mul9
  br label %return

return:                                           ; preds = %if.end5, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ true, %if.end ], [ %cmp10, %if.end5 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sg_imbalanced(%struct.sched_group* nocapture noundef readonly %group) unnamed_addr #4 {
entry:
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 3
  %0 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %imbalance = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %0, i64 0, i32 5
  %1 = load i32, i32* %imbalance, align 8
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @group_has_capacity(i32 noundef %imbalance_pct, %struct.sg_lb_stats* nocapture noundef readonly %sgs) unnamed_addr #4 {
entry:
  %sum_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 5
  %0 = load i32, i32* %sum_nr_running, align 8
  %group_weight = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 8
  %1 = load i32, i32* %group_weight, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %group_capacity = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 2
  %2 = load i64, i64* %group_capacity, align 8
  %conv = zext i32 %imbalance_pct to i64
  %mul = mul i64 %2, %conv
  %group_runnable = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 4
  %3 = load i64, i64* %group_runnable, align 8
  %mul1 = mul i64 %3, 100
  %cmp2 = icmp ult i64 %mul, %mul1
  br i1 %cmp2, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %mul7 = mul i64 %2, 100
  %group_util = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 3
  %4 = load i64, i64* %group_util, align 8
  %mul9 = mul i64 %4, %conv
  %cmp10 = icmp ugt i64 %mul7, %mul9
  br label %return

return:                                           ; preds = %if.end5, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %if.end ], [ %cmp10, %if.end5 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @adjust_numa_imbalance(i32 noundef %imbalance, i32 noundef %dst_running, i32 noundef %dst_weight) unnamed_addr #8 {
entry:
  %call = call fastcc i1 @allow_numa_imbalance(i32 noundef %dst_running, i32 noundef %dst_weight) #27
  %conv = sext i32 %imbalance to i64
  %cmp = icmp slt i32 %imbalance, 3
  %0 = and i1 %cmp, %call
  %retval.0 = select i1 %0, i64 0, i64 %conv
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @allow_numa_imbalance(i32 noundef %dst_running, i32 noundef %dst_weight) unnamed_addr #8 {
entry:
  %shr = ashr i32 %dst_weight, 2
  %cmp = icmp sgt i32 %shr, %dst_running
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @check_cpu_capacity(%struct.rq* nocapture noundef readonly %rq, %struct.sched_domain* nocapture noundef readonly %sd) unnamed_addr #4 {
entry:
  %cpu_capacity = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 23
  %0 = load i64, i64* %cpu_capacity, align 16
  %imbalance_pct = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 6
  %1 = load i32, i32* %imbalance_pct, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %0, %conv
  %cpu_capacity_orig = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 24
  %2 = load i64, i64* %cpu_capacity_orig, align 8
  %mul1 = mul i64 %2, 100
  %cmp = icmp ult i64 %mul, %mul1
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @can_migrate_task(%struct.task_struct* noundef %p, %struct.lb_env* nocapture noundef %env) unnamed_addr #1 {
entry:
  %call2 = call i1 @kthread_is_per_cpu(%struct.task_struct* noundef %p) #25
  br i1 %call2, label %cleanup61, label %if.end4

if.end4:                                          ; preds = %entry
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %0 = load i32, i32* %dst_cpu, align 4
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %1 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call6 = call fastcc i32 @cpumask_test_cpu(i32 noundef %0, %struct.cpumask* noundef %1) #27
  %tobool7.not = icmp eq i32 %call6, 0
  %flags = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 10
  %2 = load i32, i32* %flags, align 8
  br i1 %tobool7.not, label %if.then8, label %if.end22

if.then8:                                         ; preds = %if.end4
  %or = or i32 %2, 8
  store i32 %or, i32* %flags, align 8
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %3 = load i32, i32* %idle, align 4
  %cmp = icmp ne i32 %3, 2
  %and = and i32 %2, 20
  %tobool10.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %cleanup61

for.cond.preheader:                               ; preds = %if.then8
  %dst_grpmask = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 5
  %cpus = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %cpu.0 = phi i32 [ %call13, %for.body ], [ -1, %for.cond.preheader ]
  %4 = load %struct.cpumask*, %struct.cpumask** %dst_grpmask, align 8
  %5 = load %struct.cpumask*, %struct.cpumask** %cpus, align 8
  %call13 = call i32 @cpumask_next_and(i32 noundef %cpu.0, %struct.cpumask* noundef %4, %struct.cpumask* noundef %5) #28
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp14 = icmp ult i32 %call13, %6
  br i1 %cmp14, label %for.body, label %cleanup61

for.body:                                         ; preds = %for.cond
  %7 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call16 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call13, %struct.cpumask* noundef %7) #27
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond, label %if.then18

if.then18:                                        ; preds = %for.body
  %8 = load i32, i32* %flags, align 8
  %or20 = or i32 %8, 4
  store i32 %or20, i32* %flags, align 8
  %new_dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 6
  store i32 %call13, i32* %new_dst_cpu, align 8
  br label %cleanup61

if.end22:                                         ; preds = %if.end4
  %and24 = and i32 %2, -2
  store i32 %and24, i32* %flags, align 8
  %call26 = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #27
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end32, label %cleanup61

if.end32:                                         ; preds = %if.end22
  %and34 = and i32 %2, 16
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %cleanup61

if.end37:                                         ; preds = %if.end32
  %call41 = call fastcc i32 @task_hot(%struct.task_struct* noundef %p, %struct.lb_env* noundef %env) #27
  %cmp43 = icmp slt i32 %call41, 1
  br i1 %cmp43, label %cleanup61, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end37
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %9 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %nr_balance_failed = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %9, i64 0, i32 13
  %10 = load i32, i32* %nr_balance_failed, align 4
  %cache_nice_tries = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %9, i64 0, i32 7
  %11 = load i32, i32* %cache_nice_tries, align 8
  %cmp46 = icmp ugt i32 %10, %11
  %spec.select = zext i1 %cmp46 to i32
  br label %cleanup61

cleanup61:                                        ; preds = %for.cond, %lor.lhs.false44, %if.end37, %if.end32, %if.end22, %if.then8, %if.then18, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 0, %if.then18 ], [ 0, %if.then8 ], [ 0, %if.end22 ], [ 1, %if.end32 ], [ 1, %if.end37 ], [ %spec.select, %lor.lhs.false44 ], [ 0, %for.cond ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_task(%struct.task_struct* noundef %p, %struct.lb_env* nocapture noundef readonly %env) unnamed_addr #1 {
entry:
  %src_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 1
  %0 = load %struct.rq*, %struct.rq** %src_rq, align 8
  call void @deactivate_task(%struct.rq* noundef %0, %struct.task_struct* noundef %p, i32 noundef 8) #25
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %1 = load i32, i32* %dst_cpu, align 4
  call void @set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %1) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_is_per_cpu(%struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_running(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 6
  %0 = load i32, i32* %on_cpu, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_hot(%struct.task_struct* noundef %p, %struct.lb_env* nocapture noundef readonly %env) unnamed_addr #7 {
entry:
  %src_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 1
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp.not = icmp eq %struct.sched_class* %0, bitcast ({ void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.task_struct*)*, void (%struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* }* @fair_sched_class to %struct.sched_class*)
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @task_has_idle_policy(%struct.task_struct* noundef %p) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %cleanup, !prof !8

if.end4:                                          ; preds = %if.end
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %1 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %1, i64 0, i32 9
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 128
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end4
  %dst_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 4
  %3 = load %struct.rq*, %struct.rq** %dst_rq, align 8
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 1
  %4 = load i32, i32* %nr_running, align 4
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %do.body, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call10 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) #27
  %next = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call10, i64 0, i32 8
  %5 = load %struct.sched_entity*, %struct.sched_entity** %next, align 8
  %cmp11 = icmp eq %struct.sched_entity* %se, %5
  br i1 %cmp11, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call15 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) #27
  %last = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call15, i64 0, i32 9
  %6 = load %struct.sched_entity*, %struct.sched_entity** %last, align 16
  %cmp16 = icmp eq %struct.sched_entity* %se, %6
  br i1 %cmp16, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end7, %lor.lhs.false
  %7 = load %struct.rq*, %struct.rq** %src_rq, align 8
  %call25 = call fastcc i64 @rq_clock_task(%struct.rq* noundef %7) #27
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 4
  %8 = load i64, i64* %exec_start, align 64
  %sub = sub i64 %call25, %8
  %cmp27 = icmp slt i64 %sub, 500000
  %conv28 = zext i1 %cmp27 to i32
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false, %if.end4, %if.end, %entry, %do.body
  %retval.0 = phi i32 [ %conv28, %do.body ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_has_idle_policy(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %call = call fastcc i32 @idle_policy(i32 noundef %0) #27
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @idle_policy(i32 noundef %policy) unnamed_addr #8 {
entry:
  %cmp = icmp eq i32 %policy, 5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(%struct.rq* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_lock(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readnone %rf) unnamed_addr #1 {
entry:
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #27
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #27
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cmp.not = icmp eq %struct.rq* %1, %rq
  br i1 %cmp.not, label %do.end8, label %do.body4, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/fair.c\22; .popsection; .long 14472b - 14470b; .short 8063; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !32
  unreachable

do.end8:                                          ; preds = %entry
  call void @activate_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef 8) #25
  call void @check_preempt_curr(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef 0) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(%struct.rq* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_preempt_curr(%struct.rq* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_subset(i64* noundef %src1, i64* noundef %src2) unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_subset(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #25
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @asym_active_balance(%struct.lb_env* nocapture noundef readonly %env) unnamed_addr #1 {
entry:
  %idle = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 7
  %0 = load i32, i32* %idle, align 4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sd = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %1 = load %struct.sched_domain*, %struct.sched_domain** %sd, align 8
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %1, i64 0, i32 9
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %dst_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 3
  %3 = load i32, i32* %dst_cpu, align 4
  %src_cpu = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 2
  %4 = load i32, i32* %src_cpu, align 8
  %call = call fastcc i1 @sched_asym_prefer(i32 noundef %3, i32 noundef %4) #27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %call, %land.rhs ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @imbalanced_active_balance(%struct.lb_env* nocapture noundef readonly %env) unnamed_addr #4 {
entry:
  %sd1 = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 0
  %0 = load %struct.sched_domain*, %struct.sched_domain** %sd1, align 8
  %migration_type = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 15
  %1 = load i32, i32* %migration_type, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %nr_balance_failed = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 13
  %2 = load i32, i32* %nr_balance_failed, align 4
  %cache_nice_tries = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %0, i64 0, i32 7
  %3 = load i32, i32* %cache_nice_tries, align 8
  %add = add i32 %3, 2
  %cmp2 = icmp ugt i32 %2, %add
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_lock_irq(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readnone %rf) unnamed_addr #1 {
entry:
  call fastcc void @raw_spin_rq_lock_irq(%struct.rq* noundef %rq) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @detach_one_task(%struct.lb_env* nocapture noundef %env) unnamed_addr #1 {
entry:
  %src_rq = getelementptr inbounds %struct.lb_env, %struct.lb_env* %env, i64 0, i32 1
  %0 = load %struct.rq*, %struct.rq** %src_rq, align 8
  %prev = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 34, i32 1
  %1 = bitcast %struct.list_head** %prev to i8**
  %.pn28 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn28 to %struct.list_head*
  %cfs_tasks331 = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 34
  %cmp.not32 = icmp eq %struct.list_head* %cfs_tasks331, %2
  br i1 %cmp.not32, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn33 = phi i8* [ %.pn, %for.inc ], [ %.pn28, %entry ]
  %p.0.in34 = getelementptr i8, i8* %.pn33, i64 -168
  %p.035 = bitcast i8* %p.0.in34 to %struct.task_struct*
  %call = call fastcc i32 @can_migrate_task(%struct.task_struct* noundef %p.035, %struct.lb_env* noundef %env) #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %p.035.le = bitcast i8* %p.0.in34 to %struct.task_struct*
  call fastcc void @detach_task(%struct.task_struct* noundef %p.035.le, %struct.lb_env* noundef %env) #27
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %prev10 = getelementptr inbounds i8, i8* %.pn33, i64 8
  %3 = bitcast i8* %prev10 to i8**
  %.pn = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %5 = load %struct.rq*, %struct.rq** %src_rq, align 8
  %cfs_tasks3 = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 34
  %cmp.not = icmp eq %struct.list_head* %cfs_tasks3, %4
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.end
  %retval.0 = phi %struct.task_struct* [ %p.035.le, %if.end ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_one_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  call fastcc void @rq_lock(%struct.rq* noundef %rq, %struct.rq_flags* noundef nonnull %rf) #27
  call void @update_rq_clock(%struct.rq* noundef %rq) #25
  call fastcc void @attach_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #27
  call fastcc void @rq_unlock(%struct.rq* noundef %rq) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #24, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_lock_irq(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #27
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(%struct.rq* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @util_est_enqueue(%struct.cfs_rq* noundef %cfs_rq, %struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %enqueued1 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 8, i32 0
  %0 = load i32, i32* %enqueued1, align 8
  %call = call fastcc i64 @_task_util_est(%struct.task_struct* noundef %p) #27
  %1 = trunc i64 %call to i32
  %conv2 = add i32 %0, %1
  store volatile i32 %conv2, i32* %enqueued1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @enqueue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef %flags) unnamed_addr #1 {
entry:
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i32 %flags, 65
  %.not = icmp eq i32 %0, 1
  %curr3 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  %1 = load %struct.sched_entity*, %struct.sched_entity** %curr3, align 64
  %cmp = icmp eq %struct.sched_entity* %1, %se
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 5
  %2 = load i64, i64* %min_vruntime, align 8
  %vruntime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 6
  %3 = load i64, i64* %vruntime, align 16
  %add = add i64 %3, %2
  store i64 %add, i64* %vruntime, align 16
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  call fastcc void @update_curr(%struct.cfs_rq* noundef %cfs_rq) #27
  %brmerge60 = select i1 %.not, i1 true, i1 %cmp
  br i1 %brmerge60, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %min_vruntime11 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 5
  %4 = load i64, i64* %min_vruntime11, align 8
  %vruntime12 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 6
  %5 = load i64, i64* %vruntime12, align 16
  %add13 = add i64 %5, %4
  store i64 %add13, i64* %vruntime12, align 16
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then10
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef 5) #27
  call fastcc void @account_entity_enqueue(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call fastcc void @place_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef 0) #27
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  br i1 %cmp, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  call fastcc void @__enqueue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 3
  store i32 1, i32* %on_rq, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @add_nr_running(%struct.rq* nocapture noundef %rq) unnamed_addr #9 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %add = add i32 %0, 1
  store i32 %add, i32* %nr_running, align 4
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %overload = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 5
  %3 = load volatile i32, i32* %overload, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %do.end
  store volatile i32 1, i32* %overload, align 8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body10, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @update_overutilized_status(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #9 {
entry:
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %0 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %overutilized = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 6
  %1 = load volatile i32, i32* %overutilized, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  %call = call fastcc i1 @cpu_overutilized(i32 noundef %2) #27
  br i1 %call, label %do.body4, label %if.end

do.body4:                                         ; preds = %land.lhs.true
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %overutilized6 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 6
  store volatile i32 2, i32* %overutilized6, align 4
  br label %if.end

if.end:                                           ; preds = %do.body4, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @account_entity_enqueue(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %load = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 0
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %weight, align 64
  call fastcc void @update_load_add(%struct.load_weight* noundef %load, i64 noundef %0) #27
  %call = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  %group_node = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 2
  %cfs_tasks = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 34
  call fastcc void @list_add(%struct.list_head* noundef %group_node, %struct.list_head* noundef %cfs_tasks) #27
  %nr_running = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 16
  %inc = add i32 %1, 1
  store i32 %inc, i32* %nr_running, align 16
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @place_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef %initial) unnamed_addr #10 {
entry:
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 5
  %0 = load i64, i64* %min_vruntime, align 8
  %tobool.not = icmp eq i32 %initial, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @sched_vslice(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %add = add i64 %call, %0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %vruntime.0 = phi i64 [ %add, %if.then ], [ %0, %entry ]
  %1 = load i32, i32* @sysctl_sched_latency, align 4
  %2 = lshr i32 %1, 1
  %narrow = select i1 %tobool.not, i32 %2, i32 0
  %sub = zext i32 %narrow to i64
  %vruntime.1 = sub i64 %vruntime.0, %sub
  %vruntime4 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 6
  %3 = load i64, i64* %vruntime4, align 16
  %call5 = call fastcc i64 @max_vruntime(i64 noundef %3, i64 noundef %vruntime.1) #27
  store i64 %call5, i64* %vruntime4, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__enqueue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  %run_node = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 1
  %tasks_timeline = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 6
  %rb_node.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %tasks_timeline, i64 0, i32 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node.i, align 8
  %tobool.not2.i = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not2.i, label %rb_add_cached.exit, label %while.body.i

while.body.i:                                     ; preds = %entry, %while.body.i
  %1 = phi %struct.rb_node* [ %2, %while.body.i ], [ %0, %entry ]
  %leftmost.0.off03.i = phi i1 [ %leftmost.1.off0.i, %while.body.i ], [ true, %entry ]
  %call.i = call fastcc i1 @__entity_less(%struct.rb_node* noundef %run_node, %struct.rb_node* noundef nonnull %1) #25
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 1
  %link.1.i = select i1 %call.i, %struct.rb_node** %rb_left.i, %struct.rb_node** %rb_right.i
  %leftmost.1.off0.i = select i1 %call.i, i1 %leftmost.0.off03.i, i1 false
  %2 = load %struct.rb_node*, %struct.rb_node** %link.1.i, align 8
  %tobool.not.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not.i, label %rb_add_cached.exit, label %while.body.i

rb_add_cached.exit:                               ; preds = %while.body.i, %entry
  %link.0.lcssa.i = phi %struct.rb_node** [ %rb_node.i, %entry ], [ %link.1.i, %while.body.i ]
  %parent.0.lcssa.i = phi %struct.rb_node* [ null, %entry ], [ %1, %while.body.i ]
  %leftmost.0.off0.lcssa.i = phi i1 [ true, %entry ], [ %leftmost.1.off0.i, %while.body.i ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %run_node, %struct.rb_node* noundef %parent.0.lcssa.i, %struct.rb_node** noundef %link.0.lcssa.i) #25
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %run_node, %struct.rb_root_cached* noundef %tasks_timeline, i1 noundef %leftmost.0.off0.lcssa.i) #25
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @sched_vslice(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @sched_slice(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %call1 = call fastcc i64 @calc_delta_fair(i64 noundef %call, %struct.sched_entity* noundef %se) #27
  ret i64 %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @sched_slice(%struct.cfs_rq* noundef readonly %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #10 {
entry:
  %lw = alloca %struct.load_weight, align 8
  %call = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  %h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 5, i32 2
  %0 = load i32, i32* %h_nr_running, align 4
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 3
  %1 = load i32, i32* %on_rq, align 8
  %tobool.not = icmp eq i32 %1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %add = add i32 %0, %lnot.ext
  %conv = zext i32 %add to i64
  %call2 = call fastcc i64 @__sched_period(i64 noundef %conv) #27
  %tobool3.not40 = icmp eq %struct.sched_entity* %se, null
  br i1 %tobool3.not40, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.load_weight* %lw to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !22
  %call4 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se) #27
  %load5 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call4, i64 0, i32 0
  %3 = load i32, i32* %on_rq, align 8
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %for.body.lr.ph
  %4 = bitcast %struct.cfs_rq* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef align 64 dereferenceable(16) %4, i64 16, i1 false)
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %5 = load i64, i64* %weight, align 64
  call fastcc void @update_load_add(%struct.load_weight* noundef nonnull %lw, i64 noundef %5) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.lr.ph
  %load.0 = phi %struct.load_weight* [ %lw, %if.then ], [ %load5, %for.body.lr.ph ]
  %weight19 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %6 = load i64, i64* %weight19, align 64
  %call20 = call fastcc i64 @__calc_delta(i64 noundef %call2, i64 noundef %6, %struct.load_weight* noundef %load.0) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #24
  br label %for.end

for.end:                                          ; preds = %if.end, %entry
  %slice.0.lcssa = phi i64 [ %call20, %if.end ], [ %call2, %entry ]
  %7 = load i32, i32* @sysctl_sched_min_granularity, align 4
  %conv21 = zext i32 %7 to i64
  %cmp = icmp ugt i64 %slice.0.lcssa, %conv21
  %cond = select i1 %cmp, i64 %slice.0.lcssa, i64 %conv21
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__sched_period(i64 noundef %nr_running) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i64 %nr_running, 8
  br i1 %cmp, label %if.then, label %if.else, !prof !10

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @sysctl_sched_min_granularity, align 4
  %conv4 = zext i32 %0 to i64
  %mul = mul i64 %conv4, %nr_running
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @sysctl_sched_latency, align 4
  %conv5 = zext i32 %1 to i64
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i64 [ %mul, %if.then ], [ %conv5, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__entity_less(%struct.rb_node* nocapture noundef readonly %a, %struct.rb_node* nocapture noundef readonly %b) unnamed_addr #4 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %a, i64 -1, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.sched_entity*
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %b, i64 -1, i32 1
  %1 = bitcast %struct.rb_node** %add.ptr6 to %struct.sched_entity*
  %call = call fastcc i1 @entity_before(%struct.sched_entity* noundef %0, %struct.sched_entity* noundef %1) #27
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #13 {
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
define internal fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost) unnamed_addr #1 {
entry:
  br i1 %leftmost, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  store %struct.rb_node* %node, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_insert_color(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sched_idle_rq(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #4 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %idle_h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 3
  %1 = load i32, i32* %idle_h_nr_running, align 8
  %cmp = icmp eq i32 %0, %1
  %tobool = icmp ne i32 %0, 0
  %narrow = and i1 %tobool, %cmp
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @util_est_dequeue(%struct.cfs_rq* noundef %cfs_rq, %struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %enqueued1 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 8, i32 0
  %0 = load i32, i32* %enqueued1, align 8
  %call = call fastcc i64 @_task_util_est(%struct.task_struct* noundef %p) #27
  %conv = trunc i64 %call to i32
  %1 = call i32 @llvm.usub.sat.i32(i32 %0, i32 %conv)
  store volatile i32 %1, i32* %enqueued1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @update_curr(%struct.cfs_rq* noundef %cfs_rq) #27
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se, i32 noundef 1) #27
  call fastcc void @clear_buddies(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %curr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  %0 = load %struct.sched_entity*, %struct.sched_entity** %curr, align 64
  %cmp.not = icmp eq %struct.sched_entity* %0, %se
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__dequeue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 3
  store i32 0, i32* %on_rq, align 8
  call fastcc void @account_entity_dequeue(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 5
  %1 = load i64, i64* %min_vruntime, align 8
  %vruntime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 6
  %2 = load i64, i64* %vruntime, align 16
  %sub = sub i64 %2, %1
  store i64 %sub, i64* %vruntime, align 16
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %and3 = and i32 %flags, 6
  %cmp4.not = icmp eq i32 %and3, 2
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  call fastcc void @update_min_vruntime(%struct.cfs_rq* noundef %cfs_rq) #27
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @set_next_buddy(%struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %tobool.not11 = icmp eq %struct.sched_entity* %se, null
  br i1 %tobool.not11, label %for.end, label %if.end

if.end:                                           ; preds = %entry
  %call6 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se) #27
  %next = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call6, i64 0, i32 8
  store %struct.sched_entity* %se, %struct.sched_entity** %next, align 8
  br label %for.end

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sub_nr_running(%struct.rq* nocapture noundef %rq) unnamed_addr #11 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %sub = add i32 %0, -1
  store i32 %sub, i32* %nr_running, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @util_est_update(%struct.cfs_rq* noundef readonly %cfs_rq, %struct.task_struct* noundef %p, i1 noundef %task_sleep) unnamed_addr #10 {
entry:
  %ue.sroa.0 = alloca i32, align 8
  %ue.sroa.14 = alloca i32, align 4
  %ue.sroa.0.0.sroa_cast88 = bitcast i32* %ue.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %ue.sroa.0.0.sroa_cast88)
  %ue.sroa.14.0.sroa_cast86 = bitcast i32* %ue.sroa.14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %ue.sroa.14.0.sroa_cast86)
  br i1 %task_sleep, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ue.sroa.0.0..sroa_idx = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 8, i32 0
  %ue.sroa.0.0.copyload = load i32, i32* %ue.sroa.0.0..sroa_idx, align 8
  %ue.sroa.14.0..sroa_idx64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 8, i32 1
  %ue.sroa.14.0.copyload = load i32, i32* %ue.sroa.14.0..sroa_idx64, align 4
  store i32 %ue.sroa.14.0.copyload, i32* %ue.sroa.14, align 4
  %tobool1.not = icmp sgt i32 %ue.sroa.0.0.copyload, -1
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call fastcc i64 @task_util(%struct.task_struct* noundef %p) #27
  %conv5 = trunc i64 %call to i32
  %cmp = icmp ult i32 %ue.sroa.14.0.copyload, %conv5
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end3
  store i32 %conv5, i32* %ue.sroa.14, align 4
  br label %done

if.end12:                                         ; preds = %if.end3
  %sub = sub i32 %conv5, %ue.sroa.14.0.copyload
  %call20 = call fastcc i1 @within_margin(i32 noundef %sub) #27
  br i1 %call20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end12
  %conv22 = sub i32 %ue.sroa.0.0.copyload, %conv5
  %call23 = call fastcc i1 @within_margin(i32 noundef %conv22) #27
  br i1 %call23, label %cleanup, label %done

if.end26:                                         ; preds = %if.end12
  %call27 = call fastcc i64 @task_util(%struct.task_struct* noundef %p) #27
  %call28 = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  %call29 = call fastcc i32 @cpu_of(%struct.rq* noundef %call28) #27
  %call30 = call fastcc i64 @capacity_orig_of(i32 noundef %call29) #27
  %cmp31 = icmp ugt i64 %call27, %call30
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end26
  %0 = lshr i32 %sub, 2
  %1 = add i32 %ue.sroa.14.0.copyload, %0
  %shr = and i32 %1, 1073741823
  store i32 %shr, i32* %ue.sroa.14, align 4
  br label %done

done:                                             ; preds = %if.then21, %if.end34, %if.then9
  %or = or i32 %conv5, -2147483648
  store i32 %or, i32* %ue.sroa.0, align 8
  %ue.sroa.0.0.ue.sroa.0.0.ue.sroa.0.0.ue.sroa.0.0.copyload61 = load volatile i32, i32* %ue.sroa.0, align 8
  store volatile i32 %ue.sroa.0.0.ue.sroa.0.0.ue.sroa.0.0.ue.sroa.0.0.copyload61, i32* %ue.sroa.0.0..sroa_idx, align 8
  %ue.sroa.14.0.ue.sroa.14.0.ue.sroa.14.0.ue.sroa.14.0.copyload66 = load volatile i32, i32* %ue.sroa.14, align 4
  store volatile i32 %ue.sroa.14.0.ue.sroa.14.0.ue.sroa.14.0.ue.sroa.14.0.copyload66, i32* %ue.sroa.14.0..sroa_idx64, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then21, %if.end, %entry, %done
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %ue.sroa.0.0.sroa_cast88)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %ue.sroa.14.0.sroa_cast86)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @account_entity_dequeue(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %load = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 0
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %weight, align 64
  call fastcc void @update_load_sub(%struct.load_weight* noundef %load, i64 noundef %0) #27
  %group_node = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 2
  call fastcc void @list_del_init(%struct.list_head* noundef %group_node) #27
  %nr_running = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 16
  %dec = add i32 %1, -1
  store i32 %dec, i32* %nr_running, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @within_margin(i32 noundef %value) unnamed_addr #8 {
entry:
  %sub = add i32 %value, 9
  %cmp = icmp ult i32 %sub, 19
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.cfs_rq* @task_cfs_rq(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #27
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 5
  ret %struct.cfs_rq* %cfs
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rq_clock_skip_update(%struct.rq* nocapture noundef %rq) unnamed_addr #11 {
entry:
  %clock_update_flags = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 14
  %0 = load i32, i32* %clock_update_flags, align 16
  %or = or i32 %0, 1
  store i32 %or, i32* %clock_update_flags, align 16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @set_skip_buddy(%struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %tobool.not3 = icmp eq %struct.sched_entity* %se, null
  br i1 %tobool.not3, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se) #27
  %skip = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 10
  store %struct.sched_entity* %se, %struct.sched_entity** %skip, align 8
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) #27
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(%struct.rq* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @set_last_buddy(%struct.sched_entity* noundef %se) unnamed_addr #9 {
entry:
  %tobool.not11 = icmp eq %struct.sched_entity* %se, null
  br i1 %tobool.not11, label %for.end, label %if.end

if.end:                                           ; preds = %entry
  %call6 = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef nonnull %se) #27
  %last = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call6, i64 0, i32 9
  store %struct.sched_entity* %se, %struct.sched_entity** %last, align 16
  br label %for.end

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #27
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #27
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #8 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_prev_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %prev) unnamed_addr #1 {
entry:
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %prev, i64 0, i32 3
  %0 = load i32, i32* %on_rq, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @update_curr(%struct.cfs_rq* noundef %cfs_rq) #27
  %.pr = load i32, i32* %on_rq, align 8
  %tobool2.not = icmp eq i32 %.pr, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @__enqueue_entity(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %prev) #27
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %prev, i32 noundef 0) #27
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then3, %if.end
  %curr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  store %struct.sched_entity* null, %struct.sched_entity** %curr, align 64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_on_rq_queued(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %0 = load i32, i32* %on_rq, align 32
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @record_wakee(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #29, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %wakee_flip_decay_ts = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 10
  %2 = load i64, i64* %wakee_flip_decay_ts, align 8
  %add = add i64 %2, 250
  %3 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add, %3
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %wakee_flips = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 9
  %4 = load i32, i32* %wakee_flips, align 4
  %shr = lshr i32 %4, 1
  store i32 %shr, i32* %wakee_flips, align 4
  %5 = load volatile i64, i64* @jiffies, align 64
  store i64 %5, i64* %wakee_flip_decay_ts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %last_wakee = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 11
  %6 = load %struct.task_struct*, %struct.task_struct** %last_wakee, align 16
  %cmp5.not = icmp eq %struct.task_struct* %6, %p
  br i1 %cmp5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  store %struct.task_struct* %p, %struct.task_struct** %last_wakee, align 16
  %wakee_flips10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 9
  %7 = load i32, i32* %wakee_flips10, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %wakee_flips10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @wake_wide(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #21 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #29, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %wakee_flips = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 9
  %2 = load i32, i32* %wakee_flips, align 4
  %wakee_flips1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 9
  %3 = load i32, i32* %wakee_flips1, align 4
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call9, ptrtoint (i32* @sd_llc_size to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %cmp = icmp ult i32 %2, %3
  %spec.select = select i1 %cmp, i32 %2, i32 %3
  %spec.select37 = select i1 %cmp, i32 %3, i32 %2
  %cmp14 = icmp uge i32 %spec.select, %5
  %mul = mul i32 %spec.select, %5
  %cmp15 = icmp uge i32 %spec.select37, %mul
  %or.cond = select i1 %cmp14, i1 %cmp15, i1 false
  %retval.0 = zext i1 %or.cond to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wake_affine(%struct.sched_domain* nocapture noundef readonly %sd, %struct.task_struct* nocapture noundef readonly %p, i32 noundef %this_cpu, i32 noundef %prev_cpu, i32 noundef %sync) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @wake_affine_idle(i32 noundef %this_cpu, i32 noundef %prev_cpu, i32 noundef %sync) #27
  %cmp = icmp eq i32 %call, 256
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @wake_affine_weight(%struct.sched_domain* noundef %sd, %struct.task_struct* noundef %p, i32 noundef %this_cpu, i32 noundef %prev_cpu, i32 noundef %sync) #27
  br label %do.end

do.end:                                           ; preds = %entry, %if.then
  %target.0 = phi i32 [ %call1, %if.then ], [ %call, %entry ]
  %cmp2 = icmp eq i32 %target.0, 256
  %prev_cpu.target.0 = select i1 %cmp2, i32 %prev_cpu, i32 %target.0
  ret i32 %prev_cpu.target.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_idlest_cpu(%struct.sched_domain* noundef %sd, %struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %prev_cpu, i32 noundef %sd_flag) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #27
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %0 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call1 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %call, %struct.cpumask* noundef %0) #27
  br i1 %call1, label %if.end, label %cleanup41

if.end:                                           ; preds = %entry
  %and = and i32 %sd_flag, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  call fastcc void @sync_entity_load_avg(%struct.sched_entity* noundef %se) #27
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tobool4.not76 = icmp eq %struct.sched_domain* %sd, null
  br i1 %tobool4.not76, label %cleanup41, label %while.body

while.body:                                       ; preds = %if.end3, %cleanup
  %sd.addr.079 = phi %struct.sched_domain* [ %sd.addr.3, %cleanup ], [ %sd, %if.end3 ]
  %cpu.addr.078 = phi i32 [ %cpu.addr.1, %cleanup ], [ %cpu, %if.end3 ]
  %new_cpu.077 = phi i32 [ %new_cpu.1, %cleanup ], [ %cpu, %if.end3 ]
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.addr.079, i64 0, i32 9
  %1 = load i32, i32* %flags, align 8
  %and5 = and i32 %1, %sd_flag
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.end8

if.end8:                                          ; preds = %while.body
  %call9 = call fastcc %struct.sched_group* @find_idlest_group(%struct.sched_domain* noundef nonnull %sd.addr.079, %struct.task_struct* noundef %p, i32 noundef %cpu.addr.078) #27
  %tobool10.not = icmp eq %struct.sched_group* %call9, null
  br i1 %tobool10.not, label %cleanup.sink.split, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = call fastcc i32 @find_idlest_group_cpu(%struct.sched_group* noundef nonnull %call9, %struct.task_struct* noundef %p, i32 noundef %cpu.addr.078) #27
  %cmp = icmp eq i32 %call14, %cpu.addr.078
  br i1 %cmp, label %cleanup.sink.split, label %if.end17

if.end17:                                         ; preds = %if.end13
  %span_weight = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.addr.079, i64 0, i32 19
  %2 = load i32, i32* %span_weight, align 8
  %idxprom = sext i32 %call14 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add to %struct.rq*
  %sd24 = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 22
  %5 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd24, align 8
  %tobool29.not72 = icmp eq %struct.sched_domain* %5, null
  br i1 %tobool29.not72, label %cleanup41, label %for.body

for.body:                                         ; preds = %if.end17, %if.end33
  %sd.addr.174 = phi %struct.sched_domain* [ %spec.select, %if.end33 ], [ null, %if.end17 ]
  %tmp.073 = phi %struct.sched_domain* [ %8, %if.end33 ], [ %5, %if.end17 ]
  %span_weight30 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp.073, i64 0, i32 19
  %6 = load i32, i32* %span_weight30, align 8
  %cmp31.not = icmp ugt i32 %2, %6
  br i1 %cmp31.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %for.body
  %flags34 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp.073, i64 0, i32 9
  %7 = load i32, i32* %flags34, align 8
  %and35 = and i32 %7, %sd_flag
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select = select i1 %tobool36.not, %struct.sched_domain* %sd.addr.174, %struct.sched_domain* %tmp.073
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp.073, i64 0, i32 0
  %8 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool29.not = icmp eq %struct.sched_domain* %8, null
  br i1 %tobool29.not, label %cleanup, label %for.body

cleanup.sink.split:                               ; preds = %if.end13, %if.end8, %while.body
  %new_cpu.1.ph = phi i32 [ %new_cpu.077, %while.body ], [ %new_cpu.077, %if.end8 ], [ %cpu.addr.078, %if.end13 ]
  %child16 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.addr.079, i64 0, i32 1
  %9 = load %struct.sched_domain*, %struct.sched_domain** %child16, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end33, %cleanup.sink.split
  %new_cpu.1 = phi i32 [ %new_cpu.1.ph, %cleanup.sink.split ], [ %call14, %if.end33 ], [ %call14, %for.body ]
  %cpu.addr.1 = phi i32 [ %cpu.addr.078, %cleanup.sink.split ], [ %call14, %if.end33 ], [ %call14, %for.body ]
  %sd.addr.3 = phi %struct.sched_domain* [ %9, %cleanup.sink.split ], [ %sd.addr.174, %for.body ], [ %spec.select, %if.end33 ]
  %tobool4.not = icmp eq %struct.sched_domain* %sd.addr.3, null
  br i1 %tobool4.not, label %cleanup41, label %while.body

cleanup41:                                        ; preds = %if.end17, %cleanup, %if.end3, %entry
  %retval.0 = phi i32 [ %prev_cpu, %entry ], [ %cpu, %if.end3 ], [ %call14, %if.end17 ], [ %new_cpu.1, %cleanup ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @select_idle_sibling(%struct.task_struct* noundef %p, i32 noundef %prev, i32 noundef %target) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #27
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %do.end, !prof !10

if.then:                                          ; preds = %entry
  %se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  call fastcc void @sync_entity_load_avg(%struct.sched_entity* noundef %se) #27
  %call4 = call fastcc i64 @uclamp_task_util(%struct.task_struct* noundef %p) #27
  %phi.cast = trunc i64 %call4 to i32
  br label %do.end

do.end:                                           ; preds = %entry, %if.then
  %task_util.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry ]
  %call5 = call i32 @available_idle_cpu(i32 noundef %target) #25
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %do.end
  %call7 = call fastcc i32 @sched_idle_cpu(i32 noundef %target) #27
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end
  %call10 = call fastcc i1 @asym_fits_capacity(i32 noundef %task_util.0, i32 noundef %target) #27
  br i1 %call10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %cmp14.not = icmp eq i32 %prev, %target
  br i1 %cmp14.not, label %if.end30, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end13
  %call17 = call i1 @cpus_share_cache(i32 noundef %prev, i32 noundef %target) #25
  br i1 %call17, label %land.lhs.true19, label %if.end30

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = call i32 @available_idle_cpu(i32 noundef %prev) #25
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %land.lhs.true25

lor.lhs.false22:                                  ; preds = %land.lhs.true19
  %call23 = call fastcc i32 @sched_idle_cpu(i32 noundef %prev) #27
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %lor.lhs.false22, %land.lhs.true19
  %call27 = call fastcc i1 @asym_fits_capacity(i32 noundef %task_util.0, i32 noundef %prev) #27
  br i1 %call27, label %cleanup, label %if.end30

if.end30:                                         ; preds = %land.lhs.true25, %lor.lhs.false22, %land.lhs.true16, %if.end13
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #29, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call32 = call fastcc i1 @is_per_cpu_kthread(%struct.task_struct* noundef %1) #27
  br i1 %call32, label %land.lhs.true34, label %if.end56

land.lhs.true34:                                  ; preds = %if.end30
  %call40 = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call40, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %cmp41 = icmp eq i32 %3, %prev
  br i1 %cmp41, label %do.body44, label %if.end56

do.body44:                                        ; preds = %land.lhs.true34
  %add52 = add i64 %call40, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add52 to %struct.rq*
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 1
  %5 = load i32, i32* %nr_running, align 4
  %cmp53 = icmp ult i32 %5, 2
  br i1 %cmp53, label %cleanup, label %if.end56

if.end56:                                         ; preds = %do.body44, %land.lhs.true34, %if.end30
  %recent_used_cpu57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 12
  %6 = load i32, i32* %recent_used_cpu57, align 8
  store i32 %prev, i32* %recent_used_cpu57, align 8
  %cmp59.not = icmp eq i32 %6, %prev
  %cmp62.not = icmp eq i32 %6, %target
  %or.cond = or i1 %cmp59.not, %cmp62.not
  br i1 %or.cond, label %if.end83, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.end56
  %call65 = call i1 @cpus_share_cache(i32 noundef %6, i32 noundef %target) #25
  br i1 %call65, label %land.lhs.true67, label %if.end83

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %call68 = call i32 @available_idle_cpu(i32 noundef %6) #25
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %lor.lhs.false70, label %land.lhs.true73

lor.lhs.false70:                                  ; preds = %land.lhs.true67
  %call71 = call fastcc i32 @sched_idle_cpu(i32 noundef %6) #27
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end83, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %lor.lhs.false70, %land.lhs.true67
  %7 = load i32, i32* %recent_used_cpu57, align 8
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %8 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call75 = call fastcc i32 @cpumask_test_cpu(i32 noundef %7, %struct.cpumask* noundef %8) #27
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end83, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %land.lhs.true73
  %call79 = call fastcc i1 @asym_fits_capacity(i32 noundef %task_util.0, i32 noundef %6) #27
  br i1 %call79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %land.lhs.true77
  store i32 %prev, i32* %recent_used_cpu57, align 8
  br label %cleanup

if.end83:                                         ; preds = %land.lhs.true77, %land.lhs.true73, %lor.lhs.false70, %land.lhs.true64, %if.end56
  %call85 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #27
  %cmp86 = icmp sgt i32 %call85, 0
  %idxprom = sext i32 %target to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  br i1 %cmp86, label %if.then96, label %if.end119, !prof !10

if.then96:                                        ; preds = %if.end83
  %add108 = add i64 %9, ptrtoint (%struct.sched_domain** @sd_asym_cpucapacity to i64)
  %10 = inttoptr i64 %add108 to %struct.sched_domain**
  %11 = load volatile %struct.sched_domain*, %struct.sched_domain** %10, align 8
  %tobool113.not = icmp eq %struct.sched_domain* %11, null
  br i1 %tobool113.not, label %if.end119, label %if.then114

if.then114:                                       ; preds = %if.then96
  %call115 = call fastcc i32 @select_idle_capacity(%struct.task_struct* noundef %p, %struct.sched_domain* noundef nonnull %11, i32 noundef %target) #27
  %cmp116 = icmp ult i32 %call115, 256
  %cond = select i1 %cmp116, i32 %call115, i32 %target
  br label %cleanup

if.end119:                                        ; preds = %if.end83, %if.then96
  %add134 = add i64 %9, ptrtoint (%struct.sched_domain** @sd_llc to i64)
  %12 = inttoptr i64 %add134 to %struct.sched_domain**
  %13 = load volatile %struct.sched_domain*, %struct.sched_domain** %12, align 8
  %tobool139.not = icmp eq %struct.sched_domain* %13, null
  br i1 %tobool139.not, label %cleanup, label %if.end141

if.end141:                                        ; preds = %if.end119
  %call158 = call fastcc i32 @select_idle_cpu(%struct.task_struct* noundef %p, %struct.sched_domain* noundef nonnull %13, i32 noundef %target) #27
  %cmp159 = icmp ult i32 %call158, 256
  %spec.select = select i1 %cmp159, i32 %call158, i32 %target
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.end119, %do.body44, %land.lhs.true25, %land.lhs.true, %if.then114, %if.then81
  %retval.0 = phi i32 [ %6, %if.then81 ], [ %cond, %if.then114 ], [ %target, %land.lhs.true ], [ %prev, %land.lhs.true25 ], [ %prev, %do.body44 ], [ %target, %if.end119 ], [ %spec.select, %if.end141 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sync_entity_load_avg(%struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) #27
  %call1 = call fastcc i64 @cfs_rq_last_update_time(%struct.cfs_rq* noundef %call) #27
  %call2 = call i32 @__update_load_avg_blocked_se(i64 noundef %call1, %struct.sched_entity* noundef %se) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cfs_rq_last_update_time(%struct.cfs_rq* nocapture noundef readonly %cfs_rq) unnamed_addr #4 {
entry:
  %last_update_time = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 0
  %0 = load i64, i64* %last_update_time, align 64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__update_load_avg_blocked_se(i64 noundef, %struct.sched_entity* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #27
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #25
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wake_affine_idle(i32 noundef %this_cpu, i32 noundef %prev_cpu, i32 noundef %sync) unnamed_addr #1 {
entry:
  %call = call i32 @available_idle_cpu(i32 noundef %this_cpu) #25
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i1 @cpus_share_cache(i32 noundef %this_cpu, i32 noundef %prev_cpu) #25
  br i1 %call1, label %return.sink.split, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool4.not = icmp eq i32 %sync, 0
  br i1 %tobool4.not, label %return.sink.split, label %do.body

do.body:                                          ; preds = %if.end
  %idxprom = sext i32 %this_cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 1
  %2 = load i32, i32* %nr_running, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end, %do.body, %land.lhs.true
  %.sink = phi i32 [ %this_cpu, %land.lhs.true ], [ 256, %do.body ], [ 256, %if.end ]
  %call9 = call i32 @available_idle_cpu(i32 noundef %prev_cpu) #25
  %tobool10.not = icmp eq i32 %call9, 0
  %.prev_cpu = select i1 %tobool10.not, i32 %.sink, i32 %prev_cpu
  br label %return

return:                                           ; preds = %return.sink.split, %do.body
  %retval.0 = phi i32 [ %this_cpu, %do.body ], [ %.prev_cpu, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @wake_affine_weight(%struct.sched_domain* nocapture noundef readonly %sd, %struct.task_struct* nocapture noundef readonly %p, i32 noundef %this_cpu, i32 noundef %prev_cpu, i32 noundef %sync) unnamed_addr #21 {
entry:
  %idxprom = sext i32 %this_cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call = call fastcc i64 @cpu_load(%struct.rq* noundef %1) #27
  %tobool.not = icmp eq i32 %sync, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #29, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call3 = call fastcc i64 @task_h_load(%struct.task_struct* noundef %3) #27
  %cmp = icmp ult i64 %call, %call3
  %sub = sub i64 %call, %call3
  br i1 %cmp, label %cleanup33, label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %this_eff_load.1 = phi i64 [ %sub, %if.then ], [ %call, %entry ]
  %call6 = call fastcc i64 @task_h_load(%struct.task_struct* noundef %p) #27
  %add7 = add i64 %call6, %this_eff_load.1
  %mul = mul i64 %add7, 100
  %call8 = call fastcc i64 @capacity_of(i32 noundef %prev_cpu) #27
  %mul9 = mul i64 %mul, %call8
  %idxprom17 = sext i32 %prev_cpu to i64
  %arrayidx18 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom17
  %4 = load i64, i64* %arrayidx18, align 8
  %add19 = add i64 %4, ptrtoint (%struct.rq* @runqueues to i64)
  %5 = inttoptr i64 %add19 to %struct.rq*
  %call20 = call fastcc i64 @cpu_load(%struct.rq* noundef %5) #27
  %sub21 = sub i64 %call20, %call6
  %imbalance_pct = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 6
  %6 = load i32, i32* %imbalance_pct, align 4
  %sub22 = add i32 %6, -100
  %div = lshr i32 %sub22, 1
  %add23 = add nuw i32 %div, 100
  %conv = zext i32 %add23 to i64
  %call25 = call fastcc i64 @capacity_of(i32 noundef %this_cpu) #27
  %mul24 = mul i64 %call25, %sub21
  %mul26 = mul i64 %mul24, %conv
  %not.tobool.not = xor i1 %tobool.not, true
  %add29 = zext i1 %not.tobool.not to i64
  %spec.select = add i64 %mul26, %add29
  %cmp31 = icmp slt i64 %mul9, %spec.select
  %cond = select i1 %cmp31, i32 %this_cpu, i32 256
  br label %cleanup33

cleanup33:                                        ; preds = %if.then, %if.end5
  %retval.1 = phi i32 [ %cond, %if.end5 ], [ %this_cpu, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @available_idle_cpu(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cpus_share_cache(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_intersects(i64* noundef %arraydecay, i64* noundef %arraydecay2) #27
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_group* @find_idlest_group(%struct.sched_domain* nocapture noundef readonly %sd, %struct.task_struct* noundef %p, i32 noundef %this_cpu) unnamed_addr #1 {
entry:
  %local_sgs = alloca %struct.sg_lb_stats, align 8
  %tmp_sgs = alloca %struct.sg_lb_stats, align 8
  %idlest_sgs = alloca %struct.sg_lb_stats, align 8
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  %0 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %1 = bitcast %struct.sg_lb_stats* %local_sgs to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %1) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false), !annotation !22
  %2 = bitcast %struct.sg_lb_stats* %tmp_sgs to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %2) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false), !annotation !22
  %3 = bitcast %struct.sg_lb_stats* %idlest_sgs to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %3) #24
  %4 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 1
  %5 = bitcast i64* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 0
  store i64 4294967295, i64* %6, align 8
  %7 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 9
  store i32 5, i32* %7, align 8
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %group.0 = phi %struct.sched_group* [ %0, %entry ], [ %10, %cleanup ]
  %local.0 = phi %struct.sched_group* [ null, %entry ], [ %local.2, %cleanup ]
  %idlest.0 = phi %struct.sched_group* [ null, %entry ], [ %idlest.2, %cleanup ]
  %call = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %group.0) #27
  %8 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call1 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %call, %struct.cpumask* noundef %8) #27
  br i1 %call1, label %do.body2, label %cleanup

do.body2:                                         ; preds = %do.body
  %call8 = call fastcc i32 @cpumask_test_cpu(i32 noundef %this_cpu, %struct.cpumask* noundef %call) #27
  %tobool.not = icmp eq i32 %call8, 0
  %sgs.0 = select i1 %tobool.not, %struct.sg_lb_stats* %tmp_sgs, %struct.sg_lb_stats* %local_sgs
  call fastcc void @update_sg_wakeup_stats(%struct.sched_domain* noundef %sd, %struct.sched_group* noundef %group.0, %struct.sg_lb_stats* noundef nonnull %sgs.0, %struct.task_struct* noundef %p) #27
  br i1 %tobool.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %do.body2
  %call12 = call fastcc i1 @update_pick_idlest(%struct.sched_group* noundef %idlest.0, %struct.sg_lb_stats* noundef nonnull %idlest_sgs, %struct.sched_group* noundef %group.0, %struct.sg_lb_stats* noundef nonnull %sgs.0) #27
  br i1 %call12, label %if.then13, label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  %9 = bitcast %struct.sg_lb_stats* %sgs.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %3, i8* noundef nonnull align 8 dereferenceable(72) %9, i64 72, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %land.lhs.true, %if.then13, %do.body
  %local.2 = phi %struct.sched_group* [ %local.0, %do.body ], [ %local.0, %if.then13 ], [ %local.0, %land.lhs.true ], [ %group.0, %do.body2 ]
  %idlest.2 = phi %struct.sched_group* [ %idlest.0, %do.body ], [ %group.0, %if.then13 ], [ %idlest.0, %land.lhs.true ], [ %idlest.0, %do.body2 ]
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group.0, i64 0, i32 0
  %10 = load %struct.sched_group*, %struct.sched_group** %next, align 8
  %11 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %cmp.not = icmp eq %struct.sched_group* %10, %11
  br i1 %cmp.not, label %do.end17, label %do.body

do.end17:                                         ; preds = %cleanup
  %tobool18.not = icmp eq %struct.sched_group* %idlest.2, null
  br i1 %tobool18.not, label %cleanup87, label %if.end20

if.end20:                                         ; preds = %do.end17
  %tobool21.not = icmp eq %struct.sched_group* %local.2, null
  br i1 %tobool21.not, label %cleanup87, label %if.end23

if.end23:                                         ; preds = %if.end20
  %group_type = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %local_sgs, i64 0, i32 9
  %12 = load i32, i32* %group_type, align 8
  %13 = load i32, i32* %7, align 8
  %cmp25 = icmp ult i32 %12, %13
  br i1 %cmp25, label %cleanup87, label %if.end27

if.end27:                                         ; preds = %if.end23
  %cmp30 = icmp ugt i32 %12, %13
  br i1 %cmp30, label %cleanup87, label %if.end32

if.end32:                                         ; preds = %if.end27
  switch i32 %12, label %sw.epilog [
    i32 5, label %if.end38
    i32 1, label %if.end38
    i32 4, label %cleanup87
    i32 3, label %cleanup87
    i32 2, label %sw.bb66
    i32 0, label %sw.bb73
  ]

if.end38:                                         ; preds = %if.end32, %if.end32
  %imbalance_pct = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 6
  %14 = load i32, i32* %imbalance_pct, align 4
  %sub = add i32 %14, -100
  %conv = zext i32 %sub to i64
  %mul = shl nuw nsw i64 %conv, 10
  %div = udiv i64 %mul, 100
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 9
  %15 = load i32, i32* %flags, align 8
  %and = and i32 %15, 8192
  %tobool40.not = icmp eq i32 %and, 0
  %.pre = load i64, i64* %6, align 8
  br i1 %tobool40.not, label %if.end38.if.end47_crit_edge, label %land.lhs.true41

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  %avg_load49.phi.trans.insert = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %local_sgs, i64 0, i32 0
  %.pre141 = load i64, i64* %avg_load49.phi.trans.insert, align 8
  br label %if.end47

land.lhs.true41:                                  ; preds = %if.end38
  %add42 = add i64 %.pre, %div
  %avg_load43 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %local_sgs, i64 0, i32 0
  %16 = load i64, i64* %avg_load43, align 8
  %cmp44.not = icmp ult i64 %add42, %16
  br i1 %cmp44.not, label %if.end47, label %cleanup87

if.end47:                                         ; preds = %if.end38.if.end47_crit_edge, %land.lhs.true41
  %17 = phi i64 [ %.pre141, %if.end38.if.end47_crit_edge ], [ %16, %land.lhs.true41 ]
  %add50 = add i64 %17, %div
  %cmp51.not = icmp ult i64 %.pre, %add50
  br i1 %cmp51.not, label %if.end54, label %cleanup87

if.end54:                                         ; preds = %if.end47
  %mul56 = mul i64 %17, 100
  %conv58 = zext i32 %14 to i64
  %mul60 = mul i64 %.pre, %conv58
  %cmp61.not = icmp ugt i64 %mul56, %mul60
  br i1 %cmp61.not, label %sw.epilog, label %cleanup87

sw.bb66:                                          ; preds = %if.end32
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %local.2, i64 0, i32 3
  %18 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %max_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %18, i64 0, i32 3
  %19 = load i64, i64* %max_capacity, align 8
  %sgc67 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %idlest.2, i64 0, i32 3
  %20 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc67, align 8
  %max_capacity68 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %20, i64 0, i32 3
  %21 = load i64, i64* %max_capacity68, align 8
  %cmp69.not = icmp ult i64 %19, %21
  br i1 %cmp69.not, label %sw.epilog, label %cleanup87

sw.bb73:                                          ; preds = %if.end32
  %flags74 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 9
  %22 = load i32, i32* %flags74, align 8
  %and75 = and i32 %22, 8192
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end81, label %if.then77

if.then77:                                        ; preds = %sw.bb73
  %sum_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %local_sgs, i64 0, i32 5
  %23 = load i32, i32* %sum_nr_running, align 8
  %span_weight = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 19
  %24 = load i32, i32* %span_weight, align 8
  %call78 = call fastcc i1 @allow_numa_imbalance(i32 noundef %23, i32 noundef %24) #27
  br i1 %call78, label %cleanup87, label %if.end81

if.end81:                                         ; preds = %if.then77, %sw.bb73
  %idle_cpus = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %local_sgs, i64 0, i32 7
  %25 = load i32, i32* %idle_cpus, align 8
  %idle_cpus82 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 7
  %26 = load i32, i32* %idle_cpus82, align 8
  %cmp83.not = icmp ult i32 %25, %26
  br i1 %cmp83.not, label %sw.epilog, label %cleanup87

sw.epilog:                                        ; preds = %if.end81, %sw.bb66, %if.end54, %if.end32
  br label %cleanup87

cleanup87:                                        ; preds = %if.end81, %if.then77, %sw.bb66, %if.end32, %if.end32, %if.end54, %if.end47, %land.lhs.true41, %if.end27, %if.end23, %if.end20, %do.end17, %sw.epilog
  %retval.0 = phi %struct.sched_group* [ %idlest.2, %sw.epilog ], [ null, %do.end17 ], [ %idlest.2, %if.end20 ], [ null, %if.end23 ], [ %idlest.2, %if.end27 ], [ null, %land.lhs.true41 ], [ null, %if.end47 ], [ null, %if.end54 ], [ null, %if.end32 ], [ null, %if.end32 ], [ null, %sw.bb66 ], [ null, %if.then77 ], [ null, %if.end81 ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %3) #24
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %2) #24
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %1) #24
  ret %struct.sched_group* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_idlest_group_cpu(%struct.sched_group* noundef %group, %struct.task_struct* nocapture noundef readonly %p, i32 noundef %this_cpu) unnamed_addr #1 {
entry:
  %group_weight = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 2
  %0 = load i32, i32* %group_weight, align 4
  %cmp = icmp eq i32 %0, 1
  %call = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %group) #27
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %1 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call3107 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %call, %struct.cpumask* noundef %1) #28
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp4108 = icmp ult i32 %call3107, %2
  br i1 %cmp4108, label %for.body, label %for.end.thread

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %call) #27
  br label %cleanup50

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %call3113 = phi i32 [ %call3, %cleanup ], [ %call3107, %for.cond.preheader ]
  %min_load.0112 = phi i64 [ %min_load.2, %cleanup ], [ -1, %for.cond.preheader ]
  %latest_idle_timestamp.0111 = phi i64 [ %latest_idle_timestamp.3, %cleanup ], [ 0, %for.cond.preheader ]
  %least_loaded_cpu.0110 = phi i32 [ %least_loaded_cpu.2, %cleanup ], [ %this_cpu, %for.cond.preheader ]
  %shallowest_idle_cpu.0109 = phi i32 [ %shallowest_idle_cpu.3, %cleanup ], [ -1, %for.cond.preheader ]
  %idxprom = sext i32 %call3113 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add to %struct.rq*
  %call9 = call fastcc i32 @sched_idle_cpu(i32 noundef %call3113) #27
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %cleanup50

if.end11:                                         ; preds = %for.body
  %call12 = call i32 @available_idle_cpu(i32 noundef %call3113) #25
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else30, label %if.then14

if.then14:                                        ; preds = %if.end11
  %idle_stamp24 = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 38
  %5 = load i64, i64* %idle_stamp24, align 64
  %cmp25 = icmp ugt i64 %5, %latest_idle_timestamp.0111
  %shallowest_idle_cpu.1 = select i1 %cmp25, i32 %call3113, i32 %shallowest_idle_cpu.0109
  %latest_idle_timestamp.1 = select i1 %cmp25, i64 %5, i64 %latest_idle_timestamp.0111
  br label %cleanup

if.else30:                                        ; preds = %if.end11
  %cmp31 = icmp eq i32 %shallowest_idle_cpu.0109, -1
  br i1 %cmp31, label %do.body33, label %cleanup

do.body33:                                        ; preds = %if.else30
  %6 = load i64, i64* %arrayidx, align 8
  %add42 = add i64 %6, ptrtoint (%struct.rq* @runqueues to i64)
  %7 = inttoptr i64 %add42 to %struct.rq*
  %call43 = call fastcc i64 @cpu_load(%struct.rq* noundef %7) #27
  %cmp44 = icmp ult i64 %call43, %min_load.0112
  %spec.select = select i1 %cmp44, i32 %call3113, i32 %least_loaded_cpu.0110
  %spec.select95 = select i1 %cmp44, i64 %call43, i64 %min_load.0112
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %if.then14, %if.else30
  %shallowest_idle_cpu.3 = phi i32 [ %shallowest_idle_cpu.1, %if.then14 ], [ %shallowest_idle_cpu.0109, %if.else30 ], [ -1, %do.body33 ]
  %least_loaded_cpu.2 = phi i32 [ %least_loaded_cpu.0110, %if.then14 ], [ %least_loaded_cpu.0110, %if.else30 ], [ %spec.select, %do.body33 ]
  %latest_idle_timestamp.3 = phi i64 [ %latest_idle_timestamp.1, %if.then14 ], [ %latest_idle_timestamp.0111, %if.else30 ], [ %latest_idle_timestamp.0111, %do.body33 ]
  %min_load.2 = phi i64 [ %min_load.0112, %if.then14 ], [ %min_load.0112, %if.else30 ], [ %spec.select95, %do.body33 ]
  %8 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call3 = call i32 @cpumask_next_and(i32 noundef %call3113, %struct.cpumask* noundef %call, %struct.cpumask* noundef %8) #28
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp4 = icmp ult i32 %call3, %9
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  %cmp49.not = icmp eq i32 %shallowest_idle_cpu.3, -1
  br i1 %cmp49.not, label %for.end.thread, label %cleanup50

for.end.thread:                                   ; preds = %for.cond.preheader, %for.end
  %least_loaded_cpu.0.lcssa119 = phi i32 [ %least_loaded_cpu.2, %for.end ], [ %this_cpu, %for.cond.preheader ]
  br label %cleanup50

cleanup50:                                        ; preds = %for.body, %for.end.thread, %for.end, %if.then
  %retval.2 = phi i32 [ %call1, %if.then ], [ %least_loaded_cpu.0.lcssa119, %for.end.thread ], [ %shallowest_idle_cpu.3, %for.end ], [ %call3113, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_intersects(i64* noundef %src1, i64* noundef %src2) unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_intersects(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #25
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_sg_wakeup_stats(%struct.sched_domain* nocapture noundef readonly %sd, %struct.sched_group* noundef %group, %struct.sg_lb_stats* noundef %sgs, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.sg_lb_stats* %sgs to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 72) #25
  %call1 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %group) #27
  %call276 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %call1) #28
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp77 = icmp ult i32 %call276, %1
  br i1 %cmp77, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %group_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 1
  %group_util = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 3
  %group_runnable = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 4
  %sum_h_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 6
  %sum_nr_running = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 5
  %idle_cpus = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %call278 = phi i32 [ %call276, %for.body.lr.ph ], [ %call2, %if.end ]
  %idxprom = sext i32 %call278 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %call4 = call fastcc i64 @cpu_load_without(%struct.rq* noundef %3, %struct.task_struct* noundef %p) #27
  %4 = load i64, i64* %group_load, align 8
  %add5 = add i64 %4, %call4
  store i64 %add5, i64* %group_load, align 8
  %call6 = call fastcc i64 @cpu_util_without(i32 noundef %call278, %struct.task_struct* noundef %p) #27
  %5 = load i64, i64* %group_util, align 8
  %add7 = add i64 %5, %call6
  store i64 %add7, i64* %group_util, align 8
  %call8 = call fastcc i64 @cpu_runnable_without(%struct.rq* noundef %3, %struct.task_struct* noundef %p) #27
  %6 = load i64, i64* %group_runnable, align 8
  %add9 = add i64 %6, %call8
  store i64 %add9, i64* %group_runnable, align 8
  %call10 = call fastcc i32 @task_running_on_cpu(i32 noundef %call278, %struct.task_struct* noundef %p) #27
  %h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 5, i32 2
  %7 = load i32, i32* %h_nr_running, align 4
  %sub = sub i32 %7, %call10
  %8 = load i32, i32* %sum_h_nr_running, align 4
  %add11 = add i32 %sub, %8
  store i32 %add11, i32* %sum_h_nr_running, align 4
  %nr_running12 = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 1
  %9 = load i32, i32* %nr_running12, align 4
  %sub13 = sub i32 %9, %call10
  %10 = load i32, i32* %sum_nr_running, align 8
  %add14 = add i32 %10, %sub13
  store i32 %add14, i32* %sum_nr_running, align 8
  %tobool.not = icmp eq i32 %sub13, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call15 = call fastcc i32 @idle_cpu_without(i32 noundef %call278, %struct.task_struct* noundef %p) #27
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %idle_cpus, align 8
  %inc = add i32 %11, 1
  store i32 %inc, i32* %idle_cpus, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %call2 = call i32 @cpumask_next(i32 noundef %call278, %struct.cpumask* noundef %call1) #28
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 9
  %13 = load i32, i32* %flags, align 8
  %and = and i32 %13, 32
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end22, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %for.end
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 3
  %14 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %max_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %14, i64 0, i32 3
  %15 = load i64, i64* %max_capacity, align 8
  %call19 = call fastcc i32 @task_fits_capacity(%struct.task_struct* noundef %p, i64 noundef %15) #27
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true18
  %group_misfit_task_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 11
  store i64 1, i64* %group_misfit_task_load, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true18, %for.end
  %sgc23 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 3
  %16 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc23, align 8
  %capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %16, i64 0, i32 1
  %17 = load i64, i64* %capacity, align 8
  %group_capacity = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 2
  store i64 %17, i64* %group_capacity, align 8
  %group_weight = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 2
  %18 = load i32, i32* %group_weight, align 4
  %group_weight24 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 8
  store i32 %18, i32* %group_weight24, align 4
  %imbalance_pct = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 6
  %19 = load i32, i32* %imbalance_pct, align 4
  %call25 = call fastcc i32 @group_classify(i32 noundef %19, %struct.sched_group* noundef %group, %struct.sg_lb_stats* noundef %sgs) #27
  %group_type = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 9
  store i32 %call25, i32* %group_type, align 8
  switch i32 %call25, label %if.end33 [
    i32 1, label %if.then30
    i32 5, label %if.then30
  ]

if.then30:                                        ; preds = %if.end22, %if.end22
  %group_load31 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 1
  %20 = load i64, i64* %group_load31, align 8
  %mul = shl i64 %20, 10
  %div = udiv i64 %mul, %17
  %avg_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 0
  store i64 %div, i64* %avg_load, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end22, %if.then30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @update_pick_idlest(%struct.sched_group* nocapture noundef readonly %idlest, %struct.sg_lb_stats* nocapture noundef readonly %idlest_sgs, %struct.sched_group* nocapture noundef readonly %group, %struct.sg_lb_stats* nocapture noundef readonly %sgs) unnamed_addr #4 {
entry:
  %group_type = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 9
  %0 = load i32, i32* %group_type, align 8
  %group_type1 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 9
  %1 = load i32, i32* %group_type1, align 8
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt i32 %0, %1
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  switch i32 %0, label %sw.epilog [
    i32 5, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %return
    i32 3, label %return
    i32 2, label %sw.bb13
    i32 0, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end6, %if.end6
  %avg_load = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 0
  %2 = load i64, i64* %avg_load, align 8
  %avg_load8 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 0
  %3 = load i64, i64* %avg_load8, align 8
  %cmp9.not = icmp ugt i64 %2, %3
  br i1 %cmp9.not, label %sw.epilog, label %return

sw.bb13:                                          ; preds = %if.end6
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %idlest, i64 0, i32 3
  %4 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %max_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %4, i64 0, i32 3
  %5 = load i64, i64* %max_capacity, align 8
  %sgc14 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %group, i64 0, i32 3
  %6 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc14, align 8
  %max_capacity15 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %6, i64 0, i32 3
  %7 = load i64, i64* %max_capacity15, align 8
  %cmp16.not = icmp ult i64 %5, %7
  br i1 %cmp16.not, label %sw.epilog, label %return

sw.bb19:                                          ; preds = %if.end6
  %idle_cpus = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 7
  %8 = load i32, i32* %idle_cpus, align 8
  %idle_cpus20 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 7
  %9 = load i32, i32* %idle_cpus20, align 8
  %cmp21 = icmp ugt i32 %8, %9
  br i1 %cmp21, label %return, label %if.end23

if.end23:                                         ; preds = %sw.bb19
  %cmp26 = icmp eq i32 %8, %9
  br i1 %cmp26, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %if.end23
  %group_util = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %idlest_sgs, i64 0, i32 3
  %10 = load i64, i64* %group_util, align 8
  %group_util27 = getelementptr inbounds %struct.sg_lb_stats, %struct.sg_lb_stats* %sgs, i64 0, i32 3
  %11 = load i64, i64* %group_util27, align 8
  %cmp28.not = icmp ugt i64 %10, %11
  br i1 %cmp28.not, label %sw.epilog, label %return

sw.epilog:                                        ; preds = %if.end23, %land.lhs.true, %sw.bb13, %sw.bb, %if.end6
  br label %return

return:                                           ; preds = %land.lhs.true, %sw.bb19, %sw.bb13, %if.end6, %if.end6, %sw.bb, %if.end, %entry, %sw.epilog
  %retval.0 = phi i1 [ true, %sw.epilog ], [ true, %entry ], [ false, %if.end ], [ false, %sw.bb ], [ false, %if.end6 ], [ false, %if.end6 ], [ false, %sw.bb13 ], [ false, %sw.bb19 ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @cpu_load_without(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #27
  %call1 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #27
  %cmp.not = icmp eq i32 %call, %call1
  br i1 %cmp.not, label %do.end, label %if.then

do.end:                                           ; preds = %entry
  %last_update_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 0
  %0 = load volatile i64, i64* %last_update_time, align 64
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %do.end, %entry
  %call2 = call fastcc i64 @cpu_load(%struct.rq* noundef %rq) #27
  br label %cleanup

if.end:                                           ; preds = %do.end
  %load_avg = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 12, i32 5
  %1 = load volatile i64, i64* %load_avg, align 32
  %conv = trunc i64 %1 to i32
  %call9 = call fastcc i64 @task_h_load(%struct.task_struct* noundef %p) #27
  %conv10 = trunc i64 %call9 to i32
  %2 = call i32 @llvm.usub.sat.i32(i32 %conv, i32 %conv10)
  %conv16 = zext i32 %2 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %conv16, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @cpu_util_without(i32 noundef %cpu, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #27
  %cmp.not = icmp eq i32 %call, %cpu
  br i1 %cmp.not, label %do.end, label %if.then

do.end:                                           ; preds = %entry
  %last_update_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 0
  %0 = load volatile i64, i64* %last_update_time, align 64
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %do.body2

if.then:                                          ; preds = %do.end, %entry
  %call1 = call fastcc i64 @cpu_util(i32 noundef %cpu) #27
  br label %cleanup

do.body2:                                         ; preds = %do.end
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %util_avg = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 5, i32 12, i32 7
  %3 = load volatile i64, i64* %util_avg, align 16
  %conv = trunc i64 %3 to i32
  %call13 = call fastcc i64 @task_util(%struct.task_struct* noundef %p) #27
  %conv14 = trunc i64 %call13 to i32
  %4 = call i32 @llvm.usub.sat.i32(i32 %conv, i32 %conv14)
  %enqueued = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 5, i32 12, i32 8, i32 0
  %5 = load volatile i32, i32* %enqueued, align 8
  %call25 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #27
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.rhs, label %do.body34, !prof !8

lor.rhs:                                          ; preds = %do.body2
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #29, !srcloc !13
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %cmp28 = icmp eq %struct.task_struct* %7, %p
  br i1 %cmp28, label %do.body34, label %if.end48, !prof !10

do.body34:                                        ; preds = %do.body2, %lor.rhs
  %call36 = call fastcc i64 @_task_util_est(%struct.task_struct* noundef %p) #27
  %conv37 = trunc i64 %call36 to i32
  %8 = call i32 @llvm.usub.sat.i32(i32 %5, i32 %conv37)
  br label %if.end48

if.end48:                                         ; preds = %do.body34, %lor.rhs
  %estimated.0 = phi i32 [ %8, %do.body34 ], [ %5, %lor.rhs ]
  %cmp50 = icmp ugt i32 %4, %estimated.0
  %cond55 = select i1 %cmp50, i32 %4, i32 %estimated.0
  %conv56 = zext i32 %cond55 to i64
  %call57 = call fastcc i64 @capacity_orig_of(i32 noundef %cpu) #27
  %cmp59 = icmp ugt i64 %call57, %conv56
  %cond64 = select i1 %cmp59, i64 %conv56, i64 %call57
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then
  %retval.0 = phi i64 [ %call1, %if.then ], [ %cond64, %if.end48 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @cpu_runnable_without(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #27
  %call1 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #27
  %cmp.not = icmp eq i32 %call, %call1
  br i1 %cmp.not, label %do.end, label %if.then

do.end:                                           ; preds = %entry
  %last_update_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 0
  %0 = load volatile i64, i64* %last_update_time, align 64
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %do.end, %entry
  %call2 = call fastcc i64 @cpu_runnable(%struct.rq* noundef %rq) #27
  br label %cleanup

if.end:                                           ; preds = %do.end
  %runnable_avg = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 12, i32 6
  %1 = load volatile i64, i64* %runnable_avg, align 8
  %conv = trunc i64 %1 to i32
  %runnable_avg11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 6
  %2 = load i64, i64* %runnable_avg11, align 8
  %conv12 = trunc i64 %2 to i32
  %3 = call i32 @llvm.usub.sat.i32(i32 %conv, i32 %conv12)
  %conv18 = zext i32 %3 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %conv18, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_running_on_cpu(i32 noundef %cpu, %struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #27
  %cmp.not = icmp eq i32 %call, %cpu
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %last_update_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 11, i32 0
  %0 = load volatile i64, i64* %last_update_time, align 64
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %do.end
  %call1 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #27
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @idle_cpu_without(i32 noundef %cpu, %struct.task_struct* noundef readnone %p) unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  %2 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %idle = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 10
  %3 = load %struct.task_struct*, %struct.task_struct** %idle, align 16
  %cmp.not = icmp eq %struct.task_struct* %2, %3
  %cmp3.not = icmp eq %struct.task_struct* %2, %p
  %or.cond = or i1 %cmp3.not, %cmp.not
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ttwu_pending = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 2
  %4 = load i32, i32* %ttwu_pending, align 8
  %tobool.not = icmp eq i32 %4, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sched_idle_cpu(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call = call fastcc i32 @sched_idle_rq(%struct.rq* noundef %1) #27
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @asym_fits_capacity(i32 noundef %task_util, i32 noundef %cpu) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #27
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %return, !prof !10

if.then:                                          ; preds = %entry
  %mul = mul i32 %task_util, 1280
  %conv4 = sext i32 %mul to i64
  %call5 = call fastcc i64 @capacity_of(i32 noundef %cpu) #27
  %mul6 = shl i64 %call5, 10
  %cmp7 = icmp ugt i64 %mul6, %conv4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %cmp7, %if.then ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_per_cpu_kthread(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp.not = icmp eq i32 %1, 1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @select_idle_capacity(%struct.task_struct* noundef %p, %struct.sched_domain* noundef %sd, i32 noundef %target) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call, ptrtoint ([1 x %struct.cpumask]* @select_idle_mask to i64)
  %0 = inttoptr i64 %add to %struct.cpumask*
  %call2 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #27
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %1 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  call fastcc void @cpumask_and(%struct.cpumask* noundef %0, %struct.cpumask* noundef %call2, %struct.cpumask* noundef %1) #27
  %call4 = call fastcc i64 @uclamp_task_util(%struct.task_struct* noundef %p) #27
  %sub = add i32 %target, -1
  %call5 = call i32 @cpumask_next_wrap(i32 noundef %sub, %struct.cpumask* noundef %0, i32 noundef %target, i1 noundef false) #25
  %cmp52 = icmp ult i32 %call5, 256
  br i1 %cmp52, label %for.body.lr.ph, label %cleanup18

for.body.lr.ph:                                   ; preds = %entry
  %mul = mul i64 %call4, 1280
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %best_cap.057 = phi i64 [ 0, %for.body.lr.ph ], [ %best_cap.2.ph, %for.inc ]
  %cpu.055 = phi i32 [ %call5, %for.body.lr.ph ], [ %call17, %for.inc ]
  %best_cpu.053 = phi i32 [ -1, %for.body.lr.ph ], [ %best_cpu.2.ph, %for.inc ]
  %call6 = call fastcc i64 @capacity_of(i32 noundef %cpu.055) #27
  %call7 = call i32 @available_idle_cpu(i32 noundef %cpu.055) #25
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call8 = call fastcc i32 @sched_idle_cpu(i32 noundef %cpu.055) #27
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.inc, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %mul10 = shl i64 %call6, 10
  %cmp11 = icmp ult i64 %mul, %mul10
  br i1 %cmp11, label %cleanup18, label %if.end13

if.end13:                                         ; preds = %if.end
  %cmp14 = icmp ugt i64 %call6, %best_cap.057
  %spec.select = select i1 %cmp14, i32 %cpu.055, i32 %best_cpu.053
  %spec.select44 = select i1 %cmp14, i64 %call6, i64 %best_cap.057
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %land.lhs.true
  %best_cpu.2.ph = phi i32 [ %best_cpu.053, %land.lhs.true ], [ %spec.select, %if.end13 ]
  %best_cap.2.ph = phi i64 [ %best_cap.057, %land.lhs.true ], [ %spec.select44, %if.end13 ]
  %call17 = call i32 @cpumask_next_wrap(i32 noundef %cpu.055, %struct.cpumask* noundef %0, i32 noundef %target, i1 noundef true) #25
  %cmp = icmp ult i32 %call17, 256
  br i1 %cmp, label %for.body, label %cleanup18

cleanup18:                                        ; preds = %for.inc, %if.end, %entry
  %retval.2 = phi i32 [ -1, %entry ], [ %cpu.055, %if.end ], [ %best_cpu.2.ph, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @select_idle_cpu(%struct.task_struct* nocapture noundef readonly %p, %struct.sched_domain* noundef %sd, i32 noundef %target) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #27
  %add = add i64 %call, ptrtoint ([1 x %struct.cpumask]* @select_idle_mask to i64)
  %0 = inttoptr i64 %add to %struct.cpumask*
  %add10 = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add10 to %struct.rq*
  %add32 = add i64 %call, ptrtoint (%struct.sched_domain** @sd_llc to i64)
  %2 = inttoptr i64 %add32 to %struct.sched_domain**
  %3 = load volatile %struct.sched_domain*, %struct.sched_domain** %2, align 8
  %tobool.not = icmp eq %struct.sched_domain* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call37 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #27
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %4 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  call fastcc void @cpumask_and(%struct.cpumask* noundef %0, %struct.cpumask* noundef %call37, %struct.cpumask* noundef %4) #27
  %5 = load volatile i64, i64* @jiffies, align 64
  %wake_stamp = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 40
  %6 = load i64, i64* %wake_stamp, align 16
  %cmp = icmp ult i64 %6, %5
  br i1 %cmp, label %land.rhs.lr.ph, label %if.end50, !prof !10

land.rhs.lr.ph:                                   ; preds = %if.end
  %wake_avg_idle = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 41
  %wake_avg_idle.promoted = load i64, i64* %wake_avg_idle, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %shr4 = phi i64 [ %wake_avg_idle.promoted, %land.rhs.lr.ph ], [ %shr, %while.body ]
  %inc13 = phi i64 [ %6, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %tobool47.not = icmp eq i64 %shr4, 0
  br i1 %tobool47.not, label %if.end50, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add i64 %inc13, 1
  store i64 %inc, i64* %wake_stamp, align 16
  %shr = lshr i64 %shr4, 1
  store i64 %shr, i64* %wake_avg_idle, align 8
  %exitcond.not = icmp eq i64 %inc, %5
  br i1 %exitcond.not, label %if.end50, label %land.rhs

if.end50:                                         ; preds = %while.body, %land.rhs, %if.end
  %wake_avg_idle51 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 41
  %7 = load i64, i64* %wake_avg_idle51, align 8
  %avg_scan_cost = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %3, i64 0, i32 16
  %8 = load i64, i64* %avg_scan_cost, align 8
  %add52 = add i64 %8, 1
  %span_weight = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 19
  %9 = load i32, i32* %span_weight, align 8
  %conv53 = zext i32 %9 to i64
  %mul = mul i64 %7, %conv53
  %mul54 = shl i64 %add52, 2
  %cmp55 = icmp ugt i64 %mul, %mul54
  br i1 %cmp55, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end50
  %conv58 = trunc i64 %add52 to i32
  %call59 = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef %conv58) #27
  %conv60 = trunc i64 %call59 to i32
  br label %if.end61

if.end61:                                         ; preds = %if.end50, %if.then57
  %nr.0 = phi i32 [ %conv60, %if.then57 ], [ 4, %if.end50 ]
  %call62 = call fastcc i64 @cpu_clock() #27
  %add64 = add i32 %target, 1
  %call66 = call i32 @cpumask_next_wrap(i32 noundef %target, %struct.cpumask* noundef %0, i32 noundef %add64, i1 noundef false) #25
  %cmp675 = icmp ult i32 %call66, 256
  br i1 %cmp675, label %if.else76, label %if.then92

if.else76:                                        ; preds = %if.end61, %for.inc
  %cpu.07 = phi i32 [ %call87, %for.inc ], [ %call66, %if.end61 ]
  %nr.26 = phi i32 [ %dec, %for.inc ], [ %nr.0, %if.end61 ]
  %dec = add i32 %nr.26, -1
  %tobool77.not = icmp eq i32 %dec, 0
  br i1 %tobool77.not, label %cleanup, label %if.end79

if.end79:                                         ; preds = %if.else76
  %call80 = call fastcc i32 @__select_idle_cpu(i32 noundef %cpu.07) #27
  %cmp81 = icmp ult i32 %call80, 256
  br i1 %cmp81, label %if.then92, label %for.inc

for.inc:                                          ; preds = %if.end79
  %call87 = call i32 @cpumask_next_wrap(i32 noundef %cpu.07, %struct.cpumask* noundef %0, i32 noundef %add64, i1 noundef true) #25
  %cmp67 = icmp ult i32 %call87, 256
  br i1 %cmp67, label %if.else76, label %if.then92

if.then92:                                        ; preds = %for.inc, %if.end79, %if.end61
  %idle_cpu.1 = phi i32 [ -1, %if.end61 ], [ %call80, %if.end79 ], [ %call80, %for.inc ]
  %call93 = call fastcc i64 @cpu_clock() #27
  %sub94 = sub i64 %call93, %call62
  %10 = load i64, i64* %wake_avg_idle51, align 8
  %11 = call i64 @llvm.usub.sat.i64(i64 %10, i64 %sub94)
  store i64 %11, i64* %wake_avg_idle51, align 8
  call fastcc void @update_avg(i64* noundef %avg_scan_cost, i64 noundef %sub94) #27
  br label %cleanup

cleanup:                                          ; preds = %if.else76, %entry, %if.then92
  %retval.0 = phi i32 [ %idle_cpu.1, %if.then92 ], [ -1, %entry ], [ -1, %if.else76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, %struct.cpumask* noundef, i32 noundef, i1 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @cpu_clock() unnamed_addr #1 {
entry:
  %call = call i64 @sched_clock() #25
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__select_idle_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %call = call i32 @available_idle_cpu(i32 noundef %cpu) #25
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @sched_idle_cpu(i32 noundef %cpu) #27
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %do.body

do.body:                                          ; preds = %entry, %lor.lhs.false
  br label %return

return:                                           ; preds = %lor.lhs.false, %do.body
  %retval.0 = phi i32 [ %cpu, %do.body ], [ -1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_avg(i64* nocapture noundef %avg, i64 noundef %sample) unnamed_addr #11 {
entry:
  %0 = load i64, i64* %avg, align 8
  %sub = sub i64 %sample, %0
  %div = sdiv i64 %sub, 8
  %add = add i64 %div, %0
  store i64 %add, i64* %avg, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_entity_cfs_rq(%struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) #27
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se, i32 noundef 0) #27
  call fastcc void @detach_entity_load_avg(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_entity_load_avg(%struct.sched_entity* noundef %se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se) #27
  call fastcc void @sync_entity_load_avg(%struct.sched_entity* noundef %se) #27
  %lock = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 13, i32 0
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #27
  %nr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 13, i32 1
  %0 = load i32, i32* %nr, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %nr, align 4
  %util_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 7
  %1 = load i64, i64* %util_avg, align 16
  %util_avg4 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 13, i32 3
  %2 = load i64, i64* %util_avg4, align 16
  %add = add i64 %2, %1
  store i64 %add, i64* %util_avg4, align 16
  %load_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  %3 = load i64, i64* %load_avg, align 32
  %load_avg7 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 13, i32 2
  %4 = load i64, i64* %load_avg7, align 8
  %add8 = add i64 %4, %3
  store i64 %add8, i64* %load_avg7, align 8
  %runnable_avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 6
  %5 = load i64, i64* %runnable_avg, align 8
  %runnable_avg11 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 13, i32 4
  %6 = load i64, i64* %runnable_avg11, align 8
  %add12 = add i64 %6, %5
  store i64 %add12, i64* %runnable_avg11, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_entity_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* nocapture noundef readonly %se) unnamed_addr #10 {
entry:
  %avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12
  %call = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #27
  call fastcc void @dequeue_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %se) #27
  %util_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 7
  %util_avg3 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 7
  %0 = load i64, i64* %util_avg3, align 16
  %1 = load volatile i64, i64* %util_avg, align 8
  %2 = call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  store volatile i64 %2, i64* %util_avg, align 8
  %conv = zext i32 %call to i64
  %3 = trunc i64 %2 to i32
  %conv18 = mul i32 %call, %3
  %util_sum = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 3
  store i32 %conv18, i32* %util_sum, align 8
  %runnable_avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 6
  %runnable_avg25 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 6
  %4 = load i64, i64* %runnable_avg25, align 8
  %5 = load volatile i64, i64* %runnable_avg, align 8
  %6 = call i64 @llvm.usub.sat.i64(i64 %5, i64 %4)
  store volatile i64 %6, i64* %runnable_avg, align 8
  %mul51 = mul i64 %6, %conv
  %runnable_sum = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 2
  store i64 %mul51, i64* %runnable_sum, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #27
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !34
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #27
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #27
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #27
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #25
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @entity_tick(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %curr) unnamed_addr #1 {
entry:
  call fastcc void @update_curr(%struct.cfs_rq* noundef %cfs_rq) #27
  call fastcc void @update_load_avg(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %curr, i32 noundef 1) #27
  %nr_running = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 16
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @check_preempt_tick(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %curr) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_preempt_tick(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %curr) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @sched_slice(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %curr) #27
  %sum_exec_runtime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %curr, i64 0, i32 5
  %0 = load i64, i64* %sum_exec_runtime, align 8
  %prev_sum_exec_runtime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %curr, i64 0, i32 7
  %1 = load i64, i64* %prev_sum_exec_runtime, align 8
  %sub = sub i64 %0, %1
  %cmp = icmp ugt i64 %sub, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  call void @resched_curr(%struct.rq* noundef %call1) #25
  call fastcc void @clear_buddies(%struct.cfs_rq* noundef %cfs_rq, %struct.sched_entity* noundef %curr) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @sysctl_sched_min_granularity, align 4
  %conv = zext i32 %2 to i64
  %cmp2 = icmp ult i64 %sub, %conv
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* noundef %cfs_rq) #27
  %vruntime = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %curr, i64 0, i32 6
  %3 = load i64, i64* %vruntime, align 16
  %vruntime7 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %call6, i64 0, i32 6
  %4 = load i64, i64* %vruntime7, align 16
  %sub8 = sub i64 %3, %4
  %cmp9 = icmp sgt i64 %sub8, -1
  %cmp13 = icmp ugt i64 %sub8, %call
  %or.cond = select i1 %cmp9, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end5
  %call16 = call fastcc %struct.rq* @rq_of(%struct.cfs_rq* noundef %cfs_rq) #27
  call void @resched_curr(%struct.rq* noundef %call16) #25
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end5, %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_task_cfs_rq(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se1) #27
  %call2 = call fastcc i1 @vruntime_normalized(%struct.task_struct* noundef %p) #27
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @place_entity(%struct.cfs_rq* noundef %call, %struct.sched_entity* noundef %se1, i32 noundef 0) #27
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 5
  %0 = load i64, i64* %min_vruntime, align 8
  %vruntime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 6
  %1 = load i64, i64* %vruntime, align 16
  %sub = sub i64 %1, %0
  store i64 %sub, i64* %vruntime, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @detach_entity_cfs_rq(%struct.sched_entity* noundef %se1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @vruntime_normalized(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %0 = load i32, i32* %on_rq, align 32
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 5
  %1 = load i64, i64* %sum_exec_runtime, align 8
  %tobool2.not = icmp eq i64 %1, 0
  br i1 %tobool2.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %2 = load volatile i32, i32* %__state, align 16
  %cmp = icmp eq i32 %2, 512
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %do.end
  %sched_remote_wakeup = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 47
  %bf.load = load i8, i8* %sched_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool3.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %do.end
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %entry, %if.end5
  %retval.0 = phi i1 [ false, %if.end5 ], [ true, %entry ], [ true, %land.lhs.true ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_task_cfs_rq(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %se1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  %call = call fastcc %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* noundef %se1) #27
  call fastcc void @attach_entity_cfs_rq(%struct.sched_entity* noundef %se1) #27
  %call2 = call fastcc i1 @vruntime_normalized(%struct.task_struct* noundef %p) #27
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %min_vruntime = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %call, i64 0, i32 5
  %0 = load i64, i64* %min_vruntime, align 8
  %vruntime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 6
  %1 = load i64, i64* %vruntime, align 16
  %add = add i64 %1, %0
  store i64 %add, i64* %vruntime, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_current(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* noundef readnone %p) unnamed_addr #4 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp = icmp eq %struct.task_struct* %0, %p
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rebalance_domains(%struct.rq* noundef %rq, i32 noundef %idle) unnamed_addr #1 {
entry:
  %continue_balancing = alloca i32, align 4
  %0 = bitcast i32* %continue_balancing to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  store i32 1, i32* %continue_balancing, align 4
  %cpu1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %1 = load i32, i32* %cpu1, align 16
  %cmp.not = icmp eq i32 %idle, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call fastcc i32 @sched_idle_cpu(i32 noundef %1) #27
  %tobool.not = icmp eq i32 %call, 0
  %phi.cast = zext i1 %tobool.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %3 = load volatile i64, i64* @jiffies, align 64
  call fastcc void @__rcu_read_lock() #25
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add7 = add i64 %4, ptrtoint (%struct.rq* @runqueues to i64)
  %5 = inttoptr i64 %add7 to %struct.rq*
  %sd8 = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 22
  %6 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd8, align 8
  %tobool13.not147 = icmp eq %struct.sched_domain* %6, null
  br i1 %tobool13.not147, label %if.end70.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %land.end
  %add = add i64 %3, 15000
  br label %for.body

if.end70.thread:                                  ; preds = %land.end
  call fastcc void @rcu_read_unlock() #27
  br label %if.end77

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %idle.addr.0162 = phi i32 [ %idle.addr.4, %for.inc ], [ %idle, %for.body.preheader ]
  %busy.0159 = phi i32 [ %busy.4, %for.inc ], [ %2, %for.body.preheader ]
  %sd.0154 = phi %struct.sched_domain* [ %20, %for.inc ], [ %6, %for.body.preheader ]
  %next_balance.0152 = phi i64 [ %next_balance.1, %for.inc ], [ %add, %for.body.preheader ]
  %update_next_balance.0150 = phi i32 [ %update_next_balance.1, %for.inc ], [ 0, %for.body.preheader ]
  %need_decay.0149 = phi i32 [ %need_decay.1129, %for.inc ], [ 0, %for.body.preheader ]
  %max_cost.0148 = phi i64 [ %add19132, %for.inc ], [ 0, %for.body.preheader ]
  %next_decay_max_lb_cost = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0154, i64 0, i32 15
  %7 = load i64, i64* %next_decay_max_lb_cost, align 8
  %8 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %7, %8
  %cmp14 = icmp slt i64 %sub, 0
  %max_newidle_lb_cost = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0154, i64 0, i32 14
  %9 = load i64, i64* %max_newidle_lb_cost, align 8
  br i1 %cmp14, label %if.end.thread, label %if.end

if.end:                                           ; preds = %for.body
  %add19 = add i64 %9, %max_cost.0148
  %10 = load i32, i32* %continue_balancing, align 4
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %if.then21, label %if.end25

if.end.thread:                                    ; preds = %for.body
  %mul = mul i64 %9, 253
  %div = lshr i64 %mul, 8
  store i64 %div, i64* %max_newidle_lb_cost, align 8
  %11 = load volatile i64, i64* @jiffies, align 64
  %add16 = add i64 %11, 250
  store i64 %add16, i64* %next_decay_max_lb_cost, align 8
  %add19127 = add i64 %div, %max_cost.0148
  %12 = load i32, i32* %continue_balancing, align 4
  %tobool20.not128 = icmp eq i32 %12, 0
  br i1 %tobool20.not128, label %for.inc, label %if.end25

if.then21:                                        ; preds = %if.end
  %tobool22.not = icmp eq i32 %need_decay.0149, 0
  br i1 %tobool22.not, label %if.end70, label %for.inc

if.end25:                                         ; preds = %if.end.thread, %if.end
  %add19133 = phi i64 [ %add19127, %if.end.thread ], [ %add19, %if.end ]
  %need_decay.1130 = phi i32 [ 1, %if.end.thread ], [ %need_decay.0149, %if.end ]
  %call26 = call fastcc i64 @get_sd_balance_interval(%struct.sched_domain* noundef nonnull %sd.0154, i32 noundef %busy.0159) #27
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0154, i64 0, i32 9
  %13 = load i32, i32* %flags, align 8
  %and = and i32 %13, 512
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call.i = call fastcc i32 @__raw_spin_trylock() #25
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %out, label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end25
  %14 = load volatile i64, i64* @jiffies, align 64
  %last_balance = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0154, i64 0, i32 11
  %15 = load i64, i64* %last_balance, align 8
  %16 = add i64 %call26, %15
  %sub35 = sub i64 %14, %16
  %cmp36 = icmp sgt i64 %sub35, -1
  br i1 %cmp36, label %if.then37, label %if.end53

if.then37:                                        ; preds = %if.end33
  %call38 = call fastcc i32 @load_balance(i32 noundef %1, %struct.rq* noundef %rq, %struct.sched_domain* noundef nonnull %sd.0154, i32 noundef %idle.addr.0162, i32* noundef nonnull %continue_balancing) #27
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end50, label %if.then40

if.then40:                                        ; preds = %if.then37
  %call41 = call i32 @idle_cpu(i32 noundef %1) #25
  %tobool42.not = icmp eq i32 %call41, 0
  %cond = zext i1 %tobool42.not to i32
  br i1 %tobool42.not, label %land.rhs44, label %land.end48

land.rhs44:                                       ; preds = %if.then40
  %call45 = call fastcc i32 @sched_idle_cpu(i32 noundef %1) #27
  %tobool46.not = icmp eq i32 %call45, 0
  br label %land.end48

land.end48:                                       ; preds = %land.rhs44, %if.then40
  %17 = phi i1 [ false, %if.then40 ], [ %tobool46.not, %land.rhs44 ]
  %land.ext49 = zext i1 %17 to i32
  br label %if.end50

if.end50:                                         ; preds = %land.end48, %if.then37
  %busy.1 = phi i32 [ %land.ext49, %land.end48 ], [ %busy.0159, %if.then37 ]
  %idle.addr.1 = phi i32 [ %cond, %land.end48 ], [ %idle.addr.0162, %if.then37 ]
  %18 = load volatile i64, i64* @jiffies, align 64
  store i64 %18, i64* %last_balance, align 8
  %call52 = call fastcc i64 @get_sd_balance_interval(%struct.sched_domain* noundef nonnull %sd.0154, i32 noundef %busy.1) #27
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end33
  %interval.0 = phi i64 [ %call52, %if.end50 ], [ %call26, %if.end33 ]
  %busy.2 = phi i32 [ %busy.1, %if.end50 ], [ %busy.0159, %if.end33 ]
  %idle.addr.2 = phi i32 [ %idle.addr.1, %if.end50 ], [ %idle.addr.0162, %if.end33 ]
  br i1 %tobool27.not, label %out, label %if.then55

if.then55:                                        ; preds = %if.end53
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @balancing, i64 0, i32 0, i32 0)) #25
  br label %out

out:                                              ; preds = %if.end53, %if.then55, %if.then28
  %interval.1 = phi i64 [ %interval.0, %if.then55 ], [ %interval.0, %if.end53 ], [ %call26, %if.then28 ]
  %busy.3 = phi i32 [ %busy.2, %if.then55 ], [ %busy.2, %if.end53 ], [ %busy.0159, %if.then28 ]
  %idle.addr.3 = phi i32 [ %idle.addr.2, %if.then55 ], [ %idle.addr.2, %if.end53 ], [ %idle.addr.0162, %if.then28 ]
  %last_balance57 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0154, i64 0, i32 11
  %19 = load i64, i64* %last_balance57, align 8
  %add58 = add i64 %19, %interval.1
  %sub59 = sub i64 %add58, %next_balance.0152
  %cmp60 = icmp slt i64 %sub59, 0
  %spec.select = select i1 %cmp60, i32 1, i32 %update_next_balance.0150
  %spec.select124 = select i1 %cmp60, i64 %add58, i64 %next_balance.0152
  br label %for.inc

for.inc:                                          ; preds = %if.end.thread, %out, %if.then21
  %add19132 = phi i64 [ %add19, %if.then21 ], [ %add19133, %out ], [ %add19127, %if.end.thread ]
  %need_decay.1129 = phi i32 [ %need_decay.0149, %if.then21 ], [ %need_decay.1130, %out ], [ 1, %if.end.thread ]
  %update_next_balance.1 = phi i32 [ %update_next_balance.0150, %if.then21 ], [ %spec.select, %out ], [ %update_next_balance.0150, %if.end.thread ]
  %next_balance.1 = phi i64 [ %next_balance.0152, %if.then21 ], [ %spec.select124, %out ], [ %next_balance.0152, %if.end.thread ]
  %busy.4 = phi i32 [ %busy.0159, %if.then21 ], [ %busy.3, %out ], [ %busy.0159, %if.end.thread ]
  %idle.addr.4 = phi i32 [ %idle.addr.0162, %if.then21 ], [ %idle.addr.3, %out ], [ %idle.addr.0162, %if.end.thread ]
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0154, i64 0, i32 0
  %20 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool13.not = icmp eq %struct.sched_domain* %20, null
  br i1 %tobool13.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool65.not = icmp eq i32 %need_decay.1129, 0
  br i1 %tobool65.not, label %if.end70, label %if.then66

if.then66:                                        ; preds = %for.end
  %21 = icmp ugt i64 %add19132, 500000
  %cond69 = select i1 %21, i64 %add19132, i64 500000
  %max_idle_balance_cost = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 42
  store i64 %cond69, i64* %max_idle_balance_cost, align 32
  br label %if.end70

if.end70:                                         ; preds = %if.then21, %if.then66, %for.end
  %update_next_balance.0144 = phi i32 [ %update_next_balance.1, %if.then66 ], [ %update_next_balance.1, %for.end ], [ %update_next_balance.0150, %if.then21 ]
  %next_balance.0142 = phi i64 [ %next_balance.1, %if.then66 ], [ %next_balance.1, %for.end ], [ %next_balance.0152, %if.then21 ]
  call fastcc void @rcu_read_unlock() #27
  %tobool71.not = icmp eq i32 %update_next_balance.0144, 0
  br i1 %tobool71.not, label %if.end77, label %if.then75, !prof !10

if.then75:                                        ; preds = %if.end70
  %next_balance76 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 12
  store i64 %next_balance.0142, i64* %next_balance76, align 32
  br label %if.end77

if.end77:                                         ; preds = %if.end70.thread, %if.then75, %if.end70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !36
  %call = call fastcc i32 @do_raw_spin_trylock() #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !37
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock() unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.spinlock, %struct.spinlock* @balancing, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !8

if.end.i:                                         ; preds = %entry
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.spinlock* @balancing to i8*), i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #23

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { cold mustprogress nofree noinline nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #15 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #21 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #22 = { nofree nounwind readonly }
attributes #23 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #24 = { nounwind }
attributes #25 = { nobuiltin nounwind "no-builtins" }
attributes #26 = { cold nobuiltin nounwind "no-builtins" }
attributes #27 = { nobuiltin "no-builtins" }
attributes #28 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #29 = { nounwind readnone }
attributes #30 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #31 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2157371353}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2157781186}
!12 = !{!"branch_weights", i32 2002, i32 2000}
!13 = !{i64 549257}
!14 = !{i32 0, i32 33}
!15 = !{!"branch_weights", i32 2001, i32 2000}
!16 = !{!"branch_weights", i32 4001, i32 4000000}
!17 = !{i64 2148298194, i64 2148298708, i64 2148298738, i64 2148298764, i64 2148298796, i64 2148298825}
!18 = !{i64 2150073667}
!19 = !{i64 2150080948}
!20 = !{i64 2148353370, i64 2148353403, i64 2148353456, i64 2148353515, i64 2148353549, i64 2148353604, i64 2148353633, i64 2148353653}
!21 = !{i64 2150027796}
!22 = !{!"auto-init"}
!23 = !{i64 2157868369}
!24 = !{i64 2149829178}
!25 = !{i64 2149829395}
!26 = !{i64 2149313214, i64 2149313261, i64 2149313267, i64 2149313304, i64 2149313322, i64 2149314633, i64 2149314681, i64 2149314729, i64 2149314792, i64 2149314841, i64 2149313400, i64 2149313425, i64 2149313451, i64 2149313457, i64 2149314299, i64 2149314339, i64 2149314357, i64 2149314389, i64 2149314417, i64 2149314471, i64 2149314491, i64 2149314588, i64 2149313480, i64 2149313494, i64 2149313500, i64 2149313550, i64 2149313596, i64 2149313629}
!27 = !{i64 2149315393, i64 2149315440, i64 2149315446, i64 2149315483, i64 2149315501, i64 2149316444, i64 2149316492, i64 2149316540, i64 2149316603, i64 2149316652, i64 2149315579, i64 2149315604, i64 2149315630, i64 2149315636, i64 2149315673, i64 2149315679, i64 2149315729, i64 2149315775, i64 2149315808}
!28 = !{i64 2149307511, i64 2149307558, i64 2149307564, i64 2149307601, i64 2149307619, i64 2149308960, i64 2149309008, i64 2149309056, i64 2149309119, i64 2149309168, i64 2149307697, i64 2149307722, i64 2149307748, i64 2149307754, i64 2149308626, i64 2149308666, i64 2149308684, i64 2149308716, i64 2149308744, i64 2149308798, i64 2149308818, i64 2149308915, i64 2149307777, i64 2149307791, i64 2149307797, i64 2149307847, i64 2149307893, i64 2149307926}
!29 = !{i64 2149319227, i64 2149319274, i64 2149319280, i64 2149319317, i64 2149319335, i64 2149320646, i64 2149320694, i64 2149320742, i64 2149320805, i64 2149320854, i64 2149319413, i64 2149319438, i64 2149319464, i64 2149319470, i64 2149320312, i64 2149320352, i64 2149320370, i64 2149320402, i64 2149320430, i64 2149320484, i64 2149320504, i64 2149320601, i64 2149319493, i64 2149319507, i64 2149319513, i64 2149319563, i64 2149319609, i64 2149319642}
!30 = !{i64 2149455791, i64 2149455838, i64 2149455844, i64 2149455881, i64 2149455899, i64 2149456826, i64 2149456874, i64 2149456922, i64 2149456985, i64 2149457034, i64 2149455977, i64 2149456002, i64 2149456028, i64 2149456034, i64 2149456071, i64 2149456077, i64 2149456127, i64 2149456173, i64 2149456206}
!31 = !{i64 2157885786}
!32 = !{i64 2157799499}
!33 = !{i64 2149298055, i64 2149298102, i64 2149298108, i64 2149298145, i64 2149298163, i64 2149299503, i64 2149299551, i64 2149299599, i64 2149299662, i64 2149299711, i64 2149298241, i64 2149298266, i64 2149298292, i64 2149298298, i64 2149299169, i64 2149299209, i64 2149299227, i64 2149299259, i64 2149299287, i64 2149299341, i64 2149299361, i64 2149299458, i64 2149298321, i64 2149298335, i64 2149298341, i64 2149298391, i64 2149298437, i64 2149298470}
!34 = !{i64 2150058666}
!35 = !{i64 2150084509}
!36 = !{i64 2150054125}
!37 = !{i64 2150058182}
