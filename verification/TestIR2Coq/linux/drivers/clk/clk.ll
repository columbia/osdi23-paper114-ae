; ModuleID = 'drivers/clk/clk.c'
source_filename = "drivers/clk/clk.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall7s.init\22, \22a\22\09\09"
module asm "__initcall__kmod_clk__247_1320_clk_disable_unused7s:\09\09\09"
module asm ".long\09clk_disable_unused - .\09"
module asm ".previous\09\09\09\09\09"

%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type { i8*, %struct.clk_ops*, %struct.clk_hw*, %struct.module*, %struct.device*, %struct.device_node*, %struct.clk_core*, %struct.clk_parent_map*, i8, i8, i64, i64, i64, %struct.clk_core*, %struct.clk_core*, i64, i8, i8, i32, i32, i32, i64, i64, i64, i32, %struct.clk_duty, %struct.hlist_head, %struct.hlist_node, %struct.hlist_head, i32, %struct.kref }
%struct.module = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.62, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.62 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.57, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.58 }
%union.anon.58 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.35 }
%union.anon.35 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.32, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.17, %union.anon.18, i32 }
%struct.request_queue = type opaque
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.23 }
%struct.anon.23 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.31, i32, [12 x i8] }
%union.anon.31 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.33, %union.anon.48, %struct.atomic_t, [8 x i8] }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.48 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.49, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.49 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.52 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.50, %struct.qspinlock }
%union.anon.50 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.52 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.16 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.16 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { %struct.kuid_t }
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
%struct.block_device = type opaque
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.57 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.clk_parent_map = type { %struct.clk_hw*, %struct.clk_core*, i8*, i8*, i32 }
%struct.clk_duty = type { i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.clk = type { %struct.clk_core*, %struct.device*, i8*, i8*, i64, i64, i32, %struct.hlist_node }
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, %struct.notifier_block* }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.lockdep_map = type {}
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.of_clk_provider = type { %struct.list_head, %struct.device_node*, %struct.clk* (%struct.of_phandle_args*, i8*)*, %struct.clk_hw* (%struct.of_phandle_args*, i8*)*, i8* }
%struct.clk_notifier_data = type { %struct.clk*, i64, i64 }

@clk_root_list = internal global %struct.hlist_head zeroinitializer, align 8
@clk_orphan_list = internal global %struct.hlist_head zeroinitializer, align 8
@__setup_str_clk_ignore_unused_setup = internal constant [18 x i8] c"clk_ignore_unused\00", section ".init.rodata", align 1
@__setup_clk_ignore_unused_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__setup_str_clk_ignore_unused_setup, i32 0, i32 0), i32 (i8*)* @clk_ignore_unused_setup, i32 0 }, section ".init.setup", align 8
@__UNIQUE_ID___addressable_clk_disable_unused248 = internal global i8* bitcast (i32 ()* @clk_disable_unused to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [54 x i8] c"\013%s: clk %s dev %s con %s: invalid range [%lu, %lu]\0A\00", align 1
@__func__.clk_set_rate_range = private unnamed_addr constant [19 x i8] c"clk_set_rate_range\00", align 1
@clk_nodrv_ops = internal constant %struct.clk_ops { i32 (%struct.clk_hw*)* @clk_nodrv_prepare_enable, void (%struct.clk_hw*)* @clk_nodrv_disable_unprepare, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* @clk_nodrv_prepare_enable, void (%struct.clk_hw*)* @clk_nodrv_disable_unprepare, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* @clk_nodrv_set_parent, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_nodrv_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"\013%s: unregistered clock: %s\0A\00", align 1
@__func__.clk_unregister = private unnamed_addr constant [15 x i8] c"clk_unregister\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\014%s: unregistering prepared clock: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\014%s: unregistering protected clock: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"devm_clk_unregister_cb\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"devm_clk_hw_unregister_cb\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"devm_clk_release\00", align 1
@clk_notifier_list = internal global %struct.list_head { %struct.list_head* @clk_notifier_list, %struct.list_head* @clk_notifier_list }, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"devm_clk_notifier_release\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\013%s: invalid clock index %u\0A\00", align 1
@__func__.of_clk_src_onecell_get = private unnamed_addr constant [23 x i8] c"of_clk_src_onecell_get\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\013%s: invalid index %u\0A\00", align 1
@__func__.of_clk_hw_onecell_get = private unnamed_addr constant [22 x i8] c"of_clk_hw_onecell_get\00", align 1
@of_clk_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_clk_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_clk_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@of_clk_providers = internal global %struct.list_head { %struct.list_head* @of_clk_providers, %struct.list_head* @of_clk_providers }, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"devm_of_clk_release_provider\00", align 1
@__func__.of_clk_get_from_provider = private unnamed_addr constant [25 x i8] c"of_clk_get_from_provider\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"clock-indices\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"clock-critical\00", align 1
@__clk_of_table = external dso_local global %struct.of_device_id, align 8
@__clk_of_table_sentinel = internal constant %struct.of_device_id zeroinitializer, section "__clk_of_table_end", align 8
@prepare_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @prepare_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @prepare_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@prepare_owner = internal unnamed_addr global %struct.task_struct* null, align 8
@prepare_refcnt = internal unnamed_addr global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"%s already unprotected\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%s already unprepared\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Unpreparing critical %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Unpreparing enabled %s\0A\00", align 1
@enable_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"%s already disabled\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Disabling critical %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Enabling unprepared %s\0A\00", align 1
@clk_ignore_unused = internal unnamed_addr global i1 false, section ".init.data", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\014clk: Not disabling unused clocks\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"%s: invalid NULL in %s's .parent_names\0A\00", align 1
@__func__.clk_core_populate_parent_map = private unnamed_addr constant [29 x i8] c"clk_core_populate_parent_map\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Must specify parents if num_parents > 0\0A\00", align 1
@.str.26 = private unnamed_addr constant [84 x i8] c"\013%s: %s must implement .round_rate or .determine_rate in addition to .recalc_rate\0A\00", align 1
@__func__.__clk_core_init = private unnamed_addr constant [16 x i8] c"__clk_core_init\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"\013%s: %s must implement .get_parent & .set_parent\0A\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"\013%s: %s must implement .get_parent as it has multi parents\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"\013%s: %s must implement .set_parent & .set_rate\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\014%s: Failed to get phase for clk '%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"\014%s: critical clk '%s' failed to prepare\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"\014%s: critical clk '%s' failed to enable\0A\00", align 1
@enable_owner = internal unnamed_addr global %struct.task_struct* null, align 8
@enable_refcnt = internal unnamed_addr global i32 0, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"clock-ranges\00", align 1
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_clk_disable_unused248 to i8*), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__clk_of_table_sentinel, i32 0, i32 0, i32 0), i8* bitcast (%struct.obs_kernel_param* @__setup_clk_ignore_unused_setup to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @__clk_get_name(%struct.clk* noundef readonly %clk) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %1, %cond.false ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @clk_hw_get_name(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #0 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef readonly %clk) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 2
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.clk_hw* [ %1, %cond.false ], [ null, %entry ]
  ret %struct.clk_hw* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #0 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 8
  %1 = load i8, i8* %num_parents, align 8
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #0 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %tobool.not = icmp eq %struct.clk_core* %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %hw3 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw3, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.clk_hw* [ %2, %cond.true ], [ null, %entry ]
  ret %struct.clk_hw* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* nocapture noundef readonly %hw, i32 noundef %index) local_unnamed_addr #1 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %conv = trunc i32 %index to i8
  %call = call fastcc %struct.clk_core* @clk_core_get_parent_by_index(%struct.clk_core* noundef %0, i8 noundef %conv) #20
  %tobool.not = icmp eq %struct.clk_core* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %hw1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %call, i64 0, i32 2
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw1, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.clk_hw* [ %1, %cond.false ], [ null, %entry ]
  ret %struct.clk_hw* %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @clk_core_get_parent_by_index(%struct.clk_core* noundef readonly %core, i8 noundef %index) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %0 = load i8, i8* %num_parents, align 8
  %cmp.not = icmp ugt i8 %0, %index
  br i1 %cmp.not, label %lor.lhs.false3, label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  %1 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %tobool4.not = icmp eq %struct.clk_parent_map* %1, null
  br i1 %tobool4.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %idxprom = zext i8 %index to i64
  %core6 = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %1, i64 %idxprom, i32 1
  %2 = load %struct.clk_core*, %struct.clk_core** %core6, align 8
  %tobool7.not = icmp eq %struct.clk_core* %2, null
  br i1 %tobool7.not, label %if.then8, label %return

if.then8:                                         ; preds = %if.end
  call fastcc void @clk_core_fill_parent_index(%struct.clk_core* noundef nonnull %core, i8 noundef %index) #20
  %.pre = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %core13.phi.trans.insert = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %.pre, i64 %idxprom, i32 1
  %.pre22 = load %struct.clk_core*, %struct.clk_core** %core13.phi.trans.insert, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then8, %entry, %lor.lhs.false, %lor.lhs.false3
  %retval.0 = phi %struct.clk_core* [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %.pre22, %if.then8 ], [ %2, %if.end ]
  ret %struct.clk_core* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @__clk_get_enable_count(%struct.clk* noundef readonly %clk) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %enable_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 18
  %1 = load i32, i32* %enable_count, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %1, %cond.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @clk_hw_get_rate(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #0 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef %0) #20
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef readonly %core) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %0 = load i8, i8* %num_parents, align 8
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %tobool2.not = icmp eq %struct.clk_core* %1, null
  br i1 %tobool2.not, label %return, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %2 = load i64, i64* %rate, align 8
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.then3
  %retval.0 = phi i64 [ %2, %if.then3 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @clk_hw_get_flags(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #0 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 15
  %1 = load i64, i64* %flags, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @clk_hw_is_prepared(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #1 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i1 @clk_core_is_prepared(%struct.clk_core* noundef %0) #20
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @clk_core_is_prepared(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %is_prepared = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 2
  %1 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %is_prepared, align 8
  %tobool.not = icmp eq i32 (%struct.clk_hw*)* %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %2 = load i32, i32* %prepare_count, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call6 = call i32 %1(%struct.clk_hw* noundef %3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %call6, %if.end ], [ %2, %if.then ]
  %retval.0 = icmp ne i32 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @clk_hw_rate_is_protected(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #0 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i1 @clk_core_rate_is_protected(%struct.clk_core* noundef %0) #20
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clk_core_rate_is_protected(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #0 {
entry:
  %protect_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 20
  %0 = load i32, i32* %protect_count, align 4
  %tobool = icmp ne i32 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @clk_hw_is_enabled(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #1 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i1 @clk_core_is_enabled(%struct.clk_core* noundef %0) #20
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @clk_core_is_enabled(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %is_enabled = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 6
  %1 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %is_enabled, align 8
  %tobool.not = icmp eq i32 (%struct.clk_hw*)* %1, null
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %enable_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 18
  %2 = load i32, i32* %enable_count, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call10 = call i32 %1(%struct.clk_hw* noundef %3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0.in = phi i32 [ %2, %if.then ], [ %call10, %if.end7 ]
  %retval.0 = icmp ne i32 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__clk_is_enabled(%struct.clk* noundef readonly %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i1 @clk_core_is_enabled(%struct.clk_core* noundef %0) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_mux_determine_rate_flags(%struct.clk_hw* nocapture noundef readonly %hw, %struct.clk_rate_request* nocapture noundef %req, i64 noundef %flags) local_unnamed_addr #1 {
entry:
  %parent_req = alloca %struct.clk_rate_request, align 8
  %core1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core1, align 8
  %1 = bitcast %struct.clk_rate_request* %parent_req to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #22
  %2 = bitcast %struct.clk_rate_request* %req to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8* noundef align 8 dereferenceable(40) %2, i64 40, i1 false)
  %flags2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 15
  %3 = load i64, i64* %flags2, align 8
  %and = and i64 %3, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %parent3 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 6
  %4 = load %struct.clk_core*, %struct.clk_core** %parent3, align 8
  %and5 = and i64 %3, 4
  %tobool6.not = icmp eq i64 %and5, 0
  %tobool12.not = icmp eq %struct.clk_core* %4, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  br i1 %tobool12.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then7
  %hw9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %4, i64 0, i32 2
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw9, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then7, %cond.true
  %cond = phi %struct.clk_hw* [ %5, %cond.true ], [ null, %if.then7 ]
  %call = call i32 @__clk_determine_rate(%struct.clk_hw* noundef %cond, %struct.clk_rate_request* noundef nonnull %parent_req) #20
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end, label %cleanup

if.end:                                           ; preds = %cond.end
  %rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %parent_req, i64 0, i32 0
  %6 = load i64, i64* %rate, align 8
  br label %if.end52

if.else:                                          ; preds = %if.then
  br i1 %tobool12.not, label %if.else15, label %if.then13

if.then13:                                        ; preds = %if.else
  %call14 = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef nonnull %4) #20
  br label %if.end52

if.else15:                                        ; preds = %if.else
  %call16 = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef %0) #20
  br label %if.end52

if.end19:                                         ; preds = %entry
  %num_parents20 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 8
  %7 = load i8, i8* %num_parents20, align 8
  %conv = zext i8 %7 to i32
  %cmp99.not = icmp eq i8 %7, 0
  br i1 %cmp99.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end19
  %rate38 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %parent_req, i64 0, i32 0
  %rate40 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %best.0102 = phi i64 [ 0, %for.body.lr.ph ], [ %best.1, %for.inc ]
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %best_parent.0100 = phi %struct.clk_core* [ null, %for.body.lr.ph ], [ %best_parent.1, %for.inc ]
  %conv22 = trunc i32 %i.0101 to i8
  %call23 = call fastcc %struct.clk_core* @clk_core_get_parent_by_index(%struct.clk_core* noundef %0, i8 noundef %conv22) #20
  %tobool24.not = icmp eq %struct.clk_core* %call23, null
  br i1 %tobool24.not, label %for.inc, label %if.end26

if.end26:                                         ; preds = %for.body
  %8 = load i64, i64* %flags2, align 8
  %and28 = and i64 %8, 4
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.else36, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8* noundef align 8 dereferenceable(40) %2, i64 40, i1 false)
  %hw31 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %call23, i64 0, i32 2
  %9 = load %struct.clk_hw*, %struct.clk_hw** %hw31, align 8
  %call32 = call i32 @__clk_determine_rate(%struct.clk_hw* noundef %9, %struct.clk_rate_request* noundef nonnull %parent_req) #20
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end39_crit_edge, label %for.inc

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  %.pre = load i64, i64* %rate38, align 8
  br label %if.end39

if.else36:                                        ; preds = %if.end26
  %call37 = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef nonnull %call23) #20
  store i64 %call37, i64* %rate38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then30.if.end39_crit_edge, %if.else36
  %10 = phi i64 [ %.pre, %if.then30.if.end39_crit_edge ], [ %call37, %if.else36 ]
  %11 = load i64, i64* %rate40, align 8
  %call42 = call fastcc i1 @mux_is_better_rate(i64 noundef %11, i64 noundef %10, i64 noundef %best.0102, i64 noundef %flags) #20
  %spec.select = select i1 %call42, %struct.clk_core* %call23, %struct.clk_core* %best_parent.0100
  %spec.select94 = select i1 %call42, i64 %10, i64 %best.0102
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %if.then30, %for.body
  %best_parent.1 = phi %struct.clk_core* [ %best_parent.0100, %if.then30 ], [ %best_parent.0100, %for.body ], [ %spec.select, %if.end39 ]
  %best.1 = phi i64 [ %best.0102, %if.then30 ], [ %best.0102, %for.body ], [ %spec.select94, %if.end39 ]
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool46.not = icmp eq %struct.clk_core* %best_parent.1, null
  br i1 %tobool46.not, label %cleanup, label %if.then50

if.then50:                                        ; preds = %for.end
  %hw51 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %best_parent.1, i64 0, i32 2
  %12 = load %struct.clk_hw*, %struct.clk_hw** %hw51, align 8
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  store %struct.clk_hw* %12, %struct.clk_hw** %best_parent_hw, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else15, %if.then13, %if.end, %if.then50
  %best.298 = phi i64 [ %best.1, %if.then50 ], [ %call16, %if.else15 ], [ %call14, %if.then13 ], [ %6, %if.end ]
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  store i64 %best.298, i64* %best_parent_rate, align 8
  %rate53 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %best.298, i64* %rate53, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.end, %cond.end, %if.end52
  %retval.0 = phi i32 [ 0, %if.end52 ], [ %call, %cond.end ], [ -22, %for.end ], [ -22, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #22
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__clk_determine_rate(%struct.clk_hw* noundef readonly %hw, %struct.clk_rate_request* noundef %req) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_hw* %hw, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 0, i64* %rate, align 8
  br label %return

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i32 @clk_core_round_rate_nolock(%struct.clk_core* noundef %0, %struct.clk_rate_request* noundef %req) #20
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @mux_is_better_rate(i64 noundef %rate, i64 noundef %now, i64 noundef %best, i64 noundef %flags) unnamed_addr #5 {
entry:
  %and = and i64 %flags, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i64 %now, %rate
  %0 = call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %sub3 = sub i64 %best, %rate
  %1 = call i64 @llvm.abs.i64(i64 %sub3, i1 false)
  %cmp11 = icmp slt i64 %0, %1
  br label %return

if.end:                                           ; preds = %entry
  %cmp12 = icmp ule i64 %now, %rate
  %cmp13 = icmp ugt i64 %now, %best
  %2 = and i1 %cmp12, %cmp13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp11, %if.then ], [ %2, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @__clk_lookup(i8* noundef %name) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.clk_core* @clk_core_lookup(i8* noundef %name) #20
  %tobool.not = icmp eq %struct.clk_core* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %call, i64 0, i32 2
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %0, i64 0, i32 1
  %1 = load %struct.clk*, %struct.clk** %clk, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.clk* [ %1, %cond.false ], [ null, %entry ]
  ret %struct.clk* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @clk_core_lookup(i8* noundef %name) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_root_list, i64 0, i32 0), align 8
  %tobool1.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool3.not9299 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool3.not92 = or i1 %tobool1.not, %tobool3.not9299
  br i1 %tobool3.not92, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %root_clk.093 = phi %struct.clk_core* [ %spec.select88, %for.inc ], [ %1, %for.body.preheader ]
  %call = call fastcc %struct.clk_core* @__clk_lookup_subtree(i8* noundef nonnull %name, %struct.clk_core* noundef nonnull %root_clk.093) #20
  %tobool4.not = icmp eq %struct.clk_core* %call, null
  br i1 %tobool4.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %root_clk.093, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool9.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr16 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr16 to %struct.clk_core*
  %spec.select88 = select i1 %tobool9.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool3.not = icmp eq %struct.clk_core* %spec.select88, null
  br i1 %tobool3.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %4 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_orphan_list, i64 0, i32 0), align 8
  %tobool22.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr29 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12, i32 1
  %tobool34.not94100 = icmp eq %struct.hlist_node*** %add.ptr29, null
  %tobool34.not94 = or i1 %tobool22.not, %tobool34.not94100
  br i1 %tobool34.not94, label %cleanup, label %for.body35.preheader

for.body35.preheader:                             ; preds = %for.end
  %5 = bitcast %struct.hlist_node*** %add.ptr29 to %struct.clk_core*
  br label %for.body35

for.body35:                                       ; preds = %for.body35.preheader, %for.inc40
  %root_clk.195 = phi %struct.clk_core* [ %spec.select90, %for.inc40 ], [ %5, %for.body35.preheader ]
  %call36 = call fastcc %struct.clk_core* @__clk_lookup_subtree(i8* noundef nonnull %name, %struct.clk_core* noundef nonnull %root_clk.195) #20
  %tobool37.not = icmp eq %struct.clk_core* %call36, null
  br i1 %tobool37.not, label %for.inc40, label %cleanup

for.inc40:                                        ; preds = %for.body35
  %next43 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %root_clk.195, i64 0, i32 27, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next43, align 8
  %tobool45.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr52 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr52 to %struct.clk_core*
  %spec.select90 = select i1 %tobool45.not, %struct.clk_core* null, %struct.clk_core* %7
  %tobool34.not = icmp eq %struct.clk_core* %spec.select90, null
  br i1 %tobool34.not, label %cleanup, label %for.body35

cleanup:                                          ; preds = %for.body, %for.body35, %for.inc40, %for.end, %entry
  %retval.0 = phi %struct.clk_core* [ null, %entry ], [ null, %for.end ], [ %call36, %for.body35 ], [ null, %for.inc40 ], [ %call, %for.body ]
  ret %struct.clk_core* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @clk_hw_set_rate_range(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %min_rate, i64 noundef %max_rate) local_unnamed_addr #6 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %min_rate1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 21
  store i64 %min_rate, i64* %min_rate1, align 8
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %max_rate3 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 22
  store i64 %max_rate, i64* %max_rate3, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__clk_mux_determine_rate(%struct.clk_hw* nocapture noundef readonly %hw, %struct.clk_rate_request* nocapture noundef %req) local_unnamed_addr #1 {
entry:
  %call = call i32 @clk_mux_determine_rate_flags(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* noundef %req, i64 noundef 0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__clk_mux_determine_rate_closest(%struct.clk_hw* nocapture noundef readonly %hw, %struct.clk_rate_request* nocapture noundef %req) local_unnamed_addr #1 {
entry:
  %call = call i32 @clk_mux_determine_rate_flags(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* noundef %req, i64 noundef 16) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_rate_exclusive_put(%struct.clk* noundef %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %0 = load i32, i32* %exclusive_count, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then8, label %if.end19, !prof !7

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 734; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !8
  br label %out

if.end19:                                         ; preds = %if.end
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %1) #20
  %2 = load i32, i32* %exclusive_count, align 8
  %dec = add i32 %2, -1
  store i32 %dec, i32* %exclusive_count, align 8
  br label %out

out:                                              ; preds = %if.then8, %if.end19
  call fastcc void @clk_prepare_unlock() #20
  br label %return

return:                                           ; preds = %entry, %out
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_prepare_lock() unnamed_addr #1 {
entry:
  %call = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @prepare_lock) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %0 = load %struct.task_struct*, %struct.task_struct** @prepare_owner, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %0, %2
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* @prepare_refcnt, align 4
  %inc = add i32 %3, 1
  br label %return

if.end:                                           ; preds = %if.then
  call void @mutex_lock(%struct.mutex* noundef nonnull @prepare_lock) #21
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %4 = load %struct.task_struct*, %struct.task_struct** @prepare_owner, align 8
  %cmp4.not = icmp eq %struct.task_struct* %4, null
  br i1 %cmp4.not, label %if.end13, label %if.then12, !prof !10

if.then12:                                        ; preds = %if.end3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 142; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end3
  %5 = load i32, i32* @prepare_refcnt, align 4
  %cmp22.not = icmp eq i32 %5, 0
  br i1 %cmp22.not, label %if.end37, label %if.then36, !prof !10

if.then36:                                        ; preds = %if.end13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 143; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !12
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end13
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !9
  %7 = inttoptr i64 %6 to %struct.task_struct*
  store %struct.task_struct* %7, %struct.task_struct** @prepare_owner, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then2
  %storemerge = phi i32 [ 1, %if.end37 ], [ %inc, %if.then2 ]
  store i32 %storemerge, i32* @prepare_refcnt, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %protect_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 20
  %0 = load i32, i32* %protect_count, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end11, label %if.end27, !prof !7

do.end11:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* noundef %1) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 677; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !13
  br label %return

if.end27:                                         ; preds = %if.end
  %dec = add i32 %0, -1
  store i32 %dec, i32* %protect_count, align 4
  %cmp29.not = icmp eq i32 %dec, 0
  br i1 %cmp29.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end27
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %2 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %2) #20
  br label %return

return:                                           ; preds = %do.end11, %if.end27, %entry, %if.end32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_prepare_unlock() unnamed_addr #1 {
entry:
  %0 = load %struct.task_struct*, %struct.task_struct** @prepare_owner, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %0, %2
  br i1 %cmp.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 150; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @prepare_refcnt, align 4
  %cmp15 = icmp eq i32 %3, 0
  br i1 %cmp15, label %if.then29, label %if.end30, !prof !7

if.then29:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 151; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !15
  %.pre = load i32, i32* @prepare_refcnt, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end
  %4 = phi i32 [ %.pre, %if.then29 ], [ %3, %if.end ]
  %dec = add i32 %4, -1
  store i32 %dec, i32* @prepare_refcnt, align 4
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %if.end41, label %return

if.end41:                                         ; preds = %if.end30
  store %struct.task_struct* null, %struct.task_struct** @prepare_owner, align 8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @prepare_lock) #21
  br label %return

return:                                           ; preds = %if.end30, %if.end41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_rate_exclusive_get(%struct.clk* noundef %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %0) #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %1 = load i32, i32* %exclusive_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %exclusive_count, align 8
  call fastcc void @clk_prepare_unlock() #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %core) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %protect_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 20
  %0 = load i32, i32* %protect_count, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %1) #20
  %.pre = load i32, i32* %protect_count, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %2 = phi i32 [ %.pre, %if.then1 ], [ %0, %if.end ]
  %inc = add i32 %2, 1
  store i32 %inc, i32* %protect_count, align 4
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_unprepare(%struct.clk* noundef %clk) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.clk* %clk to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #20
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_unprepare_lock(%struct.clk_core* noundef %1) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #8 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_unprepare_lock(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  call fastcc void @clk_prepare_lock() #20
  call fastcc void @clk_core_unprepare(%struct.clk_core* noundef %core) #20
  call fastcc void @clk_prepare_unlock() #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_prepare(%struct.clk* noundef readonly %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i32 @clk_core_prepare_lock(%struct.clk_core* noundef %0) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_prepare_lock(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  call fastcc void @clk_prepare_lock() #20
  %call = call fastcc i32 @clk_core_prepare(%struct.clk_core* noundef %core) #20
  call fastcc void @clk_prepare_unlock() #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_disable(%struct.clk* noundef %clk) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.clk* %clk to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #20
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_disable_lock(%struct.clk_core* noundef %1) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_disable_lock(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @clk_enable_lock() #20
  call fastcc void @clk_core_disable(%struct.clk_core* noundef %core) #20
  call fastcc void @clk_enable_unlock(i64 noundef %call) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_gate_restore_context(%struct.clk_hw* noundef %hw) local_unnamed_addr #1 {
entry:
  %core1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core1, align 8
  %enable_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 18
  %1 = load i32, i32* %enable_count, align 4
  %tobool.not = icmp eq i32 %1, 0
  %ops2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 1
  %2 = load %struct.clk_ops*, %struct.clk_ops** %ops2, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %enable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %2, i64 0, i32 4
  %3 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %enable, align 8
  %call = call i32 %3(%struct.clk_hw* noundef %hw) #21
  br label %if.end

if.else:                                          ; preds = %entry
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %2, i64 0, i32 5
  %4 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8
  call void %4(%struct.clk_hw* noundef %hw) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_save_context() local_unnamed_addr #1 {
entry:
  %0 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_root_list, i64 0, i32 0), align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool2.not8693 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool2.not86 = or i1 %tobool.not, %tobool2.not8693
  br i1 %tobool2.not86, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %clk.087 = phi %struct.clk_core* [ %spec.select82, %for.inc ], [ %1, %for.body.preheader ]
  %call = call fastcc i32 @clk_core_save_context(%struct.clk_core* noundef nonnull %clk.087) #20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %clk.087, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool5.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr12 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr12 to %struct.clk_core*
  %spec.select82 = select i1 %tobool5.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool2.not = icmp eq %struct.clk_core* %spec.select82, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %4 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_orphan_list, i64 0, i32 0), align 8
  %tobool18.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr25 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12, i32 1
  %tobool30.not8894 = icmp eq %struct.hlist_node*** %add.ptr25, null
  %tobool30.not88 = or i1 %tobool18.not, %tobool30.not8894
  br i1 %tobool30.not88, label %cleanup, label %for.body31.preheader

for.body31.preheader:                             ; preds = %for.end
  %5 = bitcast %struct.hlist_node*** %add.ptr25 to %struct.clk_core*
  br label %for.body31

for.body31:                                       ; preds = %for.body31.preheader, %for.inc36
  %clk.189 = phi %struct.clk_core* [ %spec.select84, %for.inc36 ], [ %5, %for.body31.preheader ]
  %call32 = call fastcc i32 @clk_core_save_context(%struct.clk_core* noundef nonnull %clk.189) #20
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %cleanup, label %for.inc36

for.inc36:                                        ; preds = %for.body31
  %next39 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %clk.189, i64 0, i32 27, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next39, align 8
  %tobool41.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr48 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr48 to %struct.clk_core*
  %spec.select84 = select i1 %tobool41.not, %struct.clk_core* null, %struct.clk_core* %7
  %tobool30.not = icmp eq %struct.clk_core* %spec.select84, null
  br i1 %tobool30.not, label %cleanup, label %for.body31

