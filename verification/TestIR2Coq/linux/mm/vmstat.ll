; ModuleID = 'mm/vmstat.c'
source_filename = "mm/vmstat.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.vm_event_state = type { [53 x i64] }
%struct.cpumask = type { [4 x i64] }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.workqueue_struct = type opaque
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.16, i32 }
%union.anon.16 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.17, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.17 = type { %struct.kernfs_elem_dir }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.6, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.5, [0 x i64] }
%struct.anon.5 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.74, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.18, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.18 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.9, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.19, %union.anon.20, %union.anon.21, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.26, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.19 = type { %struct.hlist_node }
%union.anon.20 = type { %struct.rb_node }
%union.anon.21 = type { %struct.anon.25 }
%struct.anon.25 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.26 = type { %struct.__call_single_data }
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
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.blk_mq_tag_set = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.61 }
%struct.anon.61 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.65 }
%struct.anon.65 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.73, i32, [12 x i8] }
%union.anon.73 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.74 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.75, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.75 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.6 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.7, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.8, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.7 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.8 = type { %struct.pte_t }
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
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [48 x i8] }
%struct.anon.28 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.29, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.31, %struct.list_head, %struct.list_head, %union.anon.32 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
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
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.39 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.39 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.proc_dir_entry = type opaque

@vm_event_states = dso_local global %struct.vm_event_state zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"nr_free_pages\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"nr_zone_inactive_anon\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"nr_zone_active_anon\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"nr_zone_inactive_file\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"nr_zone_active_file\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"nr_zone_unevictable\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"nr_zone_write_pending\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"nr_mlock\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"nr_bounce\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"nr_free_cma\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"nr_inactive_anon\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"nr_active_anon\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"nr_inactive_file\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"nr_active_file\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"nr_unevictable\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"nr_slab_reclaimable\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"nr_slab_unreclaimable\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"nr_isolated_anon\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"nr_isolated_file\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"workingset_nodes\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"workingset_refault_anon\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"workingset_refault_file\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"workingset_activate_anon\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"workingset_activate_file\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"workingset_restore_anon\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"workingset_restore_file\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"workingset_nodereclaim\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"nr_anon_pages\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"nr_mapped\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"nr_file_pages\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"nr_dirty\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"nr_writeback\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"nr_writeback_temp\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"nr_shmem\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"nr_shmem_hugepages\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"nr_shmem_pmdmapped\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"nr_file_hugepages\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"nr_file_pmdmapped\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"nr_anon_transparent_hugepages\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"nr_vmscan_write\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"nr_vmscan_immediate_reclaim\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"nr_dirtied\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"nr_written\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"nr_kernel_misc_reclaimable\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"nr_foll_pin_acquired\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"nr_foll_pin_released\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"nr_kernel_stack\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"nr_page_table_pages\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"nr_dirty_threshold\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"nr_dirty_background_threshold\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"pswpin\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"pswpout\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"pgalloc_dma\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"pgalloc_dma32\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"pgalloc_normal\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"pgalloc_movable\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"allocstall_dma\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"allocstall_dma32\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"allocstall_normal\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"allocstall_movable\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"pgskip_dma\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"pgskip_dma32\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"pgskip_normal\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"pgskip_movable\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"pgfree\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"pgactivate\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"pgdeactivate\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"pglazyfree\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"pglazyfreed\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"pgrefill\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"pgreuse\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"pgsteal_kswapd\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"pgsteal_direct\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"pgdemote_kswapd\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"pgdemote_direct\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"pgscan_kswapd\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"pgscan_direct\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"pgscan_direct_throttle\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"pgscan_anon\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"pgscan_file\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"pgsteal_anon\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"pgsteal_file\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"pginodesteal\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"slabs_scanned\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"kswapd_inodesteal\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"kswapd_low_wmark_hit_quickly\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"kswapd_high_wmark_hit_quickly\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"pageoutrun\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"pgrotated\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"drop_pagecache\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"drop_slab\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"oom_kill\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"unevictable_pgs_culled\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_scanned\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_rescued\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_mlocked\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"unevictable_pgs_munlocked\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_cleared\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"unevictable_pgs_stranded\00", align 1
@vmstat_text = dso_local local_unnamed_addr constant [103 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0)], align 8
@sysctl_stat_interval = dso_local local_unnamed_addr global i32 250, section ".data..read_mostly", align 4
@vm_zone_stat = dso_local global [10 x %struct.atomic64_t] zeroinitializer, section ".data..cacheline_aligned", align 64
@.str.106 = private unnamed_addr constant [14 x i8] c"\014%s: %s %ld\0A\00", align 1
@__func__.vmstat_refresh = private unnamed_addr constant [15 x i8] c"vmstat_refresh\00", align 1
@vm_node_stat = dso_local global [38 x %struct.atomic64_t] zeroinitializer, section ".data..cacheline_aligned", align 64
@system_state = external dso_local local_unnamed_addr global i32, align 4
@vmstat_work = internal global %struct.delayed_work zeroinitializer, section ".data..percpu", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.107 = private unnamed_addr constant [13 x i8] c"mm_percpu_wq\00", align 1
@mm_percpu_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, align 8
@.str.108 = private unnamed_addr constant [15 x i8] c"mm/vmstat:dead\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"\013vmstat: failed to register 'dead' hotplug state\0A\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"mm/vmstat:online\00", align 1
@.str.111 = private unnamed_addr constant [53 x i8] c"\013vmstat: failed to register 'online' hotplug state\0A\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"buddyinfo\00", align 1
@fragmentation_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @frag_start, void (%struct.seq_file*, i8*)* @frag_stop, i8* (%struct.seq_file*, i8*, i64*)* @frag_next, i32 (%struct.seq_file*, i8*)* @frag_show }, align 8
@.str.113 = private unnamed_addr constant [13 x i8] c"pagetypeinfo\00", align 1
@pagetypeinfo_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @frag_start, void (%struct.seq_file*, i8*)* @frag_stop, i8* (%struct.seq_file*, i8*, i64*)* @frag_next, i32 (%struct.seq_file*, i8*)* @pagetypeinfo_show }, align 8
@.str.114 = private unnamed_addr constant [7 x i8] c"vmstat\00", align 1
@vmstat_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @vmstat_start, void (%struct.seq_file*, i8*)* @vmstat_stop, i8* (%struct.seq_file*, i8*, i64*)* @vmstat_next, i32 (%struct.seq_file*, i8*)* @vmstat_show }, align 8
@.str.115 = private unnamed_addr constant [9 x i8] c"zoneinfo\00", align 1
@zoneinfo_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @frag_start, void (%struct.seq_file*, i8*)* @frag_stop, i8* (%struct.seq_file*, i8*, i64*)* @frag_next, i32 (%struct.seq_file*, i8*)* @zoneinfo_show }, align 8
@vm_numa_event = dso_local local_unnamed_addr global [0 x %struct.atomic64_t] zeroinitializer, section ".data..cacheline_aligned", align 64
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@shepherd = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @shepherd to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @shepherd to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @vmstat_shepherd }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2621440 }, %struct.workqueue_struct* null, i32 0 }, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.117 = private unnamed_addr constant [19 x i8] c"Node %d, zone %8s \00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"%6lu \00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"Page block order: %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"Pages per block:  %lu\0A\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"%-43s \00", align 1
@.str.122 = private unnamed_addr constant [43 x i8] c"Free pages count per migrate type at order\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"%6d \00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"Node %4d, zone %8s, type %12s \00", align 1
@migratetype_names = external dso_local local_unnamed_addr constant [4 x i8*], align 8
@.str.125 = private unnamed_addr constant [8 x i8] c"%s%6lu \00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"\0A%-23s\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"Number of blocks type \00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"%12s \00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.131 = private unnamed_addr constant [7 x i8] c"%12lu \00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.132 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"nr_unstable 0\0A\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"Node %d, zone %8s\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"\0A  per-node stats\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"\0A      %-12s %lu\00", align 1
@.str.137 = private unnamed_addr constant [169 x i8] c"\0A  pages free     %lu\0A        min      %lu\0A        low      %lu\0A        high     %lu\0A        spanned  %lu\0A        present  %lu\0A        managed  %lu\0A        cma      %lu\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"\0A        protection: (%ld\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c", %ld\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"\0A  pagesets\00", align 1
@.str.141 = private unnamed_addr constant [85 x i8] c"\0A    cpu: %i\0A              count: %i\0A              high:  %i\0A              batch: %i\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"\0A  vm stats threshold: %d\00", align 1
@.str.143 = private unnamed_addr constant [54 x i8] c"\0A  node_unreclaimable:  %u\0A  start_pfn:           %lu\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @all_vm_events(i64* noundef %ret) local_unnamed_addr #0 {
entry:
  call fastcc void @sum_vm_events(i64* noundef %ret) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sum_vm_events(i64* noundef %ret) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %ret to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 424) #19
  %call124 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp25 = icmp ult i32 %call124, %1
  br i1 %cmp25, label %for.body, label %for.end11

for.cond.loopexit:                                ; preds = %for.body5
  %call1 = call i32 @cpumask_next(i32 noundef %call126, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %call126 = phi i32 [ %call1, %for.cond.loopexit ], [ %call124, %entry ]
  %idxprom = sext i32 %call126 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.vm_event_state* @vm_event_states to i64)
  %4 = inttoptr i64 %add to %struct.vm_event_state*
  br label %for.body5

for.body5:                                        ; preds = %for.body, %for.body5
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body5 ]
  %arrayidx7 = getelementptr %struct.vm_event_state, %struct.vm_event_state* %4, i64 0, i32 0, i64 %indvars.iv
  %5 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, i64* %ret, i64 %indvars.iv
  %6 = load i64, i64* %arrayidx9, align 8
  %add10 = add i64 %6, %5
  store i64 %add10, i64* %arrayidx9, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 53
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body5

for.end11:                                        ; preds = %for.cond.loopexit, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vm_events_fold_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.vm_event_state* @vm_event_states to i64)
  %1 = inttoptr i64 %add to %struct.vm_event_state*
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx3 = getelementptr %struct.vm_event_state, %struct.vm_event_state* %1, i64 0, i32 0, i64 %indvars.iv
  %2 = load i64, i64* %arrayidx3, align 8
  %3 = trunc i64 %indvars.iv to i32
  call fastcc void @count_vm_events(i32 noundef %3, i64 noundef %2) #18
  store i64 0, i64* %arrayidx3, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 53
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_events(i32 noundef %item, i64 noundef %delta) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef %delta) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @calculate_pressure_threshold(%struct.zone* nocapture noundef readonly %zone) local_unnamed_addr #2 {
entry:
  %arrayidx = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 0, i64 1
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 64
  %sub = sub i64 %0, %1
  %conv = trunc i64 %sub to i32
  %call = call fastcc i32 @num_online_cpus() #18
  %div = udiv i32 %conv, %call
  %2 = icmp sgt i32 %div, 1
  %cond = select i1 %2, i32 %div, i32 1
  %3 = icmp ult i32 %cond, 125
  %cond12 = select i1 %3, i32 %cond, i32 125
  ret i32 %cond12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define dso_local i32 @calculate_normal_threshold(%struct.zone* noundef %zone) local_unnamed_addr #3 {
entry:
  %call = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #18
  %shr = lshr i64 %call, 15
  %conv = trunc i64 %shr to i32
  %call1 = call fastcc i32 @num_online_cpus() #18
  %tobool.not.i = icmp eq i32 %call1, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %call1, i1 false) #21, !range !10
  %.neg = mul nsw i32 %0, -2
  %narrow.i.op = add nsw i32 %.neg, 64
  %mul = select i1 %tobool.not.i, i32 0, i32 %narrow.i.op
  %tobool.not.i13 = icmp eq i32 %conv, 0
  %1 = call i32 @llvm.ctlz.i32(i32 %conv, i1 false) #21, !range !10
  %narrow.i14.op = sub nuw nsw i32 33, %1
  %add = select i1 %tobool.not.i13, i32 1, i32 %narrow.i14.op
  %mul4 = mul nuw nsw i32 %mul, %add
  %2 = icmp ult i32 %mul4, 125
  %cond = select i1 %2, i32 %mul4, i32 125
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) unnamed_addr #2 {
entry:
  %counter.i.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 10, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @refresh_zone_stat_thresholds() local_unnamed_addr #0 {
entry:
  %call = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool.not128 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not128, label %for.end6, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc
  %pgdat.0129 = phi %struct.pglist_data* [ %call5, %for.inc ], [ %call, %entry ]
  %call2125 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp126 = icmp ult i32 %call2125, %0
  br i1 %cmp126, label %do.body.lr.ph, label %for.inc

do.body.lr.ph:                                    ; preds = %for.cond1.preheader
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat.0129, i64 0, i32 20
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call2127 = phi i32 [ %call2125, %do.body.lr.ph ], [ %call2, %do.body ]
  %1 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  %2 = ptrtoint %struct.per_cpu_nodestat* %1 to i64
  %idxprom = sext i32 %call2127 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.per_cpu_nodestat*
  %stat_threshold = getelementptr inbounds %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %4, i64 0, i32 0
  store i8 0, i8* %stat_threshold, align 1
  %call2 = call i32 @cpumask_next(i32 noundef %call2127, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %5
  br i1 %cmp, label %do.body, label %for.inc

for.inc:                                          ; preds = %do.body, %for.cond1.preheader
  %call5 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.0129) #19
  %tobool.not = icmp eq %struct.pglist_data* %call5, null
  br i1 %tobool.not, label %for.end6, label %for.cond1.preheader

for.end6:                                         ; preds = %for.inc, %entry
  %call7 = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool9.not134 = icmp eq %struct.pglist_data* %call7, null
  br i1 %tobool9.not134, label %for.end78, label %for.body10.preheader

for.body10.preheader:                             ; preds = %for.end6
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call7, i64 0, i32 0, i64 0
  br label %for.body10

for.body10:                                       ; preds = %for.body10.preheader, %for.inc76
  %zone.0135 = phi %struct.zone* [ %call77, %for.inc76 ], [ %arraydecay, %for.body10.preheader ]
  %call11 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.0135) #18
  br i1 %call11, label %if.else, label %for.inc76

if.else:                                          ; preds = %for.body10
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.0135, i64 0, i32 4
  %6 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %call13 = call i32 @calculate_normal_threshold(%struct.zone* noundef nonnull %zone.0135) #18
  %call15131 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp16132 = icmp ult i32 %call15131, %7
  br i1 %cmp16132, label %for.body17.lr.ph, label %for.end58

