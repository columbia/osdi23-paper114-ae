; ModuleID = 'drivers/char/random.c'
source_filename = "drivers/char/random.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.entropy_store = type { %struct.poolinfo*, i32*, i8*, %struct.spinlock, i16, i16, i32, i8, [10 x i8] }
%struct.poolinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.timer_rand_state = type { i64, i64, i64 }
%struct.fast_pool = type { [4 x i32], i64, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.crng_state = type { [16 x i32], i64, %struct.spinlock }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.file = type { %union.anon.9, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.69, i32 }
%union.anon.69 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.42, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.42 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.26, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.25, [0 x i64] }
%struct.anon.25 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.58, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.29 }
%union.anon.29 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.76, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.76 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.12, %union.anon.62, %struct.atomic_t, [8 x i8] }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.62 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.43, %union.anon.44, i32 }
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
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.57, i32, [12 x i8] }
%union.anon.57 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.59, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.59 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.26 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.27, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.28, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.27 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.28 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, {}*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
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
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38, [48 x i8] }
%struct.anon.38 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.75, i32, i8* }
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.75 = type { %struct.pipe_inode_info* }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.65, %struct.qspinlock }
%union.anon.65 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.10 }
%union.anon.10 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.11, %union.anon.63 }
%union.anon.11 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.63 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.67 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.67 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.batched_entropy = type { %union.anon.83, i32, %struct.spinlock }
%union.anon.83 = type { [8 x i64] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.3, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.3 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.anon.85 = type { i64, i32, i32 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.anon.88 = type { i64, %struct.timer_list }
%struct.random_ready_callback = type { %struct.list_head, void (%struct.random_ready_callback*)*, %struct.module* }
%union.anon.86 = type { [8 x i32], [32 x i8] }
%union.anon.87 = type { [3 x i64] }

@__param_str_ratelimit_disable = internal constant [25 x i8] c"random.ratelimit_disable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@ratelimit_disable = internal global i32 0, section ".data..read_mostly", align 4
@__param_ratelimit_disable = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_ratelimit_disable, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @ratelimit_disable to i8*) } }, section "__param", align 8
@__UNIQUE_ID_ratelimit_disabletype417 = internal constant [38 x i8] c"random.parmtype=ratelimit_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ratelimit_disable418 = internal constant [67 x i8] c"random.parm=ratelimit_disable:Disable random ratelimit suppression\00", section ".modinfo", align 1
@__setup_str_parse_trust_cpu = internal constant [17 x i8] c"random.trust_cpu\00", section ".init.rodata", align 1
@__setup_parse_trust_cpu = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_parse_trust_cpu, i32 0, i32 0), i32 (i8*)* @parse_trust_cpu, i32 1 }, section ".init.setup", align 8
@arch_timer_read_counter = external dso_local local_unnamed_addr global i64 ()*, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@crng_init = internal unnamed_addr global i32 0, align 4
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@input_pool = internal global %struct.entropy_store { %struct.poolinfo* getelementptr inbounds ([1 x %struct.poolinfo], [1 x %struct.poolinfo]* @poolinfo_table, i32 0, i32 0), i32* getelementptr inbounds ([128 x i32], [128 x i32]* @input_pool_data, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct.spinlock zeroinitializer, i16 0, i16 0, i32 0, i8 0, [10 x i8] zeroinitializer }, align 8
@add_input_randomness.last_value = internal unnamed_addr global i8 0, align 4
@input_timer_state = internal global %struct.timer_rand_state { i64 4294892296, i64 0, i64 0 }, align 8
@irq_randomness = internal global %struct.fast_pool zeroinitializer, section ".data..percpu", align 8
@get_random_bytes.previous = internal global i8* null, align 8
@__func__.get_random_bytes = private unnamed_addr constant [17 x i8] c"get_random_bytes\00", align 1
@crng_init_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @crng_init_wait to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @crng_init_wait to i8*), i64 8) to %struct.list_head*) } }, align 8
@random_ready_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@random_ready_list = internal global %struct.list_head { %struct.list_head* @random_ready_list, %struct.list_head* @random_ready_list }, align 8
@primary_crng = internal global %struct.crng_state zeroinitializer, align 8
@crng_global_init_time = internal unnamed_addr global i64 0, align 8
@urandom_warning = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 250, i32 3, i32 0, i32 0, i64 0, i64 0 }, align 8
@unseeded_warning = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 250, i32 3, i32 0, i32 0, i64 0, i64 0 }, align 8
@random_fops = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* @random_read, i64 (%struct.file*, i8*, i64, i64*)* @random_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @random_poll, i64 (%struct.file*, i32, i64)* @random_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @random_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@urandom_fops = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* @urandom_read, i64 (%struct.file*, i8*, i64, i64*)* @random_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @random_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @random_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"poolsize\00", align 1
@sysctl_poolsize = internal global i32 4096, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"entropy_avail\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"write_wakeup_threshold\00", align 1
@random_write_wakeup_bits = internal global i32 896, align 4
@min_write_thresh = internal global i32 0, align 4
@max_write_thresh = internal global i32 4096, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"urandom_min_reseed_secs\00", align 1
@random_min_urandom_seed = internal global i32 60, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"boot_id\00", align 1
@sysctl_bootid = internal global [16 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@random_table = dso_local local_unnamed_addr global [7 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @sysctl_poolsize to i8*), i32 4, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.entropy_store* @input_pool to i8*), i64 32), i32 4, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_entropy, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* bitcast (i32* @random_write_wakeup_bits to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @min_write_thresh to i8*), i8* bitcast (i32* @max_write_thresh to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* bitcast (i32* @random_min_urandom_seed to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sysctl_bootid, i32 0, i32 0), i32 16, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_uuid, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i32 16, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_uuid, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@get_random_u64.previous = internal global i8* null, align 8
@__func__.get_random_u64 = private unnamed_addr constant [15 x i8] c"get_random_u64\00", align 1
@batched_entropy_u64 = internal global %struct.batched_entropy zeroinitializer, section ".data..percpu", align 8
@get_random_u32.previous = internal global i8* null, align 8
@__func__.get_random_u32 = private unnamed_addr constant [15 x i8] c"get_random_u32\00", align 1
@batched_entropy_u32 = internal global %struct.batched_entropy zeroinitializer, section ".data..percpu", align 8
@random_write_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @random_write_wait to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @random_write_wait to i8*), i64 8) to %struct.list_head*) } }, align 8
@trust_cpu = internal global i8 0, section ".data..ro_after_init", align 1
@crng_slow_load.lfsr = internal unnamed_addr global i8 1, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@poolinfo_table = internal constant [1 x %struct.poolinfo] [%struct.poolinfo { i32 12, i32 128, i32 512, i32 32768, i32 104, i32 76, i32 51, i32 25, i32 1 }], align 4
@input_pool_data = internal global [128 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@twist_table = internal unnamed_addr constant [8 x i32] [i32 0, i32 997073096, i32 1994146192, i32 1303535960, i32 -306674912, i32 -690576408, i32 -1687895376, i32 -1609899400], align 4
@__irq_regs = external dso_local global %struct.pt_regs*, section ".data..percpu", align 8
@crng_init_cnt = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"\015random: fast init done\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.9 = private unnamed_addr constant [55 x i8] c"\014random: negative entropy/overflow: pool %s count %d\0A\00", align 1
@fasync = internal global %struct.fasync_struct* null, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"\015random: crng init done\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"\015random: %d get_random_xx warning(s) missed due to ratelimiting\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"\015random: %d urandom warning(s) missed due to ratelimiting\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"\014random: negative entropy count: pool %s count %d\0A\00", align 1
@_warn_unseeded_randomness.print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@__func__._warn_unseeded_randomness = private unnamed_addr constant [26 x i8] c"_warn_unseeded_randomness\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"\015random: %s called from %pS with crng_init=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"\015random: crng done (trusting CPU's manufacturer)\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@urandom_read.maxwarn = internal unnamed_addr global i32 10, align 4
@__func__.urandom_read = private unnamed_addr constant [13 x i8] c"urandom_read\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"\015random: %s: uninitialized urandom read (%zd bytes read)\0A\00", align 1
@proc_do_uuid.bootid_spinlock = internal global %struct.spinlock zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"%pU\00", align 1
@llvm.compiler.used = appending global [4 x i8*] [i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__UNIQUE_ID_ratelimit_disable418, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_ratelimit_disabletype417, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_ratelimit_disable to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_parse_trust_cpu to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @parse_trust_cpu(i8* noundef %arg) #0 section ".init.text" {
entry:
  %call = call i32 @kstrtobool(i8* noundef %arg, i8* noundef nonnull @trust_cpu) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_device_randomness(i8* nocapture noundef readonly %buf, i32 noundef %size) local_unnamed_addr #1 {
entry:
  %time = alloca i64, align 8
  %0 = bitcast i64* %time to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call = call i64 %1() #20
  %2 = load volatile i64, i64* @jiffies, align 64
  %xor = xor i64 %2, %call
  store i64 %xor, i64* %time, align 8
  %3 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %cond.end, label %land.lhs.true, !prof !8

land.lhs.true:                                    ; preds = %entry
  %tobool2.not = icmp eq i32 %size, 0
  br i1 %tobool2.not, label %cond.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %conv3 = zext i32 %size to i64
  call fastcc void @crng_slow_load(i8* noundef %buf, i64 noundef %conv3) #22
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %if.then
  %call18 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0)) #22
  call fastcc void @_mix_pool_bytes(i8* noundef %buf, i32 noundef %size) #22
  call fastcc void @_mix_pool_bytes(i8* noundef nonnull %0, i32 noundef 8) #22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0), i64 noundef %call18) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @crng_slow_load(i8* nocapture noundef readonly %cp, i64 noundef %len) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #22
  %call8 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0)) #22
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %do.body10, label %if.end

do.body10:                                        ; preds = %entry
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @crng_init, align 4
  %cmp25.not = icmp eq i32 %0, 0
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call) #20
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %1 = icmp ugt i64 %len, 32
  %spec.select4 = select i1 %1, i64 %len, i64 32
  %2 = trunc i64 %spec.select4 to i32
  %cmp356.not = icmp eq i32 %2, 0
  br i1 %cmp356.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end28
  %crng_slow_load.lfsr.promoted = load i8, i8* @crng_slow_load.lfsr, align 4
  %wide.trip.count = and i64 %spec.select4, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %spec.select357 = phi i8 [ %crng_slow_load.lfsr.promoted, %for.body.preheader ], [ %add, %for.body ]
  %3 = lshr i8 %spec.select357, 1
  %4 = and i8 %spec.select357, 1
  %tobool40.not = icmp eq i8 %4, 0
  %5 = xor i8 %3, -31
  %spec.select3 = select i1 %tobool40.not, i8 %3, i8 %5
  %rem = and i64 %indvars.iv, 31
  %arrayidx = getelementptr i8, i8* bitcast (i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 4) to i8*), i64 %rem
  %6 = load i8, i8* %arrayidx, align 1
  %rem46 = urem i64 %indvars.iv, %len
  %arrayidx47 = getelementptr i8, i8* %cp, i64 %rem46
  %7 = load i8, i8* %arrayidx47, align 1
  %xor501 = xor i8 %spec.select3, %6
  %xor552 = xor i8 %xor501, %7
  store i8 %xor552, i8* %arrayidx, align 1
  %or = call i8 @llvm.fshl.i8(i8 %6, i8 %6, i8 3)
  %add = add i8 %or, %spec.select3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i8 %add, i8* @crng_slow_load.lfsr, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end28
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %for.end, %if.then27
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #22
  ret i64 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @_mix_pool_bytes(i8* nocapture noundef readonly %in, i32 noundef %nbytes) unnamed_addr #4 {