cleanup:                                          ; preds = %for.body, %for.body31, %for.inc36, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %call32, %for.body31 ], [ 0, %for.inc36 ], [ %call, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_save_context(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #1 {
entry:
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool2.not4750 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool2.not47 = or i1 %tobool.not, %tobool2.not4750
  br i1 %tobool2.not47, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %child.048 = phi %struct.clk_core* [ %spec.select45, %for.inc ], [ %1, %for.body.preheader ]
  %call = call fastcc i32 @clk_core_save_context(%struct.clk_core* noundef nonnull %child.048) #20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.048, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool5.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr12 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr12 to %struct.clk_core*
  %spec.select45 = select i1 %tobool5.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool2.not = icmp eq %struct.clk_core* %spec.select45, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %ret.0.lcssa = phi i32 [ 0, %entry ], [ %call, %for.inc ]
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %4 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %tobool16.not = icmp eq %struct.clk_ops* %4, null
  br i1 %tobool16.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %save_context = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %4, i64 0, i32 8
  %5 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %save_context, align 8
  %tobool18.not = icmp eq i32 (%struct.clk_hw*)* %5, null
  br i1 %tobool18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %6 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call22 = call i32 %5(%struct.clk_hw* noundef %6) #21
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end, %land.lhs.true, %if.then19
  %retval.0 = phi i32 [ %call22, %if.then19 ], [ %ret.0.lcssa, %land.lhs.true ], [ %ret.0.lcssa, %for.end ], [ %call, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_restore_context() local_unnamed_addr #1 {
entry:
  %0 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_root_list, i64 0, i32 0), align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool2.not7680 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool2.not76 = or i1 %tobool.not, %tobool2.not7680
  br i1 %tobool2.not76, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %core.077 = phi %struct.clk_core* [ %spec.select73, %for.body ], [ %1, %for.body.preheader ]
  call fastcc void @clk_core_restore_context(%struct.clk_core* noundef nonnull %core.077) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core.077, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool5.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr12 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr12 to %struct.clk_core*
  %spec.select73 = select i1 %tobool5.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool2.not = icmp eq %struct.clk_core* %spec.select73, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %4 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_orphan_list, i64 0, i32 0), align 8
  %tobool18.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr25 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12, i32 1
  %tobool30.not7881 = icmp eq %struct.hlist_node*** %add.ptr25, null
  %tobool30.not78 = or i1 %tobool18.not, %tobool30.not7881
  br i1 %tobool30.not78, label %for.end48, label %for.body31.preheader

for.body31.preheader:                             ; preds = %for.end
  %5 = bitcast %struct.hlist_node*** %add.ptr25 to %struct.clk_core*
  br label %for.body31

for.body31:                                       ; preds = %for.body31.preheader, %for.body31
  %core.179 = phi %struct.clk_core* [ %spec.select75, %for.body31 ], [ %5, %for.body31.preheader ]
  call fastcc void @clk_core_restore_context(%struct.clk_core* noundef nonnull %core.179) #20
  %next35 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core.179, i64 0, i32 27, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next35, align 8
  %tobool37.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr44 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr44 to %struct.clk_core*
  %spec.select75 = select i1 %tobool37.not, %struct.clk_core* null, %struct.clk_core* %7
  %tobool30.not = icmp eq %struct.clk_core* %spec.select75, null
  br i1 %tobool30.not, label %for.end48, label %for.body31

for.end48:                                        ; preds = %for.body31, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_restore_context(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %tobool.not = icmp eq %struct.clk_ops* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %restore_context = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 9
  %1 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %restore_context, align 8
  %tobool2.not = icmp eq void (%struct.clk_hw*)* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  call void %1(%struct.clk_hw* noundef %2) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool5.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -12, i32 1
  %tobool7.not3941 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool7.not39 = or i1 %tobool5.not, %tobool7.not3941
  br i1 %tobool7.not39, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %child.040 = phi %struct.clk_core* [ %spec.select38, %for.body ], [ %4, %for.body.preheader ]
  call fastcc void @clk_core_restore_context(%struct.clk_core* noundef nonnull %child.040) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.040, i64 0, i32 27, i32 0
  %5 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool10.not = icmp eq %struct.hlist_node* %5, null
  %add.ptr17 = getelementptr %struct.hlist_node, %struct.hlist_node* %5, i64 -12, i32 1
  %6 = bitcast %struct.hlist_node*** %add.ptr17 to %struct.clk_core*
  %spec.select38 = select i1 %tobool10.not, %struct.clk_core* null, %struct.clk_core* %6
  %tobool7.not = icmp eq %struct.clk_core* %spec.select38, null
  br i1 %tobool7.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_enable(%struct.clk* noundef readonly %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i32 @clk_core_enable_lock(%struct.clk_core* noundef %0) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_enable_lock(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @clk_enable_lock() #20
  %call1 = call fastcc i32 @clk_core_enable(%struct.clk_core* noundef %core) #20
  call fastcc void @clk_enable_unlock(i64 noundef %call) #20
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @clk_is_enabled_when_prepared(%struct.clk* noundef readonly %clk) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %land.end6, label %land.rhs

land.rhs:                                         ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 1
  %1 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %enable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 4
  %2 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %enable, align 8
  %tobool1.not = icmp eq i32 (%struct.clk_hw*)* %2, null
  br i1 %tobool1.not, label %land.end6, label %land.rhs2

land.rhs2:                                        ; preds = %land.rhs
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 5
  %3 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8
  %tobool5 = icmp eq void (%struct.clk_hw*)* %3, null
  br label %land.end6

land.end6:                                        ; preds = %land.rhs, %land.rhs2, %entry
  %4 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ %tobool5, %land.rhs2 ]
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @clk_ignore_unused_setup(i8* nocapture noundef readnone %__unused) #9 section ".init.text" {
entry:
  store i1 true, i1* @clk_ignore_unused, align 1
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @clk_disable_unused() #10 section ".init.text" {
entry:
  %.b163 = load i1, i1* @clk_ignore_unused, align 1
  br i1 %.b163, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0)) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %0 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_root_list, i64 0, i32 0), align 8
  %tobool2.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool7.not178186 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool7.not178 = or i1 %tobool2.not, %tobool7.not178186
  br i1 %tobool7.not178, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %core.0179 = phi %struct.clk_core* [ %spec.select171, %for.body ], [ %1, %for.body.preheader ]
  call fastcc void @clk_disable_unused_subtree(%struct.clk_core* noundef nonnull %core.0179) #25
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core.0179, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool10.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr17 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr17 to %struct.clk_core*
  %spec.select171 = select i1 %tobool10.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool7.not = icmp eq %struct.clk_core* %spec.select171, null
  br i1 %tobool7.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %4 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_orphan_list, i64 0, i32 0), align 8
  %tobool23.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr30 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12, i32 1
  %tobool35.not180187 = icmp eq %struct.hlist_node*** %add.ptr30, null
  %tobool35.not180 = or i1 %tobool23.not, %tobool35.not180187
  br i1 %tobool35.not180, label %for.end53, label %for.body36.preheader

for.body36.preheader:                             ; preds = %for.end
  %5 = bitcast %struct.hlist_node*** %add.ptr30 to %struct.clk_core*
  br label %for.body36

for.body36:                                       ; preds = %for.body36.preheader, %for.body36
  %core.1181 = phi %struct.clk_core* [ %spec.select173, %for.body36 ], [ %5, %for.body36.preheader ]
  call fastcc void @clk_disable_unused_subtree(%struct.clk_core* noundef nonnull %core.1181) #25
  %next40 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core.1181, i64 0, i32 27, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next40, align 8
  %tobool42.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr49 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr49 to %struct.clk_core*
  %spec.select173 = select i1 %tobool42.not, %struct.clk_core* null, %struct.clk_core* %7
  %tobool35.not = icmp eq %struct.clk_core* %spec.select173, null
  br i1 %tobool35.not, label %for.end53, label %for.body36

for.end53:                                        ; preds = %for.body36, %for.end
  %8 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_root_list, i64 0, i32 0), align 8
  %tobool56.not = icmp eq %struct.hlist_node* %8, null
  %add.ptr63 = getelementptr %struct.hlist_node, %struct.hlist_node* %8, i64 -12, i32 1
  %tobool68.not182188 = icmp eq %struct.hlist_node*** %add.ptr63, null
  %tobool68.not182 = or i1 %tobool56.not, %tobool68.not182188
  br i1 %tobool68.not182, label %for.end86, label %for.body69.preheader

for.body69.preheader:                             ; preds = %for.end53
  %9 = bitcast %struct.hlist_node*** %add.ptr63 to %struct.clk_core*
  br label %for.body69

for.body69:                                       ; preds = %for.body69.preheader, %for.body69
  %core.2183 = phi %struct.clk_core* [ %spec.select175, %for.body69 ], [ %9, %for.body69.preheader ]
  call fastcc void @clk_unprepare_unused_subtree(%struct.clk_core* noundef nonnull %core.2183) #25
  %next73 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core.2183, i64 0, i32 27, i32 0
  %10 = load %struct.hlist_node*, %struct.hlist_node** %next73, align 8
  %tobool75.not = icmp eq %struct.hlist_node* %10, null
  %add.ptr82 = getelementptr %struct.hlist_node, %struct.hlist_node* %10, i64 -12, i32 1
  %11 = bitcast %struct.hlist_node*** %add.ptr82 to %struct.clk_core*
  %spec.select175 = select i1 %tobool75.not, %struct.clk_core* null, %struct.clk_core* %11
  %tobool68.not = icmp eq %struct.clk_core* %spec.select175, null
  br i1 %tobool68.not, label %for.end86, label %for.body69

for.end86:                                        ; preds = %for.body69, %for.end53
  %12 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_orphan_list, i64 0, i32 0), align 8
  %tobool89.not = icmp eq %struct.hlist_node* %12, null
  %add.ptr96 = getelementptr %struct.hlist_node, %struct.hlist_node* %12, i64 -12, i32 1
  %tobool101.not184189 = icmp eq %struct.hlist_node*** %add.ptr96, null
  %tobool101.not184 = or i1 %tobool89.not, %tobool101.not184189
  br i1 %tobool101.not184, label %for.end119, label %for.body102.preheader

for.body102.preheader:                            ; preds = %for.end86
  %13 = bitcast %struct.hlist_node*** %add.ptr96 to %struct.clk_core*
  br label %for.body102

for.body102:                                      ; preds = %for.body102.preheader, %for.body102
  %core.3185 = phi %struct.clk_core* [ %spec.select177, %for.body102 ], [ %13, %for.body102.preheader ]
  call fastcc void @clk_unprepare_unused_subtree(%struct.clk_core* noundef nonnull %core.3185) #25
  %next106 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core.3185, i64 0, i32 27, i32 0
  %14 = load %struct.hlist_node*, %struct.hlist_node** %next106, align 8
  %tobool108.not = icmp eq %struct.hlist_node* %14, null
  %add.ptr115 = getelementptr %struct.hlist_node, %struct.hlist_node* %14, i64 -12, i32 1
  %15 = bitcast %struct.hlist_node*** %add.ptr115 to %struct.clk_core*
  %spec.select177 = select i1 %tobool108.not, %struct.clk_core* null, %struct.clk_core* %15
  %tobool101.not = icmp eq %struct.clk_core* %spec.select177, null
  br i1 %tobool101.not, label %for.end119, label %for.body102

for.end119:                                       ; preds = %for.body102, %for.end86
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %for.end119, %do.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_round_rate_nolock(%struct.clk_core* noundef %core, %struct.clk_rate_request* noundef %req) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 0, i64* %rate, align 8
  br label %return

if.end:                                           ; preds = %entry
  call fastcc void @clk_core_init_rate_req(%struct.clk_core* noundef nonnull %core, %struct.clk_rate_request* noundef %req) #20
  %call = call fastcc i1 @clk_core_can_round(%struct.clk_core* noundef nonnull %core) #20
  br i1 %call, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = call fastcc i32 @clk_core_determine_round_nolock(%struct.clk_core* noundef nonnull %core, %struct.clk_rate_request* noundef %req) #20
  br label %return

if.else:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 4
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.else
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %call5 = call fastcc i32 @clk_core_round_rate_nolock(%struct.clk_core* noundef %1, %struct.clk_rate_request* noundef %req) #20
  br label %return

if.end7:                                          ; preds = %if.else
  %rate8 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %2 = load i64, i64* %rate8, align 8
  %rate9 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %2, i64* %rate9, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then1, %if.then
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call5, %if.then4 ], [ 0, %if.end7 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @clk_hw_round_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate) local_unnamed_addr #1 {
entry:
  %req = alloca %struct.clk_rate_request, align 8
  %0 = bitcast %struct.clk_rate_request* %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !16
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %min_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 1
  %max_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 2
  call fastcc void @clk_core_get_boundaries(%struct.clk_core* noundef %1, i64* noundef %min_rate, i64* noundef %max_rate) #20
  %rate1 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %rate, i64* %rate1, align 8
  %2 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i32 @clk_core_round_rate_nolock(%struct.clk_core* noundef %2, %struct.clk_rate_request* noundef nonnull %req) #20
  %tobool.not = icmp eq i32 %call, 0
  %3 = load i64, i64* %rate1, align 8
  %retval.0 = select i1 %tobool.not, i64 %3, i64 0
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #22
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @clk_core_get_boundaries(%struct.clk_core* nocapture noundef readonly %core, i64* nocapture noundef %min_rate, i64* nocapture noundef %max_rate) unnamed_addr #11 {
entry:
  %min_rate1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 21
  %0 = load i64, i64* %min_rate1, align 8
  store i64 %0, i64* %min_rate, align 8
  %max_rate2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 22
  %1 = load i64, i64* %max_rate2, align 8
  store i64 %1, i64* %max_rate, align 8
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 28, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -4, i32 1
  %tobool7.not111117 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool7.not111 = or i1 %tobool.not, %tobool7.not111117
  br i1 %tobool7.not111, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %3 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk*
  %.pre = load i64, i64* %min_rate, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %4 = phi i64 [ %cond13, %for.body ], [ %.pre, %for.body.preheader ]
  %clk_user.0112 = phi %struct.clk* [ %spec.select108, %for.body ], [ %3, %for.body.preheader ]
  %min_rate8 = getelementptr inbounds %struct.clk, %struct.clk* %clk_user.0112, i64 0, i32 4
  %5 = load i64, i64* %min_rate8, align 8
  %cmp = icmp ugt i64 %4, %5
  %cond13 = select i1 %cmp, i64 %4, i64 %5
  store i64 %cond13, i64* %min_rate, align 8
  %next = getelementptr inbounds %struct.clk, %struct.clk* %clk_user.0112, i64 0, i32 7, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool16.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr23 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -4, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr23 to %struct.clk*
  %spec.select108 = select i1 %tobool16.not, %struct.clk* null, %struct.clk* %7
  %tobool7.not = icmp eq %struct.clk* %spec.select108, null
  br i1 %tobool7.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %.pre115 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %8 = phi %struct.hlist_node* [ %.pre115, %for.end.loopexit ], [ %2, %entry ]
  %tobool31.not = icmp eq %struct.hlist_node* %8, null
  %add.ptr38 = getelementptr %struct.hlist_node, %struct.hlist_node* %8, i64 -4, i32 1
  %tobool43.not113118 = icmp eq %struct.hlist_node*** %add.ptr38, null
  %tobool43.not113 = or i1 %tobool31.not, %tobool43.not113118
  br i1 %tobool43.not113, label %for.end68, label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.end
  %9 = bitcast %struct.hlist_node*** %add.ptr38 to %struct.clk*
  %.pre116 = load i64, i64* %max_rate, align 8
  br label %for.body44

for.body44:                                       ; preds = %for.body44.preheader, %for.body44
  %10 = phi i64 [ %cond51, %for.body44 ], [ %.pre116, %for.body44.preheader ]
  %clk_user.1114 = phi %struct.clk* [ %spec.select110, %for.body44 ], [ %9, %for.body44.preheader ]
  %max_rate45 = getelementptr inbounds %struct.clk, %struct.clk* %clk_user.1114, i64 0, i32 5
  %11 = load i64, i64* %max_rate45, align 8
  %cmp47 = icmp ult i64 %10, %11
  %cond51 = select i1 %cmp47, i64 %10, i64 %11
  store i64 %cond51, i64* %max_rate, align 8
  %next55 = getelementptr inbounds %struct.clk, %struct.clk* %clk_user.1114, i64 0, i32 7, i32 0
  %12 = load %struct.hlist_node*, %struct.hlist_node** %next55, align 8
  %tobool57.not = icmp eq %struct.hlist_node* %12, null
  %add.ptr64 = getelementptr %struct.hlist_node, %struct.hlist_node* %12, i64 -4, i32 1
  %13 = bitcast %struct.hlist_node*** %add.ptr64 to %struct.clk*
  %spec.select110 = select i1 %tobool57.not, %struct.clk* null, %struct.clk* %13
  %tobool43.not = icmp eq %struct.clk* %spec.select110, null
  br i1 %tobool43.not, label %for.end68, label %for.body44

for.end68:                                        ; preds = %for.body44, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @clk_round_rate(%struct.clk* noundef readonly %clk, i64 noundef %rate) local_unnamed_addr #1 {
entry:
  %req = alloca %struct.clk_rate_request, align 8
  %0 = bitcast %struct.clk_rate_request* %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !16
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %1 = load i32, i32* %exclusive_count, align 8
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %2) #20
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %core4 = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %3 = load %struct.clk_core*, %struct.clk_core** %core4, align 8
  %min_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 1
  %max_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 2
  call fastcc void @clk_core_get_boundaries(%struct.clk_core* noundef %3, i64* noundef %min_rate, i64* noundef %max_rate) #20
  %rate5 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %rate, i64* %rate5, align 8
  %4 = load %struct.clk_core*, %struct.clk_core** %core4, align 8
  %call = call fastcc i32 @clk_core_round_rate_nolock(%struct.clk_core* noundef %4, %struct.clk_rate_request* noundef nonnull %req) #20
  %5 = load i32, i32* %exclusive_count, align 8
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end3
  %6 = load %struct.clk_core*, %struct.clk_core** %core4, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %6) #20
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end3
  call fastcc void @clk_prepare_unlock() #20
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  %conv = sext i32 %call to i64
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %7 = load i64, i64* %rate5, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14, %if.then13
  %retval.0 = phi i64 [ %conv, %if.then13 ], [ %7, %if.end14 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #22
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @clk_get_accuracy(%struct.clk* noundef readonly %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i64 @clk_core_get_accuracy_recalc(%struct.clk_core* noundef %0) #20
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @clk_core_get_accuracy_recalc(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 256
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @__clk_recalc_accuracies(%struct.clk_core* noundef nonnull %core) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call fastcc i64 @clk_core_get_accuracy_no_lock(%struct.clk_core* noundef %core) #20
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @clk_get_rate(%struct.clk* noundef readonly %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i64 @clk_core_get_rate_recalc(%struct.clk_core* noundef %0) #20
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @clk_core_get_rate_recalc(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 64
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @__clk_recalc_rates(%struct.clk_core* noundef nonnull %core, i64 noundef 0) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef %core) #20
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_hw_get_parent_index(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #1 {
entry:
  %call = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef %hw) #20
  %cmp = icmp eq %struct.clk_hw* %call, null
  br i1 %cmp, label %if.then, label %if.end16, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 1721; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !17
  br label %cleanup

if.end16:                                         ; preds = %entry
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %core17 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %call, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core17, align 8
  %call18 = call fastcc i32 @clk_fetch_parent_index(%struct.clk_core* noundef %0, %struct.clk_core* noundef %1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end16
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_fetch_parent_index(%struct.clk_core* nocapture noundef readonly %core, %struct.clk_core* noundef %parent) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %parent, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %0 = load i8, i8* %num_parents, align 8
  %cmp89.not = icmp eq i8 %0, 0
  br i1 %cmp89.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  %hw23 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %parent, i64 0, i32 2
  %name38 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %parent, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %1 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %idxprom = sext i32 %i.090 to i64
  %core2 = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %1, i64 %idxprom, i32 1
  %2 = load %struct.clk_core*, %struct.clk_core** %core2, align 8
  %cmp3 = icmp eq %struct.clk_core* %2, %parent
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %for.body
  %tobool11.not = icmp eq %struct.clk_core* %2, null
  br i1 %tobool11.not, label %if.end13, label %for.inc

if.end13:                                         ; preds = %if.end6
  %hw = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %1, i64 %idxprom, i32 0
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %tobool17.not = icmp eq %struct.clk_hw* %3, null
  br i1 %tobool17.not, label %if.end28, label %if.then18

if.then18:                                        ; preds = %if.end13
  %4 = load %struct.clk_hw*, %struct.clk_hw** %hw23, align 8
  %cmp24 = icmp eq %struct.clk_hw* %3, %4
  br i1 %cmp24, label %for.end, label %for.inc

if.end28:                                         ; preds = %if.end13
  %conv29 = trunc i32 %i.090 to i8
  %call = call fastcc %struct.clk_core* @clk_core_get(%struct.clk_core* noundef %core, i8 noundef %conv29) #20
  %cmp30 = icmp eq %struct.clk_core* %call, %parent
  br i1 %cmp30, label %for.end, label %if.end33

if.end33:                                         ; preds = %if.end28
  %5 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %name = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %5, i64 %idxprom, i32 3
  %6 = load i8*, i8** %name, align 8
  %tobool37.not = icmp eq i8* %6, null
  br i1 %tobool37.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end33
  %7 = load i8*, i8** %name38, align 8
  %call43 = call i32 @strcmp(i8* noundef %7, i8* noundef nonnull %6) #21
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end33, %land.lhs.true, %if.then18, %if.end6
  %inc = add nuw i32 %i.090, 1
  %8 = load i8, i8* %num_parents, align 8
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then18, %if.end28, %land.lhs.true
  %i.0.lcssa.ph = phi i32 [ %inc, %for.inc ], [ %i.090, %if.then18 ], [ %i.090, %if.end28 ], [ %i.090, %land.lhs.true ]
  %.pre = load i8, i8* %num_parents, align 8
  %phi.cast = zext i8 %.pre to i32
  %cmp49 = icmp eq i32 %i.0.lcssa.ph, %phi.cast
  br i1 %cmp49, label %cleanup, label %if.end52

if.end52:                                         ; preds = %for.end
  %parents53 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  %9 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents53, align 8
  %idxprom54 = sext i32 %i.0.lcssa.ph to i64
  %core56 = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %9, i64 %idxprom54, i32 1
  store %struct.clk_core* %parent, %struct.clk_core** %core56, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %for.end, %entry, %if.end52
  %retval.0 = phi i32 [ %i.0.lcssa.ph, %if.end52 ], [ -22, %entry ], [ -22, %for.end ], [ -22, %for.cond.preheader ], [ %i.090, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_rate(%struct.clk* noundef readonly %clk, i64 noundef %rate) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %0 = load i32, i32* %exclusive_count, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %1) #20
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %core4 = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core4, align 8
  %call = call fastcc i32 @clk_core_set_rate_nolock(%struct.clk_core* noundef %2, i64 noundef %rate) #20
  %3 = load i32, i32* %exclusive_count, align 8
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end3
  %4 = load %struct.clk_core*, %struct.clk_core** %core4, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %4) #20
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end3
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi i32 [ %call, %if.end9 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_set_rate_nolock(%struct.clk_core* noundef %core, i64 noundef %req_rate) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @clk_core_req_round_rate_nolock(%struct.clk_core* noundef nonnull %core, i64 noundef %req_rate) #20
  %call1 = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef nonnull %core) #20
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @clk_core_rate_is_protected(%struct.clk_core* noundef nonnull %core) #20
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = call fastcc %struct.clk_core* @clk_calc_new_rates(%struct.clk_core* noundef nonnull %core, i64 noundef %req_rate) #20
  %tobool8.not = icmp eq %struct.clk_core* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call15 = call fastcc %struct.clk_core* @clk_propagate_rate_change(%struct.clk_core* noundef nonnull %call7, i64 noundef 1) #20
  %tobool16.not = icmp eq %struct.clk_core* %call15, null
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end10
  %call18 = call fastcc %struct.clk_core* @clk_propagate_rate_change(%struct.clk_core* noundef nonnull %call7, i64 noundef 4) #20
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call fastcc void @clk_change_rate(%struct.clk_core* noundef nonnull %call7) #20
  %req_rate20 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 11
  store i64 %req_rate, i64* %req_rate20, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end19, %if.end6, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ -16, %if.end3 ], [ -22, %if.end6 ], [ -16, %if.then17 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_rate_exclusive(%struct.clk* noundef %clk, i64 noundef %rate) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i32 @clk_core_set_rate_nolock(%struct.clk_core* noundef %0, i64 noundef %rate) #20
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %1) #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %2 = load i32, i32* %exclusive_count, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %exclusive_count, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %call, %if.end4 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_rate_range(%struct.clk* noundef %clk, i64 noundef %min, i64 noundef %max) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %cmp = icmp ugt i64 %min, %max
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %dev_id = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 2
  %2 = load i8*, i8** %dev_id, align 8
  %con_id = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 3
  %3 = load i8*, i8** %con_id, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.clk_set_rate_range, i64 0, i64 0), i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %min, i64 noundef %max) #24
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %4 = load i32, i32* %exclusive_count, align 8
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %5) #20
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %min_rate = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 4
  %6 = load i64, i64* %min_rate, align 8
  %max_rate = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 5
  %7 = load i64, i64* %max_rate, align 8
  store i64 %min, i64* %min_rate, align 8
  store i64 %max, i64* %max_rate, align 8
  %8 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call11 = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef %8) #20
  %cmp12 = icmp ult i64 %call11, %min
  %cmp13 = icmp ugt i64 %call11, %max
  %or.cond = or i1 %cmp12, %cmp13
  br i1 %or.cond, label %if.then14, label %if.end25