for.body17.lr.ph:                                 ; preds = %if.else
  %conv = trunc i32 %call13 to i8
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone.0135, i64 0, i32 6
  %per_cpu_nodestats35 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %6, i64 0, i32 20
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %call15133 = phi i32 [ %call15131, %for.body17.lr.ph ], [ %call15, %for.body17 ]
  %8 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %9 = ptrtoint %struct.per_cpu_zonestat* %8 to i64
  %idxprom25 = sext i32 %call15133 to i64
  %arrayidx26 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom25
  %10 = load i64, i64* %arrayidx26, align 8
  %add27 = add i64 %10, %9
  %11 = inttoptr i64 %add27 to %struct.per_cpu_zonestat*
  %stat_threshold28 = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %11, i64 0, i32 1
  store i8 %conv, i8* %stat_threshold28, align 1
  %12 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats35, align 64
  %13 = ptrtoint %struct.per_cpu_nodestat* %12 to i64
  %14 = load i64, i64* %arrayidx26, align 8
  %add39 = add i64 %14, %13
  %15 = inttoptr i64 %add39 to %struct.per_cpu_nodestat*
  %stat_threshold40 = getelementptr inbounds %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %15, i64 0, i32 0
  %16 = load i8, i8* %stat_threshold40, align 1
  %conv41 = sext i8 %16 to i32
  %cmp43 = icmp sgt i32 %call13, %conv41
  %cond = select i1 %cmp43, i32 %call13, i32 %conv41
  %conv45 = trunc i32 %cond to i8
  store i8 %conv45, i8* %stat_threshold40, align 1
  %call15 = call i32 @cpumask_next(i32 noundef %call15133, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %cmp16 = icmp ult i32 %call15, %17
  br i1 %cmp16, label %for.body17, label %for.end58

for.end58:                                        ; preds = %for.body17, %if.else
  %arrayidx59 = getelementptr %struct.zone, %struct.zone* %zone.0135, i64 0, i32 0, i64 1
  %18 = load i64, i64* %arrayidx59, align 8
  %arrayidx62 = getelementptr inbounds %struct.zone, %struct.zone* %zone.0135, i64 0, i32 0, i64 0
  %19 = load i64, i64* %arrayidx62, align 64
  %sub = sub i64 %18, %19
  %call65 = call fastcc i32 @num_online_cpus() #18
  %mul = mul i32 %call65, %call13
  %conv66 = zext i32 %mul to i64
  %cmp67 = icmp ult i64 %sub, %conv66
  br i1 %cmp67, label %if.then69, label %for.inc76

if.then69:                                        ; preds = %for.end58
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.0135, i64 0, i32 1
  %arrayidx71 = getelementptr %struct.zone, %struct.zone* %zone.0135, i64 0, i32 0, i64 2
  %20 = load i64, i64* %arrayidx71, align 16
  %21 = load i64, i64* %watermark_boost, align 8
  %add73 = add i64 %20, %conv66
  %add74 = add i64 %add73, %21
  %percpu_drift_mark = getelementptr inbounds %struct.zone, %struct.zone* %zone.0135, i64 0, i32 22
  store i64 %add74, i64* %percpu_drift_mark, align 64
  br label %for.inc76

for.inc76:                                        ; preds = %for.end58, %if.then69, %for.body10
  %call77 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.0135) #19
  %tobool9.not = icmp eq %struct.zone* %call77, null
  br i1 %tobool9.not, label %for.end78, label %for.body10

for.end78:                                        ; preds = %for.inc76, %for.end6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pglist_data* @first_online_pgdat() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @populated_zone(%struct.zone* nocapture noundef readonly %zone) unnamed_addr #6 {
entry:
  %present_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 12
  %0 = load i64, i64* %present_pages, align 64
  %tobool = icmp ne i64 %0, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.zone* @next_zone(%struct.zone* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_pgdat_percpu_threshold(%struct.pglist_data* noundef %pgdat, i32 (%struct.zone*)* nocapture noundef readonly %calculate_pressure) local_unnamed_addr #0 {
entry:
  %nr_zones = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 2
  %0 = load i32, i32* %nr_zones, align 16
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.body, label %for.end8

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %percpu_drift_mark = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv, i32 22
  %1 = load i64, i64* %percpu_drift_mark, align 64
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv
  %call = call i32 %calculate_pressure(%struct.zone* noundef %arrayidx) #19
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %call222 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %cmp323 = icmp ult i32 %call222, %2
  br i1 %cmp323, label %for.body4.lr.ph, label %for.inc

for.body4.lr.ph:                                  ; preds = %if.end
  %conv = trunc i32 %call to i8
  %per_cpu_zonestats = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 %indvars.iv, i32 6
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %call224 = phi i32 [ %call222, %for.body4.lr.ph ], [ %call2, %for.body4 ]
  %3 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %4 = ptrtoint %struct.per_cpu_zonestat* %3 to i64
  %idxprom6 = sext i32 %call224 to i64
  %arrayidx7 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom6
  %5 = load i64, i64* %arrayidx7, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.per_cpu_zonestat*
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %6, i64 0, i32 1
  store i8 %conv, i8* %stat_threshold, align 1
  %call2 = call i32 @cpumask_next(i32 noundef %call224, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %cmp3 = icmp ult i32 %call2, %2
  br i1 %cmp3, label %for.body4, label %for.inc

for.inc:                                          ; preds = %for.body4, %if.end, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = load i32, i32* %nr_zones, align 16
  %8 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %8
  br i1 %cmp, label %for.body, label %for.end8

for.end8:                                         ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__mod_zone_page_state(%struct.zone* noundef %zone, i32 noundef %item, i64 noundef %delta) local_unnamed_addr #0 {
entry:
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %0 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 0, i64 %idx.ext
  %1 = ptrtoint i8* %add.ptr to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i64
  %add9 = add i64 %conv, %delta
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 1
  %4 = ptrtoint i8* %stat_threshold to i64
  %add25 = add i64 %call, %4
  %5 = inttoptr i64 %add25 to i8*
  %6 = load i8, i8* %5, align 1
  %conv27 = sext i8 %6 to i64
  %7 = call i64 @llvm.abs.i64(i64 %add9, i1 false)
  %cmp30 = icmp sgt i64 %7, %conv27
  br i1 %cmp30, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call fastcc void @zone_page_state_add(i64 noundef %add9, %struct.zone* noundef %zone, i32 noundef %item) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %x.0 = phi i64 [ 0, %if.then ], [ %add9, %entry ]
  %conv40 = trunc i64 %x.0 to i8
  %call48 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add49 = add i64 %call48, %1
  %8 = inttoptr i64 %add49 to i8*
  store i8 %conv40, i8* %8, align 1
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !12
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zone_page_state_add(i64 noundef %x, %struct.zone* noundef %zone, i32 noundef %item) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 26, i64 %idxprom
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %x, %struct.atomic64_t* noundef %arrayidx) #19
  %arrayidx2 = getelementptr [10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 %idxprom
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %x, %struct.atomic64_t* noundef %arrayidx2) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__mod_node_page_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item, i64 noundef %delta) local_unnamed_addr #0 {
entry:
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 20
  %0 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %0, i64 0, i32 1, i64 %idx.ext
  %1 = add i32 %item, -5
  %2 = icmp ult i32 %1, 2
  %shr = ashr i64 %delta, 12
  %spec.select = select i1 %2, i64 %shr, i64 %delta
  %3 = ptrtoint i8* %add.ptr to i64
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call8, %3
  %4 = inttoptr i64 %add to i8*
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i64
  %add10 = add i64 %spec.select, %conv
  %6 = ptrtoint %struct.per_cpu_nodestat* %0 to i64
  %add26 = add i64 %call8, %6
  %7 = inttoptr i64 %add26 to i8*
  %8 = load i8, i8* %7, align 1
  %conv28 = sext i8 %8 to i64
  %9 = call i64 @llvm.abs.i64(i64 %add10, i1 false)
  %cmp31 = icmp sgt i64 %9, %conv28
  br i1 %cmp31, label %if.then35, label %if.end36, !prof !11