entry:
  %0 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %tap12 = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 4
  %1 = load i32, i32* %tap12, align 4
  %conv = sext i32 %1 to i64
  %tap24 = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 5
  %2 = load i32, i32* %tap24, align 4
  %conv5 = sext i32 %2 to i64
  %tap37 = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 6
  %3 = load i32, i32* %tap37, align 4
  %conv8 = sext i32 %3 to i64
  %tap410 = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 7
  %4 = load i32, i32* %tap410, align 4
  %conv11 = sext i32 %4 to i64
  %tap513 = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 8
  %5 = load i32, i32* %tap513, align 4
  %conv14 = sext i32 %5 to i64
  %6 = load i16, i16* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 5), align 2
  %conv16 = zext i16 %6 to i32
  %7 = load i16, i16* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 4), align 4
  %conv17 = zext i16 %7 to i64
  %tobool.not1 = icmp eq i32 %nbytes, 0
  br i1 %tobool.not1, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %poolwords = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 1
  %8 = load i32, i32* %poolwords, align 4
  %sub = add i32 %8, -1
  %conv20 = sext i32 %sub to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %bytes.05 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %input_rotate.04 = phi i32 [ %conv16, %while.body.lr.ph ], [ %and57, %while.body ]
  %i.03 = phi i64 [ %conv17, %while.body.lr.ph ], [ %and, %while.body ]
  %nbytes.addr.02 = phi i32 [ %nbytes, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i32 %nbytes.addr.02, -1
  %incdec.ptr = getelementptr i8, i8* %bytes.05, i64 1
  %9 = load i8, i8* %bytes.05, align 1
  %conv18 = zext i8 %9 to i32
  %call = call fastcc i32 @rol32(i32 noundef %conv18, i32 noundef %input_rotate.04) #22
  %sub19 = add i64 %i.03, -1
  %and = and i64 %sub19, %conv20
  %10 = load i32*, i32** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 1), align 8
  %arrayidx = getelementptr i32, i32* %10, i64 %and
  %11 = load i32, i32* %arrayidx, align 4
  %xor = xor i32 %11, %call
  %add = add i64 %and, %conv
  %and23 = and i64 %add, %conv20
  %arrayidx24 = getelementptr i32, i32* %10, i64 %and23
  %12 = load i32, i32* %arrayidx24, align 4
  %xor25 = xor i32 %xor, %12
  %add27 = add i64 %and, %conv5
  %and29 = and i64 %add27, %conv20
  %arrayidx30 = getelementptr i32, i32* %10, i64 %and29
  %13 = load i32, i32* %arrayidx30, align 4
  %xor31 = xor i32 %xor25, %13
  %add33 = add i64 %and, %conv8
  %and35 = and i64 %add33, %conv20
  %arrayidx36 = getelementptr i32, i32* %10, i64 %and35
  %14 = load i32, i32* %arrayidx36, align 4
  %xor37 = xor i32 %xor31, %14
  %add39 = add i64 %and, %conv11
  %and41 = and i64 %add39, %conv20
  %arrayidx42 = getelementptr i32, i32* %10, i64 %and41
  %15 = load i32, i32* %arrayidx42, align 4
  %xor43 = xor i32 %xor37, %15
  %add45 = add i64 %and, %conv14
  %and47 = and i64 %add45, %conv20
  %arrayidx48 = getelementptr i32, i32* %10, i64 %and47
  %16 = load i32, i32* %arrayidx48, align 4
  %xor49 = xor i32 %xor43, %16
  %shr = lshr i32 %xor49, 3
  %and50 = and i32 %xor49, 7
  %idxprom = zext i32 %and50 to i64
  %arrayidx51 = getelementptr [8 x i32], [8 x i32]* @twist_table, i64 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx51, align 4
  %xor52 = xor i32 %shr, %17
  store i32 %xor52, i32* %arrayidx, align 4
  %tobool55.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool55.not, i32 14, i32 7
  %add56 = add nuw nsw i32 %cond, %input_rotate.04
  %and57 = and i32 %add56, 31
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %i.0.lcssa = phi i64 [ %conv17, %entry ], [ %and, %while.body ]
  %input_rotate.0.lcssa = phi i32 [ %conv16, %entry ], [ %and57, %while.body ]
  %conv58 = trunc i32 %input_rotate.0.lcssa to i16
  store i16 %conv58, i16* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 5), align 2
  %conv60 = trunc i64 %i.0.lcssa to i16
  store i16 %conv60, i16* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 4), align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_input_randomness(i32 noundef %type, i32 noundef %code, i32 noundef %value) local_unnamed_addr #1 {
entry:
  %0 = load i8, i8* @add_input_randomness.last_value, align 4
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %value
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv2 = trunc i32 %value to i8
  store i8 %conv2, i8* @add_input_randomness.last_value, align 4
  %shl = shl i32 %type, 4
  %xor = xor i32 %shl, %code
  %shr = lshr i32 %code, 4
  %xor3 = xor i32 %xor, %shr
  %xor4 = xor i32 %xor3, %value
  call fastcc void @add_timer_randomness(%struct.timer_rand_state* noundef nonnull @input_timer_state, i32 noundef %xor4) #22
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_timer_randomness(%struct.timer_rand_state* noundef %state, i32 noundef %num) unnamed_addr #1 {
entry:
  %sample = alloca %struct.anon.85, align 8
  %0 = bitcast %struct.anon.85* %sample to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %1 = load volatile i64, i64* @jiffies, align 64
  %jiffies = getelementptr inbounds %struct.anon.85, %struct.anon.85* %sample, i64 0, i32 0
  store i64 %1, i64* %jiffies, align 8
  %2 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call = call i64 %2() #20
  %conv = trunc i64 %call to i32
  %cycles = getelementptr inbounds %struct.anon.85, %struct.anon.85* %sample, i64 0, i32 1
  store i32 %conv, i32* %cycles, align 8
  %num1 = getelementptr inbounds %struct.anon.85, %struct.anon.85* %sample, i64 0, i32 2
  store i32 %num, i32* %num1, align 4
  call fastcc void @mix_pool_bytes(i8* noundef nonnull %0, i32 noundef 16) #22
  %last_time = getelementptr inbounds %struct.timer_rand_state, %struct.timer_rand_state* %state, i64 0, i32 0
  %3 = load volatile i64, i64* %last_time, align 8
  %sub = sub i64 %1, %3
  store volatile i64 %1, i64* %last_time, align 8
  %last_delta = getelementptr inbounds %struct.timer_rand_state, %struct.timer_rand_state* %state, i64 0, i32 1
  %4 = load volatile i64, i64* %last_delta, align 8
  %sub18 = sub i64 %sub, %4
  store volatile i64 %sub, i64* %last_delta, align 8
  %last_delta2 = getelementptr inbounds %struct.timer_rand_state, %struct.timer_rand_state* %state, i64 0, i32 2
  %5 = load volatile i64, i64* %last_delta2, align 8
  %sub33 = sub i64 %sub18, %5
  store volatile i64 %sub18, i64* %last_delta2, align 8
  %6 = call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %7 = call i64 @llvm.abs.i64(i64 %sub18, i1 false)
  %8 = call i64 @llvm.abs.i64(i64 %sub33, i1 false)
  %cmp56 = icmp sgt i64 %6, %7
  %delta.1 = select i1 %cmp56, i64 %7, i64 %6
  %cmp60 = icmp sgt i64 %delta.1, %8
  %delta.2 = select i1 %cmp60, i64 %8, i64 %delta.1
  %9 = lshr i64 %delta.2, 1
  %conv64 = trunc i64 %9 to i32
  %tobool.not.i = icmp eq i32 %conv64, 0
  %10 = call i32 @llvm.ctlz.i32(i32 %conv64, i1 false) #21, !range !10
  %narrow.i = sub nuw nsw i32 32, %10
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  %cmp67 = icmp ult i32 %narrow3.i, 11
  %cond = select i1 %cmp67, i32 %narrow3.i, i32 11
  call fastcc void @credit_entropy_bits(i32 noundef %cond) #22
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_interrupt_randomness(i32 noundef %irq, i32 noundef %irq_flags) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.fast_pool* @irq_randomness to i64)
  %0 = inttoptr i64 %add to %struct.fast_pool*
  %call2 = call fastcc %struct.pt_regs* @get_irq_regs() #22
  %1 = load volatile i64, i64* @jiffies, align 64
  %2 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call3 = call i64 %2() #20
  %cmp = icmp eq i64 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i32 @get_reg(%struct.fast_pool* noundef %0, %struct.pt_regs* noundef %call2) #22
  %conv = zext i32 %call4 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cycles.0 = phi i64 [ %conv, %if.then ], [ %call3, %entry ]
  %shr = lshr i64 %cycles.0, 32
  %shr6 = lshr i64 %1, 32
  %xor = xor i64 %cycles.0, %shr6
  %arrayidx = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 8
  %4 = trunc i64 %xor to i32
  %5 = xor i32 %3, %irq
  %conv13 = xor i32 %5, %4
  store i32 %conv13, i32* %arrayidx, align 8
  %xor15 = xor i64 %shr, %1
  %arrayidx17 = getelementptr %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 0, i64 1
  %6 = load i32, i32* %arrayidx17, align 4
  %7 = trunc i64 %xor15 to i32
  %conv20 = xor i32 %6, %7
  store i32 %conv20, i32* %arrayidx17, align 4
  %tobool.not = icmp eq %struct.pt_regs* %call2, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %call21 = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef nonnull %call2) #22
  br label %cond.end34

cond.false:                                       ; preds = %if.end
  %8 = call i8* @llvm.returnaddress(i32 0)
  %9 = ptrtoint i8* %8 to i64
  %and = and i64 %9, 36028797018963968
  %tobool22.not = icmp eq i64 %and, 0
  %10 = load i64, i64* @vabits_actual, align 8
  %shl28.neg = shl nsw i64 -1, %10
  br i1 %tobool22.not, label %cond.false27, label %cond.true23

cond.true23:                                      ; preds = %cond.false
  %or = or i64 %shl28.neg, %9
  br label %cond.end34

cond.false27:                                     ; preds = %cond.false
  %and31 = and i64 %shl28.neg, 36028797018963967
  %neg = xor i64 %and31, -1
  %and33 = and i64 %neg, %9
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true23, %cond.false27, %cond.true
  %cond35 = phi i64 [ %call21, %cond.true ], [ %or, %cond.true23 ], [ %and33, %cond.false27 ]
  %arrayidx37 = getelementptr %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 0, i64 2
  %11 = load i32, i32* %arrayidx37, align 8
  %12 = trunc i64 %cond35 to i32
  %conv40 = xor i32 %11, %12
  store i32 %conv40, i32* %arrayidx37, align 8
  %shr41 = lshr i64 %cond35, 32
  %arrayidx43 = getelementptr %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 0, i64 3
  %13 = load i32, i32* %arrayidx43, align 4
  %14 = trunc i64 %shr41 to i32
  %conv46 = xor i32 %13, %14
  store i32 %conv46, i32* %arrayidx43, align 4
  call fastcc void @fast_mix(%struct.fast_pool* noundef %0) #22
  %15 = load i32, i32* @crng_init, align 4
  %cmp47 = icmp eq i32 %15, 0
  %count = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 3
  %16 = load i8, i8* %count, align 2
  br i1 %cmp47, label %if.then52, label %if.end62, !prof !11

if.then52:                                        ; preds = %cond.end34
  %cmp54 = icmp ugt i8 %16, 63
  br i1 %cmp54, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then52
  %17 = inttoptr i64 %add to i8*
  %call57 = call fastcc i32 @crng_fast_load(i8* noundef %17, i64 noundef 16) #22
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup, label %if.then59

if.then59:                                        ; preds = %land.lhs.true
  store i8 0, i8* %count, align 2
  %last = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 1
  store i64 %1, i64* %last, align 8
  br label %cleanup

if.end62:                                         ; preds = %cond.end34
  %cmp65 = icmp ult i8 %16, 64
  br i1 %cmp65, label %land.lhs.true67, label %if.end74

land.lhs.true67:                                  ; preds = %if.end62
  %last68 = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 1
  %18 = load i64, i64* %last68, align 8
  %add69 = sub i64 250, %1
  %sub70 = add i64 %add69, %18
  %cmp71 = icmp slt i64 %sub70, 0
  br i1 %cmp71, label %if.end74, label %cleanup

if.end74:                                         ; preds = %land.lhs.true67, %if.end62
  %call.i = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0)) #20
  %tobool76.not = icmp eq i32 %call.i, 0
  br i1 %tobool76.not, label %cleanup, label %if.end78

