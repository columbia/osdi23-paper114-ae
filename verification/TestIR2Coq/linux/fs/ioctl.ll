; ModuleID = 'fs/ioctl.c'
source_filename = "fs/ioctl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.36, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.36 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.10, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.56 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.74, %union.anon.75, %union.anon.76, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.79, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { %struct.rb_node }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.79 = type { %struct.__call_single_data }
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
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.51, i32, [12 x i8] }
%union.anon.51 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [48 x i8] }
%struct.anon.2 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.ctl_table*, i32, i32, i32 }
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
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type { i32, i32, i32, %struct.fiemap_extent* }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.57 }
%union.anon.57 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.58, %union.anon.59 }
%union.anon.58 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.59 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, {}*, {}*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.fsxattr = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.fiemap = type { i64, i64, i32, i32, i32, i32, [0 x %struct.fiemap_extent] }
%struct.file_clone_range = type { i64, i64, i64, i64 }
%struct.file_dedupe_range = type { i64, i64, i16, i16, i32, [0 x %struct.file_dedupe_range_info] }
%struct.file_dedupe_range_info = type { i64, i64, i64, i32, i32 }
%struct.space_resv = type { i16, i16, i64, i64, i32, i32, [4 x i32] }

@__const.ioctl_getflags.fa = private unnamed_addr constant { i32, i32, i32, i32, i32, i32, i8, [3 x i8] } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 1, [3 x i8] zeroinitializer }, align 4
@__const.ioctl_fsgetxattr.fa = private unnamed_addr constant { i32, i32, i32, i32, i32, i32, i8, [3 x i8] } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 2, [3 x i8] zeroinitializer }, align 4
@ioctl_fibmap._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.ioctl_fibmap = private unnamed_addr constant [13 x i8] c"ioctl_fibmap\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\014[%s/%d] FS: %s File: %pD4 would truncate fibmap result\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_ioctl(%struct.file* noundef %filp, i32 noundef %cmd, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %unlocked_ioctl = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 10
  %unlocked_ioctl1 = bitcast {}** %unlocked_ioctl to i64 (%struct.file*, i32, i64)**
  %1 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %unlocked_ioctl1, align 8
  %tobool.not = icmp eq i64 (%struct.file*, i32, i64)* %1, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 %1(%struct.file* noundef %filp, i32 noundef %cmd, i64 noundef %arg) #8
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %conv, -515
  %call.op = shl i64 %call, 32
  %call.op.op = ashr exact i64 %call.op, 32
  %phi.cast = select i1 %cmp, i64 -25, i64 %call.op.op
  br label %out