if.then35:                                        ; preds = %entry
  call fastcc void @node_page_state_add(i64 noundef %add10, %struct.pglist_data* noundef %pgdat, i32 noundef %item) #18
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %entry
  %x.0 = phi i64 [ 0, %if.then35 ], [ %add10, %entry ]
  %conv43 = trunc i64 %x.0 to i8
  %call51 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add52 = add i64 %call51, %3
  %10 = inttoptr i64 %add52 to i8*
  store i8 %conv43, i8* %10, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @node_page_state_add(i64 noundef %x, %struct.pglist_data* noundef %pgdat, i32 noundef %item) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 21, i64 %idxprom
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %x, %struct.atomic64_t* noundef %arrayidx) #19
  %arrayidx2 = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %idxprom
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %x, %struct.atomic64_t* noundef %arrayidx2) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__inc_zone_state(%struct.zone* noundef %zone, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %0 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 0, i64 %idx.ext
  %1 = ptrtoint i8* %add.ptr to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  %3 = load i8, i8* %2, align 1
  %add7 = add i8 %3, 1
  store i8 %add7, i8* %2, align 1
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 1
  %4 = ptrtoint i8* %stat_threshold to i64
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add25 = add i64 %call24, %4
  %5 = inttoptr i64 %add25 to i8*
  %6 = load i8, i8* %5, align 1
  %cmp = icmp sgt i8 %add7, %6
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  %conv27 = sext i8 %add7 to i64
  %7 = ashr i8 %6, 1
  %conv35 = sext i8 %7 to i64
  %add36 = add nsw i64 %conv35, %conv27
  call fastcc void @zone_page_state_add(i64 noundef %add36, %struct.zone* noundef %zone, i32 noundef %item) #18
  %sub = sub nsw i8 0, %7
  %call53 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add54 = add i64 %call53, %1
  %8 = inttoptr i64 %add54 to i8*
  store i8 %sub, i8* %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__inc_node_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 20
  %0 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %0, i64 0, i32 1, i64 %idx.ext
  %1 = ptrtoint i8* %add.ptr to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  %3 = load i8, i8* %2, align 1
  %add7 = add i8 %3, 1
  store i8 %add7, i8* %2, align 1
  %4 = ptrtoint %struct.per_cpu_nodestat* %0 to i64
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add25 = add i64 %call24, %4
  %5 = inttoptr i64 %add25 to i8*
  %6 = load i8, i8* %5, align 1
  %cmp = icmp sgt i8 %add7, %6
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  %conv27 = sext i8 %add7 to i64
  %7 = ashr i8 %6, 1
  %conv35 = sext i8 %7 to i64
  %add36 = add nsw i64 %conv35, %conv27
  call fastcc void @node_page_state_add(i64 noundef %add36, %struct.pglist_data* noundef %pgdat, i32 noundef %item) #18
  %sub = sub nsw i8 0, %7
  %call53 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add54 = add i64 %call53, %1
  %8 = inttoptr i64 %add54 to i8*
  store i8 %sub, i8* %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__inc_zone_page_state(%struct.page* nocapture noundef readonly %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #18
  call void @__inc_zone_state(%struct.zone* noundef nonnull %call, i32 noundef %item) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.zone* @page_zone(%struct.page* nocapture noundef readonly %page) unnamed_addr #6 {
entry:
  %call2 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #18
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %idxprom
  ret %struct.zone* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__inc_node_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  call void @__inc_node_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %item) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__dec_zone_state(%struct.zone* noundef %zone, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %0 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 0, i64 %idx.ext
  %1 = ptrtoint i8* %add.ptr to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  %3 = load i8, i8* %2, align 1
  %add7 = add i8 %3, -1
  store i8 %add7, i8* %2, align 1
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 1
  %4 = ptrtoint i8* %stat_threshold to i64
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add25 = add i64 %call24, %4
  %5 = inttoptr i64 %add25 to i8*
  %6 = load i8, i8* %5, align 1
  %conv27 = sext i8 %add7 to i32
  %conv28 = sext i8 %6 to i32
  %sub = sub nsw i32 0, %conv28
  %cmp = icmp slt i32 %conv27, %sub
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  %shr = ashr i8 %6, 1
  %conv35 = sext i8 %shr to i32
  %sub36 = sub nsw i32 %conv27, %conv35
  %conv37 = sext i32 %sub36 to i64
  call fastcc void @zone_page_state_add(i64 noundef %conv37, %struct.zone* noundef %zone, i32 noundef %item) #18
  %call51 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add52 = add i64 %call51, %1
  %7 = inttoptr i64 %add52 to i8*
  store i8 %shr, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__dec_node_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 20
  %0 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %0, i64 0, i32 1, i64 %idx.ext
  %1 = ptrtoint i8* %add.ptr to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  %3 = load i8, i8* %2, align 1
  %add7 = add i8 %3, -1
  store i8 %add7, i8* %2, align 1
  %4 = ptrtoint %struct.per_cpu_nodestat* %0 to i64
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add25 = add i64 %call24, %4
  %5 = inttoptr i64 %add25 to i8*
  %6 = load i8, i8* %5, align 1
  %conv27 = sext i8 %add7 to i32
  %conv28 = sext i8 %6 to i32
  %sub = sub nsw i32 0, %conv28
  %cmp = icmp slt i32 %conv27, %sub
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  %shr = ashr i8 %6, 1
  %conv35 = sext i8 %shr to i32
  %sub36 = sub nsw i32 %conv27, %conv35
  %conv37 = sext i32 %sub36 to i64
  call fastcc void @node_page_state_add(i64 noundef %conv37, %struct.pglist_data* noundef %pgdat, i32 noundef %item) #18
  %call51 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add52 = add i64 %call51, %1
  %7 = inttoptr i64 %add52 to i8*
  store i8 %shr, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__dec_zone_page_state(%struct.page* nocapture noundef readonly %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #18
  call void @__dec_zone_state(%struct.zone* noundef nonnull %call, i32 noundef %item) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__dec_node_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  call void @__dec_node_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %item) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mod_zone_page_state(%struct.zone* noundef %zone, i32 noundef %item, i64 noundef %delta) local_unnamed_addr #0 {
entry:
  call fastcc void @mod_zone_state(%struct.zone* noundef %zone, i32 noundef %item, i64 noundef %delta, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_zone_state(%struct.zone* noundef %zone, i32 noundef %item, i64 noundef %delta, i32 noundef %overstep_mode) unnamed_addr #0 {
entry:
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %0 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 0, i64 %idx.ext
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %0, i64 0, i32 1
  %1 = ptrtoint i8* %stat_threshold to i64
  %2 = ptrtoint i8* %add.ptr to i64
  br label %do.body

do.body:                                          ; preds = %do.cond42, %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, %1
  %3 = inttoptr i64 %add to i8*
  %call7 = call fastcc i64 @__percpu_read_8(i8* noundef %3) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  %sext = shl i64 %call7, 56
  %conv10 = ashr exact i64 %sext, 56
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !15
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add25 = add i64 %call24, %2
  %4 = inttoptr i64 %add25 to i8*
  %call26 = call fastcc i64 @__percpu_read_8(i8* noundef %4) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !16
  %sext101 = shl i64 %call26, 56
  %conv30 = ashr exact i64 %sext101, 56
  %add31 = add i64 %conv30, %delta
  %5 = call i64 @llvm.abs.i64(i64 %add31, i1 false)
  %cmp34 = icmp sgt i64 %5, %conv10
  br i1 %cmp34, label %if.then, label %do.cond42

if.then:                                          ; preds = %do.body
  %shr = ashr i64 %sext, 57
  %6 = trunc i64 %shr to i32
  %conv37 = mul i32 %6, %overstep_mode
  %conv38 = sext i32 %conv37 to i64
  %add39 = add i64 %add31, %conv38
  %sub40 = sub i32 0, %conv37
  %conv41103 = zext i32 %sub40 to i64
  br label %do.cond42

do.cond42:                                        ; preds = %do.body, %if.then
  %z.0 = phi i64 [ %add39, %if.then ], [ 0, %do.body ]
  %n.0 = phi i64 [ %conv41103, %if.then ], [ %add31, %do.body ]
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  %call55 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add56 = add i64 %call55, %2
  %7 = inttoptr i64 %add56 to i8*
  %conv.i = trunc i64 %call26 to i8
  %conv1.i = trunc i64 %n.0 to i8
  %call.i = call fastcc i8 @__cmpxchg_case_8(i8* noundef %7, i8 noundef %conv.i, i8 noundef %conv1.i) #19
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  %conv63 = sext i8 %call.i to i64
  %cmp64.not = icmp eq i64 %conv30, %conv63
  br i1 %cmp64.not, label %do.end66, label %do.body

do.end66:                                         ; preds = %do.cond42
  %tobool.not = icmp eq i64 %z.0, 0
  br i1 %tobool.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %do.end66
  call fastcc void @zone_page_state_add(i64 noundef %z.0, %struct.zone* noundef %zone, i32 noundef %item) #18
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %do.end66
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inc_zone_page_state(%struct.page* nocapture noundef readonly %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #18
  call fastcc void @mod_zone_state(%struct.zone* noundef nonnull %call, i32 noundef %item, i64 noundef 1, i32 noundef 1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dec_zone_page_state(%struct.page* nocapture noundef readonly %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #18
  call fastcc void @mod_zone_state(%struct.zone* noundef nonnull %call, i32 noundef %item, i64 noundef -1, i32 noundef -1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mod_node_page_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item, i64 noundef %delta) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %delta to i32
  call fastcc void @mod_node_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item, i32 noundef %conv, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_node_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item, i32 noundef %delta, i32 noundef %overstep_mode) unnamed_addr #0 {
entry:
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 20
  %0 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  %idx.ext = zext i32 %item to i64
  %add.ptr = getelementptr %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %0, i64 0, i32 1, i64 %idx.ext
  %1 = add i32 %item, -5
  %2 = icmp ult i32 %1, 2
  %shr = ashr i32 %delta, 12
  %spec.select = select i1 %2, i32 %shr, i32 %delta
  %3 = ptrtoint %struct.per_cpu_nodestat* %0 to i64
  %4 = ptrtoint i8* %add.ptr to i64
  %conv32 = sext i32 %spec.select to i64
  br label %do.body

do.body:                                          ; preds = %do.cond47, %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call7, %3
  %5 = inttoptr i64 %add to i8*
  %call8 = call fastcc i64 @__percpu_read_8(i8* noundef %5) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !20
  %sext = shl i64 %call8, 56
  %conv11 = ashr exact i64 %sext, 56
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %call25 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add26 = add i64 %call25, %4
  %6 = inttoptr i64 %add26 to i8*
  %call27 = call fastcc i64 @__percpu_read_8(i8* noundef %6) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %sext108 = shl i64 %call27, 56
  %conv31 = ashr exact i64 %sext108, 56
  %add33 = add nsw i64 %conv31, %conv32
  %7 = call i64 @llvm.abs.i64(i64 %add33, i1 true)
  %cmp36 = icmp sgt i64 %7, %conv11
  br i1 %cmp36, label %if.then38, label %do.cond47

if.then38:                                        ; preds = %do.body
  %shr40 = ashr i64 %sext, 57
  %8 = trunc i64 %shr40 to i32
  %conv41 = mul i32 %8, %overstep_mode
  %conv42 = sext i32 %conv41 to i64
  %add43 = add nsw i64 %add33, %conv42
  %sub44 = sub i32 0, %conv41
  %conv45110 = zext i32 %sub44 to i64
  br label %do.cond47

do.cond47:                                        ; preds = %do.body, %if.then38
  %z.0 = phi i64 [ %add43, %if.then38 ], [ 0, %do.body ]
  %n.0 = phi i64 [ %conv45110, %if.then38 ], [ %add33, %do.body ]
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %call60 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add61 = add i64 %call60, %4
  %9 = inttoptr i64 %add61 to i8*
  %conv.i = trunc i64 %call27 to i8
  %conv1.i = trunc i64 %n.0 to i8
  %call.i = call fastcc i8 @__cmpxchg_case_8(i8* noundef %9, i8 noundef %conv.i, i8 noundef %conv1.i) #19
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %conv68 = sext i8 %call.i to i64
  %cmp69.not = icmp eq i64 %conv31, %conv68
  br i1 %cmp69.not, label %do.end71, label %do.body

do.end71:                                         ; preds = %do.cond47
  %tobool.not = icmp eq i64 %z.0, 0
  br i1 %tobool.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %do.end71
  call fastcc void @node_page_state_add(i64 noundef %z.0, %struct.pglist_data* noundef %pgdat, i32 noundef %item) #18
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %do.end71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inc_node_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item) local_unnamed_addr #0 {
entry:
  call fastcc void @mod_node_state(%struct.pglist_data* noundef %pgdat, i32 noundef %item, i32 noundef 1, i32 noundef 1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inc_node_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  call fastcc void @mod_node_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %item, i32 noundef 1, i32 noundef 1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dec_node_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %item) local_unnamed_addr #0 {
entry:
  call fastcc void @mod_node_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %item, i32 noundef -1, i32 noundef -1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpu_vm_stats_fold(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %global_zone_diff = alloca [10 x i32], align 4
  %global_node_diff = alloca [38 x i32], align 4
  %0 = bitcast [10 x i32]* %global_zone_diff to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %1 = bitcast [38 x i32]* %global_node_diff to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(152) %1, i8 0, i64 152, i1 false)
  %call = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool.not112 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not112, label %for.end24, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 0
  %arrayidx19.1 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 1
  %arrayidx19.2 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 2
  %arrayidx19.3 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 3
  %arrayidx19.4 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 4
  %arrayidx19.5 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 5
  %arrayidx19.6 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 6
  %arrayidx19.7 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 7
  %arrayidx19.8 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 8
  %arrayidx19.9 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 9
  %arrayidx19.promoted = load i32, i32* %arrayidx19, align 4
  %arrayidx19.1.promoted = load i32, i32* %arrayidx19.1, align 4
  %arrayidx19.2.promoted = load i32, i32* %arrayidx19.2, align 4
  %arrayidx19.3.promoted = load i32, i32* %arrayidx19.3, align 4
  %arrayidx19.4.promoted = load i32, i32* %arrayidx19.4, align 4
  %arrayidx19.5.promoted = load i32, i32* %arrayidx19.5, align 4
  %arrayidx19.6.promoted = load i32, i32* %arrayidx19.6, align 4
  %arrayidx19.7.promoted = load i32, i32* %arrayidx19.7, align 4
  %arrayidx19.8.promoted = load i32, i32* %arrayidx19.8, align 4
  %arrayidx19.9.promoted = load i32, i32* %arrayidx19.9, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc22
  %add20.9147 = phi i32 [ %arrayidx19.9.promoted, %for.body.lr.ph ], [ %add20.9148, %for.inc22 ]
  %add20.8144 = phi i32 [ %arrayidx19.8.promoted, %for.body.lr.ph ], [ %add20.8145, %for.inc22 ]
  %add20.7141 = phi i32 [ %arrayidx19.7.promoted, %for.body.lr.ph ], [ %add20.7142, %for.inc22 ]
  %add20.6138 = phi i32 [ %arrayidx19.6.promoted, %for.body.lr.ph ], [ %add20.6139, %for.inc22 ]
  %add20.5135 = phi i32 [ %arrayidx19.5.promoted, %for.body.lr.ph ], [ %add20.5136, %for.inc22 ]
  %add20.4132 = phi i32 [ %arrayidx19.4.promoted, %for.body.lr.ph ], [ %add20.4133, %for.inc22 ]
  %add20.3129 = phi i32 [ %arrayidx19.3.promoted, %for.body.lr.ph ], [ %add20.3130, %for.inc22 ]
  %add20.2126 = phi i32 [ %arrayidx19.2.promoted, %for.body.lr.ph ], [ %add20.2127, %for.inc22 ]
  %add20.1123 = phi i32 [ %arrayidx19.1.promoted, %for.body.lr.ph ], [ %add20.1124, %for.inc22 ]
  %add20120 = phi i32 [ %arrayidx19.promoted, %for.body.lr.ph ], [ %add20121, %for.inc22 ]
  %2 = phi i32 [ 0, %for.body.lr.ph ], [ %35, %for.inc22 ]
  %3 = phi i32 [ 0, %for.body.lr.ph ], [ %36, %for.inc22 ]
  %4 = phi i32 [ 0, %for.body.lr.ph ], [ %37, %for.inc22 ]
  %5 = phi i32 [ 0, %for.body.lr.ph ], [ %38, %for.inc22 ]
  %6 = phi i32 [ 0, %for.body.lr.ph ], [ %39, %for.inc22 ]
  %7 = phi i32 [ 0, %for.body.lr.ph ], [ %40, %for.inc22 ]
  %8 = phi i32 [ 0, %for.body.lr.ph ], [ %41, %for.inc22 ]
  %9 = phi i32 [ 0, %for.body.lr.ph ], [ %42, %for.inc22 ]
  %10 = phi i32 [ 0, %for.body.lr.ph ], [ %43, %for.inc22 ]
  %11 = phi i32 [ 0, %for.body.lr.ph ], [ %44, %for.inc22 ]
  %zone.0113 = phi %struct.zone* [ %arraydecay, %for.body.lr.ph ], [ %call23, %for.inc22 ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.0113) #18
  br i1 %call1, label %if.else, label %for.inc22

if.else:                                          ; preds = %for.body
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone.0113, i64 0, i32 6
  %12 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %13 = ptrtoint %struct.per_cpu_zonestat* %12 to i64
  %14 = load i64, i64* %arrayidx, align 8
  %add = add i64 %14, %13
  %15 = inttoptr i64 %add to %struct.per_cpu_zonestat*
  %arrayidx6 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 0
  %16 = load i8, i8* %arrayidx6, align 1
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %if.else
  %conv = sext i8 %16 to i32
  store i8 0, i8* %arrayidx6, align 1
  %conv15 = sext i8 %16 to i64
  %arrayidx17 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 0
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15, %struct.atomic64_t* noundef %arrayidx17) #19
  %add20 = add i32 %11, %conv
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then8
  %add20122 = phi i32 [ %add20120, %if.else ], [ %add20, %if.then8 ]
  %17 = phi i32 [ %11, %if.else ], [ %add20, %if.then8 ]
  %arrayidx6.1 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 1
  %18 = load i8, i8* %arrayidx6.1, align 1
  %tobool7.not.1 = icmp eq i8 %18, 0
  br i1 %tobool7.not.1, label %for.inc.1, label %if.then8.1

if.then8.1:                                       ; preds = %for.inc
  %conv.1 = sext i8 %18 to i32
  store i8 0, i8* %arrayidx6.1, align 1
  %conv15.1 = sext i8 %18 to i64
  %arrayidx17.1 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 1
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.1, %struct.atomic64_t* noundef %arrayidx17.1) #19
  %add20.1 = add i32 %10, %conv.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %for.inc
  %add20.1125 = phi i32 [ %add20.1, %if.then8.1 ], [ %add20.1123, %for.inc ]
  %19 = phi i32 [ %add20.1, %if.then8.1 ], [ %10, %for.inc ]
  %arrayidx6.2 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 2
  %20 = load i8, i8* %arrayidx6.2, align 1
  %tobool7.not.2 = icmp eq i8 %20, 0
  br i1 %tobool7.not.2, label %for.inc.2, label %if.then8.2

if.then8.2:                                       ; preds = %for.inc.1
  %conv.2 = sext i8 %20 to i32
  store i8 0, i8* %arrayidx6.2, align 1
  %conv15.2 = sext i8 %20 to i64
  %arrayidx17.2 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 2
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.2, %struct.atomic64_t* noundef %arrayidx17.2) #19
  %add20.2 = add i32 %9, %conv.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then8.2, %for.inc.1
  %add20.2128 = phi i32 [ %add20.2, %if.then8.2 ], [ %add20.2126, %for.inc.1 ]
  %21 = phi i32 [ %add20.2, %if.then8.2 ], [ %9, %for.inc.1 ]
  %arrayidx6.3 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 3
  %22 = load i8, i8* %arrayidx6.3, align 1
  %tobool7.not.3 = icmp eq i8 %22, 0
  br i1 %tobool7.not.3, label %for.inc.3, label %if.then8.3

if.then8.3:                                       ; preds = %for.inc.2
  %conv.3 = sext i8 %22 to i32
  store i8 0, i8* %arrayidx6.3, align 1
  %conv15.3 = sext i8 %22 to i64
  %arrayidx17.3 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 3
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.3, %struct.atomic64_t* noundef %arrayidx17.3) #19
  %add20.3 = add i32 %8, %conv.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then8.3, %for.inc.2
  %add20.3131 = phi i32 [ %add20.3, %if.then8.3 ], [ %add20.3129, %for.inc.2 ]
  %23 = phi i32 [ %add20.3, %if.then8.3 ], [ %8, %for.inc.2 ]
  %arrayidx6.4 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 4
  %24 = load i8, i8* %arrayidx6.4, align 1
  %tobool7.not.4 = icmp eq i8 %24, 0
  br i1 %tobool7.not.4, label %for.inc.4, label %if.then8.4

if.then8.4:                                       ; preds = %for.inc.3
  %conv.4 = sext i8 %24 to i32
  store i8 0, i8* %arrayidx6.4, align 1
  %conv15.4 = sext i8 %24 to i64
  %arrayidx17.4 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 4
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.4, %struct.atomic64_t* noundef %arrayidx17.4) #19
  %add20.4 = add i32 %7, %conv.4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then8.4, %for.inc.3
  %add20.4134 = phi i32 [ %add20.4, %if.then8.4 ], [ %add20.4132, %for.inc.3 ]
  %25 = phi i32 [ %add20.4, %if.then8.4 ], [ %7, %for.inc.3 ]
  %arrayidx6.5 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 5
  %26 = load i8, i8* %arrayidx6.5, align 1
  %tobool7.not.5 = icmp eq i8 %26, 0
  br i1 %tobool7.not.5, label %for.inc.5, label %if.then8.5

if.then8.5:                                       ; preds = %for.inc.4
  %conv.5 = sext i8 %26 to i32
  store i8 0, i8* %arrayidx6.5, align 1
  %conv15.5 = sext i8 %26 to i64
  %arrayidx17.5 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 5
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.5, %struct.atomic64_t* noundef %arrayidx17.5) #19
  %add20.5 = add i32 %6, %conv.5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then8.5, %for.inc.4
  %add20.5137 = phi i32 [ %add20.5, %if.then8.5 ], [ %add20.5135, %for.inc.4 ]
  %27 = phi i32 [ %add20.5, %if.then8.5 ], [ %6, %for.inc.4 ]
  %arrayidx6.6 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 6
  %28 = load i8, i8* %arrayidx6.6, align 1
  %tobool7.not.6 = icmp eq i8 %28, 0
  br i1 %tobool7.not.6, label %for.inc.6, label %if.then8.6

if.then8.6:                                       ; preds = %for.inc.5
  %conv.6 = sext i8 %28 to i32
  store i8 0, i8* %arrayidx6.6, align 1
  %conv15.6 = sext i8 %28 to i64
  %arrayidx17.6 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 6
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.6, %struct.atomic64_t* noundef %arrayidx17.6) #19
  %add20.6 = add i32 %5, %conv.6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then8.6, %for.inc.5
  %add20.6140 = phi i32 [ %add20.6, %if.then8.6 ], [ %add20.6138, %for.inc.5 ]
  %29 = phi i32 [ %add20.6, %if.then8.6 ], [ %5, %for.inc.5 ]
  %arrayidx6.7 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 7
  %30 = load i8, i8* %arrayidx6.7, align 1
  %tobool7.not.7 = icmp eq i8 %30, 0
  br i1 %tobool7.not.7, label %for.inc.7, label %if.then8.7

if.then8.7:                                       ; preds = %for.inc.6
  %conv.7 = sext i8 %30 to i32
  store i8 0, i8* %arrayidx6.7, align 1
  %conv15.7 = sext i8 %30 to i64
  %arrayidx17.7 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 7
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.7, %struct.atomic64_t* noundef %arrayidx17.7) #19
  %add20.7 = add i32 %4, %conv.7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then8.7, %for.inc.6
  %add20.7143 = phi i32 [ %add20.7, %if.then8.7 ], [ %add20.7141, %for.inc.6 ]
  %31 = phi i32 [ %add20.7, %if.then8.7 ], [ %4, %for.inc.6 ]
  %arrayidx6.8 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 8
  %32 = load i8, i8* %arrayidx6.8, align 1
  %tobool7.not.8 = icmp eq i8 %32, 0
  br i1 %tobool7.not.8, label %for.inc.8, label %if.then8.8