if.then14:                                        ; preds = %if.end7
  %min.max = select i1 %cmp12, i64 %min, i64 %max
  %call19 = call fastcc i32 @clk_core_set_rate_nolock(%struct.clk_core* noundef %8, i64 noundef %min.max) #20
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.then14
  store i64 %6, i64* %min_rate, align 8
  store i64 %7, i64* %max_rate, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end7, %if.then14, %if.then21
  %ret.0 = phi i32 [ %call19, %if.then21 ], [ 0, %if.then14 ], [ 0, %if.end7 ]
  %9 = load i32, i32* %exclusive_count, align 8
  %tobool27.not = icmp eq i32 %9, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  %10 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %10) #20
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %if.end30 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_min_rate(%struct.clk* noundef %clk, i64 noundef %rate) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %max_rate = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 5
  %0 = load i64, i64* %max_rate, align 8
  %call = call i32 @clk_set_rate_range(%struct.clk* noundef nonnull %clk, i64 noundef %rate, i64 noundef %0) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_max_rate(%struct.clk* noundef %clk, i64 noundef %rate) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %min_rate = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 4
  %0 = load i64, i64* %min_rate, align 8
  %call = call i32 @clk_set_rate_range(%struct.clk* noundef nonnull %clk, i64 noundef %0, i64 noundef %rate) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_get_parent(%struct.clk* noundef readonly %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %parent1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent1, align 8
  %tobool2.not = icmp eq %struct.clk_core* %1, null
  br i1 %tobool2.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %clk5 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %2, i64 0, i32 1
  %3 = load %struct.clk*, %struct.clk** %clk5, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi %struct.clk* [ %3, %cond.false ], [ null, %if.end ]
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi %struct.clk* [ %cond, %cond.end ], [ null, %entry ]
  ret %struct.clk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_hw_reparent(%struct.clk_hw* noundef readonly %hw, %struct.clk_hw* noundef readonly %new_parent) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_hw* %hw, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %tobool1.not = icmp eq %struct.clk_hw* %new_parent, null
  br i1 %tobool1.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %core2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %new_parent, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core2, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi %struct.clk_core* [ %1, %cond.false ], [ null, %if.end ]
  call fastcc void @clk_core_reparent(%struct.clk_core* noundef %0, %struct.clk_core* noundef %cond) #20
  br label %return

return:                                           ; preds = %entry, %cond.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_reparent(%struct.clk_core* noundef %core, %struct.clk_core* noundef %new_parent) unnamed_addr #1 {
entry:
  call fastcc void @clk_reparent(%struct.clk_core* noundef %core, %struct.clk_core* noundef %new_parent) #20
  call fastcc void @__clk_recalc_accuracies(%struct.clk_core* noundef %core) #20
  call fastcc void @__clk_recalc_rates(%struct.clk_core* noundef %core, i64 noundef 2) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @clk_has_parent(%struct.clk* noundef readonly %clk, %struct.clk* noundef readonly %parent) local_unnamed_addr #1 {
entry:
  %tobool = icmp ne %struct.clk* %clk, null
  %tobool1 = icmp ne %struct.clk* %parent, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %core2 = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core2, align 8
  %core3 = getelementptr inbounds %struct.clk, %struct.clk* %parent, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core3, align 8
  %parent4 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 6
  %2 = load %struct.clk_core*, %struct.clk_core** %parent4, align 8
  %cmp = icmp eq %struct.clk_core* %2, %1
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 7
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 8
  %3 = load i8, i8* %num_parents, align 8
  %cmp726.not = icmp eq i8 %3, 0
  br i1 %cmp726.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %4 = load i8, i8* %num_parents, align 8
  %5 = zext i8 %4 to i64
  %cmp7 = icmp ult i64 %indvars.iv.next, %5
  br i1 %cmp7, label %for.body, label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %6 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %name = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %6, i64 %indvars.iv, i32 3
  %7 = load i8*, i8** %name, align 8
  %8 = load i8*, i8** %name9, align 8
  %call = call i32 @strcmp(i8* noundef %7, i8* noundef %8) #21
  %tobool10.not = icmp eq i32 %call, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool10.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %if.end ], [ false, %for.cond.preheader ], [ %tobool10.not, %for.cond ], [ %tobool10.not, %for.body ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_hw_set_parent(%struct.clk_hw* nocapture noundef readonly %hw, %struct.clk_hw* nocapture noundef readonly %parent) local_unnamed_addr #1 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %core1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %parent, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core1, align 8
  %call = call fastcc i32 @clk_core_set_parent_nolock(%struct.clk_core* noundef %0, %struct.clk_core* noundef %1) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_set_parent_nolock(%struct.clk_core* noundef %core, %struct.clk_core* noundef %parent) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %0 = load %struct.clk_core*, %struct.clk_core** %parent1, align 8
  %cmp = icmp eq %struct.clk_core* %0, %parent
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %1 = load i8, i8* %num_parents, align 8
  %cmp4 = icmp ugt i8 %1, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %2 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %2, i64 0, i32 13
  %3 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %tobool6.not = icmp eq i32 (%struct.clk_hw*, i8)* %3, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 2
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.end13, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end8
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %5 = load i32, i32* %prepare_count, align 8
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %land.lhs.true10, %if.end8
  %call = call fastcc i1 @clk_core_rate_is_protected(%struct.clk_core* noundef nonnull %core) #20
  br i1 %call, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end13
  %tobool16.not = icmp eq %struct.clk_core* %parent, null
  br i1 %tobool16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end15
  %call18 = call fastcc i32 @clk_fetch_parent_index(%struct.clk_core* noundef nonnull %core, %struct.clk_core* noundef nonnull %parent) #20
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.then17
  %rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %parent, i64 0, i32 10
  %6 = load i64, i64* %rate, align 8
  %phi.cast = trunc i32 %call18 to i8
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end15
  %p_index.0 = phi i8 [ %phi.cast, %if.end22 ], [ 0, %if.end15 ]
  %p_rate.0 = phi i64 [ %6, %if.end22 ], [ 0, %if.end15 ]
  %call28 = call fastcc i32 @__clk_speculate_rates(%struct.clk_core* noundef nonnull %core, i64 noundef %p_rate.0) #20
  %and29 = and i32 %call28, 32768
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.end23
  %call34 = call fastcc i32 @__clk_set_parent(%struct.clk_core* noundef nonnull %core, %struct.clk_core* noundef %parent, i8 noundef %p_index.0) #20
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end32
  call fastcc void @__clk_recalc_rates(%struct.clk_core* noundef nonnull %core, i64 noundef 4) #20
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call fastcc void @__clk_recalc_rates(%struct.clk_core* noundef nonnull %core, i64 noundef 2) #20
  call fastcc void @__clk_recalc_accuracies(%struct.clk_core* noundef nonnull %core) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.else, %if.then36, %if.then17, %if.end13, %land.lhs.true10, %land.lhs.true, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ -1, %land.lhs.true ], [ -16, %land.lhs.true10 ], [ -16, %if.end13 ], [ %call18, %if.then17 ], [ %call28, %if.end23 ], [ %call34, %if.then36 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_parent(%struct.clk* noundef readonly %clk, %struct.clk* noundef readonly %parent) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %0 = load i32, i32* %exclusive_count, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %1) #20
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %core4 = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core4, align 8
  %tobool5.not = icmp eq %struct.clk* %parent, null
  br i1 %tobool5.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end3
  %core6 = getelementptr inbounds %struct.clk, %struct.clk* %parent, i64 0, i32 0
  %3 = load %struct.clk_core*, %struct.clk_core** %core6, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end3, %cond.true
  %cond = phi %struct.clk_core* [ %3, %cond.true ], [ null, %if.end3 ]
  %call = call fastcc i32 @clk_core_set_parent_nolock(%struct.clk_core* noundef %2, %struct.clk_core* noundef %cond) #20
  %4 = load i32, i32* %exclusive_count, align 8
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %cond.end
  %5 = load %struct.clk_core*, %struct.clk_core** %core4, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %5) #20
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %cond.end
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %call, %if.end11 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_phase(%struct.clk* noundef readonly %clk, i32 noundef %degrees) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = srem i32 %degrees, 360
  %cmp = icmp slt i32 %rem, 0
  %add = add nsw i32 %rem, 360
  %spec.select = select i1 %cmp, i32 %add, i32 %rem
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %0 = load i32, i32* %exclusive_count, align 8
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %1) #20
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %core6 = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core6, align 8
  %call = call fastcc i32 @clk_core_set_phase_nolock(%struct.clk_core* noundef %2, i32 noundef %spec.select) #20
  %3 = load i32, i32* %exclusive_count, align 8
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %4 = load %struct.clk_core*, %struct.clk_core** %core6, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %4) #20
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %call, %if.end11 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_set_phase_nolock(%struct.clk_core* noundef %core, i32 noundef %degrees) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @clk_core_rate_is_protected(%struct.clk_core* noundef nonnull %core) #20
  br i1 %call, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %set_phase = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 19
  %1 = load i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, i32)** %set_phase, align 8
  %tobool3.not = icmp eq i32 (%struct.clk_hw*, i32)* %1, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end2
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call7 = call i32 %1(%struct.clk_hw* noundef %2, i32 noundef %degrees) #21
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.then4
  %phase = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 24
  store i32 %degrees, i32* %phase, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then9, %if.then4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -16, %if.end ], [ %call7, %if.then4 ], [ 0, %if.then9 ], [ -22, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_get_phase(%struct.clk* noundef readonly %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i32 @clk_core_get_phase(%struct.clk_core* noundef %0) #20
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_get_phase(%struct.clk_core* nocapture noundef %core) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %get_phase = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 18
  %1 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %get_phase, align 8
  %tobool.not = icmp eq i32 (%struct.clk_hw*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call = call i32 %1(%struct.clk_hw* noundef %2) #21
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %phase = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 24
  store i32 %call, i32* %phase, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call, %if.then3 ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_set_duty_cycle(%struct.clk* noundef readonly %clk, i32 noundef %num, i32 noundef %den) local_unnamed_addr #1 {
entry:
  %duty = alloca i64, align 8, !annotation !16
  %tmpcast = bitcast i64* %duty to %struct.clk_duty*, !annotation !16
  %0 = bitcast i64* %duty to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %den, 0
  %cmp1 = icmp ugt i32 %num, %den
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %num4 = bitcast i64* %duty to i32*
  store i32 %num, i32* %num4, align 8
  %den5 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %tmpcast, i64 0, i32 1
  store i32 %den, i32* %den5, align 4
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %1 = load i32, i32* %exclusive_count, align 8
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %2) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  %core9 = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %3 = load %struct.clk_core*, %struct.clk_core** %core9, align 8
  %call = call fastcc i32 @clk_core_set_duty_cycle_nolock(%struct.clk_core* noundef %3, %struct.clk_duty* noundef nonnull %tmpcast) #20
  %4 = load i32, i32* %exclusive_count, align 8
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  %5 = load %struct.clk_core*, %struct.clk_core** %core9, align 8
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef %5) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end14
  %retval.0 = phi i32 [ %call, %if.end14 ], [ 0, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_set_duty_cycle_nolock(%struct.clk_core* noundef %core, %struct.clk_duty* noundef %duty) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @clk_core_rate_is_protected(%struct.clk_core* noundef %core) #20
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %set_duty_cycle = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 21
  %1 = load i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)** %set_duty_cycle, align 8
  %tobool.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_duty*)* %1, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call fastcc i32 @clk_core_set_duty_cycle_parent_nolock(%struct.clk_core* noundef %core, %struct.clk_duty* noundef %duty) #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call6 = call i32 %1(%struct.clk_hw* noundef %2, %struct.clk_duty* noundef %duty) #21
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end3
  %duty9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25
  %3 = bitcast %struct.clk_duty* %duty9 to i8*
  %4 = bitcast %struct.clk_duty* %duty to i8*
  %call10 = call i8* @memcpy(i8* noundef %3, i8* noundef %4, i64 noundef 8) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then8, %entry, %if.then1
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ -16, %entry ], [ 0, %if.then8 ], [ %call6, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_get_scaled_duty_cycle(%struct.clk* noundef readonly %clk, i32 noundef %scale) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %call = call fastcc i32 @clk_core_get_scaled_duty_cycle(%struct.clk_core* noundef %0, i32 noundef %scale) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_get_scaled_duty_cycle(%struct.clk_core* noundef %core, i32 noundef %scale) unnamed_addr #1 {
entry:
  call fastcc void @clk_prepare_lock() #20
  %call = call fastcc i32 @clk_core_update_duty_cycle_nolock(%struct.clk_core* noundef %core) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %den = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25, i32 1
  %0 = load i32, i32* %den, align 4
  %.frozen = freeze i32 %0
  %div = udiv i32 %scale, %.frozen
  %1 = mul i32 %div, %.frozen
  %rem3.decomposed = sub i32 %scale, %1
  %num = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25, i32 0
  %2 = load i32, i32* %num, align 4
  %mul = mul i32 %2, %div
  %mul5 = mul i32 %2, %rem3.decomposed
  %div7 = udiv i32 %mul5, %0
  %add = add i32 %mul, %div7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %entry ], [ %add, %if.then ]
  call fastcc void @clk_prepare_unlock() #20
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @clk_is_match(%struct.clk* noundef %p, %struct.clk* noundef %q) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.clk* %p, %q
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.clk* %p to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #20
  br i1 %call, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %1 = bitcast %struct.clk* %q to i8*
  %call1 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %1) #20
  br i1 %call1, label %if.end7, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %core = getelementptr inbounds %struct.clk, %struct.clk* %p, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %core3 = getelementptr inbounds %struct.clk, %struct.clk* %q, i64 0, i32 0
  %3 = load %struct.clk_core*, %struct.clk_core** %core3, align 8
  %cmp4 = icmp eq %struct.clk_core* %2, %3
  br i1 %cmp4, label %return, label %if.end7

if.end7:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %if.then2, %entry, %if.end7
  %retval.0 = phi i1 [ false, %if.end7 ], [ true, %entry ], [ true, %if.then2 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_hw_create_clk(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw, i8* noundef %dev_id, i8* noundef %con_id) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #20
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.clk_hw* %hw to %struct.clk*
  br label %cleanup

if.end:                                           ; preds = %entry
  %core2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core2, align 8
  %call3 = call fastcc %struct.clk* @alloc_clk(%struct.clk_core* noundef %2, i8* noundef %dev_id, i8* noundef %con_id) #20
  %3 = bitcast %struct.clk* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %3) #20
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.clk, %struct.clk* %call3, i64 0, i32 1
  store %struct.device* %dev, %struct.device** %dev7, align 8
  %ref = getelementptr inbounds %struct.clk_core, %struct.clk_core* %2, i64 0, i32 30
  call fastcc void @kref_get(%struct.kref* noundef %ref) #20
  call fastcc void @clk_core_link_consumer(%struct.clk_core* noundef %2, %struct.clk* noundef %call3) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6, %if.then
  %retval.0 = phi %struct.clk* [ %1, %if.then ], [ %call3, %if.end6 ], [ %call3, %if.end ]
  ret %struct.clk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk* @alloc_clk(%struct.clk_core* noundef %core, i8* noundef %dev_id, i8* noundef %con_id) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 72) #20
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %core2 = bitcast i8* %call to %struct.clk_core**
  store %struct.clk_core* %core, %struct.clk_core** %core2, align 8
  %dev_id3 = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %dev_id3 to i8**
  store i8* %dev_id, i8** %0, align 8
  %call4 = call i8* @kstrdup_const(i8* noundef %con_id, i32 noundef 3264) #21
  %con_id5 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %con_id5 to i8**
  store i8* %call4, i8** %1, align 8
  %max_rate = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %max_rate to i64*
  store i64 -1, i64* %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i8* [ %call, %if.end ], [ %call1, %if.then ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.clk*
  ret %struct.clk* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #8 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_clk(%struct.clk* noundef %clk) unnamed_addr #1 {
entry:
  %con_id = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 3
  %0 = load i8*, i8** %con_id, align 8
  call void @kfree_const(i8* noundef %0) #21
  %1 = bitcast %struct.clk* %clk to i8*
  call void @kfree(i8* noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #8 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_link_consumer(%struct.clk_core* noundef %core, %struct.clk* noundef %clk) unnamed_addr #1 {
entry:
  call fastcc void @clk_prepare_lock() #20
  %clks_node = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 7
  %clks = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 28
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %clks_node, %struct.hlist_head* noundef %clks) #20
  call fastcc void @clk_prepare_unlock() #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_hw_get_clk(%struct.clk_hw* noundef %hw, i8* noundef %con_id) local_unnamed_addr #1 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %dev1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 4
  %1 = load %struct.device*, %struct.device** %dev1, align 8
  %call = call fastcc i8* @dev_name(%struct.device* noundef %1) #20
  %call2 = call %struct.clk* @clk_hw_create_clk(%struct.device* noundef %1, %struct.clk_hw* noundef %hw, i8* noundef %call, i8* noundef %con_id) #20
  ret %struct.clk* %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_register(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.device_node* @dev_or_parent_of_node(%struct.device* noundef %dev) #20
  %call1 = call fastcc %struct.clk* @__clk_register(%struct.device* noundef %dev, %struct.device_node* noundef %call, %struct.clk_hw* noundef %hw) #20
  ret %struct.clk* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk* @__clk_register(%struct.device* noundef %dev, %struct.device_node* noundef %np, %struct.clk_hw* noundef %hw) unnamed_addr #1 {
entry:
  %init1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 2
  %0 = load %struct.clk_init_data*, %struct.clk_init_data** %init1, align 8
  store %struct.clk_init_data* null, %struct.clk_init_data** %init1, align 8
  %call = call fastcc i8* @kzalloc(i64 noundef 216) #20
  %1 = bitcast i8* %call to %struct.clk_core*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %fail_out, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %0, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call3 = call i8* @kstrdup_const(i8* noundef %2, i32 noundef 3264) #21
  %name4 = bitcast i8* %call to i8**
  store i8* %call3, i8** %name4, align 8
  %tobool6.not = icmp eq i8* %call3, null
  br i1 %tobool6.not, label %fail_name, label %if.end8

if.end8:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %0, i64 0, i32 1
  %3 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %tobool9.not = icmp eq %struct.clk_ops* %3, null
  br i1 %tobool9.not, label %if.then18, label %if.end29, !prof !7

if.then18:                                        ; preds = %if.end8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 3830; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !18
  br label %fail_ops

if.end29:                                         ; preds = %if.end8
  %ops31 = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %ops31 to %struct.clk_ops**
  store %struct.clk_ops* %3, %struct.clk_ops** %4, align 8
  %tobool32.not = icmp eq %struct.device* %dev, null
  %dev37.c = getelementptr inbounds i8, i8* %call, i64 32
  %5 = bitcast i8* %dev37.c to %struct.device**
  br i1 %tobool32.not, label %if.end44.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end29
  store %struct.device* %dev, %struct.device** %5, align 8
  %of_node = getelementptr inbounds i8, i8* %call, i64 40
  %6 = bitcast i8* %of_node to %struct.device_node**
  store %struct.device_node* %np, %struct.device_node** %6, align 8
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool40.not = icmp eq %struct.device_driver* %7, null
  br i1 %tobool40.not, label %if.end44, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %7, i64 0, i32 2
  %8 = load %struct.module*, %struct.module** %owner, align 8
  %owner43 = getelementptr inbounds i8, i8* %call, i64 24
  %9 = bitcast i8* %owner43 to %struct.module**
  store %struct.module* %8, %struct.module** %9, align 8
  br label %if.end44

if.end44.critedge:                                ; preds = %if.end29
  store %struct.device* null, %struct.device** %5, align 8
  %of_node.c = getelementptr inbounds i8, i8* %call, i64 40
  %10 = bitcast i8* %of_node.c to %struct.device_node**
  store %struct.device_node* %np, %struct.device_node** %10, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end44.critedge, %if.then41, %land.lhs.true
  %hw45 = getelementptr inbounds i8, i8* %call, i64 16
  %11 = bitcast i8* %hw45 to %struct.clk_hw**
  store %struct.clk_hw* %hw, %struct.clk_hw** %11, align 8
  %flags = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %0, i64 0, i32 6
  %12 = load i64, i64* %flags, align 8
  %flags46 = getelementptr inbounds i8, i8* %call, i64 112
  %13 = bitcast i8* %flags46 to i64*
  store i64 %12, i64* %13, align 8
  %num_parents = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %0, i64 0, i32 5
  %14 = load i8, i8* %num_parents, align 8
  %15 = getelementptr inbounds i8, i8* %call, i64 64
  store i8 %14, i8* %15, align 8
  %min_rate = getelementptr inbounds i8, i8* %call, i64 136
  %16 = bitcast i8* %min_rate to i64*
  store i64 0, i64* %16, align 8
  %max_rate = getelementptr inbounds i8, i8* %call, i64 144
  %17 = bitcast i8* %max_rate to i64*
  store i64 -1, i64* %17, align 8
  %core48 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %18 = bitcast %struct.clk_hw* %hw to i8**
  store i8* %call, i8** %18, align 8
  %call49 = call fastcc i32 @clk_core_populate_parent_map(%struct.clk_core* noundef nonnull %1, %struct.clk_init_data* noundef %0) #20
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %fail_ops

if.end52:                                         ; preds = %if.end44
  %clks = getelementptr inbounds i8, i8* %call, i64 200
  %first = bitcast i8* %clks to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %call53 = call fastcc %struct.clk* @alloc_clk(%struct.clk_core* noundef nonnull %1, i8* noundef null, i8* noundef null) #20
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 1
  store %struct.clk* %call53, %struct.clk** %clk, align 8
  %19 = bitcast %struct.clk* %call53 to i8*
  %call55 = call fastcc i1 @IS_ERR(i8* noundef %19) #20
  br i1 %call55, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end52
  %call58 = call fastcc i64 @PTR_ERR(i8* noundef %19) #20
  %conv59 = trunc i64 %call58 to i32
  br label %fail_create_clk

if.end60:                                         ; preds = %if.end52
  %20 = load %struct.clk_core*, %struct.clk_core** %core48, align 8
  call fastcc void @clk_core_link_consumer(%struct.clk_core* noundef %20, %struct.clk* noundef %call53) #20
  %call63 = call fastcc i32 @__clk_core_init(%struct.clk_core* noundef nonnull %1) #20
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end60
  %21 = load %struct.clk*, %struct.clk** %clk, align 8
  br label %cleanup

if.end67:                                         ; preds = %if.end60
  call fastcc void @clk_prepare_lock() #20
  %22 = load %struct.clk*, %struct.clk** %clk, align 8
  call fastcc void @clk_core_unlink_consumer(%struct.clk* noundef %22) #20
  call fastcc void @clk_prepare_unlock() #20
  %23 = load %struct.clk*, %struct.clk** %clk, align 8
  call fastcc void @free_clk(%struct.clk* noundef %23) #20
  store %struct.clk* null, %struct.clk** %clk, align 8
  br label %fail_create_clk

fail_create_clk:                                  ; preds = %if.end67, %if.then56
  %ret.0 = phi i32 [ %conv59, %if.then56 ], [ %call63, %if.end67 ]
  call fastcc void @clk_core_free_parent_map(%struct.clk_core* noundef nonnull %1) #20
  br label %fail_ops

fail_ops:                                         ; preds = %if.then18, %fail_create_clk, %if.end44
  %ret.1 = phi i32 [ %call49, %if.end44 ], [ %ret.0, %fail_create_clk ], [ -22, %if.then18 ]
  %24 = load i8*, i8** %name4, align 8
  call void @kfree_const(i8* noundef %24) #21
  br label %fail_name

fail_name:                                        ; preds = %if.end, %fail_ops
  %ret.2 = phi i32 [ %ret.1, %fail_ops ], [ -12, %if.end ]
  call void @kfree(i8* noundef nonnull %call) #21
  br label %fail_out

fail_out:                                         ; preds = %entry, %fail_name
  %ret.3 = phi i32 [ %ret.2, %fail_name ], [ -12, %entry ]
  %conv72 = sext i32 %ret.3 to i64
  %call73 = call fastcc i8* @ERR_PTR(i64 noundef %conv72) #20
  %25 = bitcast i8* %call73 to %struct.clk*
  br label %cleanup

cleanup:                                          ; preds = %fail_out, %if.then65
  %retval.0 = phi %struct.clk* [ %25, %fail_out ], [ %21, %if.then65 ]
  ret %struct.clk* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device_node* @dev_or_parent_of_node(%struct.device* noundef readonly %dev) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.device_node* @dev_of_node(%struct.device* noundef nonnull %dev) #20
  %tobool1.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool1.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %0 = load %struct.device*, %struct.device** %parent, align 8
  %call3 = call fastcc %struct.device_node* @dev_of_node(%struct.device* noundef %0) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi %struct.device_node* [ null, %entry ], [ %call, %if.end ], [ %call3, %if.then2 ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_hw_register(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.device_node* @dev_or_parent_of_node(%struct.device* noundef %dev) #20
  %call1 = call fastcc %struct.clk* @__clk_register(%struct.device* noundef %dev, %struct.device_node* noundef %call, %struct.clk_hw* noundef %hw) #20
  %0 = bitcast %struct.clk* %call1 to i8*
  %call2 = call fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %0) #20
  ret i32 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %ptr) unnamed_addr #8 {
entry:
  %call = call fastcc i1 @IS_ERR(i8* noundef %ptr) #20
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %ptr) #20
  %conv = trunc i64 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_clk_hw_register(%struct.device_node* noundef %node, %struct.clk_hw* noundef %hw) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.clk* @__clk_register(%struct.device* noundef null, %struct.device_node* noundef %node, %struct.clk_hw* noundef %hw) #20
  %0 = bitcast %struct.clk* %call to i8*
  %call1 = call fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %0) #20
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_unregister(%struct.clk* noundef %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = bitcast %struct.clk* %clk to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef nonnull %0) #20
  br i1 %call, label %if.then, label %if.end17, !prof !7

if.then:                                          ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4048; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !19
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  call fastcc void @clk_prepare_lock() #20
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %ops19 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 1
  %2 = load %struct.clk_ops*, %struct.clk_ops** %ops19, align 8
  %cmp = icmp eq %struct.clk_ops* %2, @clk_nodrv_ops
  br i1 %cmp, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end17
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.clk_unregister, i64 0, i64 0), i8* noundef %3) #24
  br label %unlock

if.end25:                                         ; preds = %if.end17
  %call26 = call fastcc i64 @clk_enable_lock() #20
  %4 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %ops28 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %4, i64 0, i32 1
  store %struct.clk_ops* @clk_nodrv_ops, %struct.clk_ops** %ops28, align 8
  call fastcc void @clk_enable_unlock(i64 noundef %call26) #20
  %terminate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %2, i64 0, i32 23
  %5 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %terminate, align 8
  %tobool29.not = icmp eq void (%struct.clk_hw*)* %5, null
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end25
  %6 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %6, i64 0, i32 2
  %7 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  call void %5(%struct.clk_hw* noundef %7) #21
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25
  %8 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %children = getelementptr inbounds %struct.clk_core, %struct.clk_core* %8, i64 0, i32 26
  %call35 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %children) #20
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end63

if.then37:                                        ; preds = %if.end33
  %9 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %9, i64 0, i32 26, i32 0
  %10 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool41.not = icmp eq %struct.hlist_node* %10, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %10, i64 -12, i32 1
  %tobool46.not129132 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool46.not129 = or i1 %tobool41.not, %tobool46.not129132
  br i1 %tobool46.not129, label %if.end63, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.then37
  %11 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %child.0130 = phi %struct.clk_core* [ %spec.select128, %land.rhs ], [ %11, %land.rhs.preheader ]
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.0130, i64 0, i32 27, i32 0
  %12 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %call49 = call fastcc i32 @clk_core_set_parent_nolock(%struct.clk_core* noundef nonnull %child.0130, %struct.clk_core* noundef null) #20
  %tobool52.not = icmp eq %struct.hlist_node* %12, null
  %add.ptr59 = getelementptr %struct.hlist_node, %struct.hlist_node* %12, i64 -12, i32 1
  %13 = bitcast %struct.hlist_node*** %add.ptr59 to %struct.clk_core*
  %spec.select128 = select i1 %tobool52.not, %struct.clk_core* null, %struct.clk_core* %13
  %tobool46.not = icmp eq %struct.clk_core* %spec.select128, null
  br i1 %tobool46.not, label %if.end63, label %land.rhs

if.end63:                                         ; preds = %land.rhs, %if.then37, %if.end33
  %14 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_evict_parent_cache(%struct.clk_core* noundef %14) #20
  %15 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %child_node66 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %15, i64 0, i32 27
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %child_node66) #20
  %16 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %16, i64 0, i32 19
  %17 = load i32, i32* %prepare_count, align 8
  %tobool68.not = icmp eq i32 %17, 0
  br i1 %tobool68.not, label %if.end77, label %do.end72

do.end72:                                         ; preds = %if.end63
  %name75 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %16, i64 0, i32 0
  %18 = load i8*, i8** %name75, align 8
  %call76 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.clk_unregister, i64 0, i64 0), i8* noundef %18) #24
  %.pre = load %struct.clk_core*, %struct.clk_core** %core, align 8
  br label %if.end77

if.end77:                                         ; preds = %do.end72, %if.end63
  %19 = phi %struct.clk_core* [ %.pre, %do.end72 ], [ %16, %if.end63 ]
  %protect_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %19, i64 0, i32 20
  %20 = load i32, i32* %protect_count, align 4
  %tobool79.not = icmp eq i32 %20, 0
  br i1 %tobool79.not, label %if.end88, label %do.end83

do.end83:                                         ; preds = %if.end77
  %name86 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %19, i64 0, i32 0
  %21 = load i8*, i8** %name86, align 8
  %call87 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.clk_unregister, i64 0, i64 0), i8* noundef %21) #24
  %.pre131 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  br label %if.end88

if.end88:                                         ; preds = %do.end83, %if.end77
  %22 = phi %struct.clk_core* [ %.pre131, %do.end83 ], [ %19, %if.end77 ]
  %ref = getelementptr inbounds %struct.clk_core, %struct.clk_core* %22, i64 0, i32 30
  call fastcc void @kref_put(%struct.kref* noundef %ref) #20
  call fastcc void @free_clk(%struct.clk* noundef nonnull %clk) #20
  br label %unlock

unlock:                                           ; preds = %if.end88, %do.end
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry, %unlock
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @clk_enable_lock() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #20
  %call7 = call fastcc i32 @__raw_spin_trylock() #20
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.body9, label %if.end41

do.body9:                                         ; preds = %entry
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #20
  %0 = load %struct.task_struct*, %struct.task_struct** @enable_owner, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp25 = icmp eq %struct.task_struct* %0, %2
  br i1 %cmp25, label %if.then27, label %do.body29

if.then27:                                        ; preds = %do.body9
  %3 = load i32, i32* @enable_refcnt, align 4
  %inc = add i32 %3, 1
  br label %cleanup

do.body29:                                        ; preds = %do.body9
  %call36 = call fastcc i64 @__raw_spin_lock_irqsave() #20
  br label %if.end41

if.end41:                                         ; preds = %entry, %do.body29
  %flags.0 = phi i64 [ %call36, %do.body29 ], [ %call, %entry ]
  %4 = load %struct.task_struct*, %struct.task_struct** @enable_owner, align 8
  %cmp42.not = icmp eq %struct.task_struct* %4, null
  br i1 %cmp42.not, label %if.end53, label %if.then52, !prof !10