if.end78:                                         ; preds = %if.end74
  %last79 = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %0, i64 0, i32 1
  store i64 %1, i64* %last79, align 8
  %19 = inttoptr i64 %add to i8*
  call fastcc void @__mix_pool_bytes(i8* noundef %19, i32 noundef 16) #22
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0)) #20
  store i8 0, i8* %count, align 2
  call fastcc void @credit_entropy_bits(i32 noundef 1) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %land.lhs.true67, %if.then52, %land.lhs.true, %if.then59, %if.end78
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #5 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #23, !srcloc !12
  ret i64 %2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.pt_regs* @get_irq_regs() unnamed_addr #5 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.pt_regs** @__irq_regs to i64)
  %0 = inttoptr i64 %add to %struct.pt_regs**
  %1 = load %struct.pt_regs*, %struct.pt_regs** %0, align 8
  ret %struct.pt_regs* %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @get_reg(%struct.fast_pool* noundef %f, %struct.pt_regs* noundef readonly %regs) unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.pt_regs* %regs, null
  br i1 %cmp, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %0 = bitcast %struct.pt_regs* %regs to i32*
  %reg_idx = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %f, i64 0, i32 2
  %1 = load volatile i16, i16* %reg_idx, align 8
  %cmp2 = icmp ugt i16 %1, 83
  %narrow = select i1 %cmp2, i16 0, i16 %1
  %inc = add nuw nsw i16 %narrow, 1
  %idx.ext = zext i16 %narrow to i64
  %add.ptr = getelementptr i32, i32* %0, i64 %idx.ext
  store volatile i16 %inc, i16* %reg_idx, align 8
  %2 = load i32, i32* %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #7 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @fast_mix(%struct.fast_pool* nocapture noundef %f) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %f, i64 0, i32 0, i64 0
  %0 = load i32, i32* %arrayidx, align 8
  %arrayidx2 = getelementptr %struct.fast_pool, %struct.fast_pool* %f, i64 0, i32 0, i64 1
  %1 = load i32, i32* %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.fast_pool, %struct.fast_pool* %f, i64 0, i32 0, i64 2
  %2 = load i32, i32* %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.fast_pool, %struct.fast_pool* %f, i64 0, i32 0, i64 3
  %3 = load i32, i32* %arrayidx6, align 4
  %add = add i32 %1, %0
  %add7 = add i32 %3, %2
  %call = call fastcc i32 @rol32(i32 noundef %1, i32 noundef 6) #22
  %call8 = call fastcc i32 @rol32(i32 noundef %3, i32 noundef 27) #22
  %xor = xor i32 %call8, %add
  %xor9 = xor i32 %call, %add7
  %add10 = add i32 %xor9, %add
  %add11 = add i32 %xor, %add7
  %call12 = call fastcc i32 @rol32(i32 noundef %xor9, i32 noundef 16) #22
  %call13 = call fastcc i32 @rol32(i32 noundef %xor, i32 noundef 14) #22
  %xor14 = xor i32 %call13, %add10
  %xor15 = xor i32 %add11, %call12
  %add16 = add i32 %xor15, %add10
  %add17 = add i32 %xor14, %add11
  %call18 = call fastcc i32 @rol32(i32 noundef %xor15, i32 noundef 6) #22
  %call19 = call fastcc i32 @rol32(i32 noundef %xor14, i32 noundef 27) #22
  %xor20 = xor i32 %call19, %add16
  %xor21 = xor i32 %add17, %call18
  %add22 = add i32 %xor21, %add16
  %add23 = add i32 %xor20, %add17
  %call24 = call fastcc i32 @rol32(i32 noundef %xor21, i32 noundef 16) #22
  %call25 = call fastcc i32 @rol32(i32 noundef %xor20, i32 noundef 14) #22
  %xor26 = xor i32 %call25, %add22
  %xor27 = xor i32 %add23, %call24
  store i32 %add22, i32* %arrayidx, align 8
  store i32 %xor27, i32* %arrayidx2, align 4
  store i32 %add23, i32* %arrayidx4, align 8
  store i32 %xor26, i32* %arrayidx6, align 4
  %count = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %f, i64 0, i32 3
  %4 = load i8, i8* %count, align 2
  %inc = add i8 %4, 1
  store i8 %inc, i8* %count, align 2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @crng_fast_load(i8* nocapture noundef readonly %cp, i64 noundef %len) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #22
  %call7 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0)) #22
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.body9, label %if.end

do.body9:                                         ; preds = %entry
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @crng_init, align 4
  %cmp24.not = icmp eq i32 %0, 0
  br i1 %cmp24.not, label %while.cond.preheader, label %if.then26

while.cond.preheader:                             ; preds = %if.end
  %crng_init_cnt.promoted = load i32, i32* @crng_init_cnt, align 4
  %cmp2853 = icmp ne i64 %len, 0
  %cmp3054 = icmp slt i32 %crng_init_cnt.promoted, 64
  %1 = select i1 %cmp2853, i1 %cmp3054, i1 false
  br i1 %1, label %while.body, label %while.end

if.then26:                                        ; preds = %if.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call) #20
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %cp.addr.057 = phi i8* [ %incdec.ptr, %while.body ], [ %cp, %while.cond.preheader ]
  %len.addr.056 = phi i64 [ %dec, %while.body ], [ %len, %while.cond.preheader ]
  %inc5255 = phi i32 [ %inc, %while.body ], [ %crng_init_cnt.promoted, %while.cond.preheader ]
  %2 = load i8, i8* %cp.addr.057, align 1
  %rem = srem i32 %inc5255, 32
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr i8, i8* bitcast (i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 4) to i8*), i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %xor51 = xor i8 %3, %2
  store i8 %xor51, i8* %arrayidx, align 1
  %incdec.ptr = getelementptr i8, i8* %cp.addr.057, i64 1
  %inc = add nsw i32 %inc5255, 1
  %dec = add i64 %len.addr.056, -1
  %cmp28 = icmp ne i64 %dec, 0
  %cmp30 = icmp slt i32 %inc5255, 63
  %4 = select i1 %cmp28, i1 %cmp30, i1 false
  br i1 %4, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i32 %inc, i32* @crng_init_cnt, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call) #20
  %5 = load i32, i32* @crng_init_cnt, align 4
  %cmp35 = icmp sgt i32 %5, 63
  br i1 %cmp35, label %if.then37, label %cleanup

if.then37:                                        ; preds = %while.end
  call fastcc void @invalidate_batched_entropy() #22
  store i32 1, i32* @crng_init, align 4
  %call42 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #24
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %while.end, %if.then37, %if.then26
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 0, %do.body9 ], [ 1, %if.then37 ], [ 1, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @__mix_pool_bytes(i8* nocapture noundef readonly %in, i32 noundef %nbytes) unnamed_addr #4 {
entry:
  call fastcc void @_mix_pool_bytes(i8* noundef %in, i32 noundef %nbytes) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @credit_entropy_bits(i32 noundef %nbits) unnamed_addr #1 {
entry:
  %0 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %poolfracbits = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 3
  %1 = load i32, i32* %poolfracbits, align 4
  %shl = shl i32 %nbits, 3
  %tobool.not = icmp eq i32 %nbits, 0
  br i1 %tobool.not, label %cleanup, label %retry.preheader

retry.preheader:                                  ; preds = %entry
  %cmp = icmp slt i32 %shl, 0
  %div = sdiv i32 %1, 2
  %sub14 = add i32 %1, -2
  br label %retry

retry:                                            ; preds = %retry.preheader, %if.end56
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %retry
  %add = add i32 %2, %shl
  br label %if.end20

if.else:                                          ; preds = %retry
  %3 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %poolbitshift = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %3, i64 0, i32 0
  %4 = load i32, i32* %poolbitshift, align 4
  %add5 = add i32 %4, 5
  br label %do.body6

do.body6:                                         ; preds = %do.body6, %if.else
  %pnfrac.0 = phi i32 [ %shl, %if.else ], [ %sub12, %do.body6 ]
  %entropy_count.0 = phi i32 [ %2, %if.else ], [ %add11, %do.body6 ]
  %cmp8 = icmp slt i32 %pnfrac.0, %div
  %cond = select i1 %cmp8, i32 %pnfrac.0, i32 %div
  %sub = sub i32 %1, %entropy_count.0
  %mul = mul i32 %cond, 3
  %mul10 = mul i32 %mul, %sub
  %shr = lshr i32 %mul10, %add5
  %add11 = add i32 %shr, %entropy_count.0
  %sub12 = sub i32 %pnfrac.0, %cond
  %cmp15 = icmp slt i32 %add11, %sub14
  %tobool16 = icmp ne i32 %sub12, 0
  %5 = select i1 %cmp15, i1 %tobool16, i1 false
  br i1 %5, label %do.body6, label %if.end20, !prof !11

if.end20:                                         ; preds = %do.body6, %if.then2
  %entropy_count.1 = phi i32 [ %add, %if.then2 ], [ %add11, %do.body6 ]
  %cmp21 = icmp slt i32 %entropy_count.1, 0
  br i1 %cmp21, label %if.then35, label %if.else51, !prof !11

if.then35:                                        ; preds = %if.end20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/char/random.c\22; .popsection; .long 14472b - 14470b; .short 710; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !13
  %6 = load i8*, i8** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 2), align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* noundef %6, i32 noundef %entropy_count.1) #24
  br label %if.end56

if.else51:                                        ; preds = %if.end20
  %cmp52 = icmp sgt i32 %entropy_count.1, %1
  %spec.select = select i1 %cmp52, i32 %1, i32 %entropy_count.1
  br label %if.end56

if.end56:                                         ; preds = %if.else51, %if.then35
  %entropy_count.2 = phi i32 [ 0, %if.then35 ], [ %spec.select, %if.else51 ]
  %call11.i = call fastcc i32 @__cmpxchg_case_mb_32(i32 noundef %2, i32 noundef %entropy_count.2) #20
  %cmp64.not = icmp eq i32 %2, %call11.i
  br i1 %cmp64.not, label %cond.end84, label %retry

cond.end84:                                       ; preds = %if.end56
  %7 = load i32, i32* @crng_init, align 4
  %cmp90 = icmp slt i32 %7, 2
  %cmp92 = icmp sgt i32 %entropy_count.2, 1023
  %or.cond = and i1 %cmp92, %cmp90
  br i1 %or.cond, label %if.then94, label %cleanup

if.then94:                                        ; preds = %cond.end84
  call fastcc void @crng_reseed() #22
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %cond.end84, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_disk_randomness(%struct.gendisk* noundef readonly %disk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.gendisk* %disk, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %random = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 17
  %0 = load %struct.timer_rand_state*, %struct.timer_rand_state** %random, align 8
  %tobool1.not = icmp eq %struct.timer_rand_state* %0, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i32 @disk_devt(%struct.gendisk* noundef nonnull %disk) #22
  %add = add i32 %call, 256
  call fastcc void @add_timer_randomness(%struct.timer_rand_state* noundef nonnull %0, i32 noundef %add) #22
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @disk_devt(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #7 {
entry:
  %major = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 0
  %0 = load i32, i32* %major, align 8
  %shl = shl i32 %0, 20
  %first_minor = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 1
  %1 = load i32, i32* %first_minor, align 4
  %or = or i32 %shl, %1
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @get_random_bytes(i8* noundef %buf, i32 noundef %nbytes) local_unnamed_addr #1 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  call fastcc void @_warn_unseeded_randomness(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get_random_bytes, i64 0, i64 0), i8* noundef %3, i8** noundef nonnull @get_random_bytes.previous) #22
  call fastcc void @_get_random_bytes(i8* noundef %buf, i32 noundef %nbytes) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_warn_unseeded_randomness(i8* noundef %func_name, i8* noundef %caller, i8** noundef %previous) unnamed_addr #1 {
entry:
  %.b24 = load i1, i1* @_warn_unseeded_randomness.print_once, align 1
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %0, 1
  %or.cond = select i1 %.b24, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end19, label %lor.lhs.false3, !prof !14

lor.lhs.false3:                                   ; preds = %entry
  %tobool4.not = icmp eq i8** %previous, null
  br i1 %tobool4.not, label %do.body10, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %1 = load volatile i8*, i8** %previous, align 8
  %cmp5 = icmp eq i8* %1, %caller
  br i1 %cmp5, label %if.end19, label %do.body10

do.body10:                                        ; preds = %land.lhs.true, %lor.lhs.false3
  store volatile i8* %caller, i8** %previous, align 8
  store i1 true, i1* @_warn_unseeded_randomness.print_once, align 1
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @unseeded_warning, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__._warn_unseeded_randomness, i64 0, i64 0)) #20
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %do.body10
  %2 = load i32, i32* @crng_init, align 4
  %call18 = call i32 (i8*, ...) @_printk_deferred(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* noundef %func_name, i8* noundef %caller, i32 noundef %2) #24
  br label %if.end19