if.then8.8:                                       ; preds = %for.inc.7
  %conv.8 = sext i8 %32 to i32
  store i8 0, i8* %arrayidx6.8, align 1
  %conv15.8 = sext i8 %32 to i64
  %arrayidx17.8 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 8
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.8, %struct.atomic64_t* noundef %arrayidx17.8) #19
  %add20.8 = add i32 %3, %conv.8
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then8.8, %for.inc.7
  %add20.8146 = phi i32 [ %add20.8, %if.then8.8 ], [ %add20.8144, %for.inc.7 ]
  %33 = phi i32 [ %add20.8, %if.then8.8 ], [ %3, %for.inc.7 ]
  %arrayidx6.9 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %15, i64 0, i32 0, i64 9
  %34 = load i8, i8* %arrayidx6.9, align 1
  %tobool7.not.9 = icmp eq i8 %34, 0
  br i1 %tobool7.not.9, label %for.inc22, label %if.then8.9

if.then8.9:                                       ; preds = %for.inc.8
  %conv.9 = sext i8 %34 to i32
  store i8 0, i8* %arrayidx6.9, align 1
  %conv15.9 = sext i8 %34 to i64
  %arrayidx17.9 = getelementptr %struct.zone, %struct.zone* %zone.0113, i64 0, i32 26, i64 9
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv15.9, %struct.atomic64_t* noundef %arrayidx17.9) #19
  %add20.9 = add i32 %2, %conv.9
  br label %for.inc22

for.inc22:                                        ; preds = %for.inc.8, %if.then8.9, %for.body
  %add20.9148 = phi i32 [ %add20.9147, %for.body ], [ %add20.9, %if.then8.9 ], [ %add20.9147, %for.inc.8 ]
  %add20.8145 = phi i32 [ %add20.8144, %for.body ], [ %add20.8146, %if.then8.9 ], [ %add20.8146, %for.inc.8 ]
  %add20.7142 = phi i32 [ %add20.7141, %for.body ], [ %add20.7143, %if.then8.9 ], [ %add20.7143, %for.inc.8 ]
  %add20.6139 = phi i32 [ %add20.6138, %for.body ], [ %add20.6140, %if.then8.9 ], [ %add20.6140, %for.inc.8 ]
  %add20.5136 = phi i32 [ %add20.5135, %for.body ], [ %add20.5137, %if.then8.9 ], [ %add20.5137, %for.inc.8 ]
  %add20.4133 = phi i32 [ %add20.4132, %for.body ], [ %add20.4134, %if.then8.9 ], [ %add20.4134, %for.inc.8 ]
  %add20.3130 = phi i32 [ %add20.3129, %for.body ], [ %add20.3131, %if.then8.9 ], [ %add20.3131, %for.inc.8 ]
  %add20.2127 = phi i32 [ %add20.2126, %for.body ], [ %add20.2128, %if.then8.9 ], [ %add20.2128, %for.inc.8 ]
  %add20.1124 = phi i32 [ %add20.1123, %for.body ], [ %add20.1125, %if.then8.9 ], [ %add20.1125, %for.inc.8 ]
  %add20121 = phi i32 [ %add20120, %for.body ], [ %add20122, %if.then8.9 ], [ %add20122, %for.inc.8 ]
  %35 = phi i32 [ %2, %for.body ], [ %add20.9, %if.then8.9 ], [ %2, %for.inc.8 ]
  %36 = phi i32 [ %3, %for.body ], [ %33, %if.then8.9 ], [ %33, %for.inc.8 ]
  %37 = phi i32 [ %4, %for.body ], [ %31, %if.then8.9 ], [ %31, %for.inc.8 ]
  %38 = phi i32 [ %5, %for.body ], [ %29, %if.then8.9 ], [ %29, %for.inc.8 ]
  %39 = phi i32 [ %6, %for.body ], [ %27, %if.then8.9 ], [ %27, %for.inc.8 ]
  %40 = phi i32 [ %7, %for.body ], [ %25, %if.then8.9 ], [ %25, %for.inc.8 ]
  %41 = phi i32 [ %8, %for.body ], [ %23, %if.then8.9 ], [ %23, %for.inc.8 ]
  %42 = phi i32 [ %9, %for.body ], [ %21, %if.then8.9 ], [ %21, %for.inc.8 ]
  %43 = phi i32 [ %10, %for.body ], [ %19, %if.then8.9 ], [ %19, %for.inc.8 ]
  %44 = phi i32 [ %11, %for.body ], [ %17, %if.then8.9 ], [ %17, %for.inc.8 ]
  %call23 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.0113) #19
  %tobool.not = icmp eq %struct.zone* %call23, null
  br i1 %tobool.not, label %for.end24.loopexit, label %for.body

for.end24.loopexit:                               ; preds = %for.inc22
  store i32 %add20121, i32* %arrayidx19, align 4
  store i32 %add20.1124, i32* %arrayidx19.1, align 4
  store i32 %add20.2127, i32* %arrayidx19.2, align 4
  store i32 %add20.3130, i32* %arrayidx19.3, align 4
  store i32 %add20.4133, i32* %arrayidx19.4, align 4
  store i32 %add20.5136, i32* %arrayidx19.5, align 4
  store i32 %add20.6139, i32* %arrayidx19.6, align 4
  store i32 %add20.7142, i32* %arrayidx19.7, align 4
  store i32 %add20.8145, i32* %arrayidx19.8, align 4
  store i32 %add20.9148, i32* %arrayidx19.9, align 4
  br label %for.end24

for.end24:                                        ; preds = %for.end24.loopexit, %entry
  %call25 = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool27.not116 = icmp eq %struct.pglist_data* %call25, null
  br i1 %tobool27.not116, label %for.end68, label %for.body28.lr.ph

for.body28.lr.ph:                                 ; preds = %for.end24
  %idxprom36 = sext i32 %cpu to i64
  %arrayidx37 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom36
  br label %for.body28

for.body28:                                       ; preds = %for.body28.lr.ph, %for.end65
  %pgdat.0117 = phi %struct.pglist_data* [ %call25, %for.body28.lr.ph ], [ %call67, %for.end65 ]
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat.0117, i64 0, i32 20
  %45 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  %46 = ptrtoint %struct.per_cpu_nodestat* %45 to i64
  %47 = load i64, i64* %arrayidx37, align 8
  %add38 = add i64 %47, %46
  %48 = inttoptr i64 %add38 to %struct.per_cpu_nodestat*
  br label %for.body42

for.body42:                                       ; preds = %for.body28, %for.inc63
  %indvars.iv = phi i64 [ 0, %for.body28 ], [ %indvars.iv.next, %for.inc63 ]
  %arrayidx44 = getelementptr %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %48, i64 0, i32 1, i64 %indvars.iv
  %49 = load i8, i8* %arrayidx44, align 1
  %tobool45.not = icmp eq i8 %49, 0
  br i1 %tobool45.not, label %for.inc63, label %if.then46

if.then46:                                        ; preds = %for.body42
  %conv51 = sext i8 %49 to i32
  store i8 0, i8* %arrayidx44, align 1
  %conv55 = sext i8 %49 to i64
  %arrayidx58 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.0117, i64 0, i32 21, i64 %indvars.iv
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv55, %struct.atomic64_t* noundef %arrayidx58) #19
  %arrayidx60 = getelementptr [38 x i32], [38 x i32]* %global_node_diff, i64 0, i64 %indvars.iv
  %50 = load i32, i32* %arrayidx60, align 4
  %add61 = add i32 %50, %conv51
  store i32 %add61, i32* %arrayidx60, align 4
  br label %for.inc63

for.inc63:                                        ; preds = %for.body42, %if.then46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %for.end65, label %for.body42

for.end65:                                        ; preds = %for.inc63
  %call67 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.0117) #19
  %tobool27.not = icmp eq %struct.pglist_data* %call67, null
  br i1 %tobool27.not, label %for.end68, label %for.body28

for.end68:                                        ; preds = %for.end65, %for.end24
  %arraydecay69 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 0
  %arraydecay70 = getelementptr inbounds [38 x i32], [38 x i32]* %global_node_diff, i64 0, i64 0
  %call71 = call fastcc i32 @fold_diff(i32* noundef nonnull %arraydecay69, i32* noundef nonnull %arraydecay70) #18
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fold_diff(i32* nocapture noundef readonly %zone_diff, i32* nocapture noundef readonly %node_diff) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %zone_diff, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %0 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 0)) #19
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %changes.1 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  %arrayidx.1 = getelementptr i32, i32* %zone_diff, i64 1
  %1 = load i32, i32* %arrayidx.1, align 4
  %tobool.not.1 = icmp eq i32 %1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %conv.1 = sext i32 %1 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.1, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 1)) #19
  %inc.1 = add nuw nsw i32 %changes.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %changes.1.1 = phi i32 [ %inc.1, %if.then.1 ], [ %changes.1, %for.inc ]
  %arrayidx.2 = getelementptr i32, i32* %zone_diff, i64 2
  %2 = load i32, i32* %arrayidx.2, align 4
  %tobool.not.2 = icmp eq i32 %2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %conv.2 = sext i32 %2 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.2, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 2)) #19
  %inc.2 = add nuw nsw i32 %changes.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %changes.1.2 = phi i32 [ %inc.2, %if.then.2 ], [ %changes.1.1, %for.inc.1 ]
  %arrayidx.3 = getelementptr i32, i32* %zone_diff, i64 3
  %3 = load i32, i32* %arrayidx.3, align 4
  %tobool.not.3 = icmp eq i32 %3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %conv.3 = sext i32 %3 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.3, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 3)) #19
  %inc.3 = add nuw nsw i32 %changes.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %changes.1.3 = phi i32 [ %inc.3, %if.then.3 ], [ %changes.1.2, %for.inc.2 ]
  %arrayidx.4 = getelementptr i32, i32* %zone_diff, i64 4
  %4 = load i32, i32* %arrayidx.4, align 4
  %tobool.not.4 = icmp eq i32 %4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  %conv.4 = sext i32 %4 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.4, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 4)) #19
  %inc.4 = add nuw nsw i32 %changes.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %changes.1.4 = phi i32 [ %inc.4, %if.then.4 ], [ %changes.1.3, %for.inc.3 ]
  %arrayidx.5 = getelementptr i32, i32* %zone_diff, i64 5
  %5 = load i32, i32* %arrayidx.5, align 4
  %tobool.not.5 = icmp eq i32 %5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  %conv.5 = sext i32 %5 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.5, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 5)) #19
  %inc.5 = add nuw nsw i32 %changes.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %changes.1.5 = phi i32 [ %inc.5, %if.then.5 ], [ %changes.1.4, %for.inc.4 ]
  %arrayidx.6 = getelementptr i32, i32* %zone_diff, i64 6
  %6 = load i32, i32* %arrayidx.6, align 4
  %tobool.not.6 = icmp eq i32 %6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  %conv.6 = sext i32 %6 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.6, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 6)) #19
  %inc.6 = add nuw nsw i32 %changes.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5
  %changes.1.6 = phi i32 [ %inc.6, %if.then.6 ], [ %changes.1.5, %for.inc.5 ]
  %arrayidx.7 = getelementptr i32, i32* %zone_diff, i64 7
  %7 = load i32, i32* %arrayidx.7, align 4
  %tobool.not.7 = icmp eq i32 %7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  %conv.7 = sext i32 %7 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.7, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 7)) #19
  %inc.7 = add nuw nsw i32 %changes.1.6, 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6
  %changes.1.7 = phi i32 [ %inc.7, %if.then.7 ], [ %changes.1.6, %for.inc.6 ]
  %arrayidx.8 = getelementptr i32, i32* %zone_diff, i64 8
  %8 = load i32, i32* %arrayidx.8, align 4
  %tobool.not.8 = icmp eq i32 %8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %if.then.8

if.then.8:                                        ; preds = %for.inc.7
  %conv.8 = sext i32 %8 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.8, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 8)) #19
  %inc.8 = add nuw nsw i32 %changes.1.7, 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7
  %changes.1.8 = phi i32 [ %inc.8, %if.then.8 ], [ %changes.1.7, %for.inc.7 ]
  %arrayidx.9 = getelementptr i32, i32* %zone_diff, i64 9
  %9 = load i32, i32* %arrayidx.9, align 4
  %tobool.not.9 = icmp eq i32 %9, 0
  br i1 %tobool.not.9, label %for.body9.preheader, label %if.then.9

if.then.9:                                        ; preds = %for.inc.8
  %conv.9 = sext i32 %9 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv.9, %struct.atomic64_t* noundef getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 9)) #19
  %inc.9 = add nuw nsw i32 %changes.1.8, 1
  br label %for.body9.preheader

for.body9.preheader:                              ; preds = %if.then.9, %for.inc.8
  %changes.243.ph = phi i32 [ %changes.1.8, %for.inc.8 ], [ %inc.9, %if.then.9 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.inc21
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc21 ], [ 0, %for.body9.preheader ]
  %changes.243 = phi i32 [ %changes.3, %for.inc21 ], [ %changes.243.ph, %for.body9.preheader ]
  %arrayidx11 = getelementptr i32, i32* %node_diff, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx11, align 4
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %for.inc21, label %if.then13

if.then13:                                        ; preds = %for.body9
  %conv16 = sext i32 %10 to i64
  %arrayidx18 = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %indvars.iv
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv16, %struct.atomic64_t* noundef %arrayidx18) #19
  %inc19 = add i32 %changes.243, 1
  br label %for.inc21

for.inc21:                                        ; preds = %for.body9, %if.then13
  %changes.3 = phi i32 [ %inc19, %if.then13 ], [ %changes.243, %for.body9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %for.end23, label %for.body9

for.end23:                                        ; preds = %for.inc21
  ret i32 %changes.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drain_zonestat(%struct.zone* noundef %zone, %struct.per_cpu_zonestat* nocapture noundef %pzstats) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i8 %0 to i64
  store i8 0, i8* %arrayidx, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv, %struct.zone* noundef %zone, i32 noundef 0) #18
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %arrayidx.1 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 1
  %1 = load i8, i8* %arrayidx.1, align 1
  %tobool.not.1 = icmp eq i8 %1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %conv.1 = sext i8 %1 to i64
  store i8 0, i8* %arrayidx.1, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.1, %struct.zone* noundef %zone, i32 noundef 1) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %arrayidx.2 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 2
  %2 = load i8, i8* %arrayidx.2, align 1
  %tobool.not.2 = icmp eq i8 %2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %conv.2 = sext i8 %2 to i64
  store i8 0, i8* %arrayidx.2, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.2, %struct.zone* noundef %zone, i32 noundef 2) #18
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %arrayidx.3 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 3
  %3 = load i8, i8* %arrayidx.3, align 1
  %tobool.not.3 = icmp eq i8 %3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %conv.3 = sext i8 %3 to i64
  store i8 0, i8* %arrayidx.3, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.3, %struct.zone* noundef %zone, i32 noundef 3) #18
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %arrayidx.4 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 4
  %4 = load i8, i8* %arrayidx.4, align 1
  %tobool.not.4 = icmp eq i8 %4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  %conv.4 = sext i8 %4 to i64
  store i8 0, i8* %arrayidx.4, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.4, %struct.zone* noundef %zone, i32 noundef 4) #18
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %arrayidx.5 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 5
  %5 = load i8, i8* %arrayidx.5, align 1
  %tobool.not.5 = icmp eq i8 %5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  %conv.5 = sext i8 %5 to i64
  store i8 0, i8* %arrayidx.5, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.5, %struct.zone* noundef %zone, i32 noundef 5) #18
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %arrayidx.6 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 6
  %6 = load i8, i8* %arrayidx.6, align 1
  %tobool.not.6 = icmp eq i8 %6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  %conv.6 = sext i8 %6 to i64
  store i8 0, i8* %arrayidx.6, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.6, %struct.zone* noundef %zone, i32 noundef 6) #18
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5
  %arrayidx.7 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 7
  %7 = load i8, i8* %arrayidx.7, align 1
  %tobool.not.7 = icmp eq i8 %7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  %conv.7 = sext i8 %7 to i64
  store i8 0, i8* %arrayidx.7, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.7, %struct.zone* noundef %zone, i32 noundef 7) #18
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6
  %arrayidx.8 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 8
  %8 = load i8, i8* %arrayidx.8, align 1
  %tobool.not.8 = icmp eq i8 %8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %if.then.8