if.then52:                                        ; preds = %if.end41
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 180; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !20
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end41
  %5 = load i32, i32* @enable_refcnt, align 4
  %cmp63.not = icmp eq i32 %5, 0
  br i1 %cmp63.not, label %if.end78, label %if.then77, !prof !10

if.then77:                                        ; preds = %if.end53
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 181; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !21
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end53
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !9
  %7 = inttoptr i64 %6 to %struct.task_struct*
  store %struct.task_struct* %7, %struct.task_struct** @enable_owner, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then27
  %storemerge = phi i32 [ 1, %if.end78 ], [ %inc, %if.then27 ]
  %retval.0 = phi i64 [ %flags.0, %if.end78 ], [ %call, %if.then27 ]
  store i32 %storemerge, i32* @enable_refcnt, align 4
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_enable_unlock(i64 noundef %flags) unnamed_addr #1 {
entry:
  %0 = load %struct.task_struct*, %struct.task_struct** @enable_owner, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %0, %2
  br i1 %cmp.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 190; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @enable_refcnt, align 4
  %cmp15 = icmp eq i32 %3, 0
  br i1 %cmp15, label %if.then29, label %if.end30, !prof !7

if.then29:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 191; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !23
  %.pre = load i32, i32* @enable_refcnt, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end
  %4 = phi i32 [ %.pre, %if.then29 ], [ %3, %if.end ]
  %dec = add i32 %4, -1
  store i32 %dec, i32* @enable_refcnt, align 4
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %if.end41, label %return

if.end41:                                         ; preds = %if.end30
  store %struct.task_struct* null, %struct.task_struct** @enable_owner, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) #21
  br label %return

return:                                           ; preds = %if.end30, %if.end41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #14 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @clk_core_evict_parent_cache(%struct.clk_core* noundef %core) unnamed_addr #7 {
entry:
  %0 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_root_list, i64 0, i32 0), align 8
  %tobool1.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool7.not4043 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool7.not40 = or i1 %tobool1.not, %tobool7.not4043
  br i1 %tobool7.not40, label %for.inc22, label %for.body8.preheader

for.body8.preheader:                              ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %root.041 = phi %struct.clk_core* [ %spec.select39, %for.body8 ], [ %1, %for.body8.preheader ]
  call fastcc void @clk_core_evict_parent_cache_subtree(%struct.clk_core* noundef nonnull %root.041, %struct.clk_core* noundef %core) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %root.041, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool11.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr18 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr18 to %struct.clk_core*
  %spec.select39 = select i1 %tobool11.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool7.not = icmp eq %struct.clk_core* %spec.select39, null
  br i1 %tobool7.not, label %for.inc22, label %for.body8

for.inc22:                                        ; preds = %for.body8, %entry
  %4 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_orphan_list, i64 0, i32 0), align 8
  %tobool1.not.1 = icmp eq %struct.hlist_node* %4, null
  %add.ptr.1 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12, i32 1
  %tobool7.not40.144 = icmp eq %struct.hlist_node*** %add.ptr.1, null
  %tobool7.not40.1 = or i1 %tobool1.not.1, %tobool7.not40.144
  br i1 %tobool7.not40.1, label %for.inc22.1, label %for.body8.preheader.1

for.body8.preheader.1:                            ; preds = %for.inc22
  %5 = bitcast %struct.hlist_node*** %add.ptr.1 to %struct.clk_core*
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.body8.1, %for.body8.preheader.1
  %root.041.1 = phi %struct.clk_core* [ %spec.select39.1, %for.body8.1 ], [ %5, %for.body8.preheader.1 ]
  call fastcc void @clk_core_evict_parent_cache_subtree(%struct.clk_core* noundef nonnull %root.041.1, %struct.clk_core* noundef %core) #20
  %next.1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %root.041.1, i64 0, i32 27, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next.1, align 8
  %tobool11.not.1 = icmp eq %struct.hlist_node* %6, null
  %add.ptr18.1 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr18.1 to %struct.clk_core*
  %spec.select39.1 = select i1 %tobool11.not.1, %struct.clk_core* null, %struct.clk_core* %7
  %tobool7.not.1 = icmp eq %struct.clk_core* %spec.select39.1, null
  br i1 %tobool7.not.1, label %for.inc22.1, label %for.body8.1

for.inc22.1:                                      ; preds = %for.body8.1, %for.inc22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #15 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #20
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_put(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #20
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @__clk_release(%struct.kref* noundef %kref) #20
  br label %return

return:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clk_release(%struct.kref* noundef %ref) unnamed_addr #1 {
entry:
  %add.ptr8 = getelementptr %struct.kref, %struct.kref* %ref, i64 -53
  %add.ptr = bitcast %struct.kref* %add.ptr8 to i8*
  %0 = bitcast %struct.kref* %add.ptr8 to %struct.clk_core*
  call fastcc void @clk_core_free_parent_map(%struct.clk_core* noundef %0) #20
  %name = bitcast %struct.kref* %add.ptr8 to i8**
  %1 = load i8*, i8** %name, align 8
  call void @kfree_const(i8* noundef %1) #21
  call void @kfree(i8* noundef %add.ptr) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_hw_unregister(%struct.clk_hw* nocapture noundef readonly %hw) local_unnamed_addr #1 {
entry:
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 1
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  call void @clk_unregister(%struct.clk* noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @devm_clk_register(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw) local_unnamed_addr #1 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_clk_unregister_cb, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #21
  %0 = bitcast i8* %call to %struct.clk**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #20
  %1 = bitcast i8* %call1 to %struct.clk*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.clk* @clk_register(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw) #20
  %2 = bitcast %struct.clk* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #20
  br i1 %call3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  store %struct.clk* %call2, %struct.clk** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #21
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %if.then
  %retval.0 = phi %struct.clk* [ %1, %if.then ], [ %call2, %if.else ], [ %call2, %if.then4 ]
  ret %struct.clk* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_clk_unregister_cb(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #1 {
entry:
  %0 = bitcast i8* %res to %struct.clk**
  %1 = load %struct.clk*, %struct.clk** %0, align 8
  call void @clk_unregister(%struct.clk* noundef %1) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_clk_hw_register(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw) local_unnamed_addr #1 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_clk_hw_unregister_cb, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #21
  %0 = bitcast i8* %call to %struct.clk_hw**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @clk_hw_register(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw) #20
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store %struct.clk_hw* %hw, %struct.clk_hw** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #21
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.else, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call1, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_clk_hw_unregister_cb(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #1 {
entry:
  %0 = bitcast i8* %res to %struct.clk_hw**
  %1 = load %struct.clk_hw*, %struct.clk_hw** %0, align 8
  call void @clk_hw_unregister(%struct.clk_hw* noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_clk_unregister(%struct.device* noundef %dev, %struct.clk* noundef %clk) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.clk* %clk to i8*
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_clk_unregister_cb, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_clk_match, i8* noundef %0) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4210; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devm_clk_match(%struct.device* nocapture noundef readnone %dev, i8* noundef readnone %res, i8* noundef readnone %data) #1 {
entry:
  %tobool.not = icmp eq i8* %res, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4185; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !25
  br label %cleanup

if.end18:                                         ; preds = %entry
  %cmp = icmp eq i8* %res, %data
  %conv19 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end18
  %retval.0 = phi i32 [ %conv19, %if.end18 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_clk_hw_unregister(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to i8*
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_clk_hw_unregister_cb, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_clk_hw_match, i8* noundef %0) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4226; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devm_clk_hw_match(%struct.device* nocapture noundef readnone %dev, i8* noundef readnone %res, i8* noundef readnone %data) #1 {
entry:
  %tobool.not = icmp eq i8* %res, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4194; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !27
  br label %cleanup

if.end18:                                         ; preds = %entry
  %cmp = icmp eq i8* %res, %data
  %conv19 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end18
  %retval.0 = phi i32 [ %conv19, %if.end18 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @devm_clk_hw_get_clk(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw, i8* noundef %con_id) local_unnamed_addr #1 {
entry:
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 0, i32 0
  %0 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %dev1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 4
  %1 = load %struct.device*, %struct.device** %dev1, align 8
  %cmp.not = icmp eq %struct.device* %1, %dev
  br i1 %cmp.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4255; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_clk_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #21
  %2 = bitcast i8* %call to %struct.clk**
  %tobool15.not = icmp eq i8* %call, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef -12) #20
  %3 = bitcast i8* %call17 to %struct.clk*
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = call %struct.clk* @clk_hw_get_clk(%struct.clk_hw* noundef %hw, i8* noundef %con_id) #20
  %4 = bitcast %struct.clk* %call19 to i8*
  %call20 = call fastcc i1 @IS_ERR(i8* noundef %4) #20
  br i1 %call20, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  store %struct.clk* %call19, %struct.clk** %2, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #21
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @devres_free(i8* noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else, %if.then16
  %retval.0 = phi %struct.clk* [ %3, %if.then16 ], [ %call19, %if.else ], [ %call19, %if.then21 ]
  ret %struct.clk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_clk_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #1 {
entry:
  %0 = bitcast i8* %res to %struct.clk**
  %1 = load %struct.clk*, %struct.clk** %0, align 8
  call void @clk_put(%struct.clk* noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__clk_put(%struct.clk* noundef %clk) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk* %clk, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = bitcast %struct.clk* %clk to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef nonnull %0) #20
  br i1 %call, label %if.then, label %if.end17, !prof !7

if.then:                                          ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4281; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !29
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  call fastcc void @clk_prepare_lock() #20
  %exclusive_count = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 6
  %1 = load i32, i32* %exclusive_count, align 8
  %tobool19.not = icmp eq i32 %1, 0
  br i1 %tobool19.not, label %if.end48, label %if.then32, !prof !10

if.then32:                                        ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4291; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !30
  %2 = load i32, i32* %exclusive_count, align 8
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %3 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %protect_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %3, i64 0, i32 20
  %4 = load i32, i32* %protect_count, align 4
  %sub.neg = sub i32 1, %2
  %sub45 = add i32 %sub.neg, %4
  store i32 %sub45, i32* %protect_count, align 4
  %5 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef %5) #20
  store i32 0, i32* %exclusive_count, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end17, %if.then32
  %clks_node = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 7
  call fastcc void @hlist_del(%struct.hlist_node* noundef %clks_node) #20
  %min_rate = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 4
  %6 = load i64, i64* %min_rate, align 8
  %core49 = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %7 = load %struct.clk_core*, %struct.clk_core** %core49, align 8
  %req_rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %7, i64 0, i32 11
  %8 = load i64, i64* %req_rate, align 8
  %cmp = icmp ugt i64 %6, %8
  br i1 %cmp, label %if.then56, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end48
  %max_rate = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 5
  %9 = load i64, i64* %max_rate, align 8
  %cmp54 = icmp ult i64 %9, %8
  br i1 %cmp54, label %if.then56, label %if.end61

if.then56:                                        ; preds = %lor.lhs.false51, %if.end48
  %call60 = call fastcc i32 @clk_core_set_rate_nolock(%struct.clk_core* noundef %7, i64 noundef %8) #20
  %.pre = load %struct.clk_core*, %struct.clk_core** %core49, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %lor.lhs.false51
  %10 = phi %struct.clk_core* [ %.pre, %if.then56 ], [ %7, %lor.lhs.false51 ]
  %ref = getelementptr inbounds %struct.clk_core, %struct.clk_core* %10, i64 0, i32 30
  call fastcc void @kref_put(%struct.kref* noundef %ref) #20
  call fastcc void @clk_prepare_unlock() #20
  call fastcc void @free_clk(%struct.clk* noundef nonnull %clk) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry, %if.end61
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del(%struct.hlist_node* nocapture noundef %n) unnamed_addr #15 {
entry:
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #20
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* inttoptr (i64 -2401263026318606080 to %struct.hlist_node*), %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store %struct.hlist_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_node**), %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_notifier_register(%struct.clk* noundef %clk, %struct.notifier_block* noundef %nb) local_unnamed_addr #1 {
entry:
  %tobool = icmp ne %struct.clk* %clk, null
  %tobool1 = icmp ne %struct.notifier_block* %nb, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %.pn37 = load i8*, i8** bitcast (%struct.list_head* @clk_notifier_list to i8**), align 8
  %cmp.not39 = icmp eq i8* %.pn37, bitcast (%struct.list_head* @clk_notifier_list to i8*)
  br i1 %cmp.not39, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn40 = phi i8* [ %.pn, %for.inc ], [ %.pn37, %if.end ]
  %cn.0.in41 = getelementptr i8, i8* %.pn40, i64 -1992
  %clk2 = bitcast i8* %cn.0.in41 to %struct.clk**
  %0 = load %struct.clk*, %struct.clk** %clk2, align 8
  %cmp3 = icmp eq %struct.clk* %0, %clk
  br i1 %cmp3, label %found, label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = bitcast i8* %.pn40 to i8**
  %.pn = load i8*, i8** %1, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clk_notifier_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %call = call fastcc i8* @kzalloc(i64 noundef 2008) #20
  %tobool13.not = icmp eq i8* %call, null
  br i1 %tobool13.not, label %out, label %if.end15

if.end15:                                         ; preds = %for.end
  %clk16 = bitcast i8* %call to %struct.clk**
  store %struct.clk* %clk, %struct.clk** %clk16, align 8
  %notifier_head = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %notifier_head to %struct.srcu_notifier_head*
  call void @srcu_init_notifier_head(%struct.srcu_notifier_head* noundef %2) #21
  %node17 = getelementptr inbounds i8, i8* %call, i64 1992
  %3 = bitcast i8* %node17 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %3, %struct.list_head* noundef nonnull @clk_notifier_list) #20
  br label %found

found:                                            ; preds = %for.body, %if.end15
  %cn.1.in = phi i8* [ %call, %if.end15 ], [ %cn.0.in41, %for.body ]
  %notifier_head18 = getelementptr inbounds i8, i8* %cn.1.in, i64 8
  %4 = bitcast i8* %notifier_head18 to %struct.srcu_notifier_head*
  %call19 = call i32 @srcu_notifier_chain_register(%struct.srcu_notifier_head* noundef %4, %struct.notifier_block* noundef nonnull %nb) #21
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %5 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %notifier_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %5, i64 0, i32 29
  %6 = load i32, i32* %notifier_count, align 8
  %inc = add i32 %6, 1
  store i32 %inc, i32* %notifier_count, align 8
  br label %out

out:                                              ; preds = %for.end, %found
  %ret.0 = phi i32 [ %call19, %found ], [ -12, %for.end ]
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #1 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #21
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init_notifier_head(%struct.srcu_notifier_head* noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #15 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_register(%struct.srcu_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_notifier_unregister(%struct.clk* noundef readonly %clk, %struct.notifier_block* noundef %nb) local_unnamed_addr #1 {
entry:
  %tobool = icmp ne %struct.clk* %clk, null
  %tobool1 = icmp ne %struct.notifier_block* %nb, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %.pn37 = load i8*, i8** bitcast (%struct.list_head* @clk_notifier_list to i8**), align 8
  %cmp.not39 = icmp eq i8* %.pn37, bitcast (%struct.list_head* @clk_notifier_list to i8*)
  br i1 %cmp.not39, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn40 = phi i8* [ %.pn, %for.inc ], [ %.pn37, %if.end ]
  %cn.0.in41 = getelementptr i8, i8* %.pn40, i64 -1992
  %clk2 = bitcast i8* %cn.0.in41 to %struct.clk**
  %0 = load %struct.clk*, %struct.clk** %clk2, align 8
  %cmp3 = icmp eq %struct.clk* %0, %clk
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %notifier_head = getelementptr i8, i8* %.pn40, i64 -1984
  %1 = bitcast i8* %notifier_head to %struct.srcu_notifier_head*
  %call = call i32 @srcu_notifier_chain_unregister(%struct.srcu_notifier_head* noundef %1, %struct.notifier_block* noundef nonnull %nb) #21
  %core = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %notifier_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %2, i64 0, i32 29
  %3 = load i32, i32* %notifier_count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, i32* %notifier_count, align 8
  %head = getelementptr i8, i8* %.pn40, i64 -8
  %4 = bitcast i8* %head to %struct.notifier_block**
  %5 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %tobool6.not = icmp eq %struct.notifier_block* %5, null
  br i1 %tobool6.not, label %if.then7, label %for.end

if.then7:                                         ; preds = %if.then4
  %6 = bitcast i8* %.pn40 to %struct.list_head*
  %srcu = getelementptr i8, i8* %.pn40, i64 -1952
  %7 = bitcast i8* %srcu to %struct.srcu_struct*
  call void @cleanup_srcu_struct(%struct.srcu_struct* noundef %7) #21
  call fastcc void @list_del(%struct.list_head* noundef %6) #20
  call void @kfree(i8* noundef %cn.0.in41) #21
  br label %for.end

for.inc:                                          ; preds = %for.body
  %8 = bitcast i8* %.pn40 to i8**
  %.pn = load i8*, i8** %8, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clk_notifier_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %if.then4, %if.then7
  %ret.0 = phi i32 [ %call, %if.then4 ], [ %call, %if.then7 ], [ -2, %if.end ], [ -2, %for.inc ]
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_unregister(%struct.srcu_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(%struct.srcu_struct* noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #15 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #20
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_clk_notifier_register(%struct.device* nocapture noundef readnone %dev, %struct.clk* noundef %clk, %struct.notifier_block* noundef %nb) local_unnamed_addr #1 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_clk_notifier_release, i64 noundef 16, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #21
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @clk_notifier_register(%struct.clk* noundef %clk, %struct.notifier_block* noundef %nb) #20
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %clk4 = bitcast i8* %call to %struct.clk**
  store %struct.clk* %clk, %struct.clk** %clk4, align 8
  %nb5 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %nb5 to %struct.notifier_block**
  store %struct.notifier_block* %nb, %struct.notifier_block** %0, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.else, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call1, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_clk_notifier_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #1 {
entry:
  %clk = bitcast i8* %res to %struct.clk**
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  %nb = getelementptr inbounds i8, i8* %res, i64 8
  %1 = bitcast i8* %nb to %struct.notifier_block**
  %2 = load %struct.notifier_block*, %struct.notifier_block** %1, align 8
  %call = call i32 @clk_notifier_unregister(%struct.clk* noundef %0, %struct.notifier_block* noundef %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.clk* @of_clk_src_simple_get(%struct.of_phandle_args* nocapture noundef readnone %clkspec, i8* noundef readnone %data) local_unnamed_addr #8 {
entry:
  %0 = bitcast i8* %data to %struct.clk*
  ret %struct.clk* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.clk_hw* @of_clk_hw_simple_get(%struct.of_phandle_args* nocapture noundef readnone %clkspec, i8* noundef readnone %data) local_unnamed_addr #8 {
entry:
  %0 = bitcast i8* %data to %struct.clk_hw*
  ret %struct.clk_hw* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @of_clk_src_onecell_get(%struct.of_phandle_args* nocapture noundef readonly %clkspec, i8* nocapture noundef readonly %data) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %clkspec, i64 0, i32 2, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  %clk_num = getelementptr inbounds i8, i8* %data, i64 8
  %1 = bitcast i8* %clk_num to i32*
  %2 = load i32, i32* %1, align 8
  %cmp.not = icmp ult i32 %0, %2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.of_clk_src_onecell_get, i64 0, i64 0), i32 noundef %0) #24
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #20
  %3 = bitcast i8* %call1 to %struct.clk*
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = bitcast i8* %data to %struct.clk***
  %4 = load %struct.clk**, %struct.clk*** %clks, align 8
  %idxprom = zext i32 %0 to i64
  %arrayidx2 = getelementptr %struct.clk*, %struct.clk** %4, i64 %idxprom
  %5 = load %struct.clk*, %struct.clk** %arrayidx2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi %struct.clk* [ %3, %do.end ], [ %5, %if.end ]
  ret %struct.clk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @of_clk_hw_onecell_get(%struct.of_phandle_args* nocapture noundef readonly %clkspec, i8* nocapture noundef readonly %data) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %clkspec, i64 0, i32 2, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  %num = bitcast i8* %data to i32*
  %1 = load i32, i32* %num, align 8
  %cmp.not = icmp ult i32 %0, %1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.of_clk_hw_onecell_get, i64 0, i64 0), i32 noundef %0) #24
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #20
  %2 = bitcast i8* %call1 to %struct.clk_hw*
  br label %cleanup

if.end:                                           ; preds = %entry
  %hws = getelementptr inbounds i8, i8* %data, i64 8
  %3 = bitcast i8* %hws to [0 x %struct.clk_hw*]*
  %idxprom = zext i32 %0 to i64
  %arrayidx2 = getelementptr [0 x %struct.clk_hw*], [0 x %struct.clk_hw*]* %3, i64 0, i64 %idxprom
  %4 = load %struct.clk_hw*, %struct.clk_hw** %arrayidx2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi %struct.clk_hw* [ %2, %do.end ], [ %4, %if.end ]
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_clk_add_provider(%struct.device_node* noundef %np, %struct.clk* (%struct.of_phandle_args*, i8*)* noundef %clk_src_get, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kzalloc(i64 noundef 48) #20
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %node = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %node to %struct.device_node**
  store %struct.device_node* %np, %struct.device_node** %0, align 8
  %data5 = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %data5 to i8**
  store i8* %data, i8** %1, align 8
  %get = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %get to %struct.clk* (%struct.of_phandle_args*, i8*)**
  store %struct.clk* (%struct.of_phandle_args*, i8*)* %clk_src_get, %struct.clk* (%struct.of_phandle_args*, i8*)** %2, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  %link = bitcast i8* %call to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %link, %struct.list_head* noundef nonnull @of_clk_providers) #20
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  call fastcc void @clk_core_reparent_orphans() #20
  %call6 = call i32 @of_clk_set_defaults(%struct.device_node* noundef nonnull %np, i1 noundef true) #21
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @of_clk_del_provider(%struct.device_node* noundef nonnull %np) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 3
  call fastcc void @fwnode_dev_initialized(%struct.fwnode_handle* noundef %fwnode, i1 noundef true) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ %call6, %if.end8 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_reparent_orphans() unnamed_addr #1 {
entry:
  call fastcc void @clk_prepare_lock() #20
  call fastcc void @clk_core_reparent_orphans_nolock() #20
  call fastcc void @clk_prepare_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(%struct.device_node* noundef, i1 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_clk_del_provider(%struct.device_node* noundef %np) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  %cp.025 = load %struct.of_clk_provider*, %struct.of_clk_provider** bitcast (%struct.list_head* @of_clk_providers to %struct.of_clk_provider**), align 8
  %link26 = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %cp.025, i64 0, i32 0
  %cmp.not27 = icmp eq %struct.list_head* %link26, @of_clk_providers
  br i1 %cmp.not27, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %node36 = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %cp.025, i64 0, i32 1
  %0 = load %struct.device_node*, %struct.device_node** %node36, align 8
  %cmp137 = icmp eq %struct.device_node* %0, %np
  br i1 %cmp137, label %if.then2, label %for.inc

for.body:                                         ; preds = %for.inc
  %node = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %cp.0, i64 0, i32 1
  %1 = load %struct.device_node*, %struct.device_node** %node, align 8
  %cmp1 = icmp eq %struct.device_node* %1, %np
  br i1 %cmp1, label %if.then2, label %for.inc

if.then2:                                         ; preds = %for.body, %for.body.preheader
  %link29.lcssa = phi %struct.list_head* [ %link26, %for.body.preheader ], [ %link, %for.body ]
  %cp.028.lcssa = phi %struct.of_clk_provider* [ %cp.025, %for.body.preheader ], [ %cp.0, %for.body ]
  call fastcc void @list_del(%struct.list_head* noundef %link29.lcssa) #20
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 3
  call fastcc void @fwnode_dev_initialized(%struct.fwnode_handle* noundef %fwnode, i1 noundef false) #20
  %2 = bitcast %struct.of_clk_provider* %cp.028.lcssa to i8*
  call void @kfree(i8* noundef %2) #21
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %cp.02838 = phi %struct.of_clk_provider* [ %cp.0, %for.body ], [ %cp.025, %for.body.preheader ]
  %3 = bitcast %struct.of_clk_provider* %cp.02838 to %struct.of_clk_provider**
  %cp.0 = load %struct.of_clk_provider*, %struct.of_clk_provider** %3, align 8
  %link = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %cp.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @of_clk_providers
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %if.then2
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @fwnode_dev_initialized(%struct.fwnode_handle* noundef %fwnode, i1 noundef %initialized) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #20
  br i1 %call, label %if.end6, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 5
  %1 = load i8, i8* %flags, align 8
  %2 = and i8 %1, -5
  %masksel = select i1 %initialized, i8 4, i8 0
  %.sink = or i8 %2, %masksel
  store i8 %.sink, i8* %flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_clk_add_hw_provider(%struct.device_node* noundef %np, %struct.clk_hw* (%struct.of_phandle_args*, i8*)* noundef %get, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kzalloc(i64 noundef 48) #20
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %node = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %node to %struct.device_node**
  store %struct.device_node* %np, %struct.device_node** %0, align 8
  %data5 = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %data5 to i8**
  store i8* %data, i8** %1, align 8
  %get_hw = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %get_hw to %struct.clk_hw* (%struct.of_phandle_args*, i8*)**
  store %struct.clk_hw* (%struct.of_phandle_args*, i8*)* %get, %struct.clk_hw* (%struct.of_phandle_args*, i8*)** %2, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  %link = bitcast i8* %call to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %link, %struct.list_head* noundef nonnull @of_clk_providers) #20
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  call fastcc void @clk_core_reparent_orphans() #20
  %call6 = call i32 @of_clk_set_defaults(%struct.device_node* noundef nonnull %np, i1 noundef true) #21
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @of_clk_del_provider(%struct.device_node* noundef nonnull %np) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 3
  call fastcc void @fwnode_dev_initialized(%struct.fwnode_handle* noundef %fwnode, i1 noundef true) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ %call6, %if.end8 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_of_clk_add_hw_provider(%struct.device* noundef %dev, %struct.clk_hw* (%struct.of_phandle_args*, i8*)* noundef %get, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_of_clk_release_provider, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0)) #21
  %0 = bitcast i8* %call to %struct.device_node**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.device_node* @get_clk_provider_node(%struct.device* noundef %dev) #20
  %call2 = call i32 @of_clk_add_hw_provider(%struct.device_node* noundef %call1, %struct.clk_hw* (%struct.of_phandle_args*, i8*)* noundef %get, i8* noundef %data) #20
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store %struct.device_node* %call1, %struct.device_node** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #21
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call2, %if.else ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_of_clk_release_provider(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #1 {
entry:
  %0 = bitcast i8* %res to %struct.device_node**
  %1 = load %struct.device_node*, %struct.device_node** %0, align 8
  call void @of_clk_del_provider(%struct.device_node* noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @get_clk_provider_node(%struct.device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %1 = load %struct.device*, %struct.device** %parent, align 8
  %tobool.not = icmp eq %struct.device* %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %of_node2 = getelementptr inbounds %struct.device, %struct.device* %1, i64 0, i32 25
  %2 = load %struct.device_node*, %struct.device_node** %of_node2, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.device_node* [ %2, %cond.true ], [ null, %entry ]
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* noundef null) #21
  %tobool3.not = icmp eq %struct.property* %call, null
  br i1 %tobool3.not, label %if.then, label %if.end7

if.then:                                          ; preds = %cond.end
  %call4 = call %struct.property* @of_find_property(%struct.device_node* noundef %cond, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* noundef null) #21
  %tobool5.not = icmp eq %struct.property* %call4, null
  %spec.select = select i1 %tobool5.not, %struct.device_node* %0, %struct.device_node* %cond
  br label %if.end7

if.end7:                                          ; preds = %if.then, %cond.end
  %np.0 = phi %struct.device_node* [ %0, %cond.end ], [ %spec.select, %if.then ]
  ret %struct.device_node* %np.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_of_clk_del_provider(%struct.device* noundef %dev) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.device_node* @get_clk_provider_node(%struct.device* noundef %dev) #20
  %0 = bitcast %struct.device_node* %call to i8*
  %call1 = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_of_clk_release_provider, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_clk_provider_match, i8* noundef %0) #21
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4724; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devm_clk_provider_match(%struct.device* nocapture noundef readnone %dev, i8* noundef readonly %res, i8* noundef readnone %data) #1 {
entry:
  %tobool.not = icmp eq i8* %res, null
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %0 = bitcast i8* %res to %struct.device_node**
  %1 = load %struct.device_node*, %struct.device_node** %0, align 8
  %tobool1.not = icmp eq %struct.device_node* %1, null
  br i1 %tobool1.not, label %if.then, label %if.end19, !prof !7

if.then:                                          ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 4706; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !32
  br label %cleanup

if.end19:                                         ; preds = %lor.rhs
  %2 = bitcast i8* %data to %struct.device_node*
  %cmp = icmp eq %struct.device_node* %1, %2
  %conv20 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  %retval.0 = phi i32 [ %conv20, %if.end19 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args* noundef %clkspec) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.clk_hw* @of_clk_get_hw_from_clkspec(%struct.of_phandle_args* noundef %clkspec) #20
  %call1 = call %struct.clk* @clk_hw_create_clk(%struct.device* noundef null, %struct.clk_hw* noundef %call, i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.of_clk_get_from_provider, i64 0, i64 0)) #20
  ret %struct.clk* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_hw* @of_clk_get_hw_from_clkspec(%struct.of_phandle_args* noundef %clkspec) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.of_phandle_args* %clkspec, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #20
  %0 = bitcast i8* %call1 to %struct.clk_hw*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -517) #20
  %1 = bitcast i8* %call to %struct.clk_hw*
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  %provider.027 = load %struct.of_clk_provider*, %struct.of_clk_provider** bitcast (%struct.list_head* @of_clk_providers to %struct.of_clk_provider**), align 8
  %link28 = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %provider.027, i64 0, i32 0
  %cmp.not29 = icmp eq %struct.list_head* %link28, @of_clk_providers
  br i1 %cmp.not29, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %clkspec, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %provider.031 = phi %struct.of_clk_provider* [ %provider.027, %for.body.lr.ph ], [ %provider.0, %for.inc ]
  %hw.030 = phi %struct.clk_hw* [ %1, %for.body.lr.ph ], [ %hw.1, %for.inc ]
  %node = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %provider.031, i64 0, i32 1
  %2 = load %struct.device_node*, %struct.device_node** %node, align 8
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8
  %cmp2 = icmp eq %struct.device_node* %2, %3
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %call4 = call fastcc %struct.clk_hw* @__of_clk_get_hw_from_provider(%struct.of_clk_provider* noundef %provider.031, %struct.of_phandle_args* noundef nonnull %clkspec) #20
  %4 = bitcast %struct.clk_hw* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %4) #20
  br i1 %call5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %if.then3
  %hw.1 = phi %struct.clk_hw* [ %call4, %if.then3 ], [ %hw.030, %for.body ]
  %5 = bitcast %struct.of_clk_provider* %provider.031 to %struct.of_clk_provider**
  %provider.0 = load %struct.of_clk_provider*, %struct.of_clk_provider** %5, align 8
  %link = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %provider.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @of_clk_providers
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then3, %if.end
  %hw.2 = phi %struct.clk_hw* [ %1, %if.end ], [ %call4, %if.then3 ], [ %hw.1, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_clk_mutex) #21
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi %struct.clk_hw* [ %hw.2, %for.end ], [ %0, %if.then ]
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @of_clk_get_hw(%struct.device_node* noundef %np, i32 noundef %index, i8* noundef %con_id) local_unnamed_addr #1 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %clkspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !16
  %call = call fastcc i32 @of_parse_clkspec(%struct.device_node* noundef %np, i32 noundef %index, i8* noundef %con_id, %struct.of_phandle_args* noundef nonnull %clkspec) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #20
  %1 = bitcast i8* %call1 to %struct.clk_hw*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.clk_hw* @of_clk_get_hw_from_clkspec(%struct.of_phandle_args* noundef nonnull %clkspec) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.clk_hw* [ %1, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #22
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_parse_clkspec(%struct.device_node* noundef %np, i32 noundef %index, i8* noundef %name, %struct.of_phandle_args* noundef %out_args) unnamed_addr #1 {
entry:
  %tobool.not25 = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not25, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %tobool1 = icmp ne i8* %name, null
  br label %while.body

while.body:                                       ; preds = %land.lhs.true10, %while.body.lr.ph
  %np.addr.027 = phi %struct.device_node* [ %np, %while.body.lr.ph ], [ %0, %land.lhs.true10 ]
  %index.addr.026 = phi i32 [ %index, %while.body.lr.ph ], [ 0, %land.lhs.true10 ]
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call = call i32 @of_property_match_string(%struct.device_node* noundef nonnull %np.addr.027, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %name) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %index.addr.1 = phi i32 [ %call, %if.then ], [ %index.addr.026, %while.body ]
  %call2 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef nonnull %np.addr.027, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %index.addr.1, %struct.of_phandle_args* noundef %out_args) #21
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.end, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp = icmp sgt i32 %index.addr.1, -1
  %or.cond = and i1 %tobool1, %cmp
  br i1 %or.cond, label %while.end, label %if.end8

if.end8:                                          ; preds = %if.end5
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %np.addr.027, i64 0, i32 6
  %0 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %cond = icmp eq %struct.device_node* %0, null
  br i1 %cond, label %while.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end8
  %call11 = call i8* @of_get_property(%struct.device_node* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32* noundef null) #21
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end8, %if.end, %if.end5, %land.lhs.true10, %entry
  %ret.1 = phi i32 [ -2, %entry ], [ %call2, %land.lhs.true10 ], [ %call2, %if.end5 ], [ 0, %if.end ], [ %call2, %if.end8 ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @of_clk_get(%struct.device_node* noundef %np, i32 noundef %index) local_unnamed_addr #1 {
entry:
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  %call = call fastcc %struct.clk* @__of_clk_get(%struct.device_node* noundef %np, i32 noundef %index, i8* noundef %0, i8* noundef null) #20
  ret %struct.clk* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk* @__of_clk_get(%struct.device_node* noundef %np, i32 noundef %index, i8* noundef %dev_id, i8* noundef %con_id) unnamed_addr #1 {
entry:
  %call = call %struct.clk_hw* @of_clk_get_hw(%struct.device_node* noundef %np, i32 noundef %index, i8* noundef %con_id) #20
  %call1 = call %struct.clk* @clk_hw_create_clk(%struct.device* noundef null, %struct.clk_hw* noundef %call, i8* noundef %dev_id, i8* noundef %con_id) #20
  ret %struct.clk* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @of_clk_get_by_name(%struct.device_node* noundef %np, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -2) #20
  %0 = bitcast i8* %call to %struct.clk*
  br label %return

if.end:                                           ; preds = %entry
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %1 = load i8*, i8** %full_name, align 8
  %call1 = call fastcc %struct.clk* @__of_clk_get(%struct.device_node* noundef nonnull %np, i32 noundef 0, i8* noundef %1, i8* noundef %name) #20
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.clk* [ %call1, %if.end ], [ %0, %if.then ]
  ret %struct.clk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_clk_get_parent_count(%struct.device_node* noundef %np) local_unnamed_addr #1 {
entry:
  %call = call i32 @of_count_phandle_with_args(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #21
  %0 = icmp sgt i32 %call, 0
  %.call = select i1 %0, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(%struct.device_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @of_clk_get_parent_name(%struct.device_node* noundef %np, i32 noundef %index) local_unnamed_addr #1 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 8
  %clk_name = alloca i8*, align 8
  %pv = alloca i32, align 4
  %0 = bitcast %struct.of_phandle_args* %clkspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !16
  %1 = bitcast i8** %clk_name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store i8* null, i8** %clk_name, align 8, !annotation !16
  %2 = bitcast i32* %pv to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #22
  store i32 0, i32* %pv, align 4, !annotation !16
  %call = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %index, %struct.of_phandle_args* noundef nonnull %clkspec) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %clkspec, i64 0, i32 1
  %3 = load i32, i32* %args_count, align 8
  %tobool1.not = icmp eq i32 %3, 0
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %clkspec, i64 0, i32 2, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %cond = select i1 %tobool1.not, i32 0, i32 %4
  %np2 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %clkspec, i64 0, i32 0
  %5 = load %struct.device_node*, %struct.device_node** %np2, align 8
  %call3 = call %struct.property* @of_find_property(%struct.device_node* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32* noundef null) #21
  %call4 = call i32* @of_prop_next_u32(%struct.property* noundef %call3, i32* noundef null, i32* noundef nonnull %pv) #21
  %tobool557.not = icmp eq i32* %call4, null
  br i1 %tobool557.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %if.end7
  %count.059 = phi i32 [ %inc, %if.end7 ], [ 0, %if.end ]
  %vp.058 = phi i32* [ %call8, %if.end7 ], [ %call4, %if.end ]
  %6 = load i32, i32* %pv, align 4
  %cmp = icmp eq i32 %cond, %6
  br i1 %cmp, label %if.end12, label %if.end7

if.end7:                                          ; preds = %for.body
  %inc = add i32 %count.059, 1
  %call8 = call i32* @of_prop_next_u32(%struct.property* noundef %call3, i32* noundef nonnull %vp.058, i32* noundef nonnull %pv) #21
  %tobool5.not = icmp eq i32* %call8, null
  br i1 %tobool5.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end7, %if.end
  %tobool9 = icmp eq %struct.property* %call3, null
  br i1 %tobool9, label %if.end12, label %cleanup

if.end12:                                         ; preds = %for.body, %for.end
  %index.addr.054 = phi i32 [ %cond, %for.end ], [ %count.059, %for.body ]
  %7 = load %struct.device_node*, %struct.device_node** %np2, align 8
  %call14 = call fastcc i32 @of_property_read_string_index(%struct.device_node* noundef %7, i32 noundef %index.addr.054, i8** noundef nonnull %clk_name) #20
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end28

if.then16:                                        ; preds = %if.end12
  %call17 = call %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args* noundef nonnull %clkspec) #20
  %8 = bitcast %struct.clk* %call17 to i8*
  %call18 = call fastcc i1 @IS_ERR(i8* noundef %8) #20
  br i1 %call18, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.then16
  %9 = load i32, i32* %args_count, align 8
  %cmp21 = icmp eq i32 %9, 0
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then19
  %10 = load %struct.device_node*, %struct.device_node** %np2, align 8
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i64 0, i32 0
  %11 = load i8*, i8** %name, align 8
  store i8* %11, i8** %clk_name, align 8
  br label %if.end28

if.else:                                          ; preds = %if.then19
  store i8* null, i8** %clk_name, align 8
  br label %if.end28

if.else25:                                        ; preds = %if.then16
  %call26 = call i8* @__clk_get_name(%struct.clk* noundef %call17) #20
  store i8* %call26, i8** %clk_name, align 8
  call void @clk_put(%struct.clk* noundef %call17) #21
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.else, %if.then22, %if.end12
  %12 = load i8*, i8** %clk_name, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %if.end28
  %retval.0 = phi i8* [ %12, %if.end28 ], [ null, %entry ], [ null, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #22
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.of_phandle_args* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32* @of_prop_next_u32(%struct.property* noundef, i32* noundef, i32* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_string_index(%struct.device_node* noundef %np, i32 noundef %index, i8** noundef %output) unnamed_addr #1 {
entry:
  %call = call i32 @of_property_read_string_helper(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** noundef %output, i64 noundef 1, i32 noundef %index) #21
  %cmp = icmp slt i32 %call, 0
  %cond = select i1 %cmp, i32 %call, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(%struct.clk* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_clk_parent_fill(%struct.device_node* noundef %np, i8** nocapture noundef writeonly %parents, i32 noundef %size) local_unnamed_addr #1 {
entry:
  %cmp7.not = icmp eq i32 %size, 0
  br i1 %cmp7.not, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %size to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %indvars.iv = phi i64 [ 0, %land.rhs.preheader ], [ %indvars.iv.next, %while.body ]
  %0 = trunc i64 %indvars.iv to i32
  %call = call i8* @of_clk_get_parent_name(%struct.device_node* noundef %np, i32 noundef %0) #20
  %arrayidx = getelementptr i8*, i8** %parents, i64 %indvars.iv
  store i8* %call, i8** %arrayidx, align 8
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %while.end.loopexit.split.loop.exit11, label %while.body

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %while.end, label %land.rhs

while.end.loopexit.split.loop.exit11:             ; preds = %land.rhs
  %1 = trunc i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %while.body, %while.end.loopexit.split.loop.exit11, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %1, %while.end.loopexit.split.loop.exit11 ], [ %size, %while.body ]
  ret i32 %i.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_clk_detect_critical(%struct.device_node* noundef %np, i32 noundef %index, i64* noundef %flags) local_unnamed_addr #1 {
entry:
  %idx = alloca i32, align 4
  %0 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #22
  store i32 0, i32* %idx, align 4, !annotation !16
  %tobool = icmp ne %struct.device_node* %np, null
  %tobool1 = icmp ne i64* %flags, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef nonnull %np, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* noundef null) #21
  %call2 = call i32* @of_prop_next_u32(%struct.property* noundef %call, i32* noundef null, i32* noundef nonnull %idx) #21
  %tobool3.not15 = icmp eq i32* %call2, null
  br i1 %tobool3.not15, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %cur.016 = phi i32* [ %call6, %for.inc ], [ %call2, %if.end ]
  %1 = load i32, i32* %idx, align 4
  %cmp = icmp eq i32 %1, %index
  br i1 %cmp, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %2 = load i64, i64* %flags, align 8
  %or = or i64 %2, 2048
  store i64 %or, i64* %flags, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %call6 = call i32* @of_prop_next_u32(%struct.property* noundef %call, i32* noundef nonnull %cur.016, i32* noundef nonnull %idx) #21
  %tobool3.not = icmp eq i32* %call6, null
  br i1 %tobool3.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.end ], [ 0, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #22
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @of_clk_init(%struct.of_device_id* noundef %matches) local_unnamed_addr #10 section ".init.text" {
entry:
  %match = alloca %struct.of_device_id*, align 8
  %clk_provider_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.of_device_id** %match to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store %struct.of_device_id* null, %struct.of_device_id** %match, align 8, !annotation !16
  %1 = bitcast %struct.list_head* %clk_provider_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #22
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %clk_provider_list, i64 0, i32 0
  store %struct.list_head* %clk_provider_list, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %clk_provider_list, i64 0, i32 1
  store %struct.list_head* %clk_provider_list, %struct.list_head** %prev, align 8
  %tobool.not = icmp eq %struct.of_device_id* %matches, null
  %spec.store.select = select i1 %tobool.not, %struct.of_device_id* @__clk_of_table, %struct.of_device_id* %matches
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef null, %struct.of_device_id* noundef %spec.store.select, %struct.of_device_id** noundef nonnull %match) #21
  %tobool2.not138 = icmp eq %struct.device_node* %call, null
  br i1 %tobool2.not138, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.inc34, %entry
  %call37151 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %clk_provider_list) #20
  %tobool38.not152 = icmp eq i32 %call37151, 0
  br i1 %tobool38.not152, label %while.body.lr.ph, label %cleanup86

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %2 = bitcast %struct.list_head* %clk_provider_list to i8**
  br label %while.body

for.body:                                         ; preds = %entry, %for.inc34
  %np.0139 = phi %struct.device_node* [ %call35, %for.inc34 ], [ %call, %entry ]
  %call3 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %np.0139) #21
  br i1 %call3, label %if.end5, label %for.inc34