if.end19:                                         ; preds = %entry, %land.lhs.true, %do.end16, %do.body10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_get_random_bytes(i8* noundef %buf, i32 noundef %nbytes) unnamed_addr #1 {
entry:
  %tmp = alloca [64 x i8], align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !15
  %cmp23 = icmp sgt i32 %nbytes, 63
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %nbytes.addr.025 = phi i32 [ %sub9, %while.body ], [ %nbytes, %entry ]
  %buf.addr.024 = phi i8* [ %add.ptr, %while.body ], [ %buf, %entry ]
  call fastcc void @extract_crng(i8* noundef %buf.addr.024) #22
  %add.ptr = getelementptr i8, i8* %buf.addr.024, i64 64
  %sub9 = add nsw i32 %nbytes.addr.025, -64
  %cmp = icmp ugt i32 %nbytes.addr.025, 127
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %buf.addr.0.lcssa = phi i8* [ %buf, %entry ], [ %add.ptr, %while.body ]
  %nbytes.addr.0.lcssa = phi i32 [ %nbytes, %entry ], [ %sub9, %while.body ]
  %cmp10 = icmp sgt i32 %nbytes.addr.0.lcssa, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call fastcc void @extract_crng(i8* noundef nonnull %0) #22
  %conv22 = zext i32 %nbytes.addr.0.lcssa to i64
  %call = call i8* @memcpy(i8* noundef %buf.addr.0.lcssa, i8* noundef nonnull %0, i64 noundef %conv22) #20
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %.sink = phi i32 [ %nbytes.addr.0.lcssa, %if.then ], [ 64, %while.end ]
  call fastcc void @crng_backtrack_protect(i8* noundef nonnull %0, i32 noundef %.sink) #22
  call fastcc void @memzero_explicit(i8* noundef nonnull %0, i64 noundef 64) #22
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @wait_for_random_bytes() local_unnamed_addr #1 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %return, label %if.then33.preheader, !prof !8

if.then33.preheader:                              ; preds = %entry
  %1 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  br label %if.then33

if.then33:                                        ; preds = %if.then33.preheader, %do.cond80
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !15
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #20
  %call122 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @crng_init_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #20
  %2 = load i32, i32* @crng_init, align 4
  %cmp36123 = icmp sgt i32 %2, 1
  br i1 %cmp36123, label %for.end, label %if.end63

if.end63:                                         ; preds = %if.then33, %cleanup
  %spec.store.select94126 = phi i64 [ %spec.store.select94, %cleanup ], [ 250, %if.then33 ]
  %call125 = phi i64 [ %call, %cleanup ], [ %call122, %if.then33 ]
  %tobool64.not = icmp eq i64 %call125, 0
  br i1 %tobool64.not, label %cleanup, label %if.end69

cleanup:                                          ; preds = %if.end63
  %call67 = call i64 @schedule_timeout(i64 noundef %spec.store.select94126) #20
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @crng_init_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #20
  %3 = load i32, i32* @crng_init, align 4
  %cmp36 = icmp sgt i32 %3, 1
  %lnot38 = xor i1 %cmp36, true
  %tobool49 = icmp ne i64 %call67, 0
  %or.cond93 = select i1 %lnot38, i1 true, i1 %tobool49
  %spec.store.select94 = select i1 %or.cond93, i64 %call67, i64 1
  %tobool56.not = icmp eq i64 %spec.store.select94, 0
  %4 = select i1 %cmp36, i1 true, i1 %tobool56.not
  br i1 %4, label %for.end, label %if.end63

for.end:                                          ; preds = %cleanup, %if.then33
  %spec.store.select94.lcssa = phi i64 [ 250, %if.then33 ], [ %spec.store.select94, %cleanup ]
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @crng_init_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #20
  br label %if.end69

if.end69:                                         ; preds = %if.end63, %for.end
  %__ret34.1112 = phi i64 [ %spec.store.select94.lcssa, %for.end ], [ %call125, %if.end63 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #21
  %conv71 = trunc i64 %__ret34.1112 to i32
  %tobool72.not = icmp eq i32 %conv71, 0
  br i1 %tobool72.not, label %do.cond80, label %cleanup77

cleanup77:                                        ; preds = %if.end69
  %conv71.le = trunc i64 %__ret34.1112 to i32
  %5 = icmp slt i32 %conv71.le, 0
  %cond = select i1 %5, i32 %conv71.le, i32 0
  br label %return

do.cond80:                                        ; preds = %if.end69
  call fastcc void @try_to_generate_entropy() #22
  %6 = load i32, i32* @crng_init, align 4
  %cmp81 = icmp slt i32 %6, 2
  br i1 %cmp81, label %if.then33, label %return

return:                                           ; preds = %do.cond80, %cleanup77, %entry
  %retval.2 = phi i32 [ %cond, %cleanup77 ], [ 0, %entry ], [ 0, %do.cond80 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @try_to_generate_entropy() unnamed_addr #1 {
entry:
  %stack = alloca %struct.anon.88, align 8
  %0 = bitcast %struct.anon.88* %stack to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.anon.88, %struct.anon.88* %stack, i64 0, i32 1
  %2 = bitcast %struct.timer_list* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 40, i1 false), !annotation !15
  %3 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call = call i64 %3() #20
  %now = getelementptr inbounds %struct.anon.88, %struct.anon.88* %stack, i64 0, i32 0
  store i64 %call, i64* %now, align 8
  %4 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call2 = call i64 %4() #20
  %cmp = icmp eq i64 %call, %call2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %timer = getelementptr inbounds %struct.anon.88, %struct.anon.88* %stack, i64 0, i32 1
  call fastcc void @init_timer_on_stack_key(%struct.timer_list* noundef %timer) #22
  %5 = load i32, i32* @crng_init, align 4
  %cmp321 = icmp slt i32 %5, 2
  br i1 %cmp321, label %while.body, label %while.end

while.body:                                       ; preds = %if.end, %if.end13
  %call8 = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #22
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %while.body
  %6 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %6, 1
  %call12 = call i32 @mod_timer(%struct.timer_list* noundef %timer, i64 noundef %add) #20
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %while.body
  call fastcc void @mix_pool_bytes(i8* noundef nonnull %0, i32 noundef 8) #22
  call void @schedule() #20
  %7 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call15 = call i64 %7() #20
  store i64 %call15, i64* %now, align 8
  %8 = load i32, i32* @crng_init, align 4
  %cmp3 = icmp slt i32 %8, 2
  br i1 %cmp3, label %while.body, label %while.end

while.end:                                        ; preds = %if.end13, %if.end
  %call18 = call i32 @del_timer_sync(%struct.timer_list* noundef %timer) #20
  call fastcc void @mix_pool_bytes(i8* noundef nonnull %0, i32 noundef 8) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @rng_is_initialized() local_unnamed_addr #7 {
entry:
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @add_random_ready_callback(%struct.random_ready_callback* noundef %rdy) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call9 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @random_ready_list_lock, i64 0, i32 0, i32 0)) #22
  %1 = load i32, i32* @crng_init, align 4
  %cmp12 = icmp sgt i32 %1, 1
  br i1 %cmp12, label %out, label %if.end22, !prof !8

if.end22:                                         ; preds = %if.end
  %list = getelementptr inbounds %struct.random_ready_callback, %struct.random_ready_callback* %rdy, i64 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %list) #22
  br label %out

out:                                              ; preds = %if.end, %if.end22
  %err.0 = phi i32 [ -114, %if.end ], [ 0, %if.end22 ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @random_ready_list_lock, i64 0, i32 0, i32 0), i64 noundef %call9) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %err.0, %out ], [ -114, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #6 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @random_ready_list, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @del_random_ready_callback(%struct.random_ready_callback* noundef %rdy) local_unnamed_addr #1 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @random_ready_list_lock, i64 0, i32 0, i32 0)) #22
  %list = getelementptr inbounds %struct.random_ready_callback, %struct.random_ready_callback* %rdy, i64 0, i32 0
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #22
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @list_del_init(%struct.list_head* noundef %list) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @random_ready_list_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #22
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @get_random_bytes_arch(i8* nocapture noundef readnone %buf, i32 noundef %nbytes) local_unnamed_addr #12 {
entry:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @rand_initialize() local_unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @init_std_data() #25
  call fastcc void @crng_initialize_primary() #25
  %0 = load volatile i64, i64* @jiffies, align 64
  store i64 %0, i64* @crng_global_init_time, align 8
  %1 = load i32, i32* @ratelimit_disable, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.ratelimit_state, %struct.ratelimit_state* @urandom_warning, i64 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.ratelimit_state, %struct.ratelimit_state* @unseeded_warning, i64 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_std_data() unnamed_addr #0 section ".init.text" {
entry:
  %now = alloca i64, align 8
  %rv = alloca i64, align 8
  %0 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %call = call fastcc i64 @ktime_get_real() #22
  store i64 %call, i64* %now, align 8
  %1 = bitcast i64* %rv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #21
  call fastcc void @mix_pool_bytes(i8* noundef nonnull %0, i32 noundef 8) #22
  %2 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %poolbytes = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %2, i64 0, i32 2
  %3 = load i32, i32* %poolbytes, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.02 = phi i32 [ %sub, %for.body ], [ %3, %entry ]
  %4 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call3 = call i64 %4() #20
  store i64 %call3, i64* %rv, align 8
  call fastcc void @mix_pool_bytes(i8* noundef nonnull %1, i32 noundef 8) #22
  %sub = add nsw i32 %i.02, -8
  %cmp = icmp ugt i32 %i.02, 8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %call5 = call fastcc %struct.new_utsname* @utsname() #22
  %5 = getelementptr %struct.new_utsname, %struct.new_utsname* %call5, i64 0, i32 0, i64 0
  call fastcc void @mix_pool_bytes(i8* noundef %5, i32 noundef 390) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @crng_initialize_primary() unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @chacha_init_consts() #22
  %0 = call fastcc i64 @_extract_entropy(i8* noundef bitcast (i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 4) to i8*), i64 noundef 48) #22
  %call2 = call fastcc i1 @crng_init_try_arch_early() #25
  %call2.not = xor i1 %call2, true
  %1 = load i8, i8* @trust_cpu, align 1
  %tobool.not = icmp eq i8 %1, 0
  %or.cond = select i1 %call2.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @invalidate_batched_entropy() #22
  store i32 2, i32* @crng_init, align 4
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0)) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load volatile i64, i64* @jiffies, align 64
  %sub4 = add i64 %2, -75001
  store i64 %sub4, i64* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rand_initialize_disk(%struct.gendisk* nocapture noundef writeonly %disk) local_unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kzalloc() #22
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %last_time = bitcast i8* %call to i64*
  store i64 4294892296, i64* %last_time, align 8
  %random = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 17
  %0 = bitcast %struct.timer_rand_state** %random to i8**
  store i8* %call, i8** %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #20
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @random_read(%struct.file* nocapture noundef readnone %file, i8* noundef %buf, i64 noundef %nbytes, i64* nocapture noundef readnone %ppos) #1 {
entry:
  %call = call i32 @wait_for_random_bytes() #22
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @urandom_read_nowarn(i8* noundef %buf, i64 noundef %nbytes) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %call1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @random_write(%struct.file* nocapture noundef readnone %file, i8* noundef %buffer, i64 noundef %count, i64* nocapture noundef readnone %ppos) #1 {
entry:
  %call = call fastcc i32 @write_pool(i8* noundef %buffer, i64 noundef %count) #22
  %tobool.not = icmp eq i32 %call, 0
  %conv = sext i32 %call to i64
  %retval.0 = select i1 %tobool.not, i64 %count, i64 %conv
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @random_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #1 {
entry:
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef nonnull @crng_init_wait, %struct.poll_table_struct* noundef %wait) #22
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef nonnull @random_write_wait, %struct.poll_table_struct* noundef %wait) #22
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %0, 1
  %spec.select = select i1 %cmp, i32 65, i32 0, !prof !8
  %1 = load i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  %shr = ashr i32 %1, 3
  %2 = load i32, i32* @random_write_wakeup_bits, align 4
  %cmp2 = icmp slt i32 %shr, %2
  %or5 = or i32 %spec.select, 260
  %mask.1 = select i1 %cmp2, i32 %or5, i32 %spec.select
  ret i32 %mask.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @random_ioctl(%struct.file* nocapture noundef readnone %f, i32 noundef %cmd, i64 noundef %arg) #1 {
entry:
  %0 = inttoptr i64 %arg to i32*
  switch i32 %cmd, label %cleanup [
    i32 -2147200512, label %sw.bb
    i32 1074024961, label %sw.bb14
    i32 1074287107, label %sw.bb43
    i32 20996, label %sw.bb114
    i32 20998, label %sw.bb114
    i32 20999, label %sw.bb118
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  %2 = inttoptr i64 %arg to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #22
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %shr = ashr i32 %1, 3
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #22
  %3 = bitcast i8* %call2 to i32*
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %shr, i32* %3, i32 -14, i32 0) #21, !srcloc !16
  %phi.cmp167 = icmp eq i32 %4, 0
  %spec.select = select i1 %phi.cmp167, i64 0, i64 -14
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %call15 = call i1 @capable(i32 noundef 21) #20
  br i1 %call15, label %if.end17, label %cleanup