if.then.8:                                        ; preds = %for.inc.7
  %conv.8 = sext i8 %8 to i64
  store i8 0, i8* %arrayidx.8, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.8, %struct.zone* noundef %zone, i32 noundef 8) #18
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7
  %arrayidx.9 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 9
  %9 = load i8, i8* %arrayidx.9, align 1
  %tobool.not.9 = icmp eq i8 %9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %if.then.9

if.then.9:                                        ; preds = %for.inc.8
  %conv.9 = sext i8 %9 to i64
  store i8 0, i8* %arrayidx.9, align 1
  call fastcc void @zone_page_state_add(i64 noundef %conv.9, %struct.zone* noundef %zone, i32 noundef 9) #18
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmstat_refresh(%struct.ctl_table* nocapture noundef readnone %table, i32 noundef %write, i8* nocapture noundef readnone %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call i32 @schedule_on_each_cpu(void (%struct.work_struct*)* noundef nonnull @refresh_vm_stats) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %entry
  %0 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 0, i32 0), align 64
  %cmp2 = icmp slt i64 %0, 0
  br i1 %cmp2, label %do.end, label %sw.epilog.1

do.end:                                           ; preds = %sw.epilog
  %call4 = call fastcc i8* @zone_stat_name(i32 noundef 0) #18
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4, i64 noundef %0) #23
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %do.end, %sw.epilog
  %1 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 1, i32 0), align 8
  %cmp2.1 = icmp slt i64 %1, 0
  br i1 %cmp2.1, label %do.end.1, label %sw.epilog.2

do.end.1:                                         ; preds = %sw.epilog.1
  %call4.1 = call fastcc i8* @zone_stat_name(i32 noundef 1) #18
  %call5.1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4.1, i64 noundef %1) #23
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.epilog.1, %do.end.1
  %2 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 2, i32 0), align 16
  %cmp2.2 = icmp slt i64 %2, 0
  br i1 %cmp2.2, label %do.end.2, label %sw.epilog.3

do.end.2:                                         ; preds = %sw.epilog.2
  %call4.2 = call fastcc i8* @zone_stat_name(i32 noundef 2) #18
  %call5.2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4.2, i64 noundef %2) #23
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.epilog.2, %do.end.2
  %3 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 3, i32 0), align 8
  %cmp2.3 = icmp slt i64 %3, 0
  br i1 %cmp2.3, label %do.end.3, label %sw.epilog.4

do.end.3:                                         ; preds = %sw.epilog.3
  %call4.3 = call fastcc i8* @zone_stat_name(i32 noundef 3) #18
  %call5.3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4.3, i64 noundef %3) #23
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog.3, %do.end.3
  %4 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 4, i32 0), align 32
  %cmp2.4 = icmp slt i64 %4, 0
  br i1 %cmp2.4, label %do.end.4, label %sw.epilog.5

do.end.4:                                         ; preds = %sw.epilog.4
  %call4.4 = call fastcc i8* @zone_stat_name(i32 noundef 4) #18
  %call5.4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4.4, i64 noundef %4) #23
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.epilog.4, %do.end.4
  %5 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 5, i32 0), align 8
  %cmp2.5 = icmp slt i64 %5, 0
  br i1 %cmp2.5, label %do.end.5, label %sw.epilog.7

do.end.5:                                         ; preds = %sw.epilog.5
  %call4.5 = call fastcc i8* @zone_stat_name(i32 noundef 5) #18
  %call5.5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4.5, i64 noundef %5) #23
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %do.end.5, %sw.epilog.5
  %6 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 7, i32 0), align 8
  %cmp2.7 = icmp slt i64 %6, 0
  br i1 %cmp2.7, label %do.end.7, label %sw.epilog.8

do.end.7:                                         ; preds = %sw.epilog.7
  %call4.7 = call fastcc i8* @zone_stat_name(i32 noundef 7) #18
  %call5.7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4.7, i64 noundef %6) #23
  br label %sw.epilog.8

sw.epilog.8:                                      ; preds = %sw.epilog.7, %do.end.7
  %7 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 8, i32 0), align 64
  %cmp2.8 = icmp slt i64 %7, 0
  br i1 %cmp2.8, label %do.end.8, label %for.body9.preheader

do.end.8:                                         ; preds = %sw.epilog.8
  %call4.8 = call fastcc i8* @zone_stat_name(i32 noundef 8) #18
  %call5.8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call4.8, i64 noundef %7) #23
  br label %for.body9.preheader

for.body9.preheader:                              ; preds = %sw.epilog.8, %do.end.8
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.inc24
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc24 ], [ 0, %for.body9.preheader ]
  %cond = icmp eq i64 %indvars.iv, 21
  br i1 %cond, label %for.inc24, label %sw.epilog11

sw.epilog11:                                      ; preds = %for.body9
  %counter.i.i49 = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %indvars.iv, i32 0
  %8 = load volatile i64, i64* %counter.i.i49, align 8
  %cmp15 = icmp slt i64 %8, 0
  br i1 %cmp15, label %do.end19, label %for.inc24

do.end19:                                         ; preds = %sw.epilog11
  %9 = trunc i64 %indvars.iv to i32
  %call21 = call fastcc i8* @node_stat_name(i32 noundef %9) #18
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vmstat_refresh, i64 0, i64 0), i8* noundef %call21, i64 noundef %8) #23
  br label %for.inc24

for.inc24:                                        ; preds = %sw.epilog11, %do.end19, %for.body9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %for.end26, label %for.body9

for.end26:                                        ; preds = %for.inc24
  %tobool27.not = icmp eq i32 %write, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %for.end26
  %10 = load i64, i64* %lenp, align 8
  %11 = load i64, i64* %ppos, align 8
  %add = add i64 %11, %10
  store i64 %add, i64* %ppos, align 8
  br label %cleanup

if.else:                                          ; preds = %for.end26
  store i64 0, i64* %lenp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.else ], [ 0, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_on_each_cpu(void (%struct.work_struct*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @refresh_vm_stats(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  %0 = call fastcc i32 @refresh_cpu_vm_stats() #18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @zone_stat_name(i32 noundef %item) unnamed_addr #10 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr [103 x i8*], [103 x i8*]* @vmstat_text, i64 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @node_stat_name(i32 noundef %item) unnamed_addr #10 {
entry:
  %add = add i32 %item, 10
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr [103 x i8*], [103 x i8*]* @vmstat_text, i64 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @quiet_vmstat() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %do.body, label %return

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %1 = inttoptr i64 %add to %struct.delayed_work*
  %2 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %1, i64 0, i32 0, i32 0, i32 0
  %3 = load volatile i64, i64* %2, align 8
  %conv.i21 = and i64 %3, 1
  %tobool.not = icmp eq i64 %conv.i21, 0
  br i1 %tobool.not, label %return, label %do.body5

do.body5:                                         ; preds = %do.body
  %call11 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add12 = add i64 %call11, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add12 to i32*
  %5 = load i32, i32* %4, align 4
  %call13 = call fastcc i1 @need_update(i32 noundef %5) #18
  br i1 %call13, label %if.end15, label %return

if.end15:                                         ; preds = %do.body5
  %6 = call fastcc i32 @refresh_cpu_vm_stats() #18
  br label %return

return:                                           ; preds = %do.body5, %do.body, %entry, %if.end15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @need_update(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool.not48 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not48, label %cleanup29, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %last_pgdat.051 = phi %struct.pglist_data* [ null, %for.body.lr.ph ], [ %last_pgdat.2, %for.inc ]
  %zone.049 = phi %struct.zone* [ %arraydecay, %for.body.lr.ph ], [ %call28, %for.inc ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.049) #18
  br i1 %call1, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone.049, i64 0, i32 6
  %0 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %1 = ptrtoint %struct.per_cpu_zonestat* %0 to i64
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.per_cpu_zonestat*
  %arraydecay3 = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %3, i64 0, i32 0, i64 0
  %call4 = call i8* @memchr_inv(i8* noundef %arraydecay3, i32 noundef 0, i64 noundef 10) #19
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %if.end, label %cleanup29

if.end:                                           ; preds = %if.else
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.049, i64 0, i32 4
  %4 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %cmp = icmp eq %struct.pglist_data* %last_pgdat.051, %4
  br i1 %cmp, label %for.inc, label %if.end8

if.end8:                                          ; preds = %if.end
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %4, i64 0, i32 20
  %5 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  %6 = ptrtoint %struct.per_cpu_nodestat* %5 to i64
  %7 = load i64, i64* %arrayidx, align 8
  %add20 = add i64 %7, %6
  %8 = inttoptr i64 %add20 to %struct.per_cpu_nodestat*
  %arraydecay21 = getelementptr inbounds %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %8, i64 0, i32 1, i64 0
  %call22 = call i8* @memchr_inv(i8* noundef %arraydecay21, i32 noundef 0, i64 noundef 38) #19
  %tobool23.not = icmp eq i8* %call22, null
  br i1 %tobool23.not, label %for.inc, label %cleanup29

for.inc:                                          ; preds = %if.end8, %if.end, %for.body
  %last_pgdat.2 = phi %struct.pglist_data* [ %last_pgdat.051, %for.body ], [ %last_pgdat.051, %if.end ], [ %4, %if.end8 ]
  %call28 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.049) #19
  %tobool.not = icmp eq %struct.zone* %call28, null
  br i1 %tobool.not, label %cleanup29, label %for.body

cleanup29:                                        ; preds = %for.inc, %if.else, %if.end8, %entry
  %tobool.not.lcssa = phi i1 [ false, %entry ], [ true, %if.end8 ], [ true, %if.else ], [ false, %for.inc ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @refresh_cpu_vm_stats() unnamed_addr #0 {
entry:
  %global_zone_diff = alloca [10 x i32], align 4
  %global_node_diff = alloca [38 x i32], align 4
  %0 = bitcast [10 x i32]* %global_zone_diff to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %1 = bitcast [38 x i32]* %global_node_diff to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(152) %1, i8 0, i64 152, i1 false)
  %call = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool.not7 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not7, label %for.end27, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc25
  %zone.08 = phi %struct.zone* [ %call26, %for.inc25 ], [ %arraydecay, %for.body.preheader ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.08) #18
  br i1 %call1, label %if.else, label %for.inc25

if.else:                                          ; preds = %for.body
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone.08, i64 0, i32 6
  %2 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  br label %for.body3

for.body3:                                        ; preds = %if.else, %if.end
  %indvars.iv = phi i64 [ 0, %if.else ], [ %indvars.iv.next, %if.end ]
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %arrayidx = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %2, i64 0, i32 0, i64 %indvars.iv
  %3 = ptrtoint i8* %arrayidx to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call9, %3
  %4 = inttoptr i64 %add to i8*
  %call.i = call fastcc i8 @__xchg_case_8(i8* noundef %4) #19
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %tobool16.not = icmp eq i8 %call.i, 0
  br i1 %tobool16.not, label %if.end, label %if.then17

if.then17:                                        ; preds = %for.body3
  %conv15 = sext i8 %call.i to i32
  %conv18 = sext i8 %call.i to i64
  %arrayidx20 = getelementptr %struct.zone, %struct.zone* %zone.08, i64 0, i32 26, i64 %indvars.iv
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv18, %struct.atomic64_t* noundef %arrayidx20) #19
  %arrayidx22 = getelementptr [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx22, align 4
  %add23 = add i32 %5, %conv15
  store i32 %add23, i32* %arrayidx22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.inc25, label %for.body3

for.inc25:                                        ; preds = %if.end, %for.body
  %call26 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.08) #19
  %tobool.not = icmp eq %struct.zone* %call26, null
  br i1 %tobool.not, label %for.end27, label %for.body

for.end27:                                        ; preds = %for.inc25, %entry
  %call28 = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool30.not11 = icmp eq %struct.pglist_data* %call28, null
  br i1 %tobool30.not11, label %for.end78, label %for.body31

for.body31:                                       ; preds = %for.end27, %for.end75
  %pgdat.012 = phi %struct.pglist_data* [ %call77, %for.end75 ], [ %call28, %for.end27 ]
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat.012, i64 0, i32 20
  %6 = load %struct.per_cpu_nodestat*, %struct.per_cpu_nodestat** %per_cpu_nodestats, align 64
  br label %for.body35

for.body35:                                       ; preds = %for.body31, %if.end72
  %indvars.iv14 = phi i64 [ 0, %for.body31 ], [ %indvars.iv.next15, %if.end72 ]
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %arrayidx51 = getelementptr %struct.per_cpu_nodestat, %struct.per_cpu_nodestat* %6, i64 0, i32 1, i64 %indvars.iv14
  %7 = ptrtoint i8* %arrayidx51 to i64
  %call53 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add54 = add i64 %call53, %7
  %8 = inttoptr i64 %add54 to i8*
  %call.i4 = call fastcc i8 @__xchg_case_8(i8* noundef %8) #19
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  %tobool63.not = icmp eq i8 %call.i4, 0
  br i1 %tobool63.not, label %if.end72, label %if.then64

if.then64:                                        ; preds = %for.body35
  %conv62 = sext i8 %call.i4 to i32
  %conv65 = sext i8 %call.i4 to i64
  %arrayidx68 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.012, i64 0, i32 21, i64 %indvars.iv14
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv65, %struct.atomic64_t* noundef %arrayidx68) #19
  %arrayidx70 = getelementptr [38 x i32], [38 x i32]* %global_node_diff, i64 0, i64 %indvars.iv14
  %9 = load i32, i32* %arrayidx70, align 4
  %add71 = add i32 %9, %conv62
  store i32 %add71, i32* %arrayidx70, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then64, %for.body35
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 38
  br i1 %exitcond17.not, label %for.end75, label %for.body35

for.end75:                                        ; preds = %if.end72
  %call77 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.012) #19
  %tobool30.not = icmp eq %struct.pglist_data* %call77, null
  br i1 %tobool30.not, label %for.end78, label %for.body31

for.end78:                                        ; preds = %for.end75, %for.end27
  %arraydecay79 = getelementptr inbounds [10 x i32], [10 x i32]* %global_zone_diff, i64 0, i64 0
  %arraydecay80 = getelementptr inbounds [38 x i32], [38 x i32]* %global_node_diff, i64 0, i64 0
  %call81 = call fastcc i32 @fold_diff(i32* noundef nonnull %arraydecay79, i32* noundef nonnull %arraydecay80) #18
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #21
  ret i32 %call81
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_mm_internals() local_unnamed_addr #11 section ".init.text" {
entry:
  %call = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i64 0, i64 0), i32 noundef 8, i32 noundef 0) #19
  store %struct.workqueue_struct* %call, %struct.workqueue_struct** @mm_percpu_wq, align 8
  %call1 = call fastcc i32 @cpuhp_setup_state_nocalls(i32 noundef 15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i64 0, i64 0), i32 (i32)* noundef null, i32 (i32)* noundef nonnull @vmstat_cpu_dead) #18
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.109, i64 0, i64 0)) #23
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call3 = call fastcc i32 @cpuhp_setup_state_nocalls(i32 noundef 192, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i64 0, i64 0), i32 (i32)* noundef nonnull @vmstat_cpu_online, i32 (i32)* noundef nonnull @vmstat_cpu_down_prep) #18
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.111, i64 0, i64 0)) #23
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end
  call fastcc void @init_cpu_node_state() #24
  call fastcc void @start_shepherd_timer() #24
  %call12 = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @fragmentation_op, i32 noundef 0, i8* noundef null) #19
  %call13 = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i64 0, i64 0), i16 noundef 256, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @pagetypeinfo_op, i32 noundef 0, i8* noundef null) #19
  %call14 = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @vmstat_op, i32 noundef 0, i8* noundef null) #19
  %call15 = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @zoneinfo_op, i32 noundef 0, i8* noundef null) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8* noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state_nocalls(i32 noundef %state, i8* noundef %name, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef %state, i8* noundef %name, i1 noundef false, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef false) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vmstat_cpu_dead(i32 noundef %cpu) #0 {