if.end5:                                          ; preds = %for.body
  %call6 = call fastcc i8* @kzalloc(i64 noundef 32) #20
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end30

if.then8:                                         ; preds = %if.end5
  %3 = bitcast %struct.list_head* %clk_provider_list to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.list_head*
  %cmp.not141 = icmp eq %struct.list_head* %clk_provider_list, %5
  br i1 %cmp.not141, label %cleanup86, label %for.body19

for.body19:                                       ; preds = %if.then8, %for.body19
  %6 = phi %struct.list_head* [ %7, %for.body19 ], [ %5, %if.then8 ]
  %.pn133.in.in142 = phi i8* [ %.pn133, %for.body19 ], [ %4, %if.then8 ]
  %clk_provider.0.in = getelementptr i8, i8* %.pn133.in.in142, i64 -16
  %.pn133.in = bitcast i8* %.pn133.in.in142 to i8**
  %.pn133 = load i8*, i8** %.pn133.in, align 8
  call fastcc void @list_del(%struct.list_head* noundef %6) #20
  call void @kfree(i8* noundef %clk_provider.0.in) #21
  %7 = bitcast i8* %.pn133 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %clk_provider_list, %7
  br i1 %cmp.not, label %cleanup86, label %for.body19

if.end30:                                         ; preds = %if.end5
  %8 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8
  %data = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %8, i64 0, i32 3
  %9 = bitcast i8** %data to void (%struct.device_node*)**
  %10 = load void (%struct.device_node*)*, void (%struct.device_node*)** %9, align 8
  %clk_init_cb = bitcast i8* %call6 to void (%struct.device_node*)**
  store void (%struct.device_node*)* %10, void (%struct.device_node*)** %clk_init_cb, align 8
  %np32 = getelementptr inbounds i8, i8* %call6, i64 8
  %11 = bitcast i8* %np32 to %struct.device_node**
  store %struct.device_node* %np.0139, %struct.device_node** %11, align 8
  %node33 = getelementptr inbounds i8, i8* %call6, i64 16
  %12 = bitcast i8* %node33 to %struct.list_head*
  call fastcc void @list_add_tail(%struct.list_head* noundef %12, %struct.list_head* noundef nonnull %clk_provider_list) #20
  br label %for.inc34

for.inc34:                                        ; preds = %if.end30, %for.body
  %call35 = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef nonnull %np.0139, %struct.of_device_id* noundef %spec.store.select, %struct.of_device_id** noundef nonnull %match) #21
  %tobool2.not = icmp eq %struct.device_node* %call35, null
  br i1 %tobool2.not, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.body.lr.ph, %for.end82
  %force.0.off0153 = phi i1 [ false, %while.body.lr.ph ], [ %spec.select, %for.end82 ]
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.list_head*
  %cmp57.not146 = icmp eq %struct.list_head* %clk_provider_list, %14
  br i1 %cmp57.not146, label %for.end82, label %for.body59

for.body59:                                       ; preds = %while.body, %for.inc73
  %15 = phi %struct.list_head* [ %23, %for.inc73 ], [ %14, %while.body ]
  %.pn.in.in148 = phi i8* [ %.pn150, %for.inc73 ], [ %13, %while.body ]
  %is_init_done.0.off0147 = phi i1 [ %is_init_done.1.off0, %for.inc73 ], [ false, %while.body ]
  %clk_provider.1.in149 = getelementptr i8, i8* %.pn.in.in148, i64 -16
  %.pn150.in = bitcast i8* %.pn.in.in148 to i8**
  %.pn150 = load i8*, i8** %.pn150.in, align 8
  br i1 %force.0.off0153, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body59
  %np61 = getelementptr i8, i8* %.pn.in.in148, i64 -8
  %16 = bitcast i8* %np61 to %struct.device_node**
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  %call62 = call fastcc i32 @parent_ready(%struct.device_node* noundef %17) #20
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.inc73, label %if.then64

if.then64:                                        ; preds = %for.body59, %lor.lhs.false
  %np65 = getelementptr i8, i8* %.pn.in.in148, i64 -8
  %18 = bitcast i8* %np65 to %struct.device_node**
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  call fastcc void @of_node_set_flag(%struct.device_node* noundef %19) #20
  %clk_init_cb66 = bitcast i8* %clk_provider.1.in149 to void (%struct.device_node*)**
  %20 = load void (%struct.device_node*)*, void (%struct.device_node*)** %clk_init_cb66, align 8
  %21 = load %struct.device_node*, %struct.device_node** %18, align 8
  call void %20(%struct.device_node* noundef %21) #21
  %22 = load %struct.device_node*, %struct.device_node** %18, align 8
  %call69 = call i32 @of_clk_set_defaults(%struct.device_node* noundef %22, i1 noundef true) #21
  call fastcc void @list_del(%struct.list_head* noundef %15) #20
  call void @kfree(i8* noundef %clk_provider.1.in149) #21
  br label %for.inc73

for.inc73:                                        ; preds = %lor.lhs.false, %if.then64
  %is_init_done.1.off0 = phi i1 [ true, %if.then64 ], [ %is_init_done.0.off0147, %lor.lhs.false ]
  %23 = bitcast i8* %.pn150 to %struct.list_head*
  %cmp57.not = icmp eq %struct.list_head* %clk_provider_list, %23
  br i1 %cmp57.not, label %for.end82, label %for.body59

for.end82:                                        ; preds = %for.inc73, %while.body
  %is_init_done.0.off0.lcssa = phi i1 [ false, %while.body ], [ %is_init_done.1.off0, %for.inc73 ]
  %not.is_init_done.0.off0 = xor i1 %is_init_done.0.off0.lcssa, true
  %spec.select = select i1 %not.is_init_done.0.off0, i1 true, i1 %force.0.off0153
  %call37 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %clk_provider_list) #20
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %while.body, label %cleanup86

cleanup86:                                        ; preds = %for.body19, %for.end82, %if.then8, %while.cond.preheader
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef, %struct.of_device_id* noundef, %struct.of_device_id** noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #15 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #14 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @parent_ready(%struct.device_node* noundef %np) unnamed_addr #1 {
entry:
  %call15 = call %struct.clk* @of_clk_get(%struct.device_node* noundef %np, i32 noundef 0) #20
  %0 = bitcast %struct.clk* %call15 to i8*
  %call116 = call fastcc i1 @IS_ERR(i8* noundef %0) #20
  br i1 %call116, label %cleanup5, label %cleanup

cleanup:                                          ; preds = %entry, %cleanup
  %call18 = phi %struct.clk* [ %call, %cleanup ], [ %call15, %entry ]
  %i.017 = phi i32 [ %inc, %cleanup ], [ 0, %entry ]
  call void @clk_put(%struct.clk* noundef %call18) #21
  %inc = add i32 %i.017, 1
  %call = call %struct.clk* @of_clk_get(%struct.device_node* noundef %np, i32 noundef %inc) #20
  %1 = bitcast %struct.clk* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #20
  br i1 %call1, label %cleanup5.loopexit, label %cleanup

cleanup5.loopexit:                                ; preds = %cleanup
  %2 = bitcast %struct.clk* %call to i8*
  br label %cleanup5

cleanup5:                                         ; preds = %cleanup5.loopexit, %entry
  %.pre-phi = phi i8* [ %0, %entry ], [ %2, %cleanup5.loopexit ]
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %.pre-phi) #20
  %cmp = icmp ne i64 %call2, -517
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_node_set_flag(%struct.device_node* noundef %n) unnamed_addr #1 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  call fastcc void @set_bit(i64* noundef %_flags) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_fill_parent_index(%struct.clk_core* nocapture noundef readonly %core, i8 noundef %index) unnamed_addr #1 {
entry:
  %parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  %0 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %idxprom = zext i8 %index to i64
  %hw = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %0, i64 %idxprom, i32 0
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %tobool.not = icmp eq %struct.clk_hw* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %core3 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %1, i64 0, i32 0
  %2 = load %struct.clk_core*, %struct.clk_core** %core3, align 8
  %tobool4.not = icmp eq %struct.clk_core* %2, null
  br i1 %tobool4.not, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.then
  %call = call fastcc i8* @ERR_PTR(i64 noundef -517) #20
  %3 = bitcast i8* %call to %struct.clk_core*
  br label %if.end13

if.else:                                          ; preds = %entry
  %call6 = call fastcc %struct.clk_core* @clk_core_get(%struct.clk_core* noundef %core, i8 noundef %index) #20
  %4 = bitcast %struct.clk_core* %call6 to i8*
  %call7 = call fastcc i64 @PTR_ERR(i8* noundef %4) #20
  %cmp = icmp eq i64 %call7, -2
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.else
  %name = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %0, i64 %idxprom, i32 3
  %5 = load i8*, i8** %name, align 8
  %tobool8.not = icmp eq i8* %5, null
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %call11 = call fastcc %struct.clk_core* @clk_core_lookup(i8* noundef nonnull %5) #20
  br label %if.end13

if.end13:                                         ; preds = %if.else, %land.lhs.true, %if.then9, %if.then, %if.then5
  %parent.0 = phi %struct.clk_core* [ %2, %if.then ], [ %3, %if.then5 ], [ %call11, %if.then9 ], [ %call6, %land.lhs.true ], [ %call6, %if.else ]
  %6 = bitcast %struct.clk_core* %parent.0 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %6) #20
  br i1 %call14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  %core16 = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %0, i64 %idxprom, i32 1
  store %struct.clk_core* %parent.0, %struct.clk_core** %core16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @clk_core_get(%struct.clk_core* nocapture noundef readonly %core, i8 noundef %p_index) unnamed_addr #1 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 8
  %parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  %0 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %idxprom = zext i8 %p_index to i64
  %fw_name = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %0, i64 %idxprom, i32 2
  %1 = load i8*, i8** %fw_name, align 8
  %index4 = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %0, i64 %idxprom, i32 4
  %2 = load i32, i32* %index4, align 8
  %call = call fastcc i8* @ERR_PTR(i64 noundef -2) #20
  %3 = bitcast i8* %call to %struct.clk_hw*
  %dev5 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 4
  %4 = load %struct.device*, %struct.device** %dev5, align 8
  %tobool.not = icmp eq %struct.device* %4, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call6 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %4) #20
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call6, %cond.true ], [ null, %entry ]
  %of_node = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 5
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %6 = bitcast %struct.of_phandle_args* %clkspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false), !annotation !16
  %tobool7.not = icmp eq %struct.device_node* %5, null
  br i1 %tobool7.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %tobool8 = icmp ne i8* %1, null
  %cmp = icmp sgt i32 %2, -1
  %or.cond = select i1 %tobool8, i1 true, i1 %cmp
  br i1 %or.cond, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %land.lhs.true
  %call10 = call fastcc i32 @of_parse_clkspec(%struct.device_node* noundef nonnull %5, i32 noundef %2, i8* noundef %1, %struct.of_phandle_args* noundef nonnull %clkspec) #20
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true9
  %call12 = call fastcc %struct.clk_hw* @of_clk_get_hw_from_clkspec(%struct.of_phandle_args* noundef nonnull %clkspec) #20
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true9, %cond.end
  %tobool14.not = icmp eq i8* %1, null
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.else
  %call16 = call %struct.clk_hw* @clk_find_hw(i8* noundef %cond, i8* noundef nonnull %1) #21
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.else, %if.then15, %if.then
  %hw.0 = phi %struct.clk_hw* [ %call16, %if.then15 ], [ %3, %if.else ], [ %call12, %if.then ], [ %3, %land.lhs.true ]
  %7 = bitcast %struct.clk_hw* %hw.0 to i8*
  %call18 = call fastcc i1 @IS_ERR(i8* noundef %7) #20
  br i1 %call18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %8 = bitcast %struct.clk_hw* %hw.0 to %struct.clk_core*
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %core22 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw.0, i64 0, i32 0
  %9 = load %struct.clk_core*, %struct.clk_core** %core22, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19
  %retval.0 = phi %struct.clk_core* [ %8, %if.then19 ], [ %9, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #22
  ret %struct.clk_core* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #8 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @clk_find_hw(i8* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @__clk_lookup_subtree(i8* noundef %name, %struct.clk_core* noundef readonly %core) unnamed_addr #1 {
entry:
  %name1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %0 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef %name) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool2.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -12, i32 1
  %tobool4.not4043 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool4.not40 = or i1 %tobool2.not, %tobool4.not4043
  br i1 %tobool4.not40, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %2 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %child.041 = phi %struct.clk_core* [ %spec.select39, %for.inc ], [ %2, %for.body.preheader ]
  %call5 = call fastcc %struct.clk_core* @__clk_lookup_subtree(i8* noundef %name, %struct.clk_core* noundef nonnull %child.041) #20
  %tobool6.not = icmp eq %struct.clk_core* %call5, null
  br i1 %tobool6.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.041, i64 0, i32 27, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool11.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr18 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -12, i32 1
  %4 = bitcast %struct.hlist_node*** %add.ptr18 to %struct.clk_core*
  %spec.select39 = select i1 %tobool11.not, %struct.clk_core* null, %struct.clk_core* %4
  %tobool4.not = icmp eq %struct.clk_core* %spec.select39, null
  br i1 %tobool4.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %if.end, %entry
  %retval.0 = phi %struct.clk_core* [ %core, %entry ], [ null, %if.end ], [ %call5, %for.body ], [ null, %for.inc ]
  ret %struct.clk_core* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_unprepare(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %0 = load i32, i32* %prepare_count, align 8
  switch i32 %0, label %if.end.if.end67_crit_edge [
    i32 0, label %do.end11
    i32 1, label %land.rhs
  ], !prof !33

if.end.if.end67_crit_edge:                        ; preds = %if.end
  %flags68.phi.trans.insert = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %.pre = load i64, i64* %flags68.phi.trans.insert, align 8
  br label %if.end67

do.end11:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* noundef %1) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 811; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !34
  br label %return

land.rhs:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %2 = load i64, i64* %flags, align 8
  %and = and i64 %2, 2048
  %tobool32.not = icmp eq i64 %and, 0
  br i1 %tobool32.not, label %if.end67, label %do.end49, !prof !10