if.end17:                                         ; preds = %sw.bb14
  %5 = inttoptr i64 %arg to i8*
  %call20 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 4) #22
  %tobool21.not = icmp eq i64 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end17
  %call23 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #22
  %6 = bitcast i8* %call23 to i32*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %6, i32 -14, i32 0) #21, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %7, 0
  %phi.cmp166 = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp166, label %if.end40, label %cleanup

if.end40:                                         ; preds = %if.end34
  %asmresult27 = extractvalue { i32, i64 } %7, 1
  %conv = trunc i64 %asmresult27 to i32
  %call41 = call fastcc i32 @credit_entropy_bits_safe(i32 noundef %conv) #22
  %conv42 = sext i32 %call41 to i64
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  %call44 = call i1 @capable(i32 noundef 21) #20
  br i1 %call44, label %if.end46, label %cleanup

if.end46:                                         ; preds = %sw.bb43
  %incdec.ptr = getelementptr i32, i32* %0, i64 1
  %8 = inttoptr i64 %arg to i8*
  %call50 = call fastcc i64 @__range_ok(i8* noundef %8, i64 noundef 4) #22
  %tobool51.not = icmp eq i64 %call50, 0
  br i1 %tobool51.not, label %cleanup, label %if.end67

if.end67:                                         ; preds = %if.end46
  %call53 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %8) #22
  %9 = bitcast i8* %call53 to i32*
  %10 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %9, i32 -14, i32 0) #21, !srcloc !18
  %asmresult58 = extractvalue { i32, i64 } %10, 0
  %asmresult59 = extractvalue { i32, i64 } %10, 1
  %conv60 = trunc i64 %asmresult59 to i32
  %phi.cmp = icmp eq i32 %asmresult58, 0
  br i1 %phi.cmp, label %if.end73, label %cleanup

if.end73:                                         ; preds = %if.end67
  %cmp = icmp slt i32 %conv60, 0
  br i1 %cmp, label %cleanup, label %if.end76

if.end76:                                         ; preds = %if.end73
  %incdec.ptr80 = getelementptr i32, i32* %0, i64 2
  %11 = bitcast i32* %incdec.ptr to i8*
  %call81 = call fastcc i64 @__range_ok(i8* noundef %11, i64 noundef 4) #22
  %tobool82.not = icmp eq i64 %call81, 0
  br i1 %tobool82.not, label %cleanup, label %if.end98

if.end98:                                         ; preds = %if.end76
  %call84 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %11) #22
  %12 = bitcast i8* %call84 to i32*
  %13 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %12, i32 -14, i32 0) #21, !srcloc !19
  %asmresult89 = extractvalue { i32, i64 } %13, 0
  %phi.cmp165 = icmp eq i32 %asmresult89, 0
  br i1 %phi.cmp165, label %if.end104, label %cleanup

if.end104:                                        ; preds = %if.end98
  %asmresult90 = extractvalue { i32, i64 } %13, 1
  %sext = shl i64 %asmresult90, 32
  %phi.cast = ashr exact i64 %sext, 32
  %14 = bitcast i32* %incdec.ptr80 to i8*
  %call106 = call fastcc i32 @write_pool(i8* noundef %14, i64 noundef %phi.cast) #22
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end104
  %conv110 = sext i32 %call106 to i64
  br label %cleanup

if.end111:                                        ; preds = %if.end104
  %call112 = call fastcc i32 @credit_entropy_bits_safe(i32 noundef %conv60) #22
  %conv113 = sext i32 %call112 to i64
  br label %cleanup

sw.bb114:                                         ; preds = %entry, %entry
  %call115 = call i1 @capable(i32 noundef 21) #20
  br i1 %call115, label %if.end117, label %cleanup

if.end117:                                        ; preds = %sw.bb114
  store i32 0, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  br label %cleanup

sw.bb118:                                         ; preds = %entry
  %call119 = call i1 @capable(i32 noundef 21) #20
  br i1 %call119, label %if.end121, label %cleanup

if.end121:                                        ; preds = %sw.bb118
  %15 = load i32, i32* @crng_init, align 4
  %cmp122 = icmp slt i32 %15, 2
  br i1 %cmp122, label %cleanup, label %if.end125

if.end125:                                        ; preds = %if.end121
  call fastcc void @crng_reseed() #22
  %16 = load volatile i64, i64* @jiffies, align 64
  %sub = add i64 %16, -1
  store i64 %sub, i64* @crng_global_init_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end76, %if.end46, %if.end17, %sw.bb, %entry, %if.end121, %sw.bb118, %sw.bb114, %if.end98, %if.end73, %if.end67, %sw.bb43, %if.end34, %sw.bb14, %if.end125, %if.end117, %if.end111, %if.then109, %if.end40
  %retval.0 = phi i64 [ 0, %if.end125 ], [ 0, %if.end117 ], [ %conv110, %if.then109 ], [ %conv113, %if.end111 ], [ %conv42, %if.end40 ], [ -1, %sw.bb14 ], [ -14, %if.end34 ], [ -1, %sw.bb43 ], [ -14, %if.end67 ], [ -22, %if.end73 ], [ -14, %if.end98 ], [ -1, %sw.bb114 ], [ -1, %sw.bb118 ], [ -61, %if.end121 ], [ -22, %entry ], [ -14, %sw.bb ], [ -14, %if.end17 ], [ -14, %if.end46 ], [ -14, %if.end76 ], [ %spec.select, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @random_fasync(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on) #1 {
entry:
  %call = call i32 @fasync_helper(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on, %struct.fasync_struct** noundef nonnull @fasync) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @urandom_read(%struct.file* nocapture noundef readnone %file, i8* noundef %buf, i64 noundef %nbytes, i64* nocapture noundef readnone %ppos) #1 {
entry:
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.end19, label %land.lhs.true, !prof !8

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @urandom_read.maxwarn, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @urandom_read.maxwarn, align 4
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @urandom_warning, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.urandom_read, i64 0, i64 0)) #20
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.body9, label %do.end

do.end:                                           ; preds = %if.then
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !20
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0), i8* noundef %arraydecay, i64 noundef %nbytes) #24
  br label %do.body9

do.body9:                                         ; preds = %do.end, %if.then
  %call14 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0)) #22
  store i32 0, i32* @crng_init_cnt, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call14) #20
  br label %if.end19

if.end19:                                         ; preds = %do.body9, %land.lhs.true, %entry
  %call20 = call fastcc i64 @urandom_read_nowarn(i8* noundef %buf, i64 noundef %nbytes) #22
  ret i64 %call20
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getrandom(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_getrandom(i64 noundef %0, i64 noundef %1, i64 noundef %2) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getrandom(i64 noundef %buf, i64 noundef %count, i64 noundef %flags) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %buf to i8*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_getrandom(i8* noundef %0, i64 noundef %count, i32 noundef %conv) #22
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_do_entropy(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #1 {
entry:
  %fake_table = alloca %struct.ctl_table, align 8
  %entropy_count = alloca i32, align 4
  %0 = bitcast %struct.ctl_table* %fake_table to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !15
  %1 = bitcast i32* %entropy_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %2 = bitcast i8** %data to i32**
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %entropy_count, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %fake_table, i64 0, i32 1
  %5 = bitcast i8** %data1 to i32**
  store i32* %entropy_count, i32** %5, align 8
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %fake_table, i64 0, i32 2
  store i32 4, i32* %maxlen, align 8
  %call = call i32 @proc_dointvec(%struct.ctl_table* noundef nonnull %fake_table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #21
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_do_uuid(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #1 {
entry:
  %fake_table = alloca %struct.ctl_table, align 8
  %buf = alloca [64 x i8], align 1
  %tmp_uuid = alloca [16 x i8], align 1
  %0 = bitcast %struct.ctl_table* %fake_table to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !15
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %1, i8 0, i64 64, i1 false), !annotation !15
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp_uuid, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !15
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @generate_random_uuid(i8* noundef nonnull %2) #20
  br label %if.end3

if.else:                                          ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @proc_do_uuid.bootid_spinlock, i64 0, i32 0, i32 0)) #20
  %arrayidx = getelementptr i8, i8* %3, i64 8
  %4 = load i8, i8* %arrayidx, align 1
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  call void @generate_random_uuid(i8* noundef nonnull %3) #20
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @proc_do_uuid.bootid_spinlock, i64 0, i32 0, i32 0)) #20
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %uuid.0 = phi i8* [ %3, %if.end ], [ %2, %if.then ]
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef %uuid.0) #20
  %data6 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %fake_table, i64 0, i32 1
  store i8* %1, i8** %data6, align 8
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %fake_table, i64 0, i32 2
  store i32 64, i32* %maxlen, align 8
  %call7 = call i32 @proc_dostring(%struct.ctl_table* noundef nonnull %fake_table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #21
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #21
  ret i32 %call7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_random_u64() local_unnamed_addr #1 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  call fastcc void @_warn_unseeded_randomness(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.get_random_u64, i64 0, i64 0), i8* noundef %3, i8** noundef nonnull @get_random_u64.previous) #22
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add10 = add i64 %call, ptrtoint (%struct.batched_entropy* @batched_entropy_u64 to i64)
  %4 = inttoptr i64 %add10 to %struct.batched_entropy*
  %rlock.i = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %4, i64 0, i32 2, i32 0, i32 0
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #22
  %position = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %4, i64 0, i32 1
  %5 = load i32, i32* %position, align 8
  %6 = and i32 %5, 7
  %cmp21 = icmp eq i32 %6, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = inttoptr i64 %add10 to i8*
  call fastcc void @extract_crng(i8* noundef %7) #22
  store i32 0, i32* %position, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = phi i32 [ 0, %if.then ], [ %5, %entry ]
  %inc = add i32 %8, 1
  store i32 %inc, i32* %position, align 8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr %struct.batched_entropy, %struct.batched_entropy* %4, i64 0, i32 0, i32 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call15) #20
  ret i64 %9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @extract_crng(i8* noundef %out) unnamed_addr #1 {
entry:
  call fastcc void @_extract_crng(i8* noundef %out) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_random_u32() local_unnamed_addr #1 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  call fastcc void @_warn_unseeded_randomness(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.get_random_u32, i64 0, i64 0), i8* noundef %3, i8** noundef nonnull @get_random_u32.previous) #22
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add10 = add i64 %call, ptrtoint (%struct.batched_entropy* @batched_entropy_u32 to i64)
  %4 = inttoptr i64 %add10 to %struct.batched_entropy*
  %rlock.i = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %4, i64 0, i32 2, i32 0, i32 0
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #22
  %position = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %4, i64 0, i32 1
  %5 = load i32, i32* %position, align 8
  %6 = and i32 %5, 15
  %cmp21 = icmp eq i32 %6, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = inttoptr i64 %add10 to i8*
  call fastcc void @extract_crng(i8* noundef %7) #22
  store i32 0, i32* %position, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = phi i32 [ 0, %if.then ], [ %5, %entry ]
  %entropy_u3224 = inttoptr i64 %add10 to [16 x i32]*
  %inc = add i32 %8, 1
  store i32 %inc, i32* %position, align 8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %entropy_u3224, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call15) #20
  ret i32 %9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @randomize_page(i64 noundef %start, i64 noundef %range) local_unnamed_addr #1 {
entry:
  %and = and i64 %start, 4095
  %cmp = icmp eq i64 %and, 0
  %add = add i64 %start, 4095
  %and1 = and i64 %add, -4096
  %sub.neg = sub i64 %start, %and1
  %start.addr.0 = select i1 %cmp, i64 %start, i64 %and1
  %sub2 = select i1 %cmp, i64 0, i64 %sub.neg
  %range.addr.0 = add i64 %sub2, %range
  %sub5 = xor i64 %range.addr.0, -1
  %cmp6 = icmp ugt i64 %start.addr.0, %sub5
  %sub8 = xor i64 %start.addr.0, -1
  %range.addr.1 = select i1 %cmp6, i64 %sub8, i64 %range.addr.0
  %cmp10 = icmp ult i64 %range.addr.1, 4096
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %entry
  %shr = lshr i64 %range.addr.1, 12
  %call = call fastcc i64 @get_random_long() #22
  %rem = urem i64 %call, %shr
  %shl = shl nuw i64 %rem, 12
  %add13 = add i64 %shl, %start.addr.0
  br label %return