entry:
  call void @refresh_zone_stat_thresholds() #18
  %call = call fastcc i32 @cpumask_weight() #18
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vmstat_cpu_online(i32 noundef %cpu) #0 {
entry:
  call void @refresh_zone_stat_thresholds() #18
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vmstat_cpu_down_prep(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %1 = inttoptr i64 %add to %struct.delayed_work*
  %call = call i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef %1) #19
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_cpu_node_state() unnamed_addr #11 section ".init.text" {
entry:
  %call = call fastcc i32 @cpumask_weight() #18
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @start_shepherd_timer() unnamed_addr #11 section ".init.text" {
entry:
  %call71 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp72 = icmp ult i32 %call71, %0
  br i1 %cmp72, label %do.body2, label %for.end

do.body2:                                         ; preds = %entry, %do.body2
  %call73 = phi i32 [ %call, %do.body2 ], [ %call71, %entry ]
  %idxprom = sext i32 %call73 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add13 = add i64 %1, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %2 = inttoptr i64 %add13 to %struct.delayed_work*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %2, i64 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %3 = load i64, i64* %arrayidx, align 8
  %add24 = add i64 %3, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %4 = inttoptr i64 %add24 to %struct.delayed_work*
  %entry26 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %4, i64 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry26) #18
  %5 = load i64, i64* %arrayidx, align 8
  %add36 = add i64 %5, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %6 = inttoptr i64 %add36 to %struct.delayed_work*
  %func = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %6, i64 0, i32 0, i32 2
  store void (%struct.work_struct*)* @vmstat_update, void (%struct.work_struct*)** %func, align 8
  %7 = load i64, i64* %arrayidx, align 8
  %add49 = add i64 %7, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %8 = inttoptr i64 %add49 to %struct.delayed_work*
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %8, i64 0, i32 1
  call void @init_timer_key(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, i8* noundef null, %struct.lock_class_key* noundef null) #19
  %call = call i32 @cpumask_next(i32 noundef %call73, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %do.body2, label %for.end

for.end:                                          ; preds = %do.body2, %entry
  %10 = load i32, i32* @sysctl_stat_interval, align 4
  %conv = sext i32 %10 to i64
  %call52 = call i64 @round_jiffies_relative(i64 noundef %conv) #19
  call fastcc void @schedule_delayed_work(i64 noundef %call52) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.seq_operations* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #21, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_zonenum(%struct.page* nocapture noundef readonly %page) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %shr = lshr i64 %0, 62
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__percpu_read_8(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = load volatile i8, i8* %ptr, align 1
  %conv = zext i8 %0 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @__cmpxchg_case_8(i8* noundef %ptr, i8 noundef %old, i8 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i8 %old to i64
  %call = call fastcc i8 @__ll_sc__cmpxchg_case_8(i8* noundef %ptr, i64 noundef %conv, i8 noundef %new) #18
  ret i8 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @__ll_sc__cmpxchg_case_8(i8* noundef %ptr, i64 noundef %old, i8 noundef %new) unnamed_addr #0 {
entry:
  %conv1 = and i64 %old, 255
  %0 = call { i64, i8 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxrb\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxrb\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i8* elementtype(i8) %ptr, i64 %conv1, i8 %new, i8* elementtype(i8) %ptr) #21, !srcloc !30
  %asmresult2 = extractvalue { i64, i8 } %0, 1
  ret i8 %asmresult2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #21, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr_inv(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @__xchg_case_8(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = call { i8, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxrb\09${0:w}, $2\0A\09stxrb\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i8* elementtype(i8) %ptr, i8 0, i8* elementtype(i8) %ptr) #21, !srcloc !32
  %asmresult = extractvalue { i8, i64 } %0, 0
  ret i8 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i32 noundef 256) #19
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #14 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @vmstat_update(%struct.work_struct* nocapture noundef readnone %w) #0 {
entry:
  %call = call fastcc i32 @refresh_cpu_vm_stats() #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @mm_percpu_wq, align 8
  %add10 = add i64 %call2, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %3 = inttoptr i64 %add10 to %struct.delayed_work*
  %4 = load i32, i32* @sysctl_stat_interval, align 4
  %conv = sext i32 %4 to i64
  %call11 = call i64 @round_jiffies_relative(i64 noundef %conv) #19
  %call12 = call i1 @queue_delayed_work_on(i32 noundef %1, %struct.workqueue_struct* noundef %2, %struct.delayed_work* noundef %3, i64 noundef %call11) #19
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work(i64 noundef %delay) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0, i64 noundef %delay) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @round_jiffies_relative(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, i64 noundef %delay) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef nonnull @shepherd, i64 noundef %delay) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @vmstat_shepherd(%struct.work_struct* nocapture noundef readnone %w) #0 {
entry:
  %call19 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp20 = icmp ult i32 %call19, %0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %call21 = phi i32 [ %call, %if.end ], [ %call19, %entry ]
  %idxprom = sext i32 %call21 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.delayed_work* @vmstat_work to i64)
  %2 = inttoptr i64 %add to %struct.delayed_work*
  %3 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %2, i64 0, i32 0, i32 0, i32 0
  %4 = load volatile i64, i64* %3, align 8
  %conv.i18 = and i64 %4, 1
  %tobool.not = icmp eq i64 %conv.i18, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call3 = call fastcc i1 @need_update(i32 noundef %call21) #18
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.workqueue_struct*, %struct.workqueue_struct** @mm_percpu_wq, align 8
  %call4 = call i1 @queue_delayed_work_on(i32 noundef %call21, %struct.workqueue_struct* noundef %5, %struct.delayed_work* noundef %2, i64 noundef 0) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  call fastcc void @_cond_resched() #18
  %call = call i32 @cpumask_next(i32 noundef %call21, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %7 = load i32, i32* @sysctl_stat_interval, align 4
  %conv = sext i32 %7 to i64
  %call7 = call i64 @round_jiffies_relative(i64 noundef %conv) #19
  call fastcc void @schedule_delayed_work(i64 noundef %call7) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @frag_start(%struct.seq_file* nocapture noundef readnone %m, i64* nocapture noundef readonly %pos) #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %call = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool8 = icmp ne %struct.pglist_data* %call, null
  %tobool19 = icmp ne i64 %0, 0
  %1 = select i1 %tobool8, i1 %tobool19, i1 false
  br i1 %1, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %node.011 = phi i64 [ %dec, %for.body ], [ %0, %entry ]
  %pgdat.010 = phi %struct.pglist_data* [ %call2, %for.body ], [ %call, %entry ]
  %dec = add i64 %node.011, -1
  %call2 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.010) #19
  %tobool = icmp ne %struct.pglist_data* %call2, null
  %tobool1 = icmp ne i64 %dec, 0
  %2 = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %pgdat.0.lcssa = phi %struct.pglist_data* [ %call, %entry ], [ %call2, %for.body ]
  %3 = bitcast %struct.pglist_data* %pgdat.0.lcssa to i8*
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @frag_stop(%struct.seq_file* nocapture noundef %m, i8* nocapture noundef %arg) #10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @frag_next(%struct.seq_file* nocapture noundef readnone %m, i8* noundef %arg, i64* nocapture noundef %pos) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.pglist_data*
  %1 = load i64, i64* %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %pos, align 8
  %call = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef %0) #19
  %2 = bitcast %struct.pglist_data* %call to i8*
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @frag_show(%struct.seq_file* noundef %m, i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.pglist_data*
  call fastcc void @walk_zones_in_node(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %0, i1 noundef true, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* noundef nonnull @frag_show_print) #18
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @walk_zones_in_node(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %pgdat, i1 noundef %assert_populated, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* nocapture noundef readonly %print) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  br i1 %assert_populated, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @populated_zone(%struct.zone* noundef %arraydecay) #18
  br i1 %call, label %for.inc, label %for.inc.thread

for.inc.thread:                                   ; preds = %land.lhs.true
  %incdec.ptr5 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  br label %land.lhs.true.1

for.inc:                                          ; preds = %land.lhs.true, %entry
  %rlock.i = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0, i32 19, i32 0, i32 0
  %call8 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #18
  call void %print(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %pgdat, %struct.zone* noundef %arraydecay) #19, !callees !33
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call8) #19
  %incdec.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  br i1 %assert_populated, label %land.lhs.true.1, label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc.thread, %for.inc
  %incdec.ptr7 = phi %struct.zone* [ %incdec.ptr5, %for.inc.thread ], [ %incdec.ptr, %for.inc ]
  %call.1 = call fastcc i1 @populated_zone(%struct.zone* noundef %incdec.ptr7) #18
  br i1 %call.1, label %for.inc.1, label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %land.lhs.true.1
  %incdec.ptr.18 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  br label %land.lhs.true.2

for.inc.1:                                        ; preds = %for.inc, %land.lhs.true.1
  %incdec.ptr6 = phi %struct.zone* [ %incdec.ptr7, %land.lhs.true.1 ], [ %incdec.ptr, %for.inc ]
  %rlock.i.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1, i32 19, i32 0, i32 0
  %call8.1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i.1) #18
  call void %print(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %pgdat, %struct.zone* noundef %incdec.ptr6) #19, !callees !33
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i.1, i64 noundef %call8.1) #19
  %incdec.ptr.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  br i1 %assert_populated, label %land.lhs.true.2, label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1.thread, %for.inc.1
  %incdec.ptr.110 = phi %struct.zone* [ %incdec.ptr.18, %for.inc.1.thread ], [ %incdec.ptr.1, %for.inc.1 ]
  %call.2 = call fastcc i1 @populated_zone(%struct.zone* noundef %incdec.ptr.110) #18
  br i1 %call.2, label %for.inc.2, label %for.inc.2.thread

for.inc.2.thread:                                 ; preds = %land.lhs.true.2
  %incdec.ptr.211 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3
  br label %land.lhs.true.3

for.inc.2:                                        ; preds = %for.inc.1, %land.lhs.true.2
  %incdec.ptr.19 = phi %struct.zone* [ %incdec.ptr.110, %land.lhs.true.2 ], [ %incdec.ptr.1, %for.inc.1 ]
  %rlock.i.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2, i32 19, i32 0, i32 0
  %call8.2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i.2) #18
  call void %print(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %pgdat, %struct.zone* noundef %incdec.ptr.19) #19, !callees !33
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i.2, i64 noundef %call8.2) #19
  %incdec.ptr.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3
  br i1 %assert_populated, label %land.lhs.true.3, label %do.body5.3

land.lhs.true.3:                                  ; preds = %for.inc.2.thread, %for.inc.2
  %incdec.ptr.213 = phi %struct.zone* [ %incdec.ptr.211, %for.inc.2.thread ], [ %incdec.ptr.2, %for.inc.2 ]
  %call.3 = call fastcc i1 @populated_zone(%struct.zone* noundef %incdec.ptr.213) #18
  br i1 %call.3, label %do.body5.3, label %for.inc.3

do.body5.3:                                       ; preds = %land.lhs.true.3, %for.inc.2
  %incdec.ptr.212 = phi %struct.zone* [ %incdec.ptr.213, %land.lhs.true.3 ], [ %incdec.ptr.2, %for.inc.2 ]
  %rlock.i.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3, i32 19, i32 0, i32 0
  %call8.3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i.3) #18
  call void %print(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %pgdat, %struct.zone* noundef %incdec.ptr.212) #19, !callees !33
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i.3, i64 noundef %call8.3) #19
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.body5.3, %land.lhs.true.3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @frag_show_print(%struct.seq_file* noundef %m, %struct.pglist_data* nocapture noundef readonly %pgdat, %struct.zone* nocapture noundef readonly %zone) #0 {
entry:
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 6
  %0 = load i32, i32* %node_id, align 16
  %name = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 13
  %1 = load i8*, i8** %name, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i64 0, i64 0), i32 noundef %0, i8* noundef %1) #19
  %nr_free = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 0, i32 1
  %2 = load i64, i64* %nr_free, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %2) #19
  %nr_free.1 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 1, i32 1
  %3 = load i64, i64* %nr_free.1, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %3) #19
  %nr_free.2 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 2, i32 1
  %4 = load i64, i64* %nr_free.2, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %4) #19
  %nr_free.3 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 3, i32 1
  %5 = load i64, i64* %nr_free.3, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %5) #19
  %nr_free.4 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 4, i32 1
  %6 = load i64, i64* %nr_free.4, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %6) #19
  %nr_free.5 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 5, i32 1
  %7 = load i64, i64* %nr_free.5, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %7) #19
  %nr_free.6 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 6, i32 1
  %8 = load i64, i64* %nr_free.6, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %8) #19
  %nr_free.7 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 7, i32 1
  %9 = load i64, i64* %nr_free.7, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %9) #19
  %nr_free.8 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 8, i32 1
  %10 = load i64, i64* %nr_free.8, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %10) #19
  %nr_free.9 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 9, i32 1
  %11 = load i64, i64* %nr_free.9, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %11) #19
  %nr_free.10 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 10, i32 1
  %12 = load i64, i64* %nr_free.10, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef %12) #19
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #18
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !35

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #21, !srcloc !36
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #21, !srcloc !37
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #18
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #21, !srcloc !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #21, !srcloc !39
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #21, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #21, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pagetypeinfo_show(%struct.seq_file* noundef %m, i8* noundef %arg) #0 {
entry:
  %node_id = getelementptr inbounds i8, i8* %arg, i64 4976
  %0 = bitcast i8* %node_id to i32*
  %1 = load i32, i32* %0, align 16
  %call = call fastcc i32 @node_state(i32 noundef %1) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i64 0, i64 0), i32 noundef 10) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.120, i64 0, i64 0), i64 noundef 1024) #19
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  call fastcc void @pagetypeinfo_showfree(%struct.seq_file* noundef %m, i8* noundef %arg) #18
  call fastcc void @pagetypeinfo_showblockcount(%struct.seq_file* noundef %m, i8* noundef %arg) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @node_state(i32 noundef %node) unnamed_addr #10 {
entry:
  %cmp = icmp eq i32 %node, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagetypeinfo_showfree(%struct.seq_file* noundef %m, i8* noundef %arg) unnamed_addr #0 {
entry:
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.122, i64 0, i64 0)) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 0) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 1) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 2) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 3) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 4) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 5) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 6) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 7) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 8) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 9) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i32 noundef 10) #19
  %0 = bitcast i8* %arg to %struct.pglist_data*
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  call fastcc void @walk_zones_in_node(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %0, i1 noundef true, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* noundef nonnull @pagetypeinfo_showfree_print) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagetypeinfo_showblockcount(%struct.seq_file* noundef %m, i8* noundef %arg) unnamed_addr #0 {
entry:
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.129, i64 0, i64 0)) #19
  %0 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 0), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i8* noundef %0) #19
  %1 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 1), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i8* noundef %1) #19
  %2 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 2), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i8* noundef %2) #19
  %3 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 3), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i8* noundef %3) #19
  %4 = bitcast i8* %arg to %struct.pglist_data*
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  call fastcc void @walk_zones_in_node(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %4, i1 noundef true, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* noundef nonnull @pagetypeinfo_showblockcount_print) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pagetypeinfo_showfree_print(%struct.seq_file* noundef %m, %struct.pglist_data* nocapture noundef readonly %pgdat, %struct.zone* noundef %zone) #0 {
entry:
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 6
  %name = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 13
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 19, i32 0, i32 0
  %0 = load i32, i32* %node_id, align 16
  %1 = load i8*, i8** %name, align 8
  %2 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 0), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i64 0, i64 0), i32 noundef %0, i8* noundef %1, i8* noundef %2) #19
  br label %for.body3

for.body3:                                        ; preds = %entry, %for.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.end ]
  %arrayidx7 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv, i32 0, i64 0
  br label %for.cond8