do.end49:                                         ; preds = %land.rhs
  %name50 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %3 = load i8*, i8** %name50, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* noundef %3) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 815; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !35
  br label %return

if.end67:                                         ; preds = %if.end.if.end67_crit_edge, %land.rhs
  %4 = phi i64 [ %.pre, %if.end.if.end67_crit_edge ], [ %2, %land.rhs ]
  %and69 = and i64 %4, 1
  %tobool70.not = icmp eq i64 %and69, 0
  br i1 %tobool70.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end67
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef nonnull %core) #20
  %.pre141 = load i32, i32* %prepare_count, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end67
  %5 = phi i32 [ %.pre141, %if.then71 ], [ %0, %if.end67 ]
  %dec = add i32 %5, -1
  store i32 %dec, i32* %prepare_count, align 8
  %cmp74.not = icmp eq i32 %dec, 0
  br i1 %cmp74.not, label %if.end77, label %return

if.end77:                                         ; preds = %if.end72
  %enable_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 18
  %6 = load i32, i32* %enable_count, align 4
  %cmp79.not = icmp eq i32 %6, 0
  br i1 %cmp79.not, label %if.end104, label %do.end97, !prof !10

do.end97:                                         ; preds = %if.end77
  %name98 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %7 = load i8*, i8** %name98, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* noundef %7) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 824; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !36
  br label %if.end104

if.end104:                                        ; preds = %do.end97, %if.end77
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %8 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %unprepare = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %8, i64 0, i32 1
  %9 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %unprepare, align 8
  %tobool113.not = icmp eq void (%struct.clk_hw*)* %9, null
  br i1 %tobool113.not, label %if.end117, label %if.then114

if.then114:                                       ; preds = %if.end104
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  call void %9(%struct.clk_hw* noundef %10) #21
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end104
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %11 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  call fastcc void @clk_core_unprepare(%struct.clk_core* noundef %11) #20
  br label %return

return:                                           ; preds = %do.end49, %do.end11, %if.end72, %entry, %if.end117
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_prepare(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %0 = load i32, i32* %prepare_count, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end18

if.then1:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %call5 = call fastcc i32 @clk_core_prepare(%struct.clk_core* noundef %1) #20
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.then1
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %2 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %prepare = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %2, i64 0, i32 0
  %3 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %prepare, align 8
  %tobool9.not = icmp eq i32 (%struct.clk_hw*)* %3, null
  br i1 %tobool9.not, label %if.end18, label %if.end14

if.end14:                                         ; preds = %if.end8
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %4 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call13 = call i32 %3(%struct.clk_hw* noundef %4) #21
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end18, label %unprepare

if.end18:                                         ; preds = %if.end8, %if.end14, %if.end
  %5 = load i32, i32* %prepare_count, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %prepare_count, align 8
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %6 = load i64, i64* %flags, align 8
  %and = and i64 %6, 1
  %tobool20.not = icmp eq i64 %and, 0
  br i1 %tobool20.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end18
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef nonnull %core) #20
  br label %cleanup

unprepare:                                        ; preds = %if.end14
  %7 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  call fastcc void @clk_core_unprepare(%struct.clk_core* noundef %7) #20
  br label %cleanup