return:                                           ; preds = %entry, %if.end12
  %retval.0 = phi i64 [ %add13, %if.end12 ], [ %start.addr.0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_random_long() unnamed_addr #1 {
entry:
  %call = call i64 @get_random_u64() #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_hwgenerator_randomness(i8* nocapture noundef readonly %buffer, i64 noundef %count, i64 noundef %entropy) local_unnamed_addr #1 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @crng_fast_load(i8* noundef %buffer, i64 noundef %count) #22
  br label %cleanup28

if.end:                                           ; preds = %entry
  %call5 = call i1 @kthread_should_stop() #20
  br i1 %call5, label %if.end24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  %shr = ashr i32 %1, 3
  %2 = load i32, i32* @random_write_wakeup_bits, align 4
  %cmp7.not = icmp sgt i32 %shr, %2
  br i1 %cmp7.not, label %if.then9, label %if.end24

if.then9:                                         ; preds = %lor.lhs.false
  %3 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !15
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #20
  %call1144 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @random_write_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #20
  %call1245 = call i1 @kthread_should_stop() #20
  br i1 %call1245, label %for.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.then9, %cleanup
  %call1146 = phi i64 [ %call11, %cleanup ], [ %call1144, %if.then9 ]
  %4 = load i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  %shr15 = ashr i32 %4, 3
  %5 = load i32, i32* @random_write_wakeup_bits, align 4
  %cmp16.not = icmp sgt i32 %shr15, %5
  br i1 %cmp16.not, label %if.end19, label %for.end

if.end19:                                         ; preds = %lor.lhs.false14
  %tobool20.not = icmp eq i64 %call1146, 0
  br i1 %tobool20.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end19
  call void @schedule() #20
  %call11 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @random_write_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #20
  %call12 = call i1 @kthread_should_stop() #20
  br i1 %call12, label %for.end, label %lor.lhs.false14

for.end:                                          ; preds = %cleanup, %lor.lhs.false14, %if.then9
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @random_write_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #20
  br label %__out

__out:                                            ; preds = %if.end19, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #21
  br label %if.end24

if.end24:                                         ; preds = %__out, %lor.lhs.false, %if.end
  %conv26 = trunc i64 %count to i32
  call fastcc void @mix_pool_bytes(i8* noundef %buffer, i32 noundef %conv26) #22
  %conv27 = trunc i64 %entropy to i32
  call fastcc void @credit_entropy_bits(i32 noundef %conv27) #22
  br label %cleanup28

cleanup28:                                        ; preds = %if.end24, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_should_stop() local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mix_pool_bytes(i8* nocapture noundef readonly %in, i32 noundef %nbytes) unnamed_addr #1 {
entry:
  %call10 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0)) #22
  call fastcc void @_mix_pool_bytes(i8* noundef %in, i32 noundef %nbytes) #22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0), i64 noundef %call10) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_bootloader_randomness(i8* nocapture noundef readonly %buf, i32 noundef %size) local_unnamed_addr #1 {
entry:
  call void @add_device_randomness(i8* noundef %buf, i32 noundef %size) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #22
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #22
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #21, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #21, !srcloc !24
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #21, !srcloc !25
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #22
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #21, !srcloc !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !8

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0) #20
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #21, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #20
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #20
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rol32(i32 noundef %word, i32 noundef %shift) unnamed_addr #13 {
entry:
  %or = call i32 @llvm.fshl.i32(i32 %word, i32 %word, i32 %shift)
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #21, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @invalidate_batched_entropy() unnamed_addr #1 {
entry:
  %call44 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp45 = icmp ult i32 %call44, %0
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call46 = phi i32 [ %call, %for.body ], [ %call44, %entry ]
  %idxprom = sext i32 %call46 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.batched_entropy* @batched_entropy_u32 to i64)
  %2 = inttoptr i64 %add to %struct.batched_entropy*
  %rlock.i = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %2, i64 0, i32 2, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #22
  %position = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %2, i64 0, i32 1
  store i32 0, i32* %position, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  %3 = load i64, i64* %arrayidx, align 8
  %add22 = add i64 %3, ptrtoint (%struct.batched_entropy* @batched_entropy_u64 to i64)
  %4 = inttoptr i64 %add22 to %struct.batched_entropy*
  %rlock.i42 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %4, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i42) #20
  %position24 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %4, i64 0, i32 1
  store i32 0, i32* %position24, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i42, i64 noundef %call7) #20
  %call = call i32 @cpumask_next(i32 noundef %call46, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #20
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #20
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @crng_reseed() unnamed_addr #1 {
entry:
  %buf = alloca %union.anon.86, align 4
  %0 = bitcast %union.anon.86* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !15
  %call = call fastcc i64 @extract_entropy(i8* noundef nonnull %0) #22
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cleanup, label %do.body6

do.body6:                                         ; preds = %entry
  %call10 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0)) #22
  %1 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18 = call i64 %1() #20
  %arrayidx = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 4), align 8
  %4 = trunc i64 %call18 to i32
  %5 = xor i32 %2, %4
  %conv25 = xor i32 %5, %3
  store i32 %conv25, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 4), align 8
  %6 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18.1 = call i64 %6() #20
  %arrayidx.1 = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 1
  %7 = load i32, i32* %arrayidx.1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 5), align 4
  %9 = trunc i64 %call18.1 to i32
  %10 = xor i32 %7, %9
  %conv25.1 = xor i32 %10, %8
  store i32 %conv25.1, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 5), align 4
  %11 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18.2 = call i64 %11() #20
  %arrayidx.2 = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 2
  %12 = load i32, i32* %arrayidx.2, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 6), align 8
  %14 = trunc i64 %call18.2 to i32
  %15 = xor i32 %12, %14
  %conv25.2 = xor i32 %15, %13
  store i32 %conv25.2, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 6), align 8
  %16 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18.3 = call i64 %16() #20
  %arrayidx.3 = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 3
  %17 = load i32, i32* %arrayidx.3, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 7), align 4
  %19 = trunc i64 %call18.3 to i32
  %20 = xor i32 %17, %19
  %conv25.3 = xor i32 %20, %18
  store i32 %conv25.3, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 7), align 4
  %21 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18.4 = call i64 %21() #20
  %arrayidx.4 = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 4
  %22 = load i32, i32* %arrayidx.4, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 8), align 8
  %24 = trunc i64 %call18.4 to i32
  %25 = xor i32 %22, %24
  %conv25.4 = xor i32 %25, %23
  store i32 %conv25.4, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 8), align 8
  %26 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18.5 = call i64 %26() #20
  %arrayidx.5 = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 5
  %27 = load i32, i32* %arrayidx.5, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 9), align 4
  %29 = trunc i64 %call18.5 to i32
  %30 = xor i32 %27, %29
  %conv25.5 = xor i32 %30, %28
  store i32 %conv25.5, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 9), align 4
  %31 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18.6 = call i64 %31() #20
  %arrayidx.6 = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 6
  %32 = load i32, i32* %arrayidx.6, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 10), align 8
  %34 = trunc i64 %call18.6 to i32
  %35 = xor i32 %32, %34
  %conv25.6 = xor i32 %35, %33
  store i32 %conv25.6, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 10), align 8
  %36 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call18.7 = call i64 %36() #20
  %arrayidx.7 = getelementptr inbounds %union.anon.86, %union.anon.86* %buf, i64 0, i32 0, i64 7
  %37 = load i32, i32* %arrayidx.7, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 11), align 4
  %39 = trunc i64 %call18.7 to i32
  %40 = xor i32 %37, %39
  %conv25.7 = xor i32 %40, %38
  store i32 %conv25.7, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 11), align 4
  call fastcc void @memzero_explicit(i8* noundef nonnull %0, i64 noundef 64) #22
  %41 = load volatile i64, i64* @jiffies, align 64
  store i64 %41, i64* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 1), align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call10) #20
  %42 = load i32, i32* @crng_init, align 4
  %cmp30 = icmp slt i32 %42, 2
  br i1 %cmp30, label %if.then32, label %cleanup

if.then32:                                        ; preds = %do.body6
  call fastcc void @invalidate_batched_entropy() #22
  store i32 2, i32* @crng_init, align 4
  call fastcc void @process_random_ready_list() #22
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @crng_init_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #20
  call void @kill_fasync(%struct.fasync_struct** noundef nonnull @fasync, i32 noundef 29, i32 noundef 1) #20
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #24
  %43 = load i32, i32* getelementptr inbounds (%struct.ratelimit_state, %struct.ratelimit_state* @unseeded_warning, i64 0, i32 4), align 8
  %tobool38.not = icmp eq i32 %43, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.then32
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32 noundef %43) #24
  store i32 0, i32* getelementptr inbounds (%struct.ratelimit_state, %struct.ratelimit_state* @unseeded_warning, i64 0, i32 4), align 8
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.then32
  %44 = load i32, i32* getelementptr inbounds (%struct.ratelimit_state, %struct.ratelimit_state* @urandom_warning, i64 0, i32 4), align 8
  %tobool46.not = icmp eq i32 %44, 0
  br i1 %tobool46.not, label %cleanup, label %do.end50

do.end50:                                         ; preds = %if.end45
  %call52 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i32 noundef %44) #24
  store i32 0, i32* getelementptr inbounds (%struct.ratelimit_state, %struct.ratelimit_state* @urandom_warning, i64 0, i32 4), align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %do.end50, %if.end45, %entry
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i64 noundef %conv, i32 noundef %new) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), i64 %old, i32 %new, i32* elementtype(i32) getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6)) #21, !srcloc !32
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @extract_entropy(i8* noundef %buf) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @account() #22
  %call9 = call fastcc i64 @_extract_entropy(i8* noundef %buf, i64 noundef %call) #22
  ret i64 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_extract_crng(i8* noundef %out) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @crng_init, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %do.body10, !prof !8

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 1), align 8
  %2 = load i64, i64* @crng_global_init_time, align 8
  %sub = sub i64 %1, %2
  %cmp2 = icmp slt i64 %sub, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %add = add i64 %1, 75000
  %3 = load volatile i64, i64* @jiffies, align 64
  %sub5 = sub i64 %add, %3
  %cmp6 = icmp slt i64 %sub5, 0
  br i1 %cmp6, label %if.then, label %do.body10

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call fastcc void @crng_reseed() #22
  br label %do.body10

do.body10:                                        ; preds = %if.then, %lor.lhs.false, %entry
  %call13 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0)) #22
  call fastcc void @chacha20_block(i8* noundef %out) #22
  %4 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 12), align 8
  %cmp25 = icmp eq i32 %4, 0
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %do.body10
  %5 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 13), align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 13), align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %do.body10
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call13) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_crng_backtrack_protect(i8* noundef %tmp, i32 noundef %used) unnamed_addr #1 {
entry:
  %sub = add i32 %used, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %add1 = add i32 %or, 33
  %cmp = icmp sgt i32 %add1, 64
  br i1 %cmp, label %if.then, label %do.body2

if.then:                                          ; preds = %entry
  call fastcc void @extract_crng(i8* noundef %tmp) #22
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry
  %used.addr.0 = phi i32 [ 0, %if.then ], [ %add, %entry ]
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0)) #22
  %idxprom = sext i32 %used.addr.0 to i64
  %arrayidx = getelementptr i8, i8* %tmp, i64 %idxprom
  %0 = bitcast i8* %arrayidx to i32*
  %incdec.ptr = getelementptr i8, i8* %arrayidx, i64 4
  %1 = bitcast i8* %incdec.ptr to i32*
  %2 = load i32, i32* %0, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 4), align 8
  %xor = xor i32 %3, %2
  store i32 %xor, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 4), align 8
  %incdec.ptr.1 = getelementptr i8, i8* %incdec.ptr, i64 4
  %4 = bitcast i8* %incdec.ptr.1 to i32*
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 5), align 4
  %xor.1 = xor i32 %6, %5
  store i32 %xor.1, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 5), align 4
  %incdec.ptr.2 = getelementptr i8, i8* %incdec.ptr.1, i64 4
  %7 = bitcast i8* %incdec.ptr.2 to i32*
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 6), align 8
  %xor.2 = xor i32 %9, %8
  store i32 %xor.2, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 6), align 8
  %incdec.ptr.3 = getelementptr i8, i8* %incdec.ptr.2, i64 4
  %10 = bitcast i8* %incdec.ptr.3 to i32*
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 7), align 4
  %xor.3 = xor i32 %12, %11
  store i32 %xor.3, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 7), align 4
  %incdec.ptr.4 = getelementptr i8, i8* %incdec.ptr.3, i64 4
  %13 = bitcast i8* %incdec.ptr.4 to i32*
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 8), align 8
  %xor.4 = xor i32 %15, %14
  store i32 %xor.4, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 8), align 8
  %incdec.ptr.5 = getelementptr i8, i8* %incdec.ptr.4, i64 4
  %16 = bitcast i8* %incdec.ptr.5 to i32*
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 9), align 4
  %xor.5 = xor i32 %18, %17
  store i32 %xor.5, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 9), align 4
  %incdec.ptr.6 = getelementptr i8, i8* %incdec.ptr.5, i64 4
  %19 = bitcast i8* %incdec.ptr.6 to i32*
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 10), align 8
  %xor.6 = xor i32 %21, %20
  store i32 %xor.6, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 10), align 8
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 11), align 4
  %xor.7 = xor i32 %23, %22
  store i32 %xor.7, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 11), align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 2, i32 0, i32 0), i64 noundef %call5) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memzero_explicit(i8* noundef %s, i64 noundef %count) unnamed_addr #1 {