for.cond8:                                        ; preds = %for.body13, %for.body3
  %freecount.0 = phi i64 [ 0, %for.body3 ], [ %inc, %for.body13 ]
  %arrayidx7.pn = phi %struct.list_head* [ %arrayidx7, %for.body3 ], [ %curr.0, %for.body13 ]
  %curr.0.in = getelementptr inbounds %struct.list_head, %struct.list_head* %arrayidx7.pn, i64 0, i32 0
  %curr.0 = load %struct.list_head*, %struct.list_head** %curr.0.in, align 8
  %cmp12.not = icmp eq %struct.list_head* %curr.0, %arrayidx7
  br i1 %cmp12.not, label %for.end, label %for.body13

for.body13:                                       ; preds = %for.cond8
  %inc = add nuw nsw i64 %freecount.0, 1
  %exitcond = icmp eq i64 %inc, 100000
  br i1 %exitcond, label %for.end, label %for.cond8

for.end:                                          ; preds = %for.body13, %for.cond8
  %freecount.1 = phi i64 [ %freecount.0, %for.cond8 ], [ 100000, %for.body13 ]
  %overflow.0.off0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %for.cond8 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0), %for.body13 ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %overflow.0.off0, i64 noundef %freecount.1) #19
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @_cond_resched() #18
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond46.not, label %for.end19, label %for.body3

for.end19:                                        ; preds = %for.end
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  %3 = load i32, i32* %node_id, align 16
  %4 = load i8*, i8** %name, align 8
  %5 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 1), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i64 0, i64 0), i32 noundef %3, i8* noundef %4, i8* noundef %5) #19
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.end.1, %for.end19
  %indvars.iv.1 = phi i64 [ 0, %for.end19 ], [ %indvars.iv.next.1, %for.end.1 ]
  %arrayidx7.1 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.1, i32 0, i64 1
  br label %for.cond8.1

for.cond8.1:                                      ; preds = %for.body13.1, %for.body3.1
  %freecount.0.1 = phi i64 [ 0, %for.body3.1 ], [ %inc.1, %for.body13.1 ]
  %arrayidx7.pn.1 = phi %struct.list_head* [ %arrayidx7.1, %for.body3.1 ], [ %curr.0.1, %for.body13.1 ]
  %curr.0.in.1 = getelementptr inbounds %struct.list_head, %struct.list_head* %arrayidx7.pn.1, i64 0, i32 0
  %curr.0.1 = load %struct.list_head*, %struct.list_head** %curr.0.in.1, align 8
  %cmp12.not.1 = icmp eq %struct.list_head* %curr.0.1, %arrayidx7.1
  br i1 %cmp12.not.1, label %for.end.1, label %for.body13.1

for.body13.1:                                     ; preds = %for.cond8.1
  %inc.1 = add nuw nsw i64 %freecount.0.1, 1
  %exitcond.1 = icmp eq i64 %inc.1, 100000
  br i1 %exitcond.1, label %for.end.1, label %for.cond8.1

for.end.1:                                        ; preds = %for.body13.1, %for.cond8.1
  %freecount.1.1 = phi i64 [ %freecount.0.1, %for.cond8.1 ], [ 100000, %for.body13.1 ]
  %overflow.0.off0.1 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %for.cond8.1 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0), %for.body13.1 ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %overflow.0.off0.1, i64 noundef %freecount.1.1) #19
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @_cond_resched() #18
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond46.1.not = icmp eq i64 %indvars.iv.next.1, 11
  br i1 %exitcond46.1.not, label %for.end19.1, label %for.body3.1

for.end19.1:                                      ; preds = %for.end.1
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  %6 = load i32, i32* %node_id, align 16
  %7 = load i8*, i8** %name, align 8
  %8 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 2), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i64 0, i64 0), i32 noundef %6, i8* noundef %7, i8* noundef %8) #19
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.end.2, %for.end19.1
  %indvars.iv.2 = phi i64 [ 0, %for.end19.1 ], [ %indvars.iv.next.2, %for.end.2 ]
  %arrayidx7.2 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.2, i32 0, i64 2
  br label %for.cond8.2

for.cond8.2:                                      ; preds = %for.body13.2, %for.body3.2
  %freecount.0.2 = phi i64 [ 0, %for.body3.2 ], [ %inc.2, %for.body13.2 ]
  %arrayidx7.pn.2 = phi %struct.list_head* [ %arrayidx7.2, %for.body3.2 ], [ %curr.0.2, %for.body13.2 ]
  %curr.0.in.2 = getelementptr inbounds %struct.list_head, %struct.list_head* %arrayidx7.pn.2, i64 0, i32 0
  %curr.0.2 = load %struct.list_head*, %struct.list_head** %curr.0.in.2, align 8
  %cmp12.not.2 = icmp eq %struct.list_head* %curr.0.2, %arrayidx7.2
  br i1 %cmp12.not.2, label %for.end.2, label %for.body13.2

for.body13.2:                                     ; preds = %for.cond8.2
  %inc.2 = add nuw nsw i64 %freecount.0.2, 1
  %exitcond.2 = icmp eq i64 %inc.2, 100000
  br i1 %exitcond.2, label %for.end.2, label %for.cond8.2

for.end.2:                                        ; preds = %for.body13.2, %for.cond8.2
  %freecount.1.2 = phi i64 [ %freecount.0.2, %for.cond8.2 ], [ 100000, %for.body13.2 ]
  %overflow.0.off0.2 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %for.cond8.2 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0), %for.body13.2 ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %overflow.0.off0.2, i64 noundef %freecount.1.2) #19
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @_cond_resched() #18
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond46.2.not = icmp eq i64 %indvars.iv.next.2, 11
  br i1 %exitcond46.2.not, label %for.end19.2, label %for.body3.2

for.end19.2:                                      ; preds = %for.end.2
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  %9 = load i32, i32* %node_id, align 16
  %10 = load i8*, i8** %name, align 8
  %11 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @migratetype_names, i64 0, i64 3), align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i64 0, i64 0), i32 noundef %9, i8* noundef %10, i8* noundef %11) #19
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.end.3, %for.end19.2
  %indvars.iv.3 = phi i64 [ 0, %for.end19.2 ], [ %indvars.iv.next.3, %for.end.3 ]
  %arrayidx7.3 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.3, i32 0, i64 3
  br label %for.cond8.3

for.cond8.3:                                      ; preds = %for.body13.3, %for.body3.3
  %freecount.0.3 = phi i64 [ 0, %for.body3.3 ], [ %inc.3, %for.body13.3 ]
  %arrayidx7.pn.3 = phi %struct.list_head* [ %arrayidx7.3, %for.body3.3 ], [ %curr.0.3, %for.body13.3 ]
  %curr.0.in.3 = getelementptr inbounds %struct.list_head, %struct.list_head* %arrayidx7.pn.3, i64 0, i32 0
  %curr.0.3 = load %struct.list_head*, %struct.list_head** %curr.0.in.3, align 8
  %cmp12.not.3 = icmp eq %struct.list_head* %curr.0.3, %arrayidx7.3
  br i1 %cmp12.not.3, label %for.end.3, label %for.body13.3

for.body13.3:                                     ; preds = %for.cond8.3
  %inc.3 = add nuw nsw i64 %freecount.0.3, 1
  %exitcond.3 = icmp eq i64 %inc.3, 100000
  br i1 %exitcond.3, label %for.end.3, label %for.cond8.3

for.end.3:                                        ; preds = %for.body13.3, %for.cond8.3
  %freecount.1.3 = phi i64 [ %freecount.0.3, %for.cond8.3 ], [ 100000, %for.body13.3 ]
  %overflow.0.off0.3 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %for.cond8.3 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0), %for.body13.3 ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %overflow.0.off0.3, i64 noundef %freecount.1.3) #19
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @_cond_resched() #18
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond46.3.not = icmp eq i64 %indvars.iv.next.3, 11
  br i1 %exitcond46.3.not, label %for.end19.3, label %for.body3.3

for.end19.3:                                      ; preds = %for.end.3
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_enable() #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #21, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !45
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !35

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pagetypeinfo_showblockcount_print(%struct.seq_file* noundef %m, %struct.pglist_data* nocapture noundef readonly %pgdat, %struct.zone* noundef readonly %zone) #0 {
entry:
  %count = alloca [4 x i64], align 8
  %zone_start_pfn = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  %0 = load i64, i64* %zone_start_pfn, align 8
  %call = call fastcc i64 @zone_end_pfn(%struct.zone* noundef %zone) #18
  %1 = bitcast [4 x i64]* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %cmp49 = icmp ult i64 %0, %call
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %cleanup
  %pfn.050 = phi i64 [ %add, %cleanup ], [ %0, %entry ]
  %call1 = call i32 @pfn_valid(i64 noundef %pfn.050) #19
  %tobool.not = icmp eq i32 %call1, 0
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr2 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %pfn.050
  %tobool3.not48 = icmp eq %struct.page* %add.ptr2, null
  %tobool3.not = select i1 %tobool.not, i1 true, i1 %tobool3.not48
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %for.body
  %call6 = call fastcc %struct.zone* @page_zone(%struct.page* noundef nonnull %add.ptr2) #18
  %cmp7.not = icmp eq %struct.zone* %call6, %zone
  br i1 %cmp7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end5
  %add.ptr2.idx = shl i64 %pfn.050, 6
  %sub.ptr.div = ashr exact i64 %add.ptr2.idx, 6
  %call13 = call i64 @get_pfnblock_flags_mask(%struct.page* noundef nonnull %add.ptr2, i64 noundef %sub.ptr.div, i64 noundef 7) #19
  %conv = trunc i64 %call13 to i32
  %cmp14 = icmp slt i32 %conv, 4
  br i1 %cmp14, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end9
  %sext = shl i64 %call13, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr [4 x i64], [4 x i64]* %count, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then16, %if.end5, %for.body
  %add = add i64 %pfn.050, 1024
  %cmp = icmp ult i64 %add, %call
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %cleanup
  %arrayidx23.phi.trans.insert = getelementptr inbounds [4 x i64], [4 x i64]* %count, i64 0, i64 0
  %.pre = load i64, i64* %arrayidx23.phi.trans.insert, align 8
  %arrayidx23.1.phi.trans.insert = getelementptr inbounds [4 x i64], [4 x i64]* %count, i64 0, i64 1
  %.pre54 = load i64, i64* %arrayidx23.1.phi.trans.insert, align 8
  %arrayidx23.2.phi.trans.insert = getelementptr inbounds [4 x i64], [4 x i64]* %count, i64 0, i64 2
  %.pre55 = load i64, i64* %arrayidx23.2.phi.trans.insert, align 8
  %arrayidx23.3.phi.trans.insert = getelementptr inbounds [4 x i64], [4 x i64]* %count, i64 0, i64 3
  %.pre56 = load i64, i64* %arrayidx23.3.phi.trans.insert, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %4 = phi i64 [ %.pre56, %for.end.loopexit ], [ 0, %entry ]
  %5 = phi i64 [ %.pre55, %for.end.loopexit ], [ 0, %entry ]
  %6 = phi i64 [ %.pre54, %for.end.loopexit ], [ 0, %entry ]
  %7 = phi i64 [ %.pre, %for.end.loopexit ], [ 0, %entry ]
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 6
  %8 = load i32, i32* %node_id, align 16
  %name = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 13
  %9 = load i8*, i8** %name, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i64 0, i64 0), i32 noundef %8, i8* noundef %9) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i64 0, i64 0), i64 noundef %7) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i64 0, i64 0), i64 noundef %6) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i64 0, i64 0), i64 noundef %5) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i64 0, i64 0), i64 noundef %4) #19
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @zone_end_pfn(%struct.zone* nocapture noundef readonly %zone) unnamed_addr #6 {
entry:
  %zone_start_pfn = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  %0 = load i64, i64* %zone_start_pfn, align 8
  %spanned_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 11
  %1 = load i64, i64* %spanned_pages, align 8
  %add = add i64 %1, %0
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_pfnblock_flags_mask(%struct.page* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @vmstat_start(%struct.seq_file* nocapture noundef %m, i64* nocapture noundef readonly %pos) #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %cmp = icmp sgt i64 %0, 102
  br i1 %cmp, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %call = call fastcc i8* @kmalloc_array() #18
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  store i8* %call, i8** %private, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end
  %1 = bitcast i8* %call to i64*
  %call5 = call fastcc i64 @global_zone_page_state(i32 noundef 0) #18
  store i64 %call5, i64* %1, align 8
  %call5.1 = call fastcc i64 @global_zone_page_state(i32 noundef 1) #18
  %arrayidx.1 = getelementptr i8, i8* %call, i64 8
  %2 = bitcast i8* %arrayidx.1 to i64*
  store i64 %call5.1, i64* %2, align 8
  %call5.2 = call fastcc i64 @global_zone_page_state(i32 noundef 2) #18
  %arrayidx.2 = getelementptr i8, i8* %call, i64 16
  %3 = bitcast i8* %arrayidx.2 to i64*
  store i64 %call5.2, i64* %3, align 8
  %call5.3 = call fastcc i64 @global_zone_page_state(i32 noundef 3) #18
  %arrayidx.3 = getelementptr i8, i8* %call, i64 24
  %4 = bitcast i8* %arrayidx.3 to i64*
  store i64 %call5.3, i64* %4, align 8
  %call5.4 = call fastcc i64 @global_zone_page_state(i32 noundef 4) #18
  %arrayidx.4 = getelementptr i8, i8* %call, i64 32
  %5 = bitcast i8* %arrayidx.4 to i64*
  store i64 %call5.4, i64* %5, align 8
  %call5.5 = call fastcc i64 @global_zone_page_state(i32 noundef 5) #18
  %arrayidx.5 = getelementptr i8, i8* %call, i64 40
  %6 = bitcast i8* %arrayidx.5 to i64*
  store i64 %call5.5, i64* %6, align 8
  %call5.6 = call fastcc i64 @global_zone_page_state(i32 noundef 6) #18
  %arrayidx.6 = getelementptr i8, i8* %call, i64 48
  %7 = bitcast i8* %arrayidx.6 to i64*
  store i64 %call5.6, i64* %7, align 8
  %call5.7 = call fastcc i64 @global_zone_page_state(i32 noundef 7) #18
  %arrayidx.7 = getelementptr i8, i8* %call, i64 56
  %8 = bitcast i8* %arrayidx.7 to i64*
  store i64 %call5.7, i64* %8, align 8
  %call5.8 = call fastcc i64 @global_zone_page_state(i32 noundef 8) #18
  %arrayidx.8 = getelementptr i8, i8* %call, i64 64
  %9 = bitcast i8* %arrayidx.8 to i64*
  store i64 %call5.8, i64* %9, align 8
  %call5.9 = call fastcc i64 @global_zone_page_state(i32 noundef 9) #18
  %arrayidx.9 = getelementptr i8, i8* %call, i64 72
  %10 = bitcast i8* %arrayidx.9 to i64*
  store i64 %call5.9, i64* %10, align 8
  %add.ptr = getelementptr i8, i8* %call, i64 80
  %11 = bitcast i8* %add.ptr to i64*
  br label %for.body8

for.body8:                                        ; preds = %for.body.preheader, %for.body8
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body8 ]
  %12 = trunc i64 %indvars.iv to i32
  %call9 = call fastcc i64 @global_node_page_state_pages(i32 noundef %12) #18
  %arrayidx11 = getelementptr i64, i64* %11, i64 %indvars.iv
  store i64 %call9, i64* %arrayidx11, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %for.end22, label %for.body8