cleanup:                                          ; preds = %unprepare, %if.then1, %if.end18, %if.then21, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then21 ], [ 0, %if.end18 ], [ %call5, %if.then1 ], [ %call13, %unprepare ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_disable(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %enable_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 18
  %0 = load i32, i32* %enable_count, align 4
  switch i32 %0, label %if.end67 [
    i32 0, label %do.end11
    i32 1, label %land.rhs
  ], !prof !33

do.end11:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 952; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !37
  br label %return

land.rhs:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %2 = load i64, i64* %flags, align 8
  %and = and i64 %2, 2048
  %tobool32.not = icmp eq i64 %and, 0
  br i1 %tobool32.not, label %if.end72, label %do.end49, !prof !10

do.end49:                                         ; preds = %land.rhs
  %name50 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %3 = load i8*, i8** %name50, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* noundef %3) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 956; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !38
  br label %return

if.end67:                                         ; preds = %if.end
  %dec = add i32 %0, -1
  store i32 %dec, i32* %enable_count, align 4
  br label %return

if.end72:                                         ; preds = %land.rhs
  store i32 0, i32* %enable_count, align 4
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %4 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %4, i64 0, i32 5
  %5 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8
  %tobool73.not = icmp eq void (%struct.clk_hw*)* %5, null
  br i1 %tobool73.not, label %if.end77, label %if.then74

if.then74:                                        ; preds = %if.end72
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %6 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  call void %5(%struct.clk_hw* noundef %6) #21
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end72
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %7 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  call fastcc void @clk_core_disable(%struct.clk_core* noundef %7) #20
  br label %return

return:                                           ; preds = %if.end67, %do.end49, %do.end11, %entry, %if.end77
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_enable(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %0 = load i32, i32* %prepare_count, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end12, label %if.end28, !prof !7

do.end12:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8* noundef %1) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 1012; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !39
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %enable_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 18
  %2 = load i32, i32* %enable_count, align 4
  %cmp29 = icmp eq i32 %2, 0
  br i1 %cmp29, label %if.then31, label %if.end45

if.then31:                                        ; preds = %if.end28
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %3 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %call = call fastcc i32 @clk_core_enable(%struct.clk_core* noundef %3) #20
  %tobool32.not = icmp eq i32 %call, 0
  br i1 %tobool32.not, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.then31
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %4 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %enable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %4, i64 0, i32 4
  %5 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %enable, align 8
  %tobool35.not = icmp eq i32 (%struct.clk_hw*)* %5, null
  br i1 %tobool35.not, label %if.end45, label %if.end40

if.end40:                                         ; preds = %if.end34
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %6 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call39 = call i32 %5(%struct.clk_hw* noundef %6) #21
  %tobool41.not = icmp eq i32 %call39, 0
  br i1 %tobool41.not, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.end40
  %7 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  call fastcc void @clk_core_disable(%struct.clk_core* noundef %7) #20
  br label %cleanup

if.end45:                                         ; preds = %if.end34, %if.end40, %if.end28
  %8 = load i32, i32* %enable_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %enable_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then31, %entry, %if.end45, %if.then42
  %retval.0 = phi i32 [ %call39, %if.then42 ], [ 0, %if.end45 ], [ 0, %entry ], [ -108, %do.end12 ], [ %call, %if.then31 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @clk_disable_unused_subtree(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #10 section ".init.text" {
entry:
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool5.not8789 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool5.not87 = or i1 %tobool.not, %tobool5.not8789
  br i1 %tobool5.not87, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %child.088 = phi %struct.clk_core* [ %spec.select86, %for.body ], [ %1, %for.body.preheader ]
  call fastcc void @clk_disable_unused_subtree(%struct.clk_core* noundef nonnull %child.088) #25
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.088, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool8.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr15 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr15 to %struct.clk_core*
  %spec.select86 = select i1 %tobool8.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool5.not = icmp eq %struct.clk_core* %spec.select86, null
  br i1 %tobool5.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %flags19 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %4 = load i64, i64* %flags19, align 8
  %and = and i64 %4, 4096
  %tobool20.not = icmp eq i64 %and, 0
  br i1 %tobool20.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %5 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  call fastcc void @clk_core_prepare_enable(%struct.clk_core* noundef %5) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %call25 = call fastcc i64 @clk_enable_lock() #20
  %enable_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 18
  %6 = load i32, i32* %enable_count, align 4
  %tobool26.not = icmp eq i32 %6, 0
  br i1 %tobool26.not, label %if.end28, label %unlock_out

if.end28:                                         ; preds = %if.end
  %7 = load i64, i64* %flags19, align 8
  %and30 = and i64 %7, 8
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.end33, label %unlock_out

if.end33:                                         ; preds = %if.end28
  %call34 = call fastcc i1 @clk_core_is_enabled(%struct.clk_core* noundef %core) #20
  br i1 %call34, label %if.then35, label %unlock_out

if.then35:                                        ; preds = %if.end33
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %8 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %disable_unused = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %8, i64 0, i32 7
  %9 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable_unused, align 8
  %tobool36.not = icmp eq void (%struct.clk_hw*)* %9, null
  br i1 %tobool36.not, label %if.else, label %unlock_out.sink.split

if.else:                                          ; preds = %if.then35
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %8, i64 0, i32 5
  %10 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8
  %tobool41.not = icmp eq void (%struct.clk_hw*)* %10, null
  br i1 %tobool41.not, label %unlock_out, label %unlock_out.sink.split

unlock_out.sink.split:                            ; preds = %if.else, %if.then35
  %.sink90 = phi void (%struct.clk_hw*)* [ %9, %if.then35 ], [ %10, %if.else ]
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  call void %.sink90(%struct.clk_hw* noundef %11) #21
  br label %unlock_out

unlock_out:                                       ; preds = %unlock_out.sink.split, %if.else, %if.end33, %if.end28, %if.end
  call fastcc void @clk_enable_unlock(i64 noundef %call25) #20
  %12 = load i64, i64* %flags19, align 8
  %and50 = and i64 %12, 4096
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %unlock_out
  %parent53 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %13 = load %struct.clk_core*, %struct.clk_core** %parent53, align 8
  call fastcc void @clk_core_disable_unprepare(%struct.clk_core* noundef %13) #20
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %unlock_out
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @clk_unprepare_unused_subtree(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #10 section ".init.text" {
entry:
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool5.not6870 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool5.not68 = or i1 %tobool.not, %tobool5.not6870
  br i1 %tobool5.not68, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %child.069 = phi %struct.clk_core* [ %spec.select67, %for.body ], [ %1, %for.body.preheader ]
  call fastcc void @clk_unprepare_unused_subtree(%struct.clk_core* noundef nonnull %child.069) #25
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.069, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool8.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr15 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr15 to %struct.clk_core*
  %spec.select67 = select i1 %tobool8.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool5.not = icmp eq %struct.clk_core* %spec.select67, null
  br i1 %tobool5.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %4 = load i32, i32* %prepare_count, align 8
  %tobool19.not = icmp eq i32 %4, 0
  br i1 %tobool19.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.end
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %5 = load i64, i64* %flags, align 8
  %and = and i64 %5, 8
  %tobool20.not = icmp eq i64 %and, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.end
  %call26 = call fastcc i1 @clk_core_is_prepared(%struct.clk_core* noundef %core) #20
  br i1 %call26, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end22
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %6 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %unprepare_unused = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %6, i64 0, i32 3
  %7 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %unprepare_unused, align 8
  %tobool28.not = icmp eq void (%struct.clk_hw*)* %7, null
  br i1 %tobool28.not, label %if.else, label %cleanup.sink.split

if.else:                                          ; preds = %if.then27
  %unprepare = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %6, i64 0, i32 1
  %8 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %unprepare, align 8
  %tobool33.not = icmp eq void (%struct.clk_hw*)* %8, null
  br i1 %tobool33.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then27
  %.sink71 = phi void (%struct.clk_hw*)* [ %7, %if.then27 ], [ %8, %if.else ]
  %hw37 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %9 = load %struct.clk_hw*, %struct.clk_hw** %hw37, align 8
  call void %.sink71(%struct.clk_hw* noundef %9) #21
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22, %if.else, %if.end, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_prepare_enable(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @clk_core_prepare_lock(%struct.clk_core* noundef %core) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @clk_core_enable_lock(%struct.clk_core* noundef %core) #20
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @clk_core_unprepare_lock(%struct.clk_core* noundef %core) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_disable_unprepare(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  call fastcc void @clk_core_disable_lock(%struct.clk_core* noundef %core) #20
  call fastcc void @clk_core_unprepare_lock(%struct.clk_core* noundef %core) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_init_rate_req(%struct.clk_core* noundef readonly %core, %struct.clk_rate_request* noundef writeonly %req) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  %tobool1.not = icmp eq %struct.clk_rate_request* %req, null
  %0 = or i1 %tobool.not, %tobool1.not
  br i1 %0, label %if.then, label %if.end19, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 1361; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !40
  br label %cleanup

if.end19:                                         ; preds = %entry
  %parent20 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent20, align 8
  %tobool21.not = icmp eq %struct.clk_core* %1, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  store %struct.clk_hw* %2, %struct.clk_hw** %best_parent_hw, align 8
  %rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 10
  %3 = load i64, i64* %rate, align 8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  store i64 %3, i64* %best_parent_rate, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %best_parent_hw23 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  store %struct.clk_hw* null, %struct.clk_hw** %best_parent_hw23, align 8
  %best_parent_rate24 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  store i64 0, i64* %best_parent_rate24, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then22, %if.else
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clk_core_can_round(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %determine_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 12
  %1 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8
  %tobool.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %1, null
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 11
  %2 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %tobool2 = icmp ne i64 (%struct.clk_hw*, i64, i64*)* %2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_determine_round_nolock(%struct.clk_core* noundef readonly %core, %struct.clk_rate_request* noundef %req) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @clk_core_rate_is_protected(%struct.clk_core* noundef nonnull %core) #20
  br i1 %call, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %rate2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %0 = load i64, i64* %rate2, align 8
  %rate3 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %0, i64* %rate3, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %1 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %determine_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 12
  %2 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8
  %tobool4.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %2, null
  br i1 %tobool4.not, label %if.else9, label %if.then5

if.then5:                                         ; preds = %if.else
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call8 = call i32 %2(%struct.clk_hw* noundef %3, %struct.clk_rate_request* noundef %req) #21
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 11
  %4 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %tobool11.not = icmp eq i64 (%struct.clk_hw*, i64, i64*)* %4, null
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.else9
  %hw15 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw15, align 8
  %rate16 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  %6 = load i64, i64* %rate16, align 8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  %call17 = call i64 %4(%struct.clk_hw* noundef %5, i64 noundef %6, i64* noundef %best_parent_rate) #21
  %cmp = icmp slt i64 %call17, 0
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then12
  %conv = trunc i64 %call17 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.then12
  store i64 %call17, i64* %rate16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end19, %if.else9, %entry, %if.then18, %if.then5
  %retval.0 = phi i32 [ %call8, %if.then5 ], [ %conv, %if.then18 ], [ 0, %entry ], [ -22, %if.else9 ], [ 0, %if.end19 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clk_recalc_accuracies(%struct.clk_core* nocapture noundef %core) unnamed_addr #1 {
entry:
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %0 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %tobool.not = icmp eq %struct.clk_core* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %accuracy = getelementptr inbounds %struct.clk_core, %struct.clk_core* %0, i64 0, i32 23
  %1 = load i64, i64* %accuracy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %parent_accuracy.0 = phi i64 [ %1, %if.then ], [ 0, %entry ]
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %2 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %recalc_accuracy = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %2, i64 0, i32 17
  %3 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_accuracy, align 8
  %tobool2.not = icmp eq i64 (%struct.clk_hw*, i64)* %3, null
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %4 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call = call i64 %3(%struct.clk_hw* noundef %4, i64 noundef %parent_accuracy.0) #21
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  %call.sink = phi i64 [ %call, %if.then3 ], [ %parent_accuracy.0, %if.end ]
  %5 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 23
  store i64 %call.sink, i64* %5, align 8
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool9.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %tobool14.not5153 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool14.not51 = or i1 %tobool9.not, %tobool14.not5153
  br i1 %tobool14.not51, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end8
  %7 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %child.052 = phi %struct.clk_core* [ %spec.select50, %for.body ], [ %7, %for.body.preheader ]
  call fastcc void @__clk_recalc_accuracies(%struct.clk_core* noundef nonnull %child.052) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.052, i64 0, i32 27, i32 0
  %8 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool17.not = icmp eq %struct.hlist_node* %8, null
  %add.ptr24 = getelementptr %struct.hlist_node, %struct.hlist_node* %8, i64 -12, i32 1
  %9 = bitcast %struct.hlist_node*** %add.ptr24 to %struct.clk_core*
  %spec.select50 = select i1 %tobool17.not, %struct.clk_core* null, %struct.clk_core* %9
  %tobool14.not = icmp eq %struct.clk_core* %spec.select50, null
  br i1 %tobool14.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @clk_core_get_accuracy_no_lock(%struct.clk_core* noundef readonly %core) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %accuracy = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 23
  %0 = load i64, i64* %accuracy, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %0, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clk_recalc_rates(%struct.clk_core* noundef %core, i64 noundef %msg) unnamed_addr #1 {
entry:
  %rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %0 = load i64, i64* %rate, align 8
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %1 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %tobool.not = icmp eq %struct.clk_core* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rate2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %1, i64 0, i32 10
  %2 = load i64, i64* %rate2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %parent_rate.0 = phi i64 [ %2, %if.then ], [ 0, %entry ]
  %call = call fastcc i64 @clk_recalc(%struct.clk_core* noundef %core, i64 noundef %parent_rate.0) #20
  store i64 %call, i64* %rate, align 8
  %notifier_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 29
  %3 = load i32, i32* %notifier_count, align 8
  %tobool4 = icmp ne i32 %3, 0
  %tobool5 = icmp ne i64 %msg, 0
  %or.cond = and i1 %tobool5, %tobool4
  br i1 %or.cond, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %call8 = call fastcc i32 @__clk_notify(%struct.clk_core* noundef %core, i64 noundef %msg, i64 noundef %0, i64 noundef %call) #20
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %4 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool10.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12, i32 1
  %tobool15.not5456 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool15.not54 = or i1 %tobool10.not, %tobool15.not5456
  br i1 %tobool15.not54, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end9
  %5 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %child.055 = phi %struct.clk_core* [ %spec.select53, %for.body ], [ %5, %for.body.preheader ]
  call fastcc void @__clk_recalc_rates(%struct.clk_core* noundef nonnull %child.055, i64 noundef %msg) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.055, i64 0, i32 27, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool18.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr25 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr25 to %struct.clk_core*
  %spec.select53 = select i1 %tobool18.not, %struct.clk_core* null, %struct.clk_core* %7
  %tobool15.not = icmp eq %struct.clk_core* %spec.select53, null
  br i1 %tobool15.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @clk_recalc(%struct.clk_core* nocapture noundef readonly %core, i64 noundef %parent_rate) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 10
  %1 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8
  %tobool.not = icmp eq i64 (%struct.clk_hw*, i64)* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call4 = call i64 %1(%struct.clk_hw* noundef %2, i64 noundef %parent_rate) #21
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %rate.0 = phi i64 [ %call4, %land.lhs.true ], [ %parent_rate, %entry ]
  ret i64 %rate.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__clk_notify(%struct.clk_core* noundef readnone %core, i64 noundef %msg, i64 noundef %old_rate, i64 noundef %new_rate) unnamed_addr #1 {
entry:
  %cnd = alloca %struct.clk_notifier_data, align 8
  %0 = bitcast %struct.clk_notifier_data* %cnd to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #22
  %1 = bitcast %struct.clk_notifier_data* %cnd to i64*, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %old_rate1 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %cnd, i64 0, i32 1
  store i64 %old_rate, i64* %old_rate1, align 8
  %new_rate2 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %cnd, i64 0, i32 2
  store i64 %new_rate, i64* %new_rate2, align 8
  %clk6 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %cnd, i64 0, i32 0
  %.pn28 = load i8*, i8** bitcast (%struct.list_head* @clk_notifier_list to i8**), align 8
  %cmp.not29 = icmp eq i8* %.pn28, bitcast (%struct.list_head* @clk_notifier_list to i8*)
  br i1 %cmp.not29, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn31 = phi i8* [ %.pn, %for.inc ], [ %.pn28, %entry ]
  %ret.030 = phi i32 [ %ret.1, %for.inc ], [ 0, %entry ]
  %cn.0.in = getelementptr i8, i8* %.pn31, i64 -1992
  %clk = bitcast i8* %cn.0.in to %struct.clk**
  %2 = load %struct.clk*, %struct.clk** %clk, align 8
  %core3 = getelementptr inbounds %struct.clk, %struct.clk* %2, i64 0, i32 0
  %3 = load %struct.clk_core*, %struct.clk_core** %core3, align 8
  %cmp4 = icmp eq %struct.clk_core* %3, %core
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store %struct.clk* %2, %struct.clk** %clk6, align 8
  %notifier_head = getelementptr i8, i8* %.pn31, i64 -1984
  %4 = bitcast i8* %notifier_head to %struct.srcu_notifier_head*
  %call = call i32 @srcu_notifier_call_chain(%struct.srcu_notifier_head* noundef %4, i64 noundef %msg, i8* noundef nonnull %0) #21
  %and = and i32 %call, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body, %if.then
  %ret.1 = phi i32 [ %call, %if.then ], [ %ret.030, %for.body ]
  %5 = bitcast i8* %.pn31 to i8**
  %.pn = load i8*, i8** %5, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clk_notifier_list to i8*)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.then, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.1, %for.inc ], [ %call, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_call_chain(%struct.srcu_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @clk_core_req_round_rate_nolock(%struct.clk_core* noundef %core, i64 noundef %req_rate) unnamed_addr #1 {
entry:
  %req = alloca %struct.clk_rate_request, align 8
  %0 = bitcast %struct.clk_rate_request* %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !16
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @clk_core_rate_nuke_protect(%struct.clk_core* noundef nonnull %core) #20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %conv = sext i32 %call to i64
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %min_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 1
  %max_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 2
  call fastcc void @clk_core_get_boundaries(%struct.clk_core* noundef nonnull %core, i64* noundef %min_rate, i64* noundef %max_rate) #20
  %rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %req_rate, i64* %rate, align 8
  %call3 = call fastcc i32 @clk_core_round_rate_nolock(%struct.clk_core* noundef nonnull %core, %struct.clk_rate_request* noundef nonnull %req) #20
  call fastcc void @clk_core_rate_restore_protect(%struct.clk_core* noundef nonnull %core, i32 noundef %call) #20
  %tobool4.not = icmp eq i32 %call3, 0
  %1 = load i64, i64* %rate, align 8
  %cond = select i1 %tobool4.not, i64 %1, i64 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi i64 [ %conv, %if.then1 ], [ %cond, %if.end2 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #22
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @clk_calc_new_rates(%struct.clk_core* noundef %core, i64 noundef %rate) unnamed_addr #1 {
entry:
  %min_rate = alloca i64, align 8
  %max_rate = alloca i64, align 8
  %req = alloca %struct.clk_rate_request, align 8
  %0 = bitcast i64* %min_rate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store i64 0, i64* %min_rate, align 8, !annotation !16
  %1 = bitcast i64* %max_rate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store i64 0, i64* %max_rate, align 8, !annotation !16
  %2 = bitcast %struct.clk_core* %core to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %2) #20
  br i1 %call, label %cleanup70, label %if.end

if.end:                                           ; preds = %entry
  %parent1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %3 = load %struct.clk_core*, %struct.clk_core** %parent1, align 8
  call fastcc void @clk_core_get_boundaries(%struct.clk_core* noundef %core, i64* noundef nonnull %min_rate, i64* noundef nonnull %max_rate) #20
  %call5 = call fastcc i1 @clk_core_can_round(%struct.clk_core* noundef %core) #20
  br i1 %call5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %4 = bitcast %struct.clk_rate_request* %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #22
  %5 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  %6 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 16, i1 false), !annotation !16
  %rate7 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %rate, i64* %rate7, align 8
  %7 = load i64, i64* %min_rate, align 8
  %min_rate8 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 1
  store i64 %7, i64* %min_rate8, align 8
  %8 = load i64, i64* %max_rate, align 8
  %max_rate9 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 2
  store i64 %8, i64* %max_rate9, align 8
  call fastcc void @clk_core_init_rate_req(%struct.clk_core* noundef %core, %struct.clk_rate_request* noundef nonnull %req) #20
  %call10 = call fastcc i32 @clk_core_determine_round_nolock(%struct.clk_core* noundef %core, %struct.clk_rate_request* noundef nonnull %req) #20
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %cleanup.thread, label %if.end13

cleanup.thread:                                   ; preds = %if.then6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #22
  br label %cleanup70

if.end13:                                         ; preds = %if.then6
  %best_parent_rate14 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  %9 = load i64, i64* %best_parent_rate14, align 8
  %10 = load i64, i64* %rate7, align 8
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  %11 = load %struct.clk_hw*, %struct.clk_hw** %best_parent_hw, align 8
  %tobool16.not = icmp eq %struct.clk_hw* %11, null
  br i1 %tobool16.not, label %cleanup, label %cond.true

cond.true:                                        ; preds = %if.end13
  %core18 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %11, i64 0, i32 0
  %12 = load %struct.clk_core*, %struct.clk_core** %core18, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end13
  %cond = phi %struct.clk_core* [ %12, %cond.true ], [ null, %if.end13 ]
  %cmp19 = icmp uge i64 %10, %7
  %cmp21 = icmp ule i64 %10, %8
  %or.cond120 = select i1 %cmp19, i1 %cmp21, i1 false
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #22
  br i1 %or.cond120, label %if.end34, label %cleanup70

if.else:                                          ; preds = %if.end
  %tobool.not = icmp eq %struct.clk_core* %3, null
  br i1 %tobool.not, label %if.then28, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.else
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %13 = load i64, i64* %flags, align 8
  %and = and i64 %13, 4
  %tobool27.not = icmp eq i64 %and, 0
  br i1 %tobool27.not, label %if.then28, label %if.else31

if.then28:                                        ; preds = %lor.lhs.false26, %if.else
  %rate29 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %14 = load i64, i64* %rate29, align 8
  %new_rate30 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 12
  store i64 %14, i64* %new_rate30, align 8
  br label %cleanup70

if.else31:                                        ; preds = %lor.lhs.false26
  %call32 = call fastcc %struct.clk_core* @clk_calc_new_rates(%struct.clk_core* noundef nonnull %3, i64 noundef %rate) #20
  %new_rate33 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %3, i64 0, i32 12
  %15 = load i64, i64* %new_rate33, align 8
  br label %out

if.end34:                                         ; preds = %cleanup
  %cmp35.not = icmp eq %struct.clk_core* %cond, %3
  br i1 %cmp35.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end34
  %flags37 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %16 = load i64, i64* %flags37, align 8
  %and38 = and i64 %16, 2
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.end43, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %17 = load i32, i32* %prepare_count, align 8
  %tobool41.not = icmp eq i32 %17, 0
  br i1 %tobool41.not, label %if.end43, label %cleanup70

if.end43:                                         ; preds = %land.lhs.true40, %land.lhs.true, %if.end34
  %tobool44.not = icmp eq %struct.clk_core* %cond, null
  br i1 %tobool44.not, label %out, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end43
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %18 = load i8, i8* %num_parents, align 8
  %cmp47 = icmp ugt i8 %18, 1
  br i1 %cmp47, label %if.then49, label %if.end56

if.then49:                                        ; preds = %land.lhs.true45
  %call50 = call fastcc i32 @clk_fetch_parent_index(%struct.clk_core* noundef %core, %struct.clk_core* noundef nonnull %cond) #20
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %cleanup70, label %if.end56

if.end56:                                         ; preds = %if.then49, %land.lhs.true45
  %p_index.0 = phi i32 [ %call50, %if.then49 ], [ 0, %land.lhs.true45 ]
  %flags57 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %19 = load i64, i64* %flags57, align 8
  %and58 = and i64 %19, 4
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %out, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end56
  %rate63 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %cond, i64 0, i32 10
  %20 = load i64, i64* %rate63, align 8
  %cmp64.not = icmp eq i64 %9, %20
  br i1 %cmp64.not, label %out, label %if.then66

if.then66:                                        ; preds = %land.lhs.true62
  %call67 = call fastcc %struct.clk_core* @clk_calc_new_rates(%struct.clk_core* noundef nonnull %cond, i64 noundef %9) #20
  br label %out

out:                                              ; preds = %if.end43, %if.end56, %land.lhs.true62, %if.then66, %if.else31
  %parent.1 = phi %struct.clk_core* [ %cond, %if.then66 ], [ %cond, %land.lhs.true62 ], [ %cond, %if.end56 ], [ %3, %if.else31 ], [ null, %if.end43 ]
  %new_rate.1 = phi i64 [ %10, %if.then66 ], [ %10, %land.lhs.true62 ], [ %10, %if.end56 ], [ %15, %if.else31 ], [ %10, %if.end43 ]
  %p_index.1 = phi i32 [ %p_index.0, %if.then66 ], [ %p_index.0, %land.lhs.true62 ], [ %p_index.0, %if.end56 ], [ 0, %if.else31 ], [ 0, %if.end43 ]
  %top.0 = phi %struct.clk_core* [ %call67, %if.then66 ], [ %core, %land.lhs.true62 ], [ %core, %if.end56 ], [ %call32, %if.else31 ], [ %core, %if.end43 ]
  %conv69 = trunc i32 %p_index.1 to i8
  call fastcc void @clk_calc_subtree(%struct.clk_core* noundef %core, i64 noundef %new_rate.1, %struct.clk_core* noundef %parent.1, i8 noundef %conv69) #20
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup.thread, %if.then49, %land.lhs.true40, %entry, %cleanup, %out, %if.then28
  %retval.1 = phi %struct.clk_core* [ %top.0, %out ], [ null, %cleanup ], [ null, %if.then28 ], [ null, %entry ], [ null, %land.lhs.true40 ], [ null, %if.then49 ], [ null, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret %struct.clk_core* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @clk_propagate_rate_change(%struct.clk_core* noundef %core, i64 noundef %event) unnamed_addr #1 {
entry:
  %rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %0 = load i64, i64* %rate, align 8
  %new_rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 12
  %1 = load i64, i64* %new_rate, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %notifier_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 29
  %2 = load i32, i32* %notifier_count, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %if.end
  %call = call fastcc i32 @__clk_notify(%struct.clk_core* noundef %core, i64 noundef %event, i64 noundef %0, i64 noundef %1) #20
  %and = and i32 %call, 32768
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, %struct.clk_core* null, %struct.clk_core* %core
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.end
  %fail_clk.0 = phi %struct.clk_core* [ null, %if.end ], [ %spec.select, %if.then1 ]
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool8.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -12, i32 1
  %tobool10.not8386 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool10.not83 = or i1 %tobool8.not, %tobool10.not8386
  br i1 %tobool10.not83, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end7
  %4 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %child.085 = phi %struct.clk_core* [ %spec.select82, %for.inc ], [ %4, %for.body.preheader ]
  %fail_clk.184 = phi %struct.clk_core* [ %fail_clk.2, %for.inc ], [ %fail_clk.0, %for.body.preheader ]
  %new_parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.085, i64 0, i32 13
  %5 = load %struct.clk_core*, %struct.clk_core** %new_parent, align 8
  %tobool11.not = icmp eq %struct.clk_core* %5, null
  %cmp13.not = icmp eq %struct.clk_core* %5, %core
  %or.cond = or i1 %tobool11.not, %cmp13.not
  br i1 %or.cond, label %if.end15, label %for.inc

if.end15:                                         ; preds = %for.body
  %call16 = call fastcc %struct.clk_core* @clk_propagate_rate_change(%struct.clk_core* noundef nonnull %child.085, i64 noundef %event) #20
  %tobool17.not = icmp eq %struct.clk_core* %call16, null
  %spec.select78 = select i1 %tobool17.not, %struct.clk_core* %fail_clk.184, %struct.clk_core* %call16
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body
  %fail_clk.2 = phi %struct.clk_core* [ %fail_clk.184, %for.body ], [ %spec.select78, %if.end15 ]
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.085, i64 0, i32 27, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool22.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr29 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %7 = bitcast %struct.hlist_node*** %add.ptr29 to %struct.clk_core*
  %spec.select82 = select i1 %tobool22.not, %struct.clk_core* null, %struct.clk_core* %7
  %tobool10.not = icmp eq %struct.clk_core* %spec.select82, null
  br i1 %tobool10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end7
  %fail_clk.1.lcssa = phi %struct.clk_core* [ %fail_clk.0, %if.end7 ], [ %fail_clk.2, %for.inc ]
  %new_child = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 14
  %8 = load %struct.clk_core*, %struct.clk_core** %new_child, align 8
  %tobool33.not = icmp eq %struct.clk_core* %8, null
  br i1 %tobool33.not, label %cleanup, label %if.then34

if.then34:                                        ; preds = %for.end
  %call36 = call fastcc %struct.clk_core* @clk_propagate_rate_change(%struct.clk_core* noundef nonnull %8, i64 noundef %event) #20
  %tobool37.not = icmp eq %struct.clk_core* %call36, null
  %spec.select79 = select i1 %tobool37.not, %struct.clk_core* %fail_clk.1.lcssa, %struct.clk_core* %call36
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %for.end, %entry
  %retval.0 = phi %struct.clk_core* [ null, %entry ], [ %fail_clk.1.lcssa, %for.end ], [ %spec.select79, %if.then34 ]
  ret %struct.clk_core* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_change_rate(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %0 = load i64, i64* %rate, align 8
  %new_parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 13
  %1 = load %struct.clk_core*, %struct.clk_core** %new_parent, align 8
  %tobool.not = icmp eq %struct.clk_core* %1, null
  br i1 %tobool.not, label %if.else, label %if.end10.sink.split

if.else:                                          ; preds = %entry
  %parent4 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %2 = load %struct.clk_core*, %struct.clk_core** %parent4, align 8
  %tobool5.not = icmp eq %struct.clk_core* %2, null
  br i1 %tobool5.not, label %if.end10, label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi %struct.clk_core* [ %1, %entry ], [ %2, %if.else ]
  %rate9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %.sink, i64 0, i32 10
  %3 = load i64, i64* %rate9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else
  %parent.0 = phi %struct.clk_core* [ null, %if.else ], [ %.sink, %if.end10.sink.split ]
  %best_parent_rate.0 = phi i64 [ 0, %if.else ], [ %3, %if.end10.sink.split ]
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 1024
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end10
  %call16 = call fastcc i32 @clk_core_prepare(%struct.clk_core* noundef %core) #20
  %call17 = call fastcc i32 @clk_core_enable_lock(%struct.clk_core* noundef %core) #20
  %.pre = load %struct.clk_core*, %struct.clk_core** %new_parent, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end10
  %5 = phi %struct.clk_core* [ %.pre, %if.then15 ], [ %1, %if.end10 ]
  %tobool20.not = icmp eq %struct.clk_core* %5, null
  br i1 %tobool20.not, label %if.end45, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %parent22 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %6 = load %struct.clk_core*, %struct.clk_core** %parent22, align 8
  %cmp.not = icmp eq %struct.clk_core* %5, %6
  br i1 %cmp.not, label %if.end45, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  %call25 = call fastcc %struct.clk_core* @__clk_set_parent_before(%struct.clk_core* noundef %core, %struct.clk_core* noundef nonnull %5) #20
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %7 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %set_rate_and_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %7, i64 0, i32 16
  %8 = load i32 (%struct.clk_hw*, i64, i64, i8)*, i32 (%struct.clk_hw*, i64, i64, i8)** %set_rate_and_parent, align 8
  %tobool27.not = icmp eq i32 (%struct.clk_hw*, i64, i64, i8)* %8, null
  br i1 %tobool27.not, label %if.else32, label %if.then28

if.then28:                                        ; preds = %if.then23
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %9 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %new_rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 12
  %10 = load i64, i64* %new_rate, align 8
  %new_parent_index = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 9
  %11 = load i8, i8* %new_parent_index, align 1
  %call31 = call i32 %8(%struct.clk_hw* noundef %9, i64 noundef %10, i64 noundef %best_parent_rate.0, i8 noundef %11) #21
  br label %if.end42

if.else32:                                        ; preds = %if.then23
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %7, i64 0, i32 13
  %12 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %tobool34.not = icmp eq i32 (%struct.clk_hw*, i8)* %12, null
  br i1 %tobool34.not, label %if.end42, label %if.then35

if.then35:                                        ; preds = %if.else32
  %hw38 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw38, align 8
  %new_parent_index39 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 9
  %14 = load i8, i8* %new_parent_index39, align 1
  %call40 = call i32 %12(%struct.clk_hw* noundef %13, i8 noundef %14) #21
  br label %if.end42

if.end42:                                         ; preds = %if.else32, %if.then35, %if.then28
  %skip_set_rate.0 = phi i1 [ true, %if.then28 ], [ false, %if.then35 ], [ false, %if.else32 ]
  %15 = load %struct.clk_core*, %struct.clk_core** %new_parent, align 8
  call fastcc void @__clk_set_parent_after(%struct.clk_core* noundef %core, %struct.clk_core* noundef %15, %struct.clk_core* noundef %call25) #20
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %land.lhs.true, %if.end18
  %skip_set_rate.1.off0 = phi i1 [ %skip_set_rate.0, %if.end42 ], [ false, %land.lhs.true ], [ false, %if.end18 ]
  %16 = load i64, i64* %flags, align 8
  %and47 = and i64 %16, 4096
  %tobool48.not = icmp eq i64 %and47, 0
  br i1 %tobool48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end45
  call fastcc void @clk_core_prepare_enable(%struct.clk_core* noundef %parent.0) #20
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end45
  %new_rate52 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 12
  br i1 %skip_set_rate.1.off0, label %if.end63, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end51
  %ops55 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %17 = load %struct.clk_ops*, %struct.clk_ops** %ops55, align 8
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %17, i64 0, i32 15
  %18 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8
  %tobool56.not = icmp eq i32 (%struct.clk_hw*, i64, i64)* %18, null
  br i1 %tobool56.not, label %if.end63, label %if.then57

if.then57:                                        ; preds = %land.lhs.true54
  %hw60 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %19 = load %struct.clk_hw*, %struct.clk_hw** %hw60, align 8
  %20 = load i64, i64* %new_rate52, align 8
  %call62 = call i32 %18(%struct.clk_hw* noundef %19, i64 noundef %20, i64 noundef %best_parent_rate.0) #21
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %land.lhs.true54, %if.end51
  %call65 = call fastcc i64 @clk_recalc(%struct.clk_core* noundef %core, i64 noundef %best_parent_rate.0) #20
  store i64 %call65, i64* %rate, align 8
  %21 = load i64, i64* %flags, align 8
  %and68 = and i64 %21, 1024
  %tobool69.not = icmp eq i64 %and68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end63
  call fastcc void @clk_core_disable_lock(%struct.clk_core* noundef %core) #20
  call fastcc void @clk_core_unprepare(%struct.clk_core* noundef %core) #20
  %.pre220 = load i64, i64* %flags, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end63
  %22 = phi i64 [ %.pre220, %if.then70 ], [ %21, %if.end63 ]
  %and73 = and i64 %22, 4096
  %tobool74.not = icmp eq i64 %and73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end71
  call fastcc void @clk_core_disable_unprepare(%struct.clk_core* noundef %parent.0) #20
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end71
  %notifier_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 29
  %23 = load i32, i32* %notifier_count, align 8
  %tobool77.not = icmp eq i32 %23, 0
  br i1 %tobool77.not, label %if.end84, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.end76
  %24 = load i64, i64* %rate, align 8
  %cmp80.not = icmp eq i64 %0, %24
  br i1 %cmp80.not, label %if.end84, label %if.then81

if.then81:                                        ; preds = %land.lhs.true78
  %call83 = call fastcc i32 @__clk_notify(%struct.clk_core* noundef %core, i64 noundef 2, i64 noundef %0, i64 noundef %24) #20
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true78, %if.end76
  %25 = load i64, i64* %flags, align 8
  %and86 = and i64 %25, 512
  %tobool87.not = icmp eq i64 %and86, 0
  br i1 %tobool87.not, label %if.end91, label %if.then88

if.then88:                                        ; preds = %if.end84
  %26 = load i64, i64* %new_rate52, align 8
  %call90 = call fastcc %struct.clk_core* @clk_calc_new_rates(%struct.clk_core* noundef %core, i64 noundef %26) #20
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end84
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %27 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool93.not = icmp eq %struct.hlist_node* %27, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %27, i64 -12, i32 1
  %tobool95.not218221 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool95.not218 = or i1 %tobool93.not, %tobool95.not218221
  br i1 %tobool95.not218, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end91
  %28 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %child.0219 = phi %struct.clk_core* [ %spec.select217, %for.inc ], [ %28, %land.rhs.preheader ]
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.0219, i64 0, i32 27, i32 0
  %29 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %new_parent98 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.0219, i64 0, i32 13
  %30 = load %struct.clk_core*, %struct.clk_core** %new_parent98, align 8
  %tobool99.not = icmp eq %struct.clk_core* %30, null
  %cmp102.not = icmp eq %struct.clk_core* %30, %core
  %or.cond = or i1 %tobool99.not, %cmp102.not
  br i1 %or.cond, label %if.end104, label %for.inc

if.end104:                                        ; preds = %land.rhs
  call fastcc void @clk_change_rate(%struct.clk_core* noundef nonnull %child.0219) #20
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %if.end104
  %tobool107.not = icmp eq %struct.hlist_node* %29, null
  %add.ptr114 = getelementptr %struct.hlist_node, %struct.hlist_node* %29, i64 -12, i32 1
  %31 = bitcast %struct.hlist_node*** %add.ptr114 to %struct.clk_core*
  %spec.select217 = select i1 %tobool107.not, %struct.clk_core* null, %struct.clk_core* %31
  %tobool95.not = icmp eq %struct.clk_core* %spec.select217, null
  br i1 %tobool95.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.inc, %if.end91
  %new_child = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 14
  %32 = load %struct.clk_core*, %struct.clk_core** %new_child, align 8
  %tobool118.not = icmp eq %struct.clk_core* %32, null
  br i1 %tobool118.not, label %if.end121, label %if.then119

if.then119:                                       ; preds = %for.end
  call fastcc void @clk_change_rate(%struct.clk_core* noundef nonnull %32) #20
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_rate_nuke_protect(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %protect_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 20
  %0 = load i32, i32* %protect_count, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  store i32 1, i32* %protect_count, align 4
  call fastcc void @clk_core_rate_unprotect(%struct.clk_core* noundef nonnull %core) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ %0, %if.end2 ], [ -22, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @clk_core_rate_restore_protect(%struct.clk_core* noundef %core, i32 noundef %count) unnamed_addr #7 {
entry:
  %tobool = icmp eq %struct.clk_core* %core, null
  %cmp = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %return, label %if.end2

if.end2:                                          ; preds = %entry
  call fastcc void @clk_core_rate_protect(%struct.clk_core* noundef nonnull %core) #20
  %protect_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 20
  store i32 %count, i32* %protect_count, align 4
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_calc_subtree(%struct.clk_core* noundef %core, i64 noundef %new_rate, %struct.clk_core* noundef %new_parent, i8 noundef %p_index) unnamed_addr #1 {
entry:
  %new_rate1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 12
  store i64 %new_rate, i64* %new_rate1, align 8
  %new_parent2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 13
  store %struct.clk_core* %new_parent, %struct.clk_core** %new_parent2, align 8
  %new_parent_index = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 9
  store i8 %p_index, i8* %new_parent_index, align 1
  %new_child = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 14
  store %struct.clk_core* null, %struct.clk_core** %new_child, align 8
  %tobool.not = icmp eq %struct.clk_core* %new_parent, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %0 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %cmp.not = icmp eq %struct.clk_core* %0, %new_parent
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %new_child3 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %new_parent, i64 0, i32 14
  store %struct.clk_core* %core, %struct.clk_core** %new_child3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool4.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -12, i32 1
  %tobool6.not4749 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool6.not47 = or i1 %tobool4.not, %tobool6.not4749
  br i1 %tobool6.not47, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %2 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %child.048 = phi %struct.clk_core* [ %spec.select46, %for.body ], [ %2, %for.body.preheader ]
  %call = call fastcc i64 @clk_recalc(%struct.clk_core* noundef nonnull %child.048, i64 noundef %new_rate) #20
  %new_rate7 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.048, i64 0, i32 12
  store i64 %call, i64* %new_rate7, align 8
  call fastcc void @clk_calc_subtree(%struct.clk_core* noundef nonnull %child.048, i64 noundef %call, %struct.clk_core* noundef null, i8 noundef 0) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.048, i64 0, i32 27, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool11.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr18 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -12, i32 1
  %4 = bitcast %struct.hlist_node*** %add.ptr18 to %struct.clk_core*
  %spec.select46 = select i1 %tobool11.not, %struct.clk_core* null, %struct.clk_core* %4
  %tobool6.not = icmp eq %struct.clk_core* %spec.select46, null
  br i1 %tobool6.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @__clk_set_parent_before(%struct.clk_core* noundef %core, %struct.clk_core* noundef %parent) unnamed_addr #1 {
entry:
  %parent1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %0 = load %struct.clk_core*, %struct.clk_core** %parent1, align 8
  %flags2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %1 = load i64, i64* %flags2, align 8
  %and = and i64 %1, 4096
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @clk_core_prepare_enable(%struct.clk_core* noundef %0) #20
  call fastcc void @clk_core_prepare_enable(%struct.clk_core* noundef %parent) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %2 = load i32, i32* %prepare_count, align 8
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call fastcc void @clk_core_prepare_enable(%struct.clk_core* noundef %parent) #20
  %call7 = call fastcc i32 @clk_core_enable_lock(%struct.clk_core* noundef %core) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %call9 = call fastcc i64 @clk_enable_lock() #20
  call fastcc void @clk_reparent(%struct.clk_core* noundef %core, %struct.clk_core* noundef %parent) #20
  call fastcc void @clk_enable_unlock(i64 noundef %call9) #20
  ret %struct.clk_core* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clk_set_parent_after(%struct.clk_core* noundef %core, %struct.clk_core* noundef %parent, %struct.clk_core* noundef %old_parent) unnamed_addr #1 {
entry:
  %prepare_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 19
  %0 = load i32, i32* %prepare_count, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @clk_core_disable_lock(%struct.clk_core* noundef %core) #20
  call fastcc void @clk_core_disable_unprepare(%struct.clk_core* noundef %old_parent) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 4096
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @clk_core_disable_unprepare(%struct.clk_core* noundef %parent) #20
  call fastcc void @clk_core_disable_unprepare(%struct.clk_core* noundef %old_parent) #20
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_reparent(%struct.clk_core* noundef %core, %struct.clk_core* noundef %new_parent) unnamed_addr #16 {
entry:
  %orphan = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 16
  %0 = load i8, i8* %orphan, align 8, !range !41
  %child_node = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 27
  call fastcc void @hlist_del(%struct.hlist_node* noundef %child_node) #20
  %tobool1.not = icmp eq %struct.clk_core* %new_parent, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %orphan2 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %new_parent, i64 0, i32 16
  %1 = load i8, i8* %orphan2, align 8, !range !41
  %tobool3 = icmp ne i8 %1, 0
  %new_child = getelementptr inbounds %struct.clk_core, %struct.clk_core* %new_parent, i64 0, i32 14
  %2 = load %struct.clk_core*, %struct.clk_core** %new_child, align 8
  %cmp = icmp eq %struct.clk_core* %2, %core
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store %struct.clk_core* null, %struct.clk_core** %new_child, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %children = getelementptr inbounds %struct.clk_core, %struct.clk_core* %new_parent, i64 0, i32 26
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %child_node, %struct.hlist_head* noundef %children) #20
  %cmp11.not = icmp eq i8 %0, %1
  br i1 %cmp11.not, label %if.end20, label %if.end20.sink.split

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq i8 %0, 0
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %child_node, %struct.hlist_head* noundef nonnull @clk_orphan_list) #20
  br i1 %tobool.not, label %if.end20.sink.split, label %if.end20

if.end20.sink.split:                              ; preds = %if.else, %if.end
  %tobool3.sink = phi i1 [ %tobool3, %if.end ], [ true, %if.else ]
  call fastcc void @clk_core_update_orphan_status(%struct.clk_core* noundef %core, i1 noundef %tobool3.sink) #20
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end, %if.else
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  store %struct.clk_core* %new_parent, %struct.clk_core** %parent, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #15 {
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

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @clk_core_update_orphan_status(%struct.clk_core* nocapture noundef %core, i1 noundef %is_orphan) unnamed_addr #7 {
entry:
  %frombool = zext i1 %is_orphan to i8
  %orphan = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 16
  store i8 %frombool, i8* %orphan, align 8
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool2.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool4.not3335 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool4.not33 = or i1 %tobool2.not, %tobool4.not3335
  br i1 %tobool4.not33, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %child.034 = phi %struct.clk_core* [ %spec.select32, %for.body ], [ %1, %for.body.preheader ]
  call fastcc void @clk_core_update_orphan_status(%struct.clk_core* noundef nonnull %child.034, i1 noundef %is_orphan) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.034, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool8.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr15 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr15 to %struct.clk_core*
  %spec.select32 = select i1 %tobool8.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool4.not = icmp eq %struct.clk_core* %spec.select32, null
  br i1 %tobool4.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__clk_speculate_rates(%struct.clk_core* noundef %core, i64 noundef %parent_rate) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @clk_recalc(%struct.clk_core* noundef %core, i64 noundef %parent_rate) #20
  %notifier_count = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 29
  %0 = load i32, i32* %notifier_count, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %if.end

if.end:                                           ; preds = %entry
  %rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  %1 = load i64, i64* %rate, align 8
  %call1 = call fastcc i32 @__clk_notify(%struct.clk_core* noundef %core, i64 noundef 1, i64 noundef %1, i64 noundef %call) #20
  %and = and i32 %call1, 32768
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %out

if.end4:                                          ; preds = %entry, %if.end
  %ret.052 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 26, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool6.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %tobool11.not5558 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool11.not55 = or i1 %tobool6.not, %tobool11.not5558
  br i1 %tobool11.not55, label %out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4
  %3 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %child.056 = phi %struct.clk_core* [ %spec.select54, %for.inc ], [ %3, %for.body.preheader ]
  %call12 = call fastcc i32 @__clk_speculate_rates(%struct.clk_core* noundef nonnull %child.056, i64 noundef %call) #20
  %and13 = and i32 %call12, 32768
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.inc, label %out

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.056, i64 0, i32 27, i32 0
  %4 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool19.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr26 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12, i32 1
  %5 = bitcast %struct.hlist_node*** %add.ptr26 to %struct.clk_core*
  %spec.select54 = select i1 %tobool19.not, %struct.clk_core* null, %struct.clk_core* %5
  %tobool11.not = icmp eq %struct.clk_core* %spec.select54, null
  br i1 %tobool11.not, label %out, label %for.body

out:                                              ; preds = %for.body, %for.inc, %if.end4, %if.end
  %ret.2 = phi i32 [ %call1, %if.end ], [ %ret.052, %if.end4 ], [ %call12, %for.inc ], [ %call12, %for.body ]
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__clk_set_parent(%struct.clk_core* noundef %core, %struct.clk_core* noundef %parent, i8 noundef %p_index) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.clk_core* @__clk_set_parent_before(%struct.clk_core* noundef %core, %struct.clk_core* noundef %parent) #20
  %tobool.not = icmp eq %struct.clk_core* %parent, null
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 13
  %1 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %tobool1.not = icmp eq i32 (%struct.clk_hw*, i8)* %1, null
  br i1 %tobool1.not, label %if.end8, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call4 = call i32 %1(%struct.clk_hw* noundef %2, i8 noundef %p_index) #21
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i64 @clk_enable_lock() #20
  call fastcc void @clk_reparent(%struct.clk_core* noundef %core, %struct.clk_core* noundef %call) #20
  call fastcc void @clk_enable_unlock(i64 noundef %call7) #20
  call fastcc void @__clk_set_parent_after(%struct.clk_core* noundef %core, %struct.clk_core* noundef %call, %struct.clk_core* noundef nonnull %parent) #20
  br label %cleanup

if.end8:                                          ; preds = %entry, %land.lhs.true, %if.end
  call fastcc void @__clk_set_parent_after(%struct.clk_core* noundef %core, %struct.clk_core* noundef %parent, %struct.clk_core* noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_set_duty_cycle_parent_nolock(%struct.clk_core* noundef %core, %struct.clk_duty* noundef %duty) unnamed_addr #1 {
entry:
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %0 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %tobool.not = icmp eq %struct.clk_core* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 8196
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc i32 @clk_core_set_duty_cycle_nolock(%struct.clk_core* noundef nonnull %0, %struct.clk_duty* noundef %duty) #20
  %duty3 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25
  %2 = bitcast %struct.clk_duty* %duty3 to i8*
  %3 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %duty5 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %3, i64 0, i32 25
  %4 = bitcast %struct.clk_duty* %duty5 to i8*
  %call6 = call i8* @memcpy(i8* noundef %2, i8* noundef %4, i64 noundef 8) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_update_duty_cycle_nolock(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %duty1 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %0 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %get_duty_cycle = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %0, i64 0, i32 20
  %1 = load i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)** %get_duty_cycle, align 8
  %tobool.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_duty*)* %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @clk_core_update_duty_cycle_parent_nolock(%struct.clk_core* noundef %core) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call4 = call i32 %1(%struct.clk_hw* noundef %2, %struct.clk_duty* noundef %duty1) #21
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %reset

if.end7:                                          ; preds = %if.end
  %den = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25, i32 1
  %3 = load i32, i32* %den, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %reset, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %num = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %duty1, i64 0, i32 0
  %4 = load i32, i32* %num, align 4
  %cmp9 = icmp ugt i32 %4, %3
  br i1 %cmp9, label %reset, label %cleanup

reset:                                            ; preds = %if.end7, %lor.lhs.false, %if.end
  %ret.0 = phi i32 [ %call4, %if.end ], [ -22, %lor.lhs.false ], [ -22, %if.end7 ]
  call fastcc void @clk_core_reset_duty_cycle_nolock(%struct.clk_core* noundef %core) #20
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %reset, %if.then
  %retval.0 = phi i32 [ %ret.0, %reset ], [ %call, %if.then ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_update_duty_cycle_parent_nolock(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %parent = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  %0 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %tobool.not = icmp eq %struct.clk_core* %0, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 8192
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc i32 @clk_core_update_duty_cycle_nolock(%struct.clk_core* noundef nonnull %0) #20
  %duty = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25
  %2 = bitcast %struct.clk_duty* %duty to i8*
  %3 = load %struct.clk_core*, %struct.clk_core** %parent, align 8
  %duty4 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %3, i64 0, i32 25
  %4 = bitcast %struct.clk_duty* %duty4 to i8*
  %call5 = call i8* @memcpy(i8* noundef %2, i8* noundef %4, i64 noundef 8) #21
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call fastcc void @clk_core_reset_duty_cycle_nolock(%struct.clk_core* noundef %core) #20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @clk_core_reset_duty_cycle_nolock(%struct.clk_core* nocapture noundef writeonly %core) unnamed_addr #17 {
entry:
  %num = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25, i32 0
  store i32 1, i32* %num, align 4
  %den = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 25, i32 1
  store i32 2, i32* %den, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #21
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !7

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !10

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #21
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !42
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #0 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_core_populate_parent_map(%struct.clk_core* nocapture noundef %core, %struct.clk_init_data* nocapture noundef readonly %init) unnamed_addr #1 {
entry:
  %num_parents1 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 5
  %0 = load i8, i8* %num_parents1, align 8
  %parent_names2 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 2
  %1 = load i8**, i8*** %parent_names2, align 8
  %parent_hws3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 4
  %2 = load %struct.clk_hw**, %struct.clk_hw*** %parent_hws3, align 8
  %parent_data4 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 3
  %3 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data4, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i8 %0 to i64
  %call = call fastcc i8* @kcalloc(i64 noundef %conv) #20
  %4 = bitcast i8* %call to %struct.clk_parent_map*
  %parents5 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  %5 = bitcast %struct.clk_parent_map** %parents5 to i8**
  store i8* %call, i8** %5, align 8
  %tobool6.not = icmp eq i8* %call, null
  br i1 %tobool6.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %tobool11.not = icmp eq i8** %1, null
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %tobool42.not = icmp eq %struct.clk_parent_data* %3, null
  %tobool64.not = icmp eq %struct.clk_hw** %2, null
  %wide.trip.count = zext i8 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %parent.0180 = phi %struct.clk_parent_map* [ %4, %for.cond.preheader ], [ %incdec.ptr, %for.inc ]
  %index = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %parent.0180, i64 0, i32 4
  store i32 -1, i32* %index, align 8
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %for.body
  %arrayidx = getelementptr i8*, i8** %1, i64 %indvars.iv
  %6 = load i8*, i8** %arrayidx, align 8
  %tobool13.not = icmp eq i8* %6, null
  br i1 %tobool13.not, label %do.end, label %if.end30, !prof !7

do.end:                                           ; preds = %if.then12
  %7 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.clk_core_populate_parent_map, i64 0, i64 0), i8* noundef %7) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 3756; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !43
  %.pre = load i8*, i8** %arrayidx, align 8
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then12
  %8 = phi i8* [ %.pre, %do.end ], [ %6, %if.then12 ]
  %name38 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %parent.0180, i64 0, i32 3
  %call41 = call fastcc i32 @clk_cpy_name(i8** noundef %name38, i8* noundef %8, i1 noundef true) #20
  br label %if.end100

if.else:                                          ; preds = %for.body
  br i1 %tobool42.not, label %if.else63, label %if.then43

if.then43:                                        ; preds = %if.else
  %hw = getelementptr %struct.clk_parent_data, %struct.clk_parent_data* %3, i64 %indvars.iv, i32 0
  %9 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %hw46 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %parent.0180, i64 0, i32 0
  store %struct.clk_hw* %9, %struct.clk_hw** %hw46, align 8
  %index49 = getelementptr %struct.clk_parent_data, %struct.clk_parent_data* %3, i64 %indvars.iv, i32 3
  %10 = load i32, i32* %index49, align 8
  store i32 %10, i32* %index, align 8
  %fw_name = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %parent.0180, i64 0, i32 2
  %fw_name53 = getelementptr %struct.clk_parent_data, %struct.clk_parent_data* %3, i64 %indvars.iv, i32 1
  %11 = load i8*, i8** %fw_name53, align 8
  %call54 = call fastcc i32 @clk_cpy_name(i8** noundef %fw_name, i8* noundef %11, i1 noundef false) #20
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %do.body103.preheader

if.then56:                                        ; preds = %if.then43
  %name57 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %parent.0180, i64 0, i32 3
  %name60 = getelementptr %struct.clk_parent_data, %struct.clk_parent_data* %3, i64 %indvars.iv, i32 2
  %12 = load i8*, i8** %name60, align 8
  %call61 = call fastcc i32 @clk_cpy_name(i8** noundef %name57, i8* noundef %12, i1 noundef false) #20
  br label %if.end100

if.else63:                                        ; preds = %if.else
  br i1 %tobool64.not, label %do.end83, label %if.end100.thread

if.end100.thread:                                 ; preds = %if.else63
  %arrayidx67 = getelementptr %struct.clk_hw*, %struct.clk_hw** %2, i64 %indvars.iv
  %13 = load %struct.clk_hw*, %struct.clk_hw** %arrayidx67, align 8
  %hw68 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %parent.0180, i64 0, i32 0
  store %struct.clk_hw* %13, %struct.clk_hw** %hw68, align 8
  br label %for.inc

do.end83:                                         ; preds = %if.else63
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0)) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 3772; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !44
  br label %do.body103.preheader

if.end100:                                        ; preds = %if.then56, %if.end30
  %ret.1 = phi i32 [ %call41, %if.end30 ], [ %call61, %if.then56 ]
  %tobool101.not = icmp eq i32 %ret.1, 0
  br i1 %tobool101.not, label %for.inc, label %do.body103.preheader

do.body103.preheader:                             ; preds = %if.then43, %if.end100, %do.end83
  %ret.1191 = phi i32 [ -22, %do.end83 ], [ %ret.1, %if.end100 ], [ %call54, %if.then43 ]
  br label %do.body103

do.body103:                                       ; preds = %do.body103.preheader, %do.body103
  %indvars.iv185 = phi i64 [ %indvars.iv, %do.body103.preheader ], [ %indvars.iv.next186, %do.body103 ]
  %name106 = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %4, i64 %indvars.iv185, i32 3
  %14 = load i8*, i8** %name106, align 8
  call void @kfree_const(i8* noundef %14) #21
  %fw_name109 = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %4, i64 %indvars.iv185, i32 2
  %15 = load i8*, i8** %fw_name109, align 8
  call void @kfree_const(i8* noundef %15) #21
  %indvars.iv.next186 = add nsw i64 %indvars.iv185, -1
  %cmp111 = icmp sgt i64 %indvars.iv185, 0
  br i1 %cmp111, label %do.body103, label %do.end113

do.end113:                                        ; preds = %do.body103
  call void @kfree(i8* noundef nonnull %call) #21
  br label %cleanup

for.inc:                                          ; preds = %if.end100.thread, %if.end100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %parent.0180, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %do.end113
  %retval.0 = phi i32 [ %ret.1191, %do.end113 ], [ 0, %entry ], [ -12, %if.end ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__clk_core_init(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clk_core* %core, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clk_prepare_lock() #20
  %name = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call4 = call fastcc %struct.clk_core* @clk_core_lookup(i8* noundef %0) #20
  %tobool5.not = icmp eq %struct.clk_core* %call4, null
  br i1 %tobool5.not, label %if.end7, label %if.then161

if.end7:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %1 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 15
  %2 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8
  %tobool8.not = icmp eq i32 (%struct.clk_hw*, i64, i64)* %2, null
  br i1 %tobool8.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 11
  %3 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %tobool10.not = icmp eq i64 (%struct.clk_hw*, i64, i64*)* %3, null
  br i1 %tobool10.not, label %lor.lhs.false, label %land.lhs.true13

lor.lhs.false:                                    ; preds = %land.lhs.true
  %determine_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 12
  %4 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8
  %tobool12.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %4, null
  br i1 %tobool12.not, label %do.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 10
  %5 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8
  %tobool15.not = icmp eq i64 (%struct.clk_hw*, i64)* %5, null
  br i1 %tobool15.not, label %do.end, label %if.end20

do.end:                                           ; preds = %lor.lhs.false, %land.lhs.true13
  %6 = load i8*, i8** %name, align 8
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__clk_core_init, i64 0, i64 0), i8* noundef %6) #24
  br label %if.then161

if.end20:                                         ; preds = %land.lhs.true13, %if.end7
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 13
  %7 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %tobool22.not = icmp eq i32 (%struct.clk_hw*, i8)* %7, null
  br i1 %tobool22.not, label %if.end33, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end20
  %get_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 14
  %8 = load i8 (%struct.clk_hw*)*, i8 (%struct.clk_hw*)** %get_parent, align 8
  %tobool25.not = icmp eq i8 (%struct.clk_hw*)* %8, null
  br i1 %tobool25.not, label %do.end29, label %if.end33

do.end29:                                         ; preds = %land.lhs.true23
  %9 = load i8*, i8** %name, align 8
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__clk_core_init, i64 0, i64 0), i8* noundef %9) #24
  br label %if.then161

if.end33:                                         ; preds = %land.lhs.true23, %if.end20
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %10 = load i8, i8* %num_parents, align 8
  %cmp = icmp ugt i8 %10, 1
  br i1 %cmp, label %land.lhs.true35, label %if.end46

land.lhs.true35:                                  ; preds = %if.end33
  %get_parent37 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 14
  %11 = load i8 (%struct.clk_hw*)*, i8 (%struct.clk_hw*)** %get_parent37, align 8
  %tobool38.not = icmp eq i8 (%struct.clk_hw*)* %11, null
  br i1 %tobool38.not, label %do.end42, label %if.end46

do.end42:                                         ; preds = %land.lhs.true35
  %12 = load i8*, i8** %name, align 8
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__clk_core_init, i64 0, i64 0), i8* noundef %12) #24
  br label %if.then161

if.end46:                                         ; preds = %land.lhs.true35, %if.end33
  %set_rate_and_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 16
  %13 = load i32 (%struct.clk_hw*, i64, i64, i8)*, i32 (%struct.clk_hw*, i64, i64, i8)** %set_rate_and_parent, align 8
  %tobool48.not = icmp eq i32 (%struct.clk_hw*, i64, i64, i8)* %13, null
  br i1 %tobool48.not, label %if.end64, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.end46
  %brmerge = select i1 %tobool22.not, i1 true, i1 %tobool8.not
  br i1 %brmerge, label %do.end60, label %if.end64

do.end60:                                         ; preds = %land.lhs.true49
  %14 = load i8*, i8** %name, align 8
  %call63 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__clk_core_init, i64 0, i64 0), i8* noundef %14) #24
  br label %if.then161