entry:
  %call = call i8* @memset(i8* noundef %s, i32 noundef 0, i64 noundef %count) #20
  call void asm sideeffect "", "r,~{memory}"(i8* %s) #21, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @process_random_ready_list() unnamed_addr #1 {
entry:
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @random_ready_list_lock, i64 0, i32 0, i32 0)) #22
  %0 = load %struct.random_ready_callback*, %struct.random_ready_callback** bitcast (%struct.list_head* @random_ready_list to %struct.random_ready_callback**), align 8
  %list1642 = getelementptr inbounds %struct.random_ready_callback, %struct.random_ready_callback* %0, i64 0, i32 0
  %cmp17.not43 = icmp eq %struct.list_head* %list1642, @random_ready_list
  br i1 %cmp17.not43, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %list1645 = phi %struct.list_head* [ %list16, %for.body ], [ %list1642, %entry ]
  %rdy.044 = phi %struct.random_ready_callback* [ %tmp.0, %for.body ], [ %0, %entry ]
  %tmp.0.in = bitcast %struct.random_ready_callback* %rdy.044 to %struct.random_ready_callback**
  %tmp.0 = load %struct.random_ready_callback*, %struct.random_ready_callback** %tmp.0.in, align 8
  call fastcc void @list_del_init(%struct.list_head* noundef %list1645) #22
  %func = getelementptr inbounds %struct.random_ready_callback, %struct.random_ready_callback* %rdy.044, i64 0, i32 1
  %1 = load void (%struct.random_ready_callback*)*, void (%struct.random_ready_callback*)** %func, align 8
  call void %1(%struct.random_ready_callback* noundef %rdy.044) #20
  %list16 = getelementptr inbounds %struct.random_ready_callback, %struct.random_ready_callback* %tmp.0, i64 0, i32 0
  %cmp17.not = icmp eq %struct.list_head* %list16, @random_ready_list
  br i1 %cmp17.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @random_ready_list_lock, i64 0, i32 0, i32 0), i64 noundef %call3) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(%struct.fasync_struct** noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @account() unnamed_addr #1 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  %1 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %poolfracbits = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %1, i64 0, i32 3
  %2 = load i32, i32* %poolfracbits, align 4
  %cmp = icmp sgt i32 %0, %2
  br i1 %cmp, label %do.body3, label %retry, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/char/random.c\22; .popsection; .long 14472b - 14470b; .short 1326; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !34
  unreachable

retry:                                            ; preds = %entry, %if.end56
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  %shr = ashr i32 %3, 6
  %4 = icmp sgt i32 %shr, 0
  %spec.store.select = select i1 %4, i32 %shr, i32 0
  %conv17 = zext i32 %spec.store.select to i64
  %5 = icmp ult i64 %conv17, 32
  %cond = select i1 %5, i64 %conv17, i64 32
  %cmp22 = icmp ult i64 %cond, 16
  %spec.store.select85 = select i1 %cmp22, i64 0, i64 %cond
  %cmp26 = icmp slt i32 %3, 0
  br i1 %cmp26, label %if.then40, label %if.end56, !prof !11

if.then40:                                        ; preds = %retry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/char/random.c\22; .popsection; .long 14472b - 14470b; .short 1341; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !35
  %6 = load i8*, i8** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 2), align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i8* noundef %6, i32 noundef %3) #24
  br label %if.end56

if.end56:                                         ; preds = %retry, %if.then40
  %entropy_count.0 = phi i32 [ 0, %if.then40 ], [ %3, %retry ]
  %shl = shl nuw nsw i64 %spec.store.select85, 6
  %conv571 = zext i32 %entropy_count.0 to i64
  %7 = call i64 @llvm.usub.sat.i64(i64 %conv571, i64 %shl)
  %conv10.i = trunc i64 %7 to i32
  %call11.i = call fastcc i32 @__cmpxchg_case_mb_32(i32 noundef %3, i32 noundef %conv10.i) #20
  %cmp72.not = icmp eq i32 %3, %call11.i
  br i1 %cmp72.not, label %if.end75, label %retry

if.end75:                                         ; preds = %if.end56
  %tobool78.not = icmp eq i64 %spec.store.select85, 0
  br i1 %tobool78.not, label %if.end84, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end75
  %8 = load i32, i32* getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 6), align 8
  %shr80 = ashr i32 %8, 3
  %9 = load i32, i32* @random_write_wakeup_bits, align 4
  %cmp81 = icmp slt i32 %shr80, %9
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %land.lhs.true
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @random_write_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #20
  call void @kill_fasync(%struct.fasync_struct** noundef nonnull @fasync, i32 noundef 29, i32 noundef 2) #20
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %land.lhs.true, %if.end75
  ret i64 %spec.store.select85
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_extract_entropy(i8* noundef %buf, i64 noundef %nbytes) unnamed_addr #1 {
entry:
  %tmp = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8 0, i64 10, i1 false), !annotation !15
  %tobool.not1 = icmp eq i64 %nbytes, 0
  br i1 %tobool.not1, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %buf.addr.04 = phi i8* [ %add.ptr, %while.body ], [ %buf, %entry ]
  %nbytes.addr.03 = phi i64 [ %sub, %while.body ], [ %nbytes, %entry ]
  %ret.02 = phi i64 [ %add, %while.body ], [ 0, %entry ]
  call fastcc void @extract_buf(i8* noundef nonnull %0) #22
  %conv18 = trunc i64 %nbytes.addr.03 to i32
  %cmp20 = icmp slt i32 %conv18, 10
  %nbytes.addr.0.op = shl i64 %nbytes.addr.03, 32
  %nbytes.addr.0.op.op = ashr exact i64 %nbytes.addr.0.op, 32
  %conv22 = select i1 %cmp20, i64 %nbytes.addr.0.op.op, i64 10
  %call24 = call i8* @memcpy(i8* noundef %buf.addr.04, i8* noundef nonnull %0, i64 noundef %conv22) #20
  %sub = sub i64 %nbytes.addr.03, %conv22
  %add.ptr = getelementptr i8, i8* %buf.addr.04, i64 %conv22
  %add = add i64 %conv22, %ret.02
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %ret.0.lcssa = phi i64 [ 0, %entry ], [ %add, %while.body ]
  call fastcc void @memzero_explicit(i8* noundef nonnull %0, i64 noundef 10) #22
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #21
  ret i64 %ret.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @extract_buf(i8* noundef %out) unnamed_addr #1 {
entry:
  %hash = alloca %union.anon.87, align 8
  %workspace = alloca [16 x i32], align 4
  %0 = bitcast %union.anon.87* %hash to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !15
  %1 = bitcast [16 x i32]* %workspace to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %1, i8 0, i64 64, i1 false), !annotation !15
  %w = bitcast %union.anon.87* %hash to [5 x i32]*
  %arraydecay = bitcast %union.anon.87* %hash to i32*
  call void @sha1_init(i32* noundef nonnull %arraydecay) #20
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0)) #22
  %2 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %poolwords1 = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %2, i64 0, i32 1
  %3 = load i32, i32* %poolwords1, align 4
  %cmp102 = icmp sgt i32 %3, 0
  br i1 %cmp102, label %for.body12.lr.ph, label %for.end17

for.body12.lr.ph:                                 ; preds = %entry
  %arraydecay15 = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i64 0, i64 0
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %i.13 = phi i32 [ 0, %for.body12.lr.ph ], [ %add, %for.body12 ]
  %4 = load i32*, i32** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 1), align 8
  %idx.ext = sext i32 %i.13 to i64
  %add.ptr = getelementptr i32, i32* %4, i64 %idx.ext
  %5 = bitcast i32* %add.ptr to i8*
  call void @sha1_transform(i32* noundef nonnull %arraydecay, i8* noundef %5, i32* noundef nonnull %arraydecay15) #20
  %add = add i32 %i.13, 16
  %6 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %poolwords = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %6, i64 0, i32 1
  %7 = load i32, i32* %poolwords, align 4
  %cmp10 = icmp slt i32 %add, %7
  br i1 %cmp10, label %for.body12, label %for.end17

for.end17:                                        ; preds = %for.body12, %entry
  call fastcc void @__mix_pool_bytes(i8* noundef nonnull %0, i32 noundef 20) #22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 3, i32 0, i32 0), i64 noundef %call6) #20
  call fastcc void @memzero_explicit(i8* noundef nonnull %1, i64 noundef 64) #22
  %arrayidx23 = getelementptr inbounds [5 x i32], [5 x i32]* %w, i64 0, i64 3
  %8 = load i32, i32* %arrayidx23, align 4
  %9 = load i32, i32* %arraydecay, align 8
  %xor = xor i32 %9, %8
  store i32 %xor, i32* %arraydecay, align 8
  %arrayidx27 = getelementptr inbounds %union.anon.87, %union.anon.87* %hash, i64 0, i32 0, i64 2
  %10 = bitcast i64* %arrayidx27 to i32*
  %11 = load i32, i32* %10, align 8
  %arrayidx29 = getelementptr inbounds [5 x i32], [5 x i32]* %w, i64 0, i64 1
  %12 = load i32, i32* %arrayidx29, align 4
  %xor30 = xor i32 %12, %11
  store i32 %xor30, i32* %arrayidx29, align 4
  %arrayidx32 = getelementptr inbounds %union.anon.87, %union.anon.87* %hash, i64 0, i32 0, i64 1
  %13 = bitcast i64* %arrayidx32 to i32*
  %14 = load i32, i32* %13, align 8
  %call33 = call fastcc i32 @rol32(i32 noundef %14, i32 noundef 16) #22
  %xor36 = xor i32 %call33, %14
  store i32 %xor36, i32* %13, align 8
  %call37 = call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %0, i64 noundef 10) #20
  call fastcc void @memzero_explicit(i8* noundef nonnull %0, i64 noundef 24) #22
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_init(i32* noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_transform(i32* noundef, i8* noundef, i32* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chacha20_block(i8* noundef %stream) unnamed_addr #1 {
entry:
  call void @chacha_block_generic(i32* noundef getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 0), i8* noundef %stream, i32 noundef 20) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_block_generic(i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(i8* noundef, ...) local_unnamed_addr #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @crng_backtrack_protect(i8* noundef %tmp, i32 noundef %used) unnamed_addr #1 {
entry:
  call fastcc void @_crng_backtrack_protect(i8* noundef %tmp, i32 noundef %used) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_timer_on_stack_key(%struct.timer_list* noundef %timer) unnamed_addr #1 {
entry:
  call void @init_timer_key(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef nonnull @entropy_timer, i32 noundef 0, i8* noundef null, %struct.lock_class_key* noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @entropy_timer(%struct.timer_list* nocapture noundef readnone %t) #1 {
entry:
  call fastcc void @credit_entropy_bits(i32 noundef 1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) unnamed_addr #11 {
entry:
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  %call = call fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %entry1) #22
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %h) unnamed_addr #11 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @random_ready_list, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @random_ready_list, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #22
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
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_real() unnamed_addr #1 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 0) #20
  ret i64 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.new_utsname* @utsname() unnamed_addr #5 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !20
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %uts_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 1
  %3 = load %struct.uts_namespace*, %struct.uts_namespace** %uts_ns, align 8
  %name = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %3, i64 0, i32 0
  ret %struct.new_utsname* %name
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @chacha_init_consts() unnamed_addr #18 {
entry:
  store i32 1634760805, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 0), align 8
  store i32 857760878, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 1), align 4
  store i32 2036477234, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 2), align 8
  store i32 1797285236, i32* getelementptr inbounds (%struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 3), align 4
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i1 @crng_init_try_arch_early() unnamed_addr #0 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 4, %entry ], [ %indvars.iv.next, %for.body ]
  call fastcc void @arch_get_random_seed_long_early() #25
  call fastcc void @arch_get_random_long_early() #25
  %0 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call2 = call i64 %0() #20
  %arrayidx = getelementptr %struct.crng_state, %struct.crng_state* @primary_crng, i64 0, i32 0, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx, align 4
  %2 = trunc i64 %call2 to i32
  %conv3 = xor i32 %1, %2
  store i32 %conv3, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i1 false
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @arch_get_random_seed_long_early() unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/random.h\22; .popsection; .long 14472b - 14470b; .short 148; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @arch_get_random_long_early() unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/random.h\22; .popsection; .long 14472b - 14470b; .short 156; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @urandom_read_nowarn(i8* noundef %buf, i64 noundef %nbytes) unnamed_addr #1 {
entry:
  %cmp = icmp ult i64 %nbytes, 33554431
  %cond = select i1 %cmp, i64 %nbytes, i64 33554431
  %call = call fastcc i64 @extract_crng_user(i8* noundef %buf, i64 noundef %cond) #22
  %sext = shl i64 %call, 32
  %conv2 = ashr exact i64 %sext, 32
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @extract_crng_user(i8* noundef %buf, i64 noundef %nbytes) unnamed_addr #1 {
entry:
  %tmp = alloca [64 x i8], align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !15
  %cmp = icmp ugt i64 %nbytes, 256
  %tobool.not48 = icmp eq i64 %nbytes, 0
  br i1 %tobool.not48, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end21
  %buf.addr.053 = phi i8* [ %add.ptr, %if.end21 ], [ %buf, %entry ]
  %nbytes.addr.052 = phi i64 [ %sub, %if.end21 ], [ %nbytes, %entry ]
  %ret.050 = phi i64 [ %add, %if.end21 ], [ 0, %entry ]
  %i.049 = phi i64 [ %conv16, %if.end21 ], [ 64, %entry ]
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %while.body
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !20
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 1) #20
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end11, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #22
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.then
  %cmp7 = icmp eq i64 %ret.050, 0
  %spec.store.select = select i1 %cmp7, i64 -512, i64 %ret.050
  br label %while.end