out:                                              ; preds = %entry, %if.end
  %error.0 = phi i64 [ %phi.cast, %if.end ], [ -25, %entry ]
  ret i64 %error.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* nocapture noundef %fieinfo, i64 noundef %logical, i64 noundef %phys, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %extent = alloca %struct.fiemap_extent, align 8
  %0 = bitcast %struct.fiemap_extent* %extent to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false), !annotation !7
  %fi_extents_start = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 3
  %1 = load %struct.fiemap_extent*, %struct.fiemap_extent** %fi_extents_start, align 8
  %fi_extents_max = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 2
  %2 = load i32, i32* %fi_extents_max, align 8
  %cmp = icmp eq i32 %2, 0
  %fi_extents_mapped = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 1
  %3 = load i32, i32* %fi_extents_mapped, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i32 %3, 1
  store i32 %inc, i32* %fi_extents_mapped, align 4
  %and = and i32 %flags, 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3.not = icmp ult i32 %3, %2
  br i1 %cmp3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %and6 = lshr i32 %flags, 1
  %4 = and i32 %and6, 2
  %5 = or i32 %4, %flags
  %and10 = lshr i32 %flags, 4
  %6 = and i32 %and10, 8
  %7 = or i32 %5, %6
  %and15 = and i32 %flags, 1536
  %tobool16.not = icmp eq i32 %and15, 0
  %or18 = or i32 %7, 256
  %flags.addr.2 = select i1 %tobool16.not, i32 %7, i32 %or18
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 56) #8
  %fe_logical = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %extent, i64 0, i32 0
  store i64 %logical, i64* %fe_logical, align 8
  %fe_physical = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %extent, i64 0, i32 1
  store i64 %phys, i64* %fe_physical, align 8
  %fe_length = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %extent, i64 0, i32 2
  store i64 %len, i64* %fe_length, align 8
  %fe_flags = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %extent, i64 0, i32 4
  store i32 %flags.addr.2, i32* %fe_flags, align 8
  %8 = load i32, i32* %fi_extents_mapped, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr %struct.fiemap_extent, %struct.fiemap_extent* %1, i64 %idx.ext
  %9 = bitcast %struct.fiemap_extent* %add.ptr to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %9, i8* noundef nonnull %0, i64 noundef 56) #8
  %tobool22.not = icmp eq i64 %call2.i, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end5
  %10 = load i32, i32* %fi_extents_mapped, align 4
  %inc26 = add i32 %10, 1
  store i32 %inc26, i32* %fi_extents_mapped, align 4
  %11 = load i32, i32* %fi_extents_max, align 8
  %cmp29 = icmp eq i32 %inc26, %11
  %and32 = and i32 %flags.addr.2, 1
  %spec.select54 = select i1 %cmp29, i32 1, i32 %and32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end5, %if.end, %if.then
  %retval.0 = phi i32 [ %and, %if.then ], [ 1, %if.end ], [ -14, %if.end5 ], [ %spec.select54, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fiemap_prep(%struct.inode* nocapture noundef readonly %inode, %struct.fiemap_extent_info* nocapture noundef %fieinfo, i64 noundef %start, i64* nocapture noundef %len, i32 noundef %supported_flags) local_unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 4
  %1 = load i64, i64* %s_maxbytes, align 32
  %2 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i64 %1, %start
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp ult i64 %1, %2
  %sub = sub i64 %1, %2
  %cmp5 = icmp ult i64 %sub, %start
  %or.cond = or i1 %cmp4, %cmp5
  br i1 %or.cond, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %sub7 = sub i64 %1, %start
  store i64 %sub7, i64* %len, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end3, %if.then6
  %or = and i32 %supported_flags, 2
  %fi_flags = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 0
  %3 = load i32, i32* %fi_flags, align 8
  %neg = xor i32 %or, -2
  %and9 = and i32 %3, %neg
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  store i32 %and9, i32* %fi_flags, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %and14 = and i32 %3, 1
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end12
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %4 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc i32 @filemap_write_and_wait(%struct.address_space* noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then16, %if.end, %entry, %if.then10
  %retval.0 = phi i32 [ -53, %if.then10 ], [ -22, %entry ], [ -27, %if.end ], [ %call, %if.then16 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_write_and_wait(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %call = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %mapping, i64 noundef 0, i64 noundef 9223372036854775807) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fileattr_fill_xflags(%struct.fileattr* noundef %fa, i32 noundef %xflags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.fileattr* %fa to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 28) #8
  %fsx_valid = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 6
  %bf.load = load i8, i8* %fsx_valid, align 4
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %fsx_valid, align 4
  %fsx_xflags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  store i32 %xflags, i32* %fsx_xflags, align 4
  %and = and i32 %xflags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %1 = load i32, i32* %flags, align 4
  %or = or i32 %1, 16
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and3 = and i32 %xflags, 16
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %flags6 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %2 = load i32, i32* %flags6, align 4
  %or7 = or i32 %2, 32
  store i32 %or7, i32* %flags6, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %and10 = and i32 %xflags, 32
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end8
  %flags13 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %3 = load i32, i32* %flags13, align 4
  %or14 = or i32 %3, 8
  store i32 %or14, i32* %flags13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8
  %and17 = and i32 %xflags, 64
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end15
  %flags20 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %4 = load i32, i32* %flags20, align 4
  %or21 = or i32 %4, 128
  store i32 %or21, i32* %flags20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15
  %and24 = and i32 %xflags, 128
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end22
  %flags27 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %5 = load i32, i32* %flags27, align 4
  %or28 = or i32 %5, 64
  store i32 %or28, i32* %flags27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22
  %and31 = and i32 %xflags, 32768
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end29
  %flags34 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %6 = load i32, i32* %flags34, align 4
  %or35 = or i32 %6, 33554432
  store i32 %or35, i32* %flags34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29
  %and38 = and i32 %xflags, 512
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end36
  %flags41 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %7 = load i32, i32* %flags41, align 4
  %or42 = or i32 %7, 536870912
  store i32 %or42, i32* %flags41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fileattr_fill_flags(%struct.fileattr* noundef %fa, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.fileattr* %fa to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 28) #8
  %flags_valid = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 6
  %bf.load = load i8, i8* %flags_valid, align 4
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %flags_valid, align 4
  %flags1 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  store i32 %flags, i32* %flags1, align 4
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fsx_xflags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %1 = load i32, i32* %fsx_xflags, align 4
  %or = or i32 %1, 32
  store i32 %or, i32* %fsx_xflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and4 = and i32 %flags, 16
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %fsx_xflags7 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %2 = load i32, i32* %fsx_xflags7, align 4
  %or8 = or i32 %2, 8
  store i32 %or8, i32* %fsx_xflags7, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %and11 = and i32 %flags, 32
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end9
  %fsx_xflags14 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %3 = load i32, i32* %fsx_xflags14, align 4
  %or15 = or i32 %3, 16
  store i32 %or15, i32* %fsx_xflags14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9
  %and18 = and i32 %flags, 64
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end16
  %fsx_xflags21 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %4 = load i32, i32* %fsx_xflags21, align 4
  %or22 = or i32 %4, 128
  store i32 %or22, i32* %fsx_xflags21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16
  %and25 = and i32 %flags, 128
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end23
  %fsx_xflags28 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %5 = load i32, i32* %fsx_xflags28, align 4
  %or29 = or i32 %5, 64
  store i32 %or29, i32* %fsx_xflags28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23
  %and32 = and i32 %flags, 33554432
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end30
  %fsx_xflags35 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %6 = load i32, i32* %fsx_xflags35, align 4
  %or36 = or i32 %6, 32768
  store i32 %or36, i32* %fsx_xflags35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30
  %and39 = and i32 %flags, 536870912
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.end37
  %fsx_xflags42 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %7 = load i32, i32* %fsx_xflags42, align 4
  %or43 = or i32 %7, 512
  store i32 %or43, i32* %fsx_xflags42, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fileattr_get(%struct.dentry* noundef %dentry, %struct.fileattr* noundef %fa) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  %0 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %fileattr_get = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %0, i64 0, i32 22
  %1 = load i32 (%struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)** %fileattr_get, align 16
  %tobool.not = icmp eq i32 (%struct.dentry*, %struct.fileattr*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i32 %1(%struct.dentry* noundef %dentry, %struct.fileattr* noundef %fa) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ -515, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_fsxattr_to_user(%struct.fileattr* nocapture noundef readonly %fa, %struct.fsxattr* noundef %ufa) local_unnamed_addr #0 {
entry:
  %xfa = alloca %struct.fsxattr, align 4
  %0 = bitcast %struct.fsxattr* %xfa to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false), !annotation !7
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 28) #8
  %fsx_xflags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %1 = load i32, i32* %fsx_xflags, align 4
  %fsx_xflags1 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 0
  store i32 %1, i32* %fsx_xflags1, align 4
  %fsx_extsize = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 2
  %2 = load i32, i32* %fsx_extsize, align 4
  %fsx_extsize2 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 1
  store i32 %2, i32* %fsx_extsize2, align 4
  %fsx_nextents = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 3
  %3 = load i32, i32* %fsx_nextents, align 4
  %fsx_nextents3 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 2
  store i32 %3, i32* %fsx_nextents3, align 4
  %fsx_projid = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 4
  %4 = load i32, i32* %fsx_projid, align 4
  %fsx_projid4 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 3
  store i32 %4, i32* %fsx_projid4, align 4
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 5
  %5 = load i32, i32* %fsx_cowextsize, align 4
  %fsx_cowextsize5 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 4
  store i32 %5, i32* %fsx_cowextsize5, align 4
  %6 = bitcast %struct.fsxattr* %ufa to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %6, i8* noundef nonnull %0, i64 noundef 28) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #9
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fileattr_set(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.fileattr* noundef %fa) local_unnamed_addr #0 {
entry:
  %old_ma = alloca %struct.fileattr, align 4
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %0 = bitcast %struct.fileattr* %old_ma to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  %1 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %fileattr_set = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %1, i64 0, i32 21
  %2 = load i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)** %fileattr_set, align 8
  %tobool.not = icmp eq i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call) #8
  br i1 %call1, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  call fastcc void @inode_lock(%struct.inode* noundef %call) #10
  %call4 = call i32 @vfs_fileattr_get(%struct.dentry* noundef %dentry, %struct.fileattr* noundef nonnull %old_ma) #10
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end24