if.end64:                                         ; preds = %land.lhs.true49, %if.end46
  %init = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 22
  %15 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %init, align 8
  %tobool66.not = icmp eq i32 (%struct.clk_hw*)* %15, null
  br i1 %tobool66.not, label %if.end74, label %if.then67

if.then67:                                        ; preds = %if.end64
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call70 = call i32 %15(%struct.clk_hw* noundef %16) #21
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end74, label %if.then161

if.end74:                                         ; preds = %if.then67, %if.end64
  %call75 = call fastcc %struct.clk_core* @__clk_init_parent(%struct.clk_core* noundef nonnull %core) #20
  %parent76 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 6
  store %struct.clk_core* %call75, %struct.clk_core** %parent76, align 8
  %tobool77.not = icmp eq %struct.clk_core* %call75, null
  br i1 %tobool77.not, label %if.else, label %if.end90.thread

if.else:                                          ; preds = %if.end74
  %17 = load i8, i8* %num_parents, align 8
  %tobool82.not = icmp eq i8 %17, 0
  %child_node84 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 27
  %clk_root_list.clk_orphan_list = select i1 %tobool82.not, %struct.hlist_head* @clk_root_list, %struct.hlist_head* @clk_orphan_list
  %not.tobool82.not = xor i1 %tobool82.not, true
  %. = zext i1 %not.tobool82.not to i8
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %child_node84, %struct.hlist_head* noundef nonnull %clk_root_list.clk_orphan_list) #20
  %18 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 16
  store i8 %., i8* %18, align 8
  %19 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %recalc_accuracy = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %19, i64 0, i32 17
  %20 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_accuracy, align 8
  %tobool92.not = icmp eq i64 (%struct.clk_hw*, i64)* %20, null
  br i1 %tobool92.not, label %if.end107, label %if.then93

if.end90.thread:                                  ; preds = %if.end74
  %child_node = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 27
  %children = getelementptr inbounds %struct.clk_core, %struct.clk_core* %call75, i64 0, i32 26
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %child_node, %struct.hlist_head* noundef %children) #20
  %orphan = getelementptr inbounds %struct.clk_core, %struct.clk_core* %call75, i64 0, i32 16
  %21 = load i8, i8* %orphan, align 8, !range !41
  %orphan80 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 16
  store i8 %21, i8* %orphan80, align 8
  %22 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %recalc_accuracy244 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %22, i64 0, i32 17
  %23 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_accuracy244, align 8
  %tobool92.not245 = icmp eq i64 (%struct.clk_hw*, i64)* %23, null
  br i1 %tobool92.not245, label %if.then101, label %if.then93

if.then93:                                        ; preds = %if.end90.thread, %if.else
  %24 = phi i64 (%struct.clk_hw*, i64)* [ %23, %if.end90.thread ], [ %20, %if.else ]
  %hw96 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %25 = load %struct.clk_hw*, %struct.clk_hw** %hw96, align 8
  %call97 = call fastcc i64 @clk_core_get_accuracy_no_lock(%struct.clk_core* noundef %call75) #20
  %call98 = call i64 %24(%struct.clk_hw* noundef %25, i64 noundef %call97) #21
  br label %if.end107

if.then101:                                       ; preds = %if.end90.thread
  %accuracy102 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %call75, i64 0, i32 23
  %26 = load i64, i64* %accuracy102, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then101, %if.then93
  %.sink249 = phi i64 [ %26, %if.then101 ], [ %call98, %if.then93 ], [ 0, %if.else ]
  %accuracy103 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 23
  store i64 %.sink249, i64* %accuracy103, align 8
  %call108 = call fastcc i32 @clk_core_get_phase(%struct.clk_core* noundef nonnull %core) #20
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %if.end118

if.then111:                                       ; preds = %if.end107
  %27 = load i8*, i8** %name, align 8
  %call117 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__clk_core_init, i64 0, i64 0), i8* noundef %27) #24
  br label %if.then161

if.end118:                                        ; preds = %if.end107
  %call119 = call fastcc i32 @clk_core_update_duty_cycle_nolock(%struct.clk_core* noundef nonnull %core) #20
  %28 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %recalc_rate121 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %28, i64 0, i32 10
  %29 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate121, align 8
  %tobool122.not = icmp eq i64 (%struct.clk_hw*, i64)* %29, null
  br i1 %tobool122.not, label %if.else129, label %if.then123

if.then123:                                       ; preds = %if.end118
  %hw126 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %30 = load %struct.clk_hw*, %struct.clk_hw** %hw126, align 8
  %call127 = call fastcc i64 @clk_core_get_rate_nolock(%struct.clk_core* noundef %call75) #20
  %call128 = call i64 %29(%struct.clk_hw* noundef %30, i64 noundef %call127) #21
  br label %if.end135

if.else129:                                       ; preds = %if.end118
  br i1 %tobool77.not, label %if.end135, label %if.then131

if.then131:                                       ; preds = %if.else129
  %rate132 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %call75, i64 0, i32 10
  %31 = load i64, i64* %rate132, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.else129, %if.then131, %if.then123
  %rate.0 = phi i64 [ %call128, %if.then123 ], [ %31, %if.then131 ], [ 0, %if.else129 ]
  %req_rate = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 11
  store i64 %rate.0, i64* %req_rate, align 8
  %rate136 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 10
  store i64 %rate.0, i64* %rate136, align 8
  %flags = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 15
  %32 = load i64, i64* %flags, align 8
  %and = and i64 %32, 2048
  %tobool137.not = icmp eq i64 %and, 0
  br i1 %tobool137.not, label %if.then165.critedge, label %if.then138

if.then138:                                       ; preds = %if.end135
  %call139 = call fastcc i32 @clk_core_prepare(%struct.clk_core* noundef nonnull %core) #20
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end148, label %do.end144

do.end144:                                        ; preds = %if.then138
  %33 = load i8*, i8** %name, align 8
  %call147 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__clk_core_init, i64 0, i64 0), i8* noundef %33) #24
  br label %if.then161

if.end148:                                        ; preds = %if.then138
  %call149 = call fastcc i32 @clk_core_enable_lock(%struct.clk_core* noundef nonnull %core) #20
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then165.critedge, label %do.end154

do.end154:                                        ; preds = %if.end148
  %34 = load i8*, i8** %name, align 8
  %call157 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__clk_core_init, i64 0, i64 0), i8* noundef %34) #24
  call fastcc void @clk_core_unprepare(%struct.clk_core* noundef nonnull %core) #20
  br label %if.then161

if.then161:                                       ; preds = %if.then67, %if.then111, %do.end144, %do.end154, %do.end60, %do.end42, %do.end29, %do.end, %if.end
  %ret.2.ph = phi i32 [ -17, %if.end ], [ -22, %do.end ], [ -22, %do.end29 ], [ -22, %do.end42 ], [ -22, %do.end60 ], [ %call149, %do.end154 ], [ %call139, %do.end144 ], [ %call108, %if.then111 ], [ %call70, %if.then67 ]
  %child_node162 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 27
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %child_node162) #20
  br label %cleanup.sink.split

if.then165.critedge:                              ; preds = %if.end148, %if.end135
  call fastcc void @clk_core_reparent_orphans_nolock() #20
  %ref = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 30
  call fastcc void @kref_init(%struct.kref* noundef %ref) #20
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then165.critedge, %if.then161
  %retval.0.ph = phi i32 [ %ret.2.ph, %if.then161 ], [ 0, %if.then165.critedge ]
  call fastcc void @clk_prepare_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @clk_core_unlink_consumer(%struct.clk* nocapture noundef %clk) unnamed_addr #15 {
entry:
  %clks_node = getelementptr inbounds %struct.clk, %struct.clk* %clk, i64 0, i32 7
  call fastcc void @hlist_del(%struct.hlist_node* noundef %clks_node) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_free_parent_map(%struct.clk_core* nocapture noundef readonly %core) unnamed_addr #1 {
entry:
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %0 = load i8, i8* %num_parents, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i8 %0 to i32
  %parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %dec17.in = phi i32 [ %conv, %while.body.lr.ph ], [ %dec17, %while.body ]
  %dec17 = add nsw i32 %dec17.in, -1
  %1 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %idxprom14 = zext i32 %dec17 to i64
  %name = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %1, i64 %idxprom14, i32 3
  %2 = load i8*, i8** %name, align 8
  call void @kfree_const(i8* noundef %2) #21
  %3 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %fw_name = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %3, i64 %idxprom14, i32 2
  %4 = load i8*, i8** %fw_name, align 8
  call void @kfree_const(i8* noundef %4) #21
  %cmp = icmp ugt i32 %dec17.in, 1
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body
  %parents6 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 7
  %5 = bitcast %struct.clk_parent_map** %parents6 to i8**
  %6 = load i8*, i8** %5, align 8
  call void @kfree(i8* noundef %6) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #20
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_cpy_name(i8** nocapture noundef writeonly %dst_p, i8* noundef %src, i1 noundef %must_exist) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %src, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %. = select i1 %must_exist, i32 -22, i32 0
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = call i8* @kstrdup_const(i8* noundef nonnull %src, i32 noundef 3264) #21
  store i8* %call, i8** %dst_p, align 8
  %tobool4.not = icmp eq i8* %call, null
  %.9 = select i1 %tobool4.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %.9, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #1 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 40)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_core* @__clk_init_parent(%struct.clk_core* noundef %core) unnamed_addr #1 {
entry:
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 8
  %0 = load i8, i8* %num_parents, align 8
  %cmp = icmp ugt i8 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 1
  %1 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8
  %get_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 14
  %2 = load i8 (%struct.clk_hw*)*, i8 (%struct.clk_hw*)** %get_parent, align 8
  %tobool.not = icmp eq i8 (%struct.clk_hw*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %hw = getelementptr inbounds %struct.clk_core, %struct.clk_core* %core, i64 0, i32 2
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8
  %call = call i8 %2(%struct.clk_hw* noundef %3) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %index.0 = phi i8 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %call4 = call fastcc %struct.clk_core* @clk_core_get_parent_by_index(%struct.clk_core* noundef %core, i8 noundef %index.0) #20
  ret %struct.clk_core* %call4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_core_reparent_orphans_nolock() unnamed_addr #1 {
entry:
  %0 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @clk_orphan_list, i64 0, i32 0), align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12, i32 1
  %tobool2.not4042 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool2.not40 = or i1 %tobool.not, %tobool2.not4042
  br i1 %tobool2.not40, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %if.end
  %orphan.041 = phi %struct.clk_core* [ %spec.select39, %if.end ], [ %1, %land.rhs.preheader ]
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %orphan.041, i64 0, i32 27, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %call = call fastcc %struct.clk_core* @__clk_init_parent(%struct.clk_core* noundef nonnull %orphan.041) #20
  %tobool5.not = icmp eq %struct.clk_core* %call, null
  br i1 %tobool5.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.rhs
  %call6 = call fastcc %struct.clk_core* @__clk_set_parent_before(%struct.clk_core* noundef nonnull %orphan.041, %struct.clk_core* noundef nonnull %call) #20
  call fastcc void @__clk_set_parent_after(%struct.clk_core* noundef nonnull %orphan.041, %struct.clk_core* noundef nonnull %call, %struct.clk_core* noundef null) #20
  call fastcc void @__clk_recalc_accuracies(%struct.clk_core* noundef nonnull %orphan.041) #20
  call fastcc void @__clk_recalc_rates(%struct.clk_core* noundef nonnull %orphan.041, i64 noundef 0) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs
  %tobool9.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr16 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -12, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr16 to %struct.clk_core*
  %spec.select39 = select i1 %tobool9.not, %struct.clk_core* null, %struct.clk_core* %3
  %tobool2.not = icmp eq %struct.clk_core* %spec.select39, null
  br i1 %tobool2.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #15 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #15 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device_node* @dev_of_node(%struct.device* noundef readonly %dev) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.device_node* [ %0, %if.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @clk_nodrv_prepare_enable(%struct.clk_hw* nocapture noundef readnone %hw) #8 {
entry:
  ret i32 -6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @clk_nodrv_disable_unprepare(%struct.clk_hw* nocapture noundef readnone %hw) #1 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk.c\22; .popsection; .long 14472b - 14470b; .short 3988; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @clk_nodrv_set_parent(%struct.clk_hw* nocapture noundef readnone %hw, i8 noundef %index) #8 {
entry:
  ret i32 -6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @clk_nodrv_set_rate(%struct.clk_hw* nocapture noundef readnone %hw, i64 noundef %rate, i64 noundef %parent_rate) #8 {
entry:
  ret i32 -6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #20
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #20
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !46
  %call = call fastcc i32 @do_raw_spin_trylock() #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !47
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #22, !srcloc !48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #20
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !49
  call fastcc void @do_raw_spin_lock_flags() #20
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #22, !srcloc !50
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #22, !srcloc !51
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #20
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !7

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #22, !srcloc !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #14 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock() unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.spinlock, %struct.spinlock* @enable_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !10

if.end.i:                                         ; preds = %entry
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #21
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @enable_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @enable_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #22, !srcloc !53
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #1 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #21
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @enable_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #21
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock() #20
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #20
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @enable_lock to i8*), i8 0) #22, !srcloc !55
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @clk_core_evict_parent_cache_subtree(%struct.clk_core* nocapture noundef readonly %root, %struct.clk_core* noundef %target) unnamed_addr #7 {
entry:
  %num_parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %root, i64 0, i32 8
  %0 = load i8, i8* %num_parents, align 8
  %cmp48.not = icmp eq i8 %0, 0
  br i1 %cmp48.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %parents = getelementptr inbounds %struct.clk_core, %struct.clk_core* %root, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %4, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %2 = load %struct.clk_parent_map*, %struct.clk_parent_map** %parents, align 8
  %core = getelementptr %struct.clk_parent_map, %struct.clk_parent_map* %2, i64 %indvars.iv, i32 1
  %3 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %cmp2 = icmp eq %struct.clk_core* %3, %target
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store %struct.clk_core* null, %struct.clk_core** %core, align 8
  %.pre = load i8, i8* %num_parents, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %4 = phi i8 [ %1, %for.body ], [ %.pre, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = zext i8 %4 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %first = getelementptr inbounds %struct.clk_core, %struct.clk_core* %root, i64 0, i32 26, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12, i32 1
  %tobool10.not5053 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool10.not50 = or i1 %tobool.not, %tobool10.not5053
  br i1 %tobool10.not50, label %for.end26, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.end
  %7 = bitcast %struct.hlist_node*** %add.ptr to %struct.clk_core*
  br label %for.body11

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %child.051 = phi %struct.clk_core* [ %spec.select46, %for.body11 ], [ %7, %for.body11.preheader ]
  call fastcc void @clk_core_evict_parent_cache_subtree(%struct.clk_core* noundef nonnull %child.051, %struct.clk_core* noundef %target) #20
  %next = getelementptr inbounds %struct.clk_core, %struct.clk_core* %child.051, i64 0, i32 27, i32 0
  %8 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool15.not = icmp eq %struct.hlist_node* %8, null
  %add.ptr22 = getelementptr %struct.hlist_node, %struct.hlist_node* %8, i64 -12, i32 1
  %9 = bitcast %struct.hlist_node*** %add.ptr22 to %struct.clk_core*
  %spec.select46 = select i1 %tobool15.not, %struct.clk_core* null, %struct.clk_core* %9
  %tobool10.not = icmp eq %struct.clk_core* %spec.select46, null
  br i1 %tobool10.not, label %for.end26, label %for.body11

for.end26:                                        ; preds = %for.body11, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #0 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #15 {
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
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #17 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #20
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #20
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #21
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #22, !srcloc !56
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !10

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !57
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #15 {
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #15 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #15 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_hw* @__of_clk_get_hw_from_provider(%struct.of_clk_provider* nocapture noundef readonly %provider, %struct.of_phandle_args* noundef %clkspec) unnamed_addr #1 {
entry:
  %get_hw = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %provider, i64 0, i32 3
  %0 = load %struct.clk_hw* (%struct.of_phandle_args*, i8*)*, %struct.clk_hw* (%struct.of_phandle_args*, i8*)** %get_hw, align 8
  %tobool.not = icmp eq %struct.clk_hw* (%struct.of_phandle_args*, i8*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %provider, i64 0, i32 4
  %1 = load i8*, i8** %data, align 8
  %call = call %struct.clk_hw* %0(%struct.of_phandle_args* noundef %clkspec, i8* noundef %1) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %get = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %provider, i64 0, i32 2
  %2 = load %struct.clk* (%struct.of_phandle_args*, i8*)*, %struct.clk* (%struct.of_phandle_args*, i8*)** %get, align 8
  %data2 = getelementptr inbounds %struct.of_clk_provider, %struct.of_clk_provider* %provider, i64 0, i32 4
  %3 = load i8*, i8** %data2, align 8
  %call3 = call %struct.clk* %2(%struct.of_phandle_args* noundef %clkspec, i8* noundef %3) #21
  %4 = bitcast %struct.clk* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %4) #20
  br i1 %call4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %5 = bitcast %struct.clk* %call3 to %struct.clk_hw*
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef %call3) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi %struct.clk_hw* [ %call, %if.then ], [ %5, %if.then5 ], [ %call8, %if.end7 ]
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(%struct.device_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(%struct.device_node* noundef, i8* noundef, i8** noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #22, !srcloc !58
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nobuiltin "no-builtins" }
attributes #21 = { nobuiltin nounwind "no-builtins" }
attributes #22 = { nounwind }
attributes #23 = { nounwind readnone }
attributes #24 = { cold nobuiltin nounwind "no-builtins" }
attributes #25 = { cold nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2152928375}
!9 = !{i64 1178755}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152865797}
!12 = !{i64 2152867470}
!13 = !{i64 2152926707}
!14 = !{i64 2152869182}
!15 = !{i64 2152870855}
!16 = !{!"auto-init"}
!17 = !{i64 2153030063}
!18 = !{i64 2153080103}
!19 = !{i64 2153099719}
!20 = !{i64 2152875383}
!21 = !{i64 2152877055}
!22 = !{i64 2152878766}
!23 = !{i64 2152880438}
!24 = !{i64 2153112270}
!25 = !{i64 2153109051}
!26 = !{i64 2153114024}
!27 = !{i64 2153110630}
!28 = !{i64 2153115803}
!29 = !{i64 2153117976}
!30 = !{i64 2153119583}
!31 = !{i64 2153143347}
!32 = !{i64 2153141768}
!33 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!34 = !{i64 2152930632}
!35 = !{i64 2152932702}
!36 = !{i64 2152934720}
!37 = !{i64 2152936998}
!38 = !{i64 2152939063}
!39 = !{i64 2152941135}
!40 = !{i64 2153012737}
!41 = !{i8 0, i8 2}
!42 = !{i64 2147896575, i64 2147897239, i64 2147897269, i64 2147897301, i64 2147897335, i64 2147897370, i64 2147897395}
!43 = !{i64 2153076177}
!44 = !{i64 2153078110}
!45 = !{i64 2153084135}
!46 = !{i64 2149527045}
!47 = !{i64 2149531102}
!48 = !{i64 2149488086, i64 2149488133, i64 2149488139, i64 2149488176, i64 2149488194, i64 2149489505, i64 2149489553, i64 2149489601, i64 2149489664, i64 2149489713, i64 2149488272, i64 2149488297, i64 2149488323, i64 2149488329, i64 2149489171, i64 2149489211, i64 2149489229, i64 2149489261, i64 2149489289, i64 2149489343, i64 2149489363, i64 2149489460, i64 2149488352, i64 2149488366, i64 2149488372, i64 2149488422, i64 2149488468, i64 2149488501}
!49 = !{i64 2149531586}
!50 = !{i64 2149482073, i64 2149482120, i64 2149482126, i64 2149482163, i64 2149482181, i64 2149483492, i64 2149483540, i64 2149483588, i64 2149483651, i64 2149483700, i64 2149482259, i64 2149482284, i64 2149482310, i64 2149482316, i64 2149483158, i64 2149483198, i64 2149483216, i64 2149483248, i64 2149483276, i64 2149483330, i64 2149483350, i64 2149483447, i64 2149482339, i64 2149482353, i64 2149482359, i64 2149482409, i64 2149482455, i64 2149482488}
!51 = !{i64 2149484252, i64 2149484299, i64 2149484305, i64 2149484342, i64 2149484360, i64 2149485303, i64 2149485351, i64 2149485399, i64 2149485462, i64 2149485511, i64 2149484438, i64 2149484463, i64 2149484489, i64 2149484495, i64 2149484532, i64 2149484538, i64 2149484588, i64 2149484634, i64 2149484667}
!52 = !{i64 2149476370, i64 2149476417, i64 2149476423, i64 2149476460, i64 2149476478, i64 2149477819, i64 2149477867, i64 2149477915, i64 2149477978, i64 2149478027, i64 2149476556, i64 2149476581, i64 2149476607, i64 2149476613, i64 2149477485, i64 2149477525, i64 2149477543, i64 2149477575, i64 2149477603, i64 2149477657, i64 2149477677, i64 2149477774, i64 2149476636, i64 2149476650, i64 2149476656, i64 2149476706, i64 2149476752, i64 2149476785}
!53 = !{i64 2147986473, i64 2147986506, i64 2147986559, i64 2147986618, i64 2147986652, i64 2147986707, i64 2147986736, i64 2147986756}
!54 = !{i64 2149557429}
!55 = !{i64 2149500728}
!56 = !{i64 2150539142}
!57 = !{i64 2147908357, i64 2147909031, i64 2147909061, i64 2147909093, i64 2147909127, i64 2147909163, i64 2147909188}
!58 = !{i64 2147959691, i64 2147960202, i64 2147960232, i64 2147960258, i64 2147960290, i64 2147960319}