if.end10:                                         ; preds = %if.then
  call void @schedule() #20
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %while.body
  call fastcc void @extract_crng(i8* noundef nonnull %0) #22
  %conv12 = trunc i64 %nbytes.addr.052 to i32
  %cmp14 = icmp slt i32 %conv12, 64
  %nbytes.addr.0.op = shl i64 %nbytes.addr.052, 32
  %nbytes.addr.0.op.op = ashr exact i64 %nbytes.addr.0.op, 32
  %conv16 = select i1 %cmp14, i64 %nbytes.addr.0.op.op, i64 64
  %cmp11.i.i = icmp ugt i64 %conv16, 2147483647
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !11

copy_to_user.exit.thread:                         ; preds = %if.end11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !38
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end11
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf.addr.053, i8* noundef nonnull %0, i64 noundef %conv16) #20
  %tobool19.not = icmp eq i64 %call2.i, 0
  br i1 %tobool19.not, label %if.end21, label %while.end

if.end21:                                         ; preds = %copy_to_user.exit
  %sub = sub i64 %nbytes.addr.052, %conv16
  %add.ptr = getelementptr i8, i8* %buf.addr.053, i64 %conv16
  %add = add i64 %conv16, %ret.050
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end21, %copy_to_user.exit, %entry, %copy_to_user.exit.thread, %if.then6
  %i.1 = phi i64 [ %i.049, %if.then6 ], [ %nbytes.addr.0.op.op, %copy_to_user.exit.thread ], [ 64, %entry ], [ %conv16, %copy_to_user.exit ], [ %conv16, %if.end21 ]
  %ret.1 = phi i64 [ %spec.store.select, %if.then6 ], [ -14, %copy_to_user.exit.thread ], [ 0, %entry ], [ %add, %if.end21 ], [ -14, %copy_to_user.exit ]
  %conv23 = trunc i64 %i.1 to i32
  call fastcc void @crng_backtrack_protect(i8* noundef nonnull %0, i32 noundef %conv23) #22
  call fastcc void @memzero_explicit(i8* noundef nonnull %0, i64 noundef 64) #22
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #21
  ret i64 %ret.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !8

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #11 {
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #11 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #22
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #22
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #22
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #12 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #22
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #22
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #20
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #21, !srcloc !39
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #21, !srcloc !40
  call void asm sideeffect "hint #20", "~{memory}"() #21, !srcloc !41
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @write_pool(i8* noundef %buffer, i64 noundef %count) unnamed_addr #1 {
entry:
  %buf = alloca [16 x i32], align 4
  %0 = bitcast [16 x i32]* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !15
  %cmp.not3 = icmp eq i64 %count, 0
  br i1 %cmp.not3, label %cleanup14, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %count.addr.05 = phi i64 [ %sub9, %if.end ], [ %count, %entry ]
  %p.04 = phi i8* [ %add.ptr, %if.end ], [ %buffer, %entry ]
  %cmp1 = icmp ult i64 %count.addr.05, 64
  %cond = select i1 %cmp1, i64 %count.addr.05, i64 64
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %p.04, i64 noundef %cond) #20
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup14

if.end:                                           ; preds = %while.body
  %conv = trunc i64 %cond to i32
  %sub9 = sub i64 %count.addr.05, %cond
  %add.ptr = getelementptr i8, i8* %p.04, i64 %cond
  call fastcc void @mix_pool_bytes(i8* noundef nonnull %0, i32 noundef %conv) #22
  call fastcc void @_cond_resched() #22
  %cmp.not = icmp eq i64 %sub9, 0
  br i1 %cmp.not, label %cleanup14, label %while.body

cleanup14:                                        ; preds = %if.end, %while.body, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ -14, %while.body ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #21
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #1 {
entry:
  %call = call i32 @__cond_resched() #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #22
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #22
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !8

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #20
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  %tobool3 = icmp ne %struct.wait_queue_head* %wait_address, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @credit_entropy_bits_safe(i32 noundef %nbits) unnamed_addr #1 {
entry:
  %0 = load %struct.poolinfo*, %struct.poolinfo** getelementptr inbounds (%struct.entropy_store, %struct.entropy_store* @input_pool, i64 0, i32 0), align 8
  %poolwords = getelementptr inbounds %struct.poolinfo, %struct.poolinfo* %0, i64 0, i32 1
  %1 = load i32, i32* %poolwords, align 4
  %mul = shl i32 %1, 5
  %cmp = icmp slt i32 %nbits, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %mul, %nbits
  %cond = select i1 %cmp1, i32 %nbits, i32 %mul
  call fastcc void @credit_entropy_bits(i32 noundef %cond) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, %struct.file* noundef, i32 noundef, %struct.fasync_struct** noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getrandom(i8* noundef %buf, i64 noundef %count, i32 noundef %flags) unnamed_addr #1 {
entry:
  %tobool.not = icmp ugt i32 %flags, 7
  %and1 = and i32 %flags, 6
  %cmp = icmp eq i32 %and1, 6
  %or.cond36 = or i1 %tobool.not, %cmp
  br i1 %or.cond36, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %0 = icmp ult i64 %count, 2147483647
  %spec.store.select = select i1 %0, i64 %count, i64 2147483647
  %and7 = and i32 %flags, 4
  %tobool8.not = icmp ne i32 %and7, 0
  %1 = load i32, i32* @crng_init, align 4
  %cmp9 = icmp sgt i32 %1, 1
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.end28, label %if.then12, !prof !14

if.then12:                                        ; preds = %if.end3
  %and13 = and i32 %flags, 1
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.then12
  %call = call i32 @wait_for_random_bytes() #22
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end28, label %if.then25, !prof !8

if.then25:                                        ; preds = %if.end16
  %conv26 = sext i32 %call to i64
  br label %cleanup

if.end28:                                         ; preds = %if.end16, %if.end3
  %call29 = call fastcc i64 @urandom_read_nowarn(i8* noundef %buf, i64 noundef %spec.store.select) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %entry, %if.end28, %if.then25
  %retval.0 = phi i64 [ %call29, %if.end28 ], [ %conv26, %if.then25 ], [ -22, %entry ], [ -11, %if.then12 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(i8* noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #19

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #4 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nofree nounwind readonly }
attributes #16 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nobuiltin nounwind "no-builtins" }
attributes #21 = { nounwind }
attributes #22 = { nobuiltin "no-builtins" }
attributes #23 = { nounwind readonly }
attributes #24 = { cold nobuiltin nounwind "no-builtins" }
attributes #25 = { cold nobuiltin "no-builtins" }
attributes #26 = { nounwind readnone }
attributes #27 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{i64 2149733366}
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149130491, i64 2149130538, i64 2149130544, i64 2149130581, i64 2149130599, i64 2149131526, i64 2149131574, i64 2149131622, i64 2149131685, i64 2149131734, i64 2149130677, i64 2149130702, i64 2149130728, i64 2149130734, i64 2149130771, i64 2149130777, i64 2149130827, i64 2149130873, i64 2149130906}
!13 = !{i64 2155478553}
!14 = !{!"branch_weights", i32 4001, i32 1}
!15 = !{!"auto-init"}
!16 = !{i64 2155569448, i64 2155569486, i64 2155569503, i64 2155569537, i64 2155569559, i64 2155569585, i64 2155569603, i64 2155569761, i64 2155569802, i64 2155569824, i64 2155569870}
!17 = !{i64 2155574226, i64 2155574263, i64 2155574280, i64 2155574315, i64 2155574337, i64 2155574363, i64 2155574386, i64 2155574404, i64 2155574563, i64 2155574604, i64 2155574626, i64 2155574672}
!18 = !{i64 2155579098, i64 2155579135, i64 2155579152, i64 2155579187, i64 2155579209, i64 2155579235, i64 2155579258, i64 2155579276, i64 2155579435, i64 2155579476, i64 2155579498, i64 2155579544}
!19 = !{i64 2155583194, i64 2155583231, i64 2155583248, i64 2155583283, i64 2155583305, i64 2155583331, i64 2155583354, i64 2155583372, i64 2155583531, i64 2155583572, i64 2155583594, i64 2155583640}
!20 = !{i64 223886}
!21 = !{i64 2149728825}
!22 = !{i64 2149732882}
!23 = !{i64 2148993927, i64 2148993974, i64 2148993980, i64 2148994017, i64 2148994035, i64 2148995346, i64 2148995394, i64 2148995442, i64 2148995505, i64 2148995554, i64 2148994113, i64 2148994138, i64 2148994164, i64 2148994170, i64 2148995012, i64 2148995052, i64 2148995070, i64 2148995102, i64 2148995130, i64 2148995184, i64 2148995204, i64 2148995301, i64 2148994193, i64 2148994207, i64 2148994213, i64 2148994263, i64 2148994309, i64 2148994342}
!24 = !{i64 2148987914, i64 2148987961, i64 2148987967, i64 2148988004, i64 2148988022, i64 2148989333, i64 2148989381, i64 2148989429, i64 2148989492, i64 2148989541, i64 2148988100, i64 2148988125, i64 2148988151, i64 2148988157, i64 2148988999, i64 2148989039, i64 2148989057, i64 2148989089, i64 2148989117, i64 2148989171, i64 2148989191, i64 2148989288, i64 2148988180, i64 2148988194, i64 2148988200, i64 2148988250, i64 2148988296, i64 2148988329}
!25 = !{i64 2148990093, i64 2148990140, i64 2148990146, i64 2148990183, i64 2148990201, i64 2148991144, i64 2148991192, i64 2148991240, i64 2148991303, i64 2148991352, i64 2148990279, i64 2148990304, i64 2148990330, i64 2148990336, i64 2148990373, i64 2148990379, i64 2148990429, i64 2148990475, i64 2148990508}
!26 = !{i64 2148982211, i64 2148982258, i64 2148982264, i64 2148982301, i64 2148982319, i64 2148983660, i64 2148983708, i64 2148983756, i64 2148983819, i64 2148983868, i64 2148982397, i64 2148982422, i64 2148982448, i64 2148982454, i64 2148983326, i64 2148983366, i64 2148983384, i64 2148983416, i64 2148983444, i64 2148983498, i64 2148983518, i64 2148983615, i64 2148982477, i64 2148982491, i64 2148982497, i64 2148982547, i64 2148982593, i64 2148982626}
!27 = !{i64 2148027999, i64 2148028032, i64 2148028085, i64 2148028144, i64 2148028178, i64 2148028233, i64 2148028262, i64 2148028282}
!28 = !{i64 2149759209}
!29 = !{i64 2149702496}
!30 = !{i64 2149748367}
!31 = !{i64 2149755648}
!32 = !{i64 2148045207, i64 2148045240, i64 2148045292, i64 2148045351, i64 2148045385, i64 2148045441, i64 2148045470, i64 2148045497}
!33 = !{i64 2149300668}
!34 = !{i64 2155527813}
!35 = !{i64 2155533880}
!36 = !{i64 2149462635}
!37 = !{i64 2149464622}
!38 = !{i64 2149090629}
!39 = !{i64 4080101, i64 4080184, i64 4080408, i64 4080628, i64 4080651}
!40 = !{i64 4084803, i64 4084827}
!41 = !{i64 2151637587}