if.then6:                                         ; preds = %if.end3
  %flags_valid = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 6
  %bf.load = load i8, i8* %flags_valid, align 4
  %3 = and i8 %bf.load, 1
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then6
  %fsx_xflags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 1
  %4 = load i32, i32* %fsx_xflags, align 4
  %and = and i32 %4, -33529
  %fsx_xflags8 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %5 = load i32, i32* %fsx_xflags8, align 4
  %or = or i32 %5, %and
  store i32 %or, i32* %fsx_xflags8, align 4
  %fsx_extsize = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 2
  %6 = load i32, i32* %fsx_extsize, align 4
  %fsx_extsize9 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 2
  store i32 %6, i32* %fsx_extsize9, align 4
  %fsx_nextents = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 3
  %7 = load i32, i32* %fsx_nextents, align 4
  %fsx_nextents10 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 3
  store i32 %7, i32* %fsx_nextents10, align 4
  %fsx_projid = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 4
  %8 = load i32, i32* %fsx_projid, align 4
  %fsx_projid11 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 4
  store i32 %8, i32* %fsx_projid11, align 4
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 5
  %9 = load i32, i32* %fsx_cowextsize, align 4
  %fsx_cowextsize12 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 5
  store i32 %9, i32* %fsx_cowextsize12, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then6
  %flags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 0
  %10 = load i32, i32* %flags, align 4
  %and13 = and i32 %10, -570425593
  %flags14 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %11 = load i32, i32* %flags14, align 4
  %or15 = or i32 %11, %and13
  store i32 %or15, i32* %flags14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then7
  %call17 = call fastcc i32 @fileattr_set_prepare(%struct.inode* noundef %call, %struct.fileattr* noundef nonnull %old_ma, %struct.fileattr* noundef %fa) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end16
  %12 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %fileattr_set21 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %12, i64 0, i32 21
  %13 = load i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)** %fileattr_set21, align 8
  %call22 = call i32 %13(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.fileattr* noundef %fa) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end16, %if.then19, %if.end3
  %err.0 = phi i32 [ %call4, %if.end3 ], [ %call17, %if.end16 ], [ %call22, %if.then19 ]
  call fastcc void @inode_unlock(%struct.inode* noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end24
  %retval.0 = phi i32 [ %err.0, %if.end24 ], [ -515, %entry ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @inode_owner_or_capable(%struct.user_namespace* noundef, %struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fileattr_set_prepare(%struct.inode* nocapture noundef readonly %inode, %struct.fileattr* nocapture noundef readonly %old_ma, %struct.fileattr* nocapture noundef %fa) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %0 = load i32, i32* %flags, align 4
  %flags1 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 0
  %1 = load i32, i32* %flags1, align 4
  %xor = xor i32 %1, %0
  %and = and i32 %xor, 48
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i1 @capable(i32 noundef 9) #8
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %fsx_projid20 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %old_ma, i64 0, i32 4
  %2 = load i32, i32* %fsx_projid20, align 4
  %fsx_projid21 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 4
  %3 = load i32, i32* %fsx_projid21, align 4
  %cmp22.not = icmp eq i32 %2, %3
  br i1 %cmp22.not, label %if.end30, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end
  %coerce.val.ii = zext i32 %3 to i64
  %call27 = call fastcc i1 @projid_valid(i64 %coerce.val.ii) #10
  br i1 %call27, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.end, %land.lhs.true23
  %fsx_xflags31 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 1
  %4 = load i32, i32* %fsx_xflags31, align 4
  %and32 = and i32 %4, 2048
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end39, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end30
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %5 = load i16, i16* %i_mode, align 8
  %6 = and i16 %5, -4096
  %cmp36 = icmp eq i16 %6, -32768
  br i1 %cmp36, label %if.end39, label %cleanup

if.end39:                                         ; preds = %land.lhs.true34, %if.end30
  %and41 = and i32 %4, 4096
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end50, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.end39
  %i_mode44 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %7 = load i16, i16* %i_mode44, align 8
  %8 = and i16 %7, -4096
  %cmp47 = icmp eq i16 %8, 16384
  br i1 %cmp47, label %if.end50, label %cleanup

if.end50:                                         ; preds = %land.lhs.true43, %if.end39
  %and52 = and i32 %4, 65536
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end67, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end50
  %i_mode55 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %9 = load i16, i16* %i_mode55, align 8
  %10 = and i16 %9, -4096
  switch i16 %10, label %cleanup [
    i16 -32768, label %if.end67
    i16 16384, label %if.end67
  ]

if.end67:                                         ; preds = %land.lhs.true54, %land.lhs.true54, %if.end50
  %and69 = and i32 %4, 32768
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end83, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end67
  %i_mode72 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %11 = load i16, i16* %i_mode72, align 8
  %12 = and i16 %11, -4096
  switch i16 %12, label %cleanup [
    i16 -32768, label %if.end83
    i16 16384, label %if.end83
  ]

if.end83:                                         ; preds = %land.lhs.true71, %land.lhs.true71, %if.end67
  %fsx_extsize = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 2
  %13 = load i32, i32* %fsx_extsize, align 4
  %cmp84 = icmp eq i32 %13, 0
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end83
  %and88 = and i32 %4, -6145
  store i32 %and88, i32* %fsx_xflags31, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end83
  %14 = phi i32 [ %and88, %if.then86 ], [ %4, %if.end83 ]
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 5
  %15 = load i32, i32* %fsx_cowextsize, align 4
  %cmp90 = icmp eq i32 %15, 0
  br i1 %cmp90, label %if.then92, label %cleanup

if.then92:                                        ; preds = %if.end89
  %and94 = and i32 %14, -65537
  store i32 %and94, i32* %fsx_xflags31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.then92, %land.lhs.true71, %land.lhs.true54, %land.lhs.true43, %land.lhs.true34, %land.lhs.true23, %land.lhs.true
  %retval.0 = phi i32 [ -1, %land.lhs.true ], [ -22, %land.lhs.true23 ], [ -22, %land.lhs.true34 ], [ -22, %land.lhs.true43 ], [ -22, %land.lhs.true54 ], [ -22, %land.lhs.true71 ], [ 0, %if.then92 ], [ 0, %if.end89 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_ioctl(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_ioctl(i64 noundef %0, i64 noundef %1, i64 noundef %2) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_ioctl(i64 noundef %fd, i64 noundef %cmd, i64 noundef %arg) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %cmd to i32
  %call = call fastcc i64 @__do_sys_ioctl(i32 noundef %conv, i32 noundef %conv1, i64 noundef %arg) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #10
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #10
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #8
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #9, !srcloc !8
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #9, !srcloc !9
  call void asm sideeffect "hint #20", "~{memory}"() #9, !srcloc !10
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @projid_valid(i64 %projid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %projid.coerce, 4294967295
  %call = call fastcc i1 @projid_eq(i64 %coerce.val.ii2) #10
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @projid_eq(i64 %left.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kprojid_val(i64 %coerce.val.ii4) #10
  %call7 = call fastcc i32 @__kprojid_val(i64 4294967295) #10
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kprojid_val(i64 %projid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %projid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_ioctl(i32 noundef %fd, i32 noundef %cmd, i64 noundef %arg) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #10
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call7 = call fastcc i32 @do_vfs_ioctl(%struct.file* noundef nonnull %0, i32 noundef %fd, i32 noundef %cmd, i64 noundef %arg) #10
  %cmp = icmp eq i32 %call7, -515
  br i1 %cmp, label %if.then8, label %out

if.then8:                                         ; preds = %if.end
  %call10 = call i64 @vfs_ioctl(%struct.file* noundef nonnull %0, i32 noundef %cmd, i64 noundef %arg) #10
  %conv = trunc i64 %call10 to i32
  br label %out

out:                                              ; preds = %if.end, %if.then8
  %error.0 = phi i32 [ %conv, %if.then8 ], [ %call7, %if.end ]
  call fastcc void @fdput([2 x i64] %call) #10
  %conv12 = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i64 [ %conv12, %out ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #8
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #10
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_vfs_ioctl(%struct.file* noundef %filp, i32 noundef %fd, i32 noundef %cmd, i64 noundef %arg) unnamed_addr #0 {
entry:
  %res = alloca i64, align 8
  %0 = inttoptr i64 %arg to i8*
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #10
  switch i32 %cmd, label %sw.default [
    i32 21585, label %sw.bb
    i32 21584, label %sw.bb1
    i32 21537, label %sw.bb2
    i32 21586, label %sw.bb4
    i32 21600, label %sw.bb6
    i32 -1073457033, label %sw.bb21
    i32 -1073457032, label %sw.bb23
    i32 -1071618549, label %sw.bb25
    i32 2, label %sw.bb27
    i32 1074041865, label %sw.bb47
    i32 1075876877, label %sw.bb50
    i32 -1072131018, label %sw.bb53
    i32 21531, label %sw.bb55
    i32 -2146933247, label %sw.bb88
    i32 1074292226, label %sw.bb90
    i32 -2145626081, label %sw.bb92
    i32 1075599392, label %sw.bb94
  ]

sw.bb:                                            ; preds = %entry
  call void @set_close_on_exec(i32 noundef %fd, i32 noundef 1) #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @set_close_on_exec(i32 noundef %fd, i32 noundef 0) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %1 = inttoptr i64 %arg to i32*
  %call3 = call fastcc i32 @ioctl_fionbio(%struct.file* noundef %filp, i32* noundef %1) #10
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %2 = inttoptr i64 %arg to i32*
  %call5 = call fastcc i32 @ioctl_fioasync(i32 noundef %fd, %struct.file* noundef %filp, i32* noundef %2) #10
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %3 = load i16, i16* %i_mode, align 8
  %4 = and i16 %3, -4096
  switch i16 %4, label %cleanup [
    i16 16384, label %if.then
    i16 -32768, label %if.then
    i16 -24576, label %if.then
  ]

if.then:                                          ; preds = %sw.bb6, %sw.bb6, %sw.bb6
  %5 = bitcast i64* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %call19 = call i64 @inode_get_bytes(%struct.inode* noundef %call) #8
  store i64 %call19, i64* %res, align 8
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef nonnull %5, i64 noundef 8) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %call22 = call fastcc i32 @ioctl_fsfreeze(%struct.file* noundef %filp) #10
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %call24 = call fastcc i32 @ioctl_fsthaw(%struct.file* noundef %filp) #10
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %6 = inttoptr i64 %arg to %struct.fiemap*
  %call26 = call fastcc i32 @ioctl_fiemap(%struct.file* noundef %filp, %struct.fiemap* noundef %6) #10
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %7 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i64 0, i32 3
  %8 = load i64, i64* %s_blocksize, align 8
  %tobool28.not = icmp eq i64 %8, 0
  br i1 %tobool28.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %sw.bb27
  %call31 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #10
  %tobool32.not = icmp eq i64 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %if.end30
  %call34 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #10
  %9 = bitcast i8* %call34 to i32*
  %10 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_blocksize39 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i64 0, i32 3
  %11 = load i64, i64* %s_blocksize39, align 8
  %conv40 = trunc i64 %11 to i32
  %12 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %conv40, i32* %9, i32 -14, i32 0) #9, !srcloc !11
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  %call48 = call fastcc i64 @ioctl_file_clone(%struct.file* noundef %filp, i64 noundef %arg, i64 noundef 0, i64 noundef 0, i64 noundef 0) #10
  %conv49 = trunc i64 %call48 to i32
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  %13 = inttoptr i64 %arg to %struct.file_clone_range*
  %call51 = call fastcc i64 @ioctl_file_clone_range(%struct.file* noundef %filp, %struct.file_clone_range* noundef %13) #10
  %conv52 = trunc i64 %call51 to i32
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  %14 = inttoptr i64 %arg to %struct.file_dedupe_range*
  %call54 = call fastcc i32 @ioctl_file_dedupe_range(%struct.file* noundef %filp, %struct.file_dedupe_range* noundef %14) #10
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  %i_mode56 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %15 = load i16, i16* %i_mode56, align 8
  %16 = and i16 %15, -4096
  %cmp59 = icmp eq i16 %16, -32768
  br i1 %cmp59, label %if.end64, label %if.then61

if.then61:                                        ; preds = %sw.bb55
  %call62 = call i64 @vfs_ioctl(%struct.file* noundef %filp, i32 noundef 21531, i64 noundef %arg) #10
  %conv63 = trunc i64 %call62 to i32
  br label %cleanup

if.end64:                                         ; preds = %sw.bb55
  %call68 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #10
  %tobool69.not = icmp eq i64 %call68, 0
  br i1 %tobool69.not, label %cleanup, label %if.then70

if.then70:                                        ; preds = %if.end64
  %call71 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #10
  %17 = bitcast i8* %call71 to i32*
  %call76 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #10
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 10
  %18 = load i64, i64* %f_pos, align 8
  %sub = sub i64 %call76, %18
  %conv77 = trunc i64 %sub to i32
  %19 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %conv77, i32* %17, i32 -14, i32 0) #9, !srcloc !12
  br label %cleanup

sw.bb88:                                          ; preds = %entry
  %20 = inttoptr i64 %arg to i32*
  %call89 = call fastcc i32 @ioctl_getflags(%struct.file* noundef %filp, i32* noundef %20) #10
  br label %cleanup

sw.bb90:                                          ; preds = %entry
  %21 = inttoptr i64 %arg to i32*
  %call91 = call fastcc i32 @ioctl_setflags(%struct.file* noundef %filp, i32* noundef %21) #10
  br label %cleanup

sw.bb92:                                          ; preds = %entry
  %call93 = call fastcc i32 @ioctl_fsgetxattr(%struct.file* noundef %filp, i8* noundef %0) #10
  br label %cleanup

sw.bb94:                                          ; preds = %entry
  %call95 = call fastcc i32 @ioctl_fssetxattr(%struct.file* noundef %filp, i8* noundef %0) #10
  br label %cleanup

sw.default:                                       ; preds = %entry
  %i_mode96 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %22 = load i16, i16* %i_mode96, align 8
  %23 = and i16 %22, -4096
  %cmp99 = icmp eq i16 %23, -32768
  br i1 %cmp99, label %if.then101, label %cleanup

if.then101:                                       ; preds = %sw.default
  %24 = inttoptr i64 %arg to i32*
  %call102 = call fastcc i32 @file_ioctl(%struct.file* noundef %filp, i32 noundef %cmd, i32* noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then70, %if.end64, %if.then33, %if.end30, %sw.bb27, %sw.bb6, %if.then101, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb88, %if.then61, %sw.bb53, %sw.bb50, %sw.bb47, %sw.bb25, %sw.bb23, %sw.bb21, %if.then, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call102, %if.then101 ], [ %call95, %sw.bb94 ], [ %call93, %sw.bb92 ], [ %call91, %sw.bb90 ], [ %call89, %sw.bb88 ], [ %conv63, %if.then61 ], [ %call54, %sw.bb53 ], [ %conv52, %sw.bb50 ], [ %conv49, %sw.bb47 ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %cond, %if.then ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -25, %sw.bb6 ], [ -22, %sw.bb27 ], [ %12, %if.then33 ], [ -14, %if.end30 ], [ %19, %if.then70 ], [ -14, %if.end64 ], [ -515, %sw.default ]
  ret i32 %retval.0
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
  call void @fput(%struct.file* noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #5 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #4 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_close_on_exec(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fionbio(%struct.file* noundef %filp, i32* noundef %argp) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #10
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #10
  %1 = bitcast i8* %call1 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #9, !srcloc !13
  %asmresult = extractvalue { i32, i64 } %2, 0
  %tobool11.not = icmp eq i32 %asmresult, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i32
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #8
  %tobool14.not = icmp eq i32 %conv, 0
  %f_flags17 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %3 = load i32, i32* %f_flags17, align 8
  %and = and i32 %3, -2049
  %masksel = select i1 %tobool14.not, i32 0, i32 2048
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, i32* %f_flags17, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end13
  %__gu_err.041 = phi i32 [ %asmresult, %if.end ], [ 0, %if.end13 ], [ -14, %entry ]
  ret i32 %__gu_err.041
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fioasync(i32 noundef %fd, %struct.file* noundef %filp, i32* noundef %argp) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #10
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #10
  %1 = bitcast i8* %call1 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #9, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i32
  %tobool11.not = icmp eq i32 %asmresult, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %tobool14.not = icmp eq i32 %conv, 0
  %cond = select i1 %tobool14.not, i32 0, i32 8192
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %3 = load i32, i32* %f_flags, align 8
  %.masked = and i32 %3, 8192
  %tobool15.not = icmp eq i32 %cond, %.masked
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end13
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %4 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fasync = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 18
  %5 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %fasync, align 8
  %tobool17.not = icmp eq i32 (i32, %struct.file*, i32)* %5, null
  br i1 %tobool17.not, label %if.end24.thread, label %if.end24

if.end24:                                         ; preds = %if.then16
  %call21 = call i32 %5(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %conv) #8
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end24.thread, label %cleanup

if.end24.thread:                                  ; preds = %if.then16, %if.end24
  %error.050 = phi i32 [ %call21, %if.end24 ], [ -25, %if.then16 ]
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry, %if.end24.thread, %if.end24, %if.end
  %retval.0 = phi i32 [ %asmresult, %if.end ], [ %error.050, %if.end24.thread ], [ 0, %if.end24 ], [ -14, %entry ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inode_get_bytes(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fsfreeze(%struct.file* nocapture noundef readonly %filp) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #10
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 46
  %1 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %1, i32 noundef 21) #8
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %2 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %freeze_fs = getelementptr inbounds %struct.super_operations, %struct.super_operations* %2, i64 0, i32 10
  %3 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %freeze_fs, align 8
  %cmp = icmp eq i32 (%struct.super_block*)* %3, null
  %freeze_super = getelementptr inbounds %struct.super_operations, %struct.super_operations* %2, i64 0, i32 9
  %4 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %freeze_super, align 8
  %cmp3 = icmp eq i32 (%struct.super_block*)* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp3, label %cleanup, label %if.then8

if.end5:                                          ; preds = %if.end
  br i1 %cmp3, label %if.end12, label %if.then8

if.then8:                                         ; preds = %land.lhs.true, %if.end5
  %call11 = call i32 %4(%struct.super_block* noundef %0) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = call i32 @freeze_super(%struct.super_block* noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end12, %if.then8
  %retval.0 = phi i32 [ %call11, %if.then8 ], [ %call13, %if.end12 ], [ -1, %entry ], [ -95, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fsthaw(%struct.file* nocapture noundef readonly %filp) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #10
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 46
  %1 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %1, i32 noundef 21) #8
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %2 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %thaw_super = getelementptr inbounds %struct.super_operations, %struct.super_operations* %2, i64 0, i32 11
  %3 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %thaw_super, align 8
  %tobool.not = icmp eq i32 (%struct.super_block*)* %3, null
  br i1 %tobool.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call5 = call i32 %3(%struct.super_block* noundef %0) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @thaw_super(%struct.super_block* noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then2
  %retval.0 = phi i32 [ %call5, %if.then2 ], [ %call7, %if.end6 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fiemap(%struct.file* nocapture noundef readonly %filp, %struct.fiemap* noundef %ufiemap) unnamed_addr #0 {
entry:
  %fiemap = alloca %struct.fiemap, align 8
  %fieinfo = alloca %struct.fiemap_extent_info, align 8
  %0 = bitcast %struct.fiemap* %fiemap to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %struct.fiemap_extent_info* %fieinfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #10
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  %2 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %fiemap1 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %2, i64 0, i32 16
  %3 = load i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)** %fiemap1, align 64
  %tobool.not = icmp eq i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.fiemap* %ufiemap to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %4, i64 noundef 32) #8
  %tobool3.not = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %fm_extent_count = getelementptr inbounds %struct.fiemap, %struct.fiemap* %fiemap, i64 0, i32 4
  %5 = load i32, i32* %fm_extent_count, align 8
  %cmp = icmp ugt i32 %5, 76695844
  br i1 %cmp, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %fm_flags = getelementptr inbounds %struct.fiemap, %struct.fiemap* %fiemap, i64 0, i32 2
  %6 = load i32, i32* %fm_flags, align 8
  %fi_flags = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 0
  store i32 %6, i32* %fi_flags, align 8
  %fi_extents_max = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 2
  store i32 %5, i32* %fi_extents_max, align 8
  %arraydecay = getelementptr inbounds %struct.fiemap, %struct.fiemap* %ufiemap, i64 0, i32 6, i64 0
  %fi_extents_start = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 3
  store %struct.fiemap_extent* %arraydecay, %struct.fiemap_extent** %fi_extents_start, align 8
  %7 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %fiemap11 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %7, i64 0, i32 16
  %8 = load i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)** %fiemap11, align 64
  %fm_start = getelementptr inbounds %struct.fiemap, %struct.fiemap* %fiemap, i64 0, i32 0
  %9 = load i64, i64* %fm_start, align 8
  %fm_length = getelementptr inbounds %struct.fiemap, %struct.fiemap* %fiemap, i64 0, i32 1
  %10 = load i64, i64* %fm_length, align 8
  %call12 = call i32 %8(%struct.inode* noundef %call, %struct.fiemap_extent_info* noundef nonnull %fieinfo, i64 noundef %9, i64 noundef %10) #8
  %11 = load i32, i32* %fi_flags, align 8
  store i32 %11, i32* %fm_flags, align 8
  %fi_extents_mapped = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %fieinfo, i64 0, i32 1
  %12 = load i32, i32* %fi_extents_mapped, align 4
  %fm_mapped_extents = getelementptr inbounds %struct.fiemap, %struct.fiemap* %fiemap, i64 0, i32 3
  store i32 %12, i32* %fm_mapped_extents, align 4
  %call2.i28 = call fastcc i64 @_copy_to_user(i8* noundef %4, i8* noundef nonnull %0, i64 noundef 32) #8
  %tobool16.not = icmp eq i64 %call2.i28, 0
  %spec.select = select i1 %tobool16.not, i32 %call12, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ %spec.select, %if.end8 ], [ -95, %entry ], [ -14, %if.end ], [ -22, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ioctl_file_clone(%struct.file* noundef %dst_file, i64 noundef %srcfd, i64 noundef %off, i64 noundef %olen, i64 noundef %destoff) unnamed_addr #0 {
entry:
  %conv = trunc i64 %srcfd to i32
  %call = call fastcc [2 x i64] @fdget(i32 noundef %conv) #10
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt3 = getelementptr inbounds %struct.file, %struct.file* %dst_file, i64 0, i32 1, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt3, align 8
  %cmp.not = icmp eq %struct.vfsmount* %1, %2
  br i1 %cmp.not, label %if.end6, label %fdput

if.end6:                                          ; preds = %if.end
  %call8 = call i64 @vfs_clone_file_range(%struct.file* noundef nonnull %0, i64 noundef %off, %struct.file* noundef %dst_file, i64 noundef %destoff, i64 noundef %olen, i32 noundef 0) #8
  %cmp9 = icmp slt i64 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  %sext = shl i64 %call8, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %fdput

if.else:                                          ; preds = %if.end6
  %tobool13.not = icmp eq i64 %olen, 0
  %cmp14.not = icmp eq i64 %call8, %olen
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp14.not
  %spec.select = select i1 %or.cond, i64 0, i64 -22
  br label %fdput

fdput:                                            ; preds = %if.else, %if.then11, %if.end
  %ret.0 = phi i64 [ -18, %if.end ], [ %phi.cast, %if.then11 ], [ %spec.select, %if.else ]
  call fastcc void @fdput([2 x i64] %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %fdput
  %retval.0 = phi i64 [ %ret.0, %fdput ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ioctl_file_clone_range(%struct.file* noundef %file, %struct.file_clone_range* noundef %argp) unnamed_addr #0 {
entry:
  %args = alloca %struct.file_clone_range, align 8
  %0 = bitcast %struct.file_clone_range* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %struct.file_clone_range* %argp to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 32) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %src_fd = getelementptr inbounds %struct.file_clone_range, %struct.file_clone_range* %args, i64 0, i32 0
  %2 = load i64, i64* %src_fd, align 8
  %src_offset = getelementptr inbounds %struct.file_clone_range, %struct.file_clone_range* %args, i64 0, i32 1
  %3 = load i64, i64* %src_offset, align 8
  %src_length = getelementptr inbounds %struct.file_clone_range, %struct.file_clone_range* %args, i64 0, i32 2
  %4 = load i64, i64* %src_length, align 8
  %dest_offset = getelementptr inbounds %struct.file_clone_range, %struct.file_clone_range* %args, i64 0, i32 3
  %5 = load i64, i64* %dest_offset, align 8
  %call1 = call fastcc i64 @ioctl_file_clone(%struct.file* noundef %file, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_file_dedupe_range(%struct.file* noundef %file, %struct.file_dedupe_range* noundef %argp) unnamed_addr #0 {
entry:
  %dest_count = getelementptr inbounds %struct.file_dedupe_range, %struct.file_dedupe_range* %argp, i64 0, i32 2
  %0 = bitcast i16* %dest_count to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 2) #10
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #10
  %1 = bitcast i8* %call1 to i16*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %1, i32 -14, i32 0) #9, !srcloc !15
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i16
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end13, label %out

if.end13:                                         ; preds = %if.end
  %conv14 = shl i64 %asmresult5, 5
  %3 = and i64 %conv14, 2097120
  %4 = or i64 %3, 24
  %cmp = icmp ugt i64 %4, 4096
  br i1 %cmp, label %out, label %if.end17

if.end17:                                         ; preds = %if.end13
  %5 = bitcast %struct.file_dedupe_range* %argp to i8*
  %call18 = call i8* @memdup_user(i8* noundef %5, i64 noundef %4) #8
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %call18) #10
  br i1 %call19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  %call21 = call fastcc i64 @PTR_ERR(i8* noundef %call18) #10
  %conv22 = trunc i64 %call21 to i32
  br label %out

if.end23:                                         ; preds = %if.end17
  %6 = bitcast i8* %call18 to %struct.file_dedupe_range*
  %dest_count24 = getelementptr inbounds i8, i8* %call18, i64 16
  %7 = bitcast i8* %dest_count24 to i16*
  store i16 %conv, i16* %7, align 8
  %call25 = call i32 @vfs_dedupe_file_range(%struct.file* noundef %file, %struct.file_dedupe_range* noundef %6) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %out

if.end28:                                         ; preds = %if.end23
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %5, i8* noundef %call18, i64 noundef %4) #8
  %conv30 = trunc i64 %call2.i to i32
  %tobool31.not = icmp eq i32 %conv30, 0
  %spec.store.select = select i1 %tobool31.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %entry, %if.end13, %if.end, %if.end23, %if.end28, %if.then20
  %ret.0 = phi i32 [ %conv22, %if.then20 ], [ %call25, %if.end23 ], [ %spec.store.select, %if.end28 ], [ -14, %if.end ], [ -12, %if.end13 ], [ -14, %entry ]
  %8 = phi i8* [ null, %if.then20 ], [ %call18, %if.end23 ], [ %call18, %if.end28 ], [ null, %if.end ], [ null, %if.end13 ], [ null, %entry ]
  call void @kfree(i8* noundef %8) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #4 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_getflags(%struct.file* nocapture noundef readonly %file, i32* noundef %argp) unnamed_addr #0 {
entry:
  %fa = alloca %struct.fileattr, align 4
  %0 = bitcast %struct.fileattr* %fa to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %0, i8* noundef align 4 dereferenceable(28) bitcast ({ i32, i32, i32, i32, i32, i32, i8, [3 x i8] }* @__const.ioctl_getflags.fa to i8*), i64 28, i1 false)
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call i32 @vfs_fileattr_get(%struct.dentry* noundef %1, %struct.fileattr* noundef nonnull %fa) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %argp to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #10
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #10
  %3 = bitcast i8* %call4 to i32*
  %flags = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 0
  %4 = load i32, i32* %flags, align 4
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %4, i32* %3, i32 -14, i32 0) #9, !srcloc !16
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.then, %entry
  %err.0 = phi i32 [ %call, %entry ], [ %5, %if.then3 ], [ -14, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #9
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_setflags(%struct.file* noundef %file, i32* noundef %argp) unnamed_addr #0 {
entry:
  %fa = alloca %struct.fileattr, align 4
  %call = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #10
  %dentry1 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %1 = bitcast %struct.fileattr* %fa to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %1, i8 0, i64 28, i1 false), !annotation !7
  %2 = bitcast i32* %argp to i8*
  %call2 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #10
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %if.end20, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #10
  %3 = bitcast i8* %call3 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #9, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult7 = extractvalue { i32, i64 } %4, 1
  %conv = trunc i64 %asmresult7 to i32
  %tobool13.not = icmp eq i32 %asmresult, 0
  br i1 %tobool13.not, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end
  %call15 = call i32 @mnt_want_write_file(%struct.file* noundef %file) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @fileattr_fill_flags(%struct.fileattr* noundef nonnull %fa, i32 noundef %conv) #10
  %call18 = call i32 @vfs_fileattr_set(%struct.user_namespace* noundef %call, %struct.dentry* noundef %0, %struct.fileattr* noundef nonnull %fa) #10
  call void @mnt_drop_write_file(%struct.file* noundef %file) #8
  br label %if.end20

if.end20:                                         ; preds = %entry, %if.then14, %if.then17, %if.end
  %err.0 = phi i32 [ %asmresult, %if.end ], [ %call15, %if.then14 ], [ %call18, %if.then17 ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #9
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fsgetxattr(%struct.file* nocapture noundef readonly %file, i8* noundef %argp) unnamed_addr #0 {
entry:
  %fa = alloca %struct.fileattr, align 4
  %0 = bitcast %struct.fileattr* %fa to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %0, i8* noundef align 4 dereferenceable(28) bitcast ({ i32, i32, i32, i32, i32, i32, i8, [3 x i8] }* @__const.ioctl_fsgetxattr.fa to i8*), i64 28, i1 false)
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call i32 @vfs_fileattr_get(%struct.dentry* noundef %1, %struct.fileattr* noundef nonnull %fa) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast i8* %argp to %struct.fsxattr*
  %call1 = call i32 @copy_fsxattr_to_user(%struct.fileattr* noundef nonnull %fa, %struct.fsxattr* noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ %call, %entry ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #9
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fssetxattr(%struct.file* noundef %file, i8* noundef %argp) unnamed_addr #0 {
entry:
  %fa = alloca %struct.fileattr, align 4
  %call = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #10
  %dentry1 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %1 = bitcast %struct.fileattr* %fa to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %1, i8 0, i64 28, i1 false), !annotation !7
  %2 = bitcast i8* %argp to %struct.fsxattr*
  %call2 = call fastcc i32 @copy_fsxattr_from_user(%struct.fileattr* noundef nonnull %fa, %struct.fsxattr* noundef %2) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call3 = call i32 @mnt_want_write_file(%struct.file* noundef %file) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then
  %call6 = call i32 @vfs_fileattr_set(%struct.user_namespace* noundef %call, %struct.dentry* noundef %0, %struct.fileattr* noundef nonnull %fa) #10
  call void @mnt_drop_write_file(%struct.file* noundef %file) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %entry
  %err.0 = phi i32 [ %call2, %entry ], [ %call3, %if.then ], [ %call6, %if.then5 ]
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #9
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @file_ioctl(%struct.file* noundef %filp, i32 noundef %cmd, i32* noundef %p) unnamed_addr #0 {
entry:
  switch i32 %cmd, label %return [
    i32 1, label %sw.bb
    i32 1076910120, label %sw.bb1
    i32 1076910122, label %sw.bb1
    i32 1076910121, label %sw.bb3
    i32 1076910123, label %sw.bb3
    i32 1076910137, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @ioctl_fibmap(%struct.file* noundef %filp, i32* noundef %p) #10
  br label %return

sw.bb1:                                           ; preds = %entry, %entry
  %0 = bitcast i32* %p to i8*
  %call2 = call fastcc i32 @ioctl_preallocate(%struct.file* noundef %filp, i32 noundef 0, i8* noundef %0) #10
  br label %return

sw.bb3:                                           ; preds = %entry, %entry
  %1 = bitcast i32* %p to i8*
  %call4 = call fastcc i32 @ioctl_preallocate(%struct.file* noundef %filp, i32 noundef 2, i8* noundef %1) #10
  br label %return

sw.bb5:                                           ; preds = %entry
  %2 = bitcast i32* %p to i8*
  %call6 = call fastcc i32 @ioctl_preallocate(%struct.file* noundef %filp, i32 noundef 16, i8* noundef %2) #10
  br label %return

return:                                           ; preds = %entry, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -515, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !19

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #9, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #9, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_super(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #10
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !23

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #10
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !19

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_clone_file_range(%struct.file* noundef, i64 noundef, %struct.file* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memdup_user(i8* noundef, i64 noundef) local_unnamed_addr #3

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
declare dso_local i32 @vfs_dedupe_file_range(%struct.file* noundef, %struct.file_dedupe_range* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #10
  ret %struct.user_namespace* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #9, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_fsxattr_from_user(%struct.fileattr* noundef %fa, %struct.fsxattr* noundef %ufa) unnamed_addr #0 {
entry:
  %xfa = alloca %struct.fsxattr, align 4
  %0 = bitcast %struct.fsxattr* %xfa to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false), !annotation !7
  %1 = bitcast %struct.fsxattr* %ufa to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 28) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fsx_xflags = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 0
  %2 = load i32, i32* %fsx_xflags, align 4
  call void @fileattr_fill_xflags(%struct.fileattr* noundef %fa, i32 noundef %2) #10
  %fsx_extsize = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 1
  %3 = load i32, i32* %fsx_extsize, align 4
  %fsx_extsize1 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 2
  store i32 %3, i32* %fsx_extsize1, align 4
  %fsx_nextents = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 2
  %4 = load i32, i32* %fsx_nextents, align 4
  %fsx_nextents2 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 3
  store i32 %4, i32* %fsx_nextents2, align 4
  %fsx_projid = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 3
  %5 = load i32, i32* %fsx_projid, align 4
  %fsx_projid3 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 4
  store i32 %5, i32* %fsx_projid3, align 4
  %fsx_cowextsize = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %xfa, i64 0, i32 4
  %6 = load i32, i32* %fsx_cowextsize, align 4
  %fsx_cowextsize4 = getelementptr inbounds %struct.fileattr, %struct.fileattr* %fa, i64 0, i32 5
  store i32 %6, i32* %fsx_cowextsize4, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_fibmap(%struct.file* noundef %filp, i32* noundef %p) unnamed_addr #0 {
entry:
  %block = alloca i64, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #10
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %1 = bitcast i64* %block to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %call1 = call i1 @capable(i32 noundef 17) #8
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %p to i8*
  %call2 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #10
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #10
  %3 = bitcast i8* %call4 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #9, !srcloc !25
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult8 = extractvalue { i32, i64 } %4, 1
  %tobool15.not = icmp eq i32 %asmresult, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end12
  %5 = and i64 %asmresult8, 2147483648
  %cmp.not = icmp eq i64 %5, 0
  br i1 %cmp.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end17
  %conv21103 = and i64 %asmresult8, 4294967295
  store i64 %conv21103, i64* %block, align 8
  %call22 = call i32 @bmap(%struct.inode* noundef %call, i64* noundef nonnull %block) #8
  %6 = load i64, i64* %block, align 8
  %cmp23 = icmp ugt i64 %6, 2147483647
  br i1 %cmp23, label %if.then25, label %if.end39

if.then25:                                        ; preds = %if.end20
  %call26 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @ioctl_fibmap._rs, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ioctl_fibmap, i64 0, i64 0)) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end39.thread, label %do.end31

do.end31:                                         ; preds = %if.then25
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !26
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 81, i64 0
  %call35 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %8) #10
  %arraydecay36 = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 31, i64 0
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %call35, i8* noundef %arraydecay36, %struct.file* noundef %filp) #12
  br label %if.end39.thread

if.end39:                                         ; preds = %if.end20
  %tobool40.not = icmp eq i32 %call22, 0
  %conv43 = trunc i64 %6 to i32
  %spec.select104 = select i1 %tobool40.not, i32 %conv43, i32 0
  br label %if.end39.thread

if.end39.thread:                                  ; preds = %if.end39, %if.then25, %do.end31
  %error.0101 = phi i32 [ -34, %do.end31 ], [ -34, %if.then25 ], [ %call22, %if.end39 ]
  %9 = phi i32 [ 0, %do.end31 ], [ 0, %if.then25 ], [ %spec.select104, %if.end39 ]
  %call47 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #10
  %tobool48.not = icmp eq i64 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %if.end60

if.end60:                                         ; preds = %if.end39.thread
  %call50 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #10
  %10 = bitcast i8* %call50 to i32*
  %11 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %9, i32* %10, i32 -14, i32 0) #9, !srcloc !27
  %phi.cmp = icmp eq i32 %11, 0
  %spec.select105 = select i1 %phi.cmp, i32 %error.0101, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end39.thread, %if.end, %if.end17, %if.end12, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %asmresult, %if.end12 ], [ -22, %if.end17 ], [ -14, %if.end ], [ -14, %if.end39.thread ], [ %spec.select105, %if.end60 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctl_preallocate(%struct.file* noundef %filp, i32 noundef %mode, i8* noundef %argp) unnamed_addr #0 {
entry:
  %sr = alloca %struct.space_resv, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #10
  %0 = bitcast %struct.space_resv* %sr to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !7
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %argp, i64 noundef 48) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %l_whence = getelementptr inbounds %struct.space_resv, %struct.space_resv* %sr, i64 0, i32 1
  %1 = load i16, i16* %l_whence, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %cleanup [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  %l_start6.phi.trans.insert = getelementptr inbounds %struct.space_resv, %struct.space_resv* %sr, i64 0, i32 2
  %.pre = load i64, i64* %l_start6.phi.trans.insert, align 8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 10
  %2 = load i64, i64* %f_pos, align 8
  %l_start = getelementptr inbounds %struct.space_resv, %struct.space_resv* %sr, i64 0, i32 2
  %3 = load i64, i64* %l_start, align 8
  %add = add i64 %3, %2
  store i64 %add, i64* %l_start, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %call3 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #10
  %l_start4 = getelementptr inbounds %struct.space_resv, %struct.space_resv* %sr, i64 0, i32 2
  %4 = load i64, i64* %l_start4, align 8
  %add5 = add i64 %4, %call3
  store i64 %add5, i64* %l_start4, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %sw.bb2, %sw.bb
  %5 = phi i64 [ %.pre, %if.end.sw.epilog_crit_edge ], [ %add5, %sw.bb2 ], [ %add, %sw.bb ]
  %or = or i32 %mode, 1
  %l_len = getelementptr inbounds %struct.space_resv, %struct.space_resv* %sr, i64 0, i32 3
  %6 = load i64, i64* %l_len, align 8
  %call7 = call i32 @vfs_fallocate(%struct.file* noundef %filp, i32 noundef %or, i64 noundef %5, i64 noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %sw.epilog
  %retval.0 = phi i32 [ %call7, %sw.epilog ], [ -14, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bmap(%struct.inode* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #4 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(%struct.file* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 3995623, i64 3995706, i64 3995930, i64 3996150, i64 3996173}
!9 = !{i64 4000325, i64 4000349}
!10 = !{i64 2151553109}
!11 = !{i64 2155516910, i64 2155516948, i64 2155516965, i64 2155516999, i64 2155517021, i64 2155517047, i64 2155517065, i64 2155517223, i64 2155517264, i64 2155517286, i64 2155517332}
!12 = !{i64 2155523563, i64 2155523601, i64 2155523618, i64 2155523652, i64 2155523674, i64 2155523700, i64 2155523718, i64 2155523876, i64 2155523917, i64 2155523939, i64 2155523985}
!13 = !{i64 2155491705, i64 2155491742, i64 2155491759, i64 2155491794, i64 2155491816, i64 2155491842, i64 2155491865, i64 2155491883, i64 2155492042, i64 2155492083, i64 2155492105, i64 2155492151}
!14 = !{i64 2155495795, i64 2155495832, i64 2155495849, i64 2155495884, i64 2155495906, i64 2155495932, i64 2155495955, i64 2155495973, i64 2155496132, i64 2155496173, i64 2155496195, i64 2155496241}
!15 = !{i64 2155499501, i64 2155499538, i64 2155499555, i64 2155499590, i64 2155499612, i64 2155499638, i64 2155499661, i64 2155499679, i64 2155499842, i64 2155499883, i64 2155499905, i64 2155499951}
!16 = !{i64 2155505915, i64 2155505953, i64 2155505970, i64 2155506004, i64 2155506026, i64 2155506052, i64 2155506070, i64 2155506228, i64 2155506269, i64 2155506291, i64 2155506337}
!17 = !{i64 2155509966, i64 2155510003, i64 2155510020, i64 2155510055, i64 2155510077, i64 2155510103, i64 2155510126, i64 2155510144, i64 2155510303, i64 2155510344, i64 2155510366, i64 2155510412}
!18 = !{i64 2149616277}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148109062, i64 2148109095, i64 2148109148, i64 2148109207, i64 2148109241, i64 2148109296, i64 2148109325, i64 2148109345}
!21 = !{i64 2149623558}
!22 = !{i64 2149415788}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2151778920}
!25 = !{i64 2155476828, i64 2155476865, i64 2155476882, i64 2155476917, i64 2155476939, i64 2155476965, i64 2155476988, i64 2155477006, i64 2155477165, i64 2155477206, i64 2155477228, i64 2155477274}
!26 = !{i64 1427542}
!27 = !{i64 2155482507, i64 2155482545, i64 2155482562, i64 2155482596, i64 2155482618, i64 2155482644, i64 2155482662, i64 2155482820, i64 2155482861, i64 2155482883, i64 2155482929}