for.end22:                                        ; preds = %for.body8
  %add.ptr23 = getelementptr i8, i8* %call, i64 384
  %13 = bitcast i8* %add.ptr23 to i64*
  %add.ptr24 = getelementptr i8, i8* %call, i64 392
  %14 = bitcast i8* %add.ptr24 to i64*
  call void @global_dirty_limits(i64* noundef %14, i64* noundef %13) #19
  %add.ptr26 = getelementptr i8, i8* %call, i64 400
  %15 = bitcast i8* %add.ptr26 to i64*
  call void @all_vm_events(i64* noundef %15) #18
  %16 = load i64, i64* %15, align 8
  %div28 = lshr i64 %16, 1
  store i64 %div28, i64* %15, align 8
  %arrayidx29 = getelementptr i8, i8* %call, i64 408
  %17 = bitcast i8* %arrayidx29 to i64*
  %18 = load i64, i64* %17, align 8
  %div30 = lshr i64 %18, 1
  store i64 %div30, i64* %17, align 8
  %19 = bitcast i8** %private to i64**
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %pos, align 8
  %add.ptr32 = getelementptr i64, i64* %20, i64 %21
  %22 = bitcast i64* %add.ptr32 to i8*
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry, %for.end22
  %retval.0 = phi i8* [ %22, %for.end22 ], [ null, %entry ], [ inttoptr (i64 -12 to i8*), %do.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @vmstat_stop(%struct.seq_file* nocapture noundef %m, i8* nocapture noundef readnone %arg) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = load i8*, i8** %private, align 8
  call void @kfree(i8* noundef %0) #19
  store i8* null, i8** %private, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i8* @vmstat_next(%struct.seq_file* nocapture noundef readonly %m, i8* nocapture noundef readnone %arg, i64* nocapture noundef %pos) #15 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  %cmp = icmp sgt i64 %inc, 102
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %1 = bitcast i8** %private to i64**
  %2 = load i64*, i64** %1, align 8
  %add.ptr = getelementptr i64, i64* %2, i64 %inc
  %3 = bitcast i64* %add.ptr to i8*
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %3, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vmstat_show(%struct.seq_file* noundef %m, i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i64*
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %1 = bitcast i8** %private to i64**
  %2 = load i64*, i64** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %arg to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %arrayidx = getelementptr [103 x i8*], [103 x i8*]* @vmstat_text, i64 0, i64 %sub.ptr.div
  %3 = load i8*, i8** %arrayidx, align 8
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %3) #19
  %4 = load i64, i64* %0, align 8
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0), i64 noundef %4) #19
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  %cmp = icmp eq i64 %sub.ptr.sub, 816
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.133, i64 0, i64 0)) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmalloc_array() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 10), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #19
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_zone_page_state(i32 noundef %item) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state_pages(i32 noundef %item) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @global_dirty_limits(i64* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @zoneinfo_show(%struct.seq_file* noundef %m, i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.pglist_data*
  call fastcc void @walk_zones_in_node(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %0, i1 noundef false, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* noundef nonnull @zoneinfo_show_print) #18
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @zoneinfo_show_print(%struct.seq_file* noundef %m, %struct.pglist_data* noundef %pgdat, %struct.zone* noundef %zone) #0 {
entry:
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 6
  %0 = load i32, i32* %node_id, align 16
  %name = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 13
  %1 = load i8*, i8** %name, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i64 0, i64 0), i32 noundef %0, i8* noundef %1) #19
  %call = call fastcc i1 @is_zone_first_populated(%struct.pglist_data* noundef %pgdat, %struct.zone* noundef %zone) #18
  br i1 %call, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.135, i64 0, i64 0)) #19
  br label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %i.0129 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  %call1 = call fastcc i64 @global_node_page_state_pages(i32 noundef %i.0129) #18
  %call4 = call fastcc i8* @node_stat_name(i32 noundef %i.0129) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call4, i64 noundef %call1) #19
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 38
  br i1 %exitcond.not, label %if.end5, label %for.body

if.end5:                                          ; preds = %for.body, %entry
  %call6 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 0) #18
  %arrayidx = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 0, i64 0
  %2 = load i64, i64* %arrayidx, align 64
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 1
  %3 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %3, %2
  %arrayidx8 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 0, i64 1
  %4 = load i64, i64* %arrayidx8, align 8
  %add10 = add i64 %4, %3
  %arrayidx12 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx12, align 16
  %add14 = add i64 %5, %3
  %spanned_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 11
  %6 = load i64, i64* %spanned_pages, align 8
  %present_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 12
  %7 = load i64, i64* %present_pages, align 64
  %call15 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([169 x i8], [169 x i8]* @.str.137, i64 0, i64 0), i64 noundef %call6, i64 noundef %add, i64 noundef %add10, i64 noundef %add14, i64 noundef %6, i64 noundef %7, i64 noundef %call15, i64 noundef 0) #19
  %arrayidx17 = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 3, i64 0
  %8 = load i64, i64* %arrayidx17, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.138, i64 0, i64 0), i64 noundef %8) #19
  %arrayidx24 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 3, i64 1
  %9 = load i64, i64* %arrayidx24, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i64 0, i64 0), i64 noundef %9) #19
  %arrayidx24.1 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 3, i64 2
  %10 = load i64, i64* %arrayidx24.1, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i64 0, i64 0), i64 noundef %10) #19
  %arrayidx24.2 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 3, i64 3
  %11 = load i64, i64* %arrayidx24.2, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i64 0, i64 0), i64 noundef %11) #19
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 41) #19
  %call28 = call fastcc i1 @populated_zone(%struct.zone* noundef %zone) #18
  br i1 %call28, label %for.body34.preheader, label %cleanup

for.body34.preheader:                             ; preds = %if.end5
  %call35 = call fastcc i8* @zone_stat_name(i32 noundef 0) #18
  %call36 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 0) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35, i64 noundef %call36) #19
  %call35.1 = call fastcc i8* @zone_stat_name(i32 noundef 1) #18
  %call36.1 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 1) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.1, i64 noundef %call36.1) #19
  %call35.2 = call fastcc i8* @zone_stat_name(i32 noundef 2) #18
  %call36.2 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 2) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.2, i64 noundef %call36.2) #19
  %call35.3 = call fastcc i8* @zone_stat_name(i32 noundef 3) #18
  %call36.3 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 3) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.3, i64 noundef %call36.3) #19
  %call35.4 = call fastcc i8* @zone_stat_name(i32 noundef 4) #18
  %call36.4 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 4) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.4, i64 noundef %call36.4) #19
  %call35.5 = call fastcc i8* @zone_stat_name(i32 noundef 5) #18
  %call36.5 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 5) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.5, i64 noundef %call36.5) #19
  %call35.6 = call fastcc i8* @zone_stat_name(i32 noundef 6) #18
  %call36.6 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 6) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.6, i64 noundef %call36.6) #19
  %call35.7 = call fastcc i8* @zone_stat_name(i32 noundef 7) #18
  %call36.7 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 7) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.7, i64 noundef %call36.7) #19
  %call35.8 = call fastcc i8* @zone_stat_name(i32 noundef 8) #18
  %call36.8 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 8) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.8, i64 noundef %call36.8) #19
  %call35.9 = call fastcc i8* @zone_stat_name(i32 noundef 9) #18
  %call36.9 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef 9) #18
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call35.9, i64 noundef %call36.9) #19
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i64 0, i64 0)) #19
  %call41132 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %cmp42133 = icmp ult i32 %call41132, %12
  br i1 %cmp42133, label %for.body44.lr.ph, label %for.end64

for.body44.lr.ph:                                 ; preds = %for.body34.preheader
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  br label %for.body44

for.body44:                                       ; preds = %for.body44.lr.ph, %for.body44
  %call41134 = phi i32 [ %call41132, %for.body44.lr.ph ], [ %call41, %for.body44 ]
  %13 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %14 = ptrtoint %struct.per_cpu_pages* %13 to i64
  %idxprom50 = sext i32 %call41134 to i64
  %arrayidx51 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom50
  %15 = load i64, i64* %arrayidx51, align 8
  %add52 = add i64 %15, %14
  %16 = inttoptr i64 %add52 to %struct.per_cpu_pages*
  %count = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %16, i64 0, i32 0
  %17 = load i32, i32* %count, align 8
  %high = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %16, i64 0, i32 1
  %18 = load i32, i32* %high, align 4
  %batch = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %16, i64 0, i32 2
  %19 = load i32, i32* %batch, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.141, i64 0, i64 0), i32 noundef %call41134, i32 noundef %17, i32 noundef %18, i32 noundef %19) #19
  %20 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %21 = ptrtoint %struct.per_cpu_zonestat* %20 to i64
  %22 = load i64, i64* %arrayidx51, align 8
  %add62 = add i64 %22, %21
  %23 = inttoptr i64 %add62 to %struct.per_cpu_zonestat*
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %23, i64 0, i32 1
  %24 = load i8, i8* %stat_threshold, align 1
  %conv63 = sext i8 %24 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.142, i64 0, i64 0), i32 noundef %conv63) #19
  %call41 = call i32 @cpumask_next(i32 noundef %call41134, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %25 = load i32, i32* @nr_cpu_ids, align 4
  %cmp42 = icmp ult i32 %call41, %25
  br i1 %cmp42, label %for.body44, label %for.end64

for.end64:                                        ; preds = %for.body44, %for.body34.preheader
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 12
  %26 = load i32, i32* %kswapd_failures, align 8
  %cmp65 = icmp sgt i32 %26, 15
  %conv66 = zext i1 %cmp65 to i32
  %zone_start_pfn = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  %27 = load i64, i64* %zone_start_pfn, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.143, i64 0, i64 0), i32 noundef %conv66, i64 noundef %27) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.end64
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @is_zone_first_populated(%struct.pglist_data* noundef readonly %pgdat, %struct.zone* noundef readnone %zone) unnamed_addr #16 {
entry:
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  %call = call fastcc i1 @populated_zone(%struct.zone* noundef %arrayidx) #18
  br i1 %call, label %cleanup2.split.loop.exit8, label %for.cond

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  %call.1 = call fastcc i1 @populated_zone(%struct.zone* noundef %arrayidx.1) #18
  br i1 %call.1, label %cleanup2.split.loop.exit8, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  %call.2 = call fastcc i1 @populated_zone(%struct.zone* noundef %arrayidx.2) #18
  br i1 %call.2, label %cleanup2.split.loop.exit8, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3
  %call.3 = call fastcc i1 @populated_zone(%struct.zone* noundef %arrayidx.3) #18
  br i1 %call.3, label %cleanup2.split.loop.exit8, label %cleanup2

cleanup2.split.loop.exit8:                        ; preds = %for.cond.2, %for.cond.1, %for.cond, %entry
  %arrayidx.lcssa = phi %struct.zone* [ %arrayidx, %entry ], [ %arrayidx.1, %for.cond ], [ %arrayidx.2, %for.cond.1 ], [ %arrayidx.3, %for.cond.2 ]
  %cmp1.le = icmp eq %struct.zone* %arrayidx.lcssa, %zone
  br label %cleanup2

cleanup2:                                         ; preds = %for.cond.2, %cleanup2.split.loop.exit8
  %retval.2 = phi i1 [ %cmp1.le, %cleanup2.split.loop.exit8 ], [ false, %for.cond.2 ]
  ret i1 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef %item) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 26, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #21 = { nounwind }
attributes #22 = { nounwind readonly }
attributes #23 = { cold nobuiltin nounwind "no-builtins" }
attributes #24 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2152555552}
!9 = !{i64 2152556504}
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149160302, i64 2149160349, i64 2149160355, i64 2149160392, i64 2149160410, i64 2149161337, i64 2149161385, i64 2149161433, i64 2149161496, i64 2149161545, i64 2149160488, i64 2149160513, i64 2149160539, i64 2149160545, i64 2149160582, i64 2149160588, i64 2149160638, i64 2149160684, i64 2149160717}
!13 = !{i64 2155277977}
!14 = !{i64 2155278849}
!15 = !{i64 2155283685}
!16 = !{i64 2155284387}
!17 = !{i64 2155293003}
!18 = !{i64 2155294928}
!19 = !{i64 2155303692}
!20 = !{i64 2155304564}
!21 = !{i64 2155309400}
!22 = !{i64 2155310102}
!23 = !{i64 2155318718}
!24 = !{i64 2155320643}
!25 = !{i64 2155329323}
!26 = !{i64 2155331642}
!27 = !{i64 2155341346}
!28 = !{i64 2155343645}
!29 = !{i64 2149186248, i64 2149186289, i64 2149186345, i64 2149186397}
!30 = !{i64 2148070151, i64 2148070184, i64 2148070237, i64 2148070296, i64 2148070330, i64 2148070386, i64 2148070415, i64 2148070435}
!31 = !{i64 2148024766, i64 2148025280, i64 2148025310, i64 2148025336, i64 2148025368, i64 2148025397}
!32 = !{i64 2148102676, i64 2148102708, i64 2148102754, i64 2148102802, i64 2148102828}
!33 = !{void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* @frag_show_print, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* @pagetypeinfo_showblockcount_print, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* @pagetypeinfo_showfree_print, void (%struct.seq_file*, %struct.pglist_data*, %struct.zone*)* @zoneinfo_show_print}
!34 = !{i64 2149572156}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2149137983, i64 2149138030, i64 2149138036, i64 2149138073, i64 2149138091, i64 2149139402, i64 2149139450, i64 2149139498, i64 2149139561, i64 2149139610, i64 2149138169, i64 2149138194, i64 2149138220, i64 2149138226, i64 2149139068, i64 2149139108, i64 2149139126, i64 2149139158, i64 2149139186, i64 2149139240, i64 2149139260, i64 2149139357, i64 2149138249, i64 2149138263, i64 2149138269, i64 2149138319, i64 2149138365, i64 2149138398}
!37 = !{i64 2149140162, i64 2149140209, i64 2149140215, i64 2149140252, i64 2149140270, i64 2149141213, i64 2149141261, i64 2149141309, i64 2149141372, i64 2149141421, i64 2149140348, i64 2149140373, i64 2149140399, i64 2149140405, i64 2149140442, i64 2149140448, i64 2149140498, i64 2149140544, i64 2149140577}
!38 = !{i64 2149132280, i64 2149132327, i64 2149132333, i64 2149132370, i64 2149132388, i64 2149133729, i64 2149133777, i64 2149133825, i64 2149133888, i64 2149133937, i64 2149132466, i64 2149132491, i64 2149132517, i64 2149132523, i64 2149133395, i64 2149133435, i64 2149133453, i64 2149133485, i64 2149133513, i64 2149133567, i64 2149133587, i64 2149133684, i64 2149132546, i64 2149132560, i64 2149132566, i64 2149132616, i64 2149132662, i64 2149132695}
!39 = !{i64 2148079942, i64 2148079975, i64 2148080028, i64 2148080087, i64 2148080121, i64 2148080176, i64 2148080205, i64 2148080225}
!40 = !{i64 2149597999}
!41 = !{i64 2149386668}
!42 = !{i64 2149143996, i64 2149144043, i64 2149144049, i64 2149144086, i64 2149144104, i64 2149149476, i64 2149149524, i64 2149149572, i64 2149149635, i64 2149149684, i64 2149144182, i64 2149144207, i64 2149144233, i64 2149144239, i64 2149149142, i64 2149149182, i64 2149149200, i64 2149149232, i64 2149149260, i64 2149149314, i64 2149149334, i64 2149149431, i64 2149144262, i64 2149144276, i64 2149144282, i64 2149144332, i64 2149144378, i64 2149144411}
!43 = !{i64 2149601302}
!44 = !{i64 2149122824, i64 2149122871, i64 2149122877, i64 2149122914, i64 2149122932, i64 2149124272, i64 2149124320, i64 2149124368, i64 2149124431, i64 2149124480, i64 2149123010, i64 2149123035, i64 2149123061, i64 2149123067, i64 2149123938, i64 2149123978, i64 2149123996, i64 2149124028, i64 2149124056, i64 2149124110, i64 2149124130, i64 2149124227, i64 2149123090, i64 2149123104, i64 2149123110, i64 2149123160, i64 2149123206, i64 2149123239}
!45 = !{i64 2149576449}
