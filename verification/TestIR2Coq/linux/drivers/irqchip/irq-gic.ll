; ModuleID = 'drivers/irqchip/irq-gic.c'
source_filename = "drivers/irqchip/irq-gic.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.gic_chip_data = type { %struct.irq_chip, %union.gic_base, %union.gic_base, i8*, i8*, i32, %struct.irq_domain*, i32 }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
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
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.49, %struct.list_head, %struct.list_head, %union.anon.50 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.18, i8* }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.17, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.48, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.22, i32 }
%union.anon.22 = type { %struct.kuid_t }
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
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.msi_msg = type opaque
%union.gic_base = type { i8* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.gic_quirk = type { i8*, i8*, i1 (i8*)*, i32, i32 }
%struct.gic_kvm_info = type { i32, %struct.resource, i32, i8, %struct.resource, i8, i8, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.pt_regs = type { %union.anon.63, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.63 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@gic_data = internal global [1 x %struct.gic_chip_data] zeroinitializer, section ".data..read_mostly", align 8
@supports_deactivate_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@__setup_str_gicv2_force_probe_cfg = internal constant [26 x i8] c"irqchip.gicv2_force_probe\00", section ".init.rodata", align 1
@__setup_gicv2_force_probe_cfg = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__setup_str_gicv2_force_probe_cfg, i32 0, i32 0), i32 (i8*)* @gicv2_force_probe_cfg, i32 1 }, section ".init.setup", align 8
@gic_cnt = internal unnamed_addr global i32 0, section ".init.data", align 4
@__of_table_gic_400 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_arm11mp_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm11mp-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_arm1176jzf_dc_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm1176jzf-devchip-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_cortex_a15_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a15-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_cortex_a9_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_cortex_a7_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a7-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_msm_8660_qgic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-8660-qgic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_msm_qgic2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-qgic2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@__of_table_pl390 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl390\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@gic_cpu_map = internal unnamed_addr global [8 x i8] zeroinitializer, section ".data..read_mostly", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\016GIC: Using split EOI/Deactivate mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GICv2\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"GIC-%d\00", align 1
@sgi_intid = internal global i32 0, section ".data..percpu", align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"irqchip/arm/gic:starting\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@gic_check_cpu_features.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"GICv3 system registers enabled, broken firmware!\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"\012GIC CPU mask not found - kernel will fail to boot.\0A\00", align 1
@gicv2_force_probe = internal global i8 0, align 4
@gic_chip = internal unnamed_addr constant %struct.irq_chip { %struct.device* null, i8* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @gic_mask_irq, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @gic_unmask_irq, void (%struct.irq_data*)* @gic_eoi_irq, i32 (%struct.irq_data*, %struct.cpumask*, i1)* null, i32 (%struct.irq_data*)* @gic_retrigger, i32 (%struct.irq_data*, i32)* @gic_set_type, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* @gic_irq_get_irqchip_state, i32 (%struct.irq_data*, i32, i1)* @gic_irq_set_irqchip_state, i32 (%struct.irq_data*, i8*)* null, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 21 }, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"\014GIC: PPI%d is secure or misconfigured\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@needs_rmw_access = internal global %struct.static_key_false zeroinitializer, align 4
@rmw_writeb.rmw_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"unable to map gic dist registers\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"unable to map gic cpu registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"cpu-offset\00", align 1
@gic_quirks = internal constant [2 x %struct.gic_quirk] [%struct.gic_quirk { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i1 (i8*)* @gic_enable_rmw_access, i32 0, i32 0 }, %struct.gic_quirk zeroinitializer], align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"broken byte access\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"arm,pl390\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"renesas,emev2\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"GIC_NON_BANKED not enabled, ignoring %08x offset!\00", align 1
@gic_irq_domain_hierarchy_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* @gic_irq_domain_alloc, void (%struct.irq_domain*, i32, i32)* @irq_domain_free_irqs_top, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* null, void (%struct.irq_domain*, %struct.irq_data*)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @gic_irq_domain_translate }, align 8
@.str.15 = private unnamed_addr constant [59 x i8] c"Cannot allocate irq_descs @ IRQ16, assuming pre-allocated\0A\00", align 1
@gic_irq_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* @gic_irq_domain_map, void (%struct.irq_domain*, i32)* @gic_irq_domain_unmap, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* null, void (%struct.irq_domain*, i32, i32)* null, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* null, void (%struct.irq_domain*, %struct.irq_data*)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.16 = private unnamed_addr constant [82 x i8] c"\014GIC: GICv2 detected, but range too small and irqchip.gicv2_force_probe not set\0A\00", align 1
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"\014GIC: GICv2 at %pa, but range is too small (broken DT?), assuming 8kB\0A\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"\014GIC: Aliased GICv2 at %pa, trying to find the canonical range over 128kB\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"\014GIC: Adjusting CPU interface base to %pa\0A\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global [2 x i32], align 4
@gic_v2_kvm_info = internal global %struct.gic_kvm_info zeroinitializer, section ".init.data", align 8
@llvm.compiler.used = appending global [10 x i8*] [i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_arm1176jzf_dc_gic, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_arm11mp_gic, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_cortex_a15_gic, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_cortex_a7_gic, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_cortex_a9_gic, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_gic_400, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_msm_8660_qgic, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_msm_qgic2, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_pl390, i32 0, i32 0, i32 0), i8* bitcast (%struct.obs_kernel_param* @__setup_gicv2_force_probe_cfg to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @gic_cascade_irq(i32 noundef %gic_nr, i32 noundef %irq) local_unnamed_addr #0 section ".init.text" {
entry:
  %cmp.not = icmp eq i32 %gic_nr, 0
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 415; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !9
  unreachable

do.end5:                                          ; preds = %entry
  call void @irq_set_chained_handler_and_data(i32 noundef %irq, void (%struct.irq_desc*)* noundef nonnull @gic_handle_cascade_irq, i8* noundef bitcast ([1 x %struct.gic_chip_data]* @gic_data to i8*)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, void (%struct.irq_desc*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_handle_cascade_irq(%struct.irq_desc* noundef %desc) #2 {
entry:
  %call = call fastcc i8* @irq_desc_get_handler_data(%struct.irq_desc* noundef %desc) #18
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %desc) #18
  call fastcc void @chained_irq_enter(%struct.irq_chip* noundef %call1, %struct.irq_desc* noundef %desc) #18
  %cpu_base = getelementptr inbounds i8, i8* %call, i64 296
  %common_base = bitcast i8* %cpu_base to i8**
  %0 = load i8*, i8** %common_base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 12
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %2 = and i32 %1, 1023
  %cmp = icmp eq i32 %2, 1023
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !11
  %domain = getelementptr inbounds i8, i8* %call, i64 328
  %3 = bitcast i8* %domain to %struct.irq_domain**
  %4 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %call5 = call i32 @generic_handle_domain_irq(%struct.irq_domain* noundef %4, i32 noundef %2) #17
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %out, label %if.then9, !prof !8

if.then9:                                         ; preds = %if.end
  call void @handle_bad_irq(%struct.irq_desc* noundef %desc) #17
  br label %out

out:                                              ; preds = %if.end, %if.then9, %entry
  call fastcc void @chained_irq_exit(%struct.irq_chip* noundef %call1, %struct.irq_desc* noundef %desc) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @gic_cpu_if_down(i32 noundef %gic_nr) local_unnamed_addr #2 {
entry:
  %cmp.not = icmp eq i32 %gic_nr, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 2, i32 0), align 8
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %0) #16, !srcloc !10
  call void asm sideeffect "dmb oshld", "~{memory}"() #16, !srcloc !12
  %conv = zext i32 %1 to i64
  %2 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv) #16, !srcloc !13
  %and = and i32 %1, -2
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %and, i8* %0) #16, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @gic_init(i8* noundef %dist_base, i8* noundef %cpu_base) local_unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @static_key_disable() #18
  store i8* %dist_base, i8** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 3), align 8
  store i8* %cpu_base, i8** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 4), align 8
  %call = call fastcc i32 @__gic_init_bases(%struct.gic_chip_data* noundef getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0), %struct.fwnode_handle* noundef null) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_disable() unnamed_addr #2 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !15
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !16

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.static_key_disable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 329; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %return, label %if.then41, !prof !8

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !18
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 0, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @__gic_init_bases(%struct.gic_chip_data* noundef %gic, %struct.fwnode_handle* noundef %handle) unnamed_addr #0 section ".init.text" {
entry:
  %tobool.not = icmp eq %struct.gic_chip_data* %gic, null
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %domain = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 6
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %tobool1.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool1.not, label %if.end18, label %if.then, !prof !8

if.then:                                          ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1252; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !19
  br label %cleanup

if.end18:                                         ; preds = %lor.rhs
  %cmp = icmp eq %struct.gic_chip_data* %gic, getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0)
  br i1 %cmp, label %for.body, label %if.end39.thread

if.end39.thread:                                  ; preds = %if.end18
  %call4188 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #18
  br label %if.else

for.body:                                         ; preds = %if.end18, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end18 ]
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 %indvars.iv
  store i8 -1, i8* %arrayidx, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call = call i32 @set_handle_irq(void (%struct.pt_regs*)* noundef nonnull @gic_handle_irq) #17
  %call24 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #18
  %cmp25 = icmp sgt i32 %call24, 0
  br i1 %cmp25, label %do.end, label %if.end39, !prof !8

do.end:                                           ; preds = %for.end
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #20
  br label %if.end39

if.end39:                                         ; preds = %for.end, %do.end
  %call41 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #18
  %cmp42 = icmp sgt i32 %call41, 0
  br i1 %cmp42, label %if.then54, label %if.else, !prof !20

if.then54:                                        ; preds = %if.end39
  %call55 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #17
  call fastcc void @gic_init_chip(%struct.gic_chip_data* noundef getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0), %struct.device* noundef null, i8* noundef %call55, i1 noundef true) #18
  br label %if.end58

if.else:                                          ; preds = %if.end39.thread, %if.end39
  %sub.ptr.lhs.cast = ptrtoint %struct.gic_chip_data* %gic to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([1 x %struct.gic_chip_data]* @gic_data to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 344
  %conv56 = trunc i64 %sub.ptr.div to i32
  %call57 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv56) #17
  call fastcc void @gic_init_chip(%struct.gic_chip_data* noundef nonnull %gic, %struct.device* noundef null, i8* noundef %call57, i1 noundef false) #18
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then54
  %name.0 = phi i8* [ %call55, %if.then54 ], [ %call57, %if.else ]
  %call59 = call fastcc i32 @gic_init_bases(%struct.gic_chip_data* noundef nonnull %gic, %struct.fwnode_handle* noundef %handle) #18
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.else62, label %if.then61

if.then61:                                        ; preds = %if.end58
  call void @kfree(i8* noundef %name.0) #17
  br label %cleanup

if.else62:                                        ; preds = %if.end58
  br i1 %cmp, label %if.then65, label %cleanup

if.then65:                                        ; preds = %if.else62
  call fastcc void @gic_smp_init() #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then61, %if.then65, %if.else62
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.else62 ], [ 0, %if.then65 ], [ %call59, %if.then61 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @gicv2_force_probe_cfg(i8* noundef %buf) #0 section ".init.text" {
entry:
  %call = call fastcc i32 @strtobool(i8* noundef %buf) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @gic_of_init_child(%struct.device* noundef %dev, %struct.gic_chip_data** noundef %gic, i32 noundef %irq) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool1 = icmp ne %struct.device_node* %0, null
  %tobool3 = icmp ne %struct.gic_chip_data** %gic, null
  %or.cond = and i1 %tobool3, %tobool1
  %tobool5 = icmp ne i32 %irq, 0
  %or.cond20 = and i1 %tobool5, %or.cond
  br i1 %or.cond20, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i8* @devm_kzalloc(%struct.device* noundef nonnull %dev) #18
  %1 = bitcast %struct.gic_chip_data** %gic to i8**
  store i8* %call, i8** %1, align 8
  %tobool6.not = icmp eq i8* %call, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %2 = bitcast i8* %call to %struct.gic_chip_data*
  %3 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i64 0, i32 0
  %4 = load i8*, i8** %name, align 8
  call fastcc void @gic_init_chip(%struct.gic_chip_data* noundef nonnull %2, %struct.device* noundef nonnull %dev, i8* noundef %4, i1 noundef false) #18
  %5 = load %struct.gic_chip_data*, %struct.gic_chip_data** %gic, align 8
  %6 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call11 = call fastcc i32 @gic_of_setup(%struct.gic_chip_data* noundef %5, %struct.device_node* noundef %6) #18
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end8
  %7 = load %struct.gic_chip_data*, %struct.gic_chip_data** %gic, align 8
  %8 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %8, i64 0, i32 3
  %call16 = call fastcc i32 @gic_init_bases(%struct.gic_chip_data* noundef %7, %struct.fwnode_handle* noundef %fwnode) #18
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  %9 = load %struct.gic_chip_data*, %struct.gic_chip_data** %gic, align 8
  call fastcc void @gic_teardown(%struct.gic_chip_data* noundef %9) #18
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %10 = load i8*, i8** %1, align 8
  call void @irq_set_chained_handler_and_data(i32 noundef %irq, void (%struct.irq_desc*)* noundef nonnull @gic_handle_cascade_irq, i8* noundef %10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry, %lor.lhs.false, %if.end19, %if.then18
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ 0, %if.end19 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -12, %if.end ], [ %call11, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @devm_kzalloc(%struct.device* noundef %dev) unnamed_addr #2 {
entry:
  %call = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef 344, i32 noundef 3520) #17
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @gic_init_chip(%struct.gic_chip_data* noundef writeonly %gic, %struct.device* noundef %dev, i8* noundef %name, i1 noundef %use_eoimode1) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.gic_chip_data* %gic to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(288) %0, i8* noundef align 8 dereferenceable(288) bitcast (%struct.irq_chip* @gic_chip to i8*), i64 288, i1 false)
  %name2 = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 0, i32 1
  store i8* %name, i8** %name2, align 8
  %parent_device = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 0, i32 0
  store %struct.device* %dev, %struct.device** %parent_device, align 8
  br i1 %use_eoimode1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %irq_mask = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 0, i32 7
  store void (%struct.irq_data*)* @gic_eoimode1_mask_irq, void (%struct.irq_data*)** %irq_mask, align 8
  %irq_eoi = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 0, i32 10
  store void (%struct.irq_data*)* @gic_eoimode1_eoi_irq, void (%struct.irq_data*)** %irq_eoi, align 8
  %irq_set_vcpu_affinity = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 0, i32 30
  store i32 (%struct.irq_data*, i8*)* @gic_irq_set_vcpu_affinity, i32 (%struct.irq_data*, i8*)** %irq_set_vcpu_affinity, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq %struct.gic_chip_data* %gic, getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0)
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  store i32 (%struct.irq_data*, %struct.cpumask*, i1)* @gic_set_affinity, i32 (%struct.irq_data*, %struct.cpumask*, i1)** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 0, i32 11), align 8
  store void (%struct.irq_data*, %struct.cpumask*)* @gic_ipi_send_mask, void (%struct.irq_data*, %struct.cpumask*)** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 0, i32 32), align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_of_setup(%struct.gic_chip_data* noundef %gic, %struct.device_node* noundef %node) unnamed_addr #2 {
entry:
  %tobool = icmp ne %struct.gic_chip_data* %gic, null
  %tobool1 = icmp ne %struct.device_node* %node, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call i8* @of_iomap(%struct.device_node* noundef nonnull %node, i32 noundef 0) #17
  %raw_dist_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 3
  store i8* %call, i8** %raw_dist_base, align 8
  %tobool3.not = icmp eq i8* %call, null
  br i1 %tobool3.not, label %do.end, label %if.end29, !prof !16

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1432; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !21
  br label %error

if.end29:                                         ; preds = %if.end
  %call30 = call i8* @of_iomap(%struct.device_node* noundef nonnull %node, i32 noundef 1) #17
  %raw_cpu_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 4
  store i8* %call30, i8** %raw_cpu_base, align 8
  %tobool33.not = icmp eq i8* %call30, null
  br i1 %tobool33.not, label %do.end52, label %if.end69, !prof !16

do.end52:                                         ; preds = %if.end29
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1436; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !22
  br label %error

if.end69:                                         ; preds = %if.end29
  %percpu_offset = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 5
  %call70 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %node, i32* noundef %percpu_offset) #18
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end69
  store i32 0, i32* %percpu_offset, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end69
  %0 = bitcast %struct.gic_chip_data* %gic to i8*
  call void @gic_enable_of_quirks(%struct.device_node* noundef nonnull %node, %struct.gic_quirk* noundef getelementptr inbounds ([2 x %struct.gic_quirk], [2 x %struct.gic_quirk]* @gic_quirks, i64 0, i64 0), i8* noundef nonnull %0) #17
  br label %return

error:                                            ; preds = %do.end52, %do.end
  call fastcc void @gic_teardown(%struct.gic_chip_data* noundef nonnull %gic) #18
  br label %return

return:                                           ; preds = %entry, %error, %if.end74
  %retval.0 = phi i32 [ -12, %error ], [ 0, %if.end74 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_init_bases(%struct.gic_chip_data* noundef %gic, %struct.fwnode_handle* noundef %handle) unnamed_addr #2 {
entry:
  %percpu_offset = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 5
  %0 = load i32, i32* %percpu_offset, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !8

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32 noundef %0) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1182; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %raw_dist_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 3
  %1 = load i8*, i8** %raw_dist_base, align 8
  %common_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 1, i32 0
  store i8* %1, i8** %common_base, align 8
  %raw_cpu_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 4
  %2 = load i8*, i8** %raw_cpu_base, align 8
  %common_base22 = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 2, i32 0
  store i8* %2, i8** %common_base22, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 4
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %and = shl i32 %3, 5
  %add = and i32 %and, 992
  %4 = icmp ult i32 %add, 988
  %5 = select i1 %4, i32 %add, i32 988
  %spec.store.select = add nuw nsw i32 %5, 32
  %gic_irqs29 = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 7
  store i32 %spec.store.select, i32* %gic_irqs29, align 8
  %tobool30.not = icmp eq %struct.fwnode_handle* %handle, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end
  %6 = bitcast %struct.gic_chip_data* %gic to i8*
  %call32 = call fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef nonnull %handle, i32 noundef %spec.store.select, i8* noundef %6) #18
  br label %if.end69

if.else:                                          ; preds = %if.end
  %sub = add nuw nsw i32 %5, 16
  call fastcc void @numa_node_id() #18
  %call34 = call i32 @__irq_alloc_descs(i32 noundef 16, i32 noundef 16, i32 noundef %sub, i32 noundef 0, %struct.module* noundef null, %struct.irq_affinity_desc* noundef null) #17
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end51, label %if.end66

do.end51:                                         ; preds = %if.else
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1213; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !24
  br label %if.end66

if.end66:                                         ; preds = %do.end51, %if.else
  %irq_base.0 = phi i32 [ 16, %do.end51 ], [ %call34, %if.else ]
  %7 = bitcast %struct.gic_chip_data* %gic to i8*
  %call67 = call %struct.irq_domain* @irq_domain_add_legacy(%struct.device_node* noundef null, i32 noundef %sub, i32 noundef %irq_base.0, i64 noundef 16, %struct.irq_domain_ops* noundef nonnull @gic_irq_domain_ops, i8* noundef %7) #17
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.then31
  %call67.sink = phi %struct.irq_domain* [ %call67, %if.end66 ], [ %call32, %if.then31 ]
  %domain68 = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 6
  store %struct.irq_domain* %call67.sink, %struct.irq_domain** %domain68, align 8
  %tobool72.not = icmp eq %struct.irq_domain* %call67.sink, null
  br i1 %tobool72.not, label %if.then87, label %if.end99, !prof !16

if.then87:                                        ; preds = %if.end69
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1221; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !25
  br label %cleanup

if.end99:                                         ; preds = %if.end69
  call fastcc void @gic_dist_init(%struct.gic_chip_data* noundef %gic) #18
  %call100 = call fastcc i32 @gic_cpu_init(%struct.gic_chip_data* noundef %gic) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then87
  %retval.0 = phi i32 [ -19, %if.then87 ], [ %call100, %if.end99 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_teardown(%struct.gic_chip_data* noundef readonly %gic) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.gic_chip_data* %gic, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1305; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !26
  br label %if.end26

if.end18:                                         ; preds = %entry
  %raw_dist_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 3
  %0 = load i8*, i8** %raw_dist_base, align 8
  %tobool19.not = icmp eq i8* %0, null
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @iounmap(i8* noundef nonnull %0) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  %raw_cpu_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 4
  %1 = load i8*, i8** %raw_cpu_base, align 8
  %tobool23.not = icmp eq i8* %1, null
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @iounmap(i8* noundef nonnull %1) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then, %if.then24, %if.end22
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @gic_of_init(%struct.device_node* noundef %node, %struct.device_node* noundef readnone %parent) #0 section ".init.text" {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1510; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !27
  br label %cleanup

if.end18:                                         ; preds = %entry
  %0 = load i32, i32* @gic_cnt, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then33, label %if.end45, !prof !16

if.then33:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1513; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !28
  br label %cleanup

if.end45:                                         ; preds = %if.end18
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 %idxprom
  %call = call fastcc i32 @gic_of_setup(%struct.gic_chip_data* noundef %arrayidx, %struct.device_node* noundef nonnull %node) #18
  %tobool46.not = icmp eq i32 %call, 0
  br i1 %tobool46.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %if.end45
  %1 = load i32, i32* @gic_cnt, align 4
  %cmp49 = icmp eq i32 %1, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.end48
  %raw_cpu_base = getelementptr [1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 %idxprom, i32 4
  %call51 = call fastcc i1 @gic_check_eoimode(%struct.device_node* noundef nonnull %node, i8** noundef %raw_cpu_base) #18
  br i1 %call51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  call fastcc void @static_key_disable() #18
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %land.lhs.true, %if.end48
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  %call54 = call fastcc i32 @__gic_init_bases(%struct.gic_chip_data* noundef %arrayidx, %struct.fwnode_handle* noundef %fwnode) #19
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end53
  call fastcc void @gic_teardown(%struct.gic_chip_data* noundef %arrayidx) #18
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %2 = load i32, i32* @gic_cnt, align 4
  %tobool58.not = icmp eq i32 %2, 0
  br i1 %tobool58.not, label %do.end, label %if.end60

do.end:                                           ; preds = %if.end57
  call fastcc void @gic_of_setup_kvm_info(%struct.device_node* noundef nonnull %node) #19
  br label %if.end60

if.end60:                                         ; preds = %do.end, %if.end57
  %tobool61.not = icmp eq %struct.device_node* %parent, null
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end60
  %call63 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef nonnull %node, i32 noundef 0) #17
  %3 = load i32, i32* @gic_cnt, align 4
  call void @gic_cascade_irq(i32 noundef %3, i32 noundef %call63) #19
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60
  %4 = load i32, i32* @gic_cnt, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* @gic_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then, %if.end45, %if.end64, %if.then56
  %retval.0 = phi i32 [ %call54, %if.then56 ], [ 0, %if.end64 ], [ -19, %if.then ], [ -22, %if.then33 ], [ %call, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @gic_check_eoimode(%struct.device_node* noundef %node, i8** nocapture noundef %base) unnamed_addr #2 {
entry:
  %cpuif_res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %cpuif_res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !29
  %call = call i32 @of_address_to_resource(%struct.device_node* noundef %node, i32 noundef 1, %struct.resource* noundef nonnull %cpuif_res) #17
  %call1 = call fastcc i1 @is_hyp_mode_available() #18
  br i1 %call1, label %if.end, label %cleanup69

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %cpuif_res) #18
  %cmp = icmp ult i64 %call2, 8192
  br i1 %cmp, label %if.then3, label %if.end50

if.then3:                                         ; preds = %if.end
  %1 = load i8*, i8** %base, align 8
  %call4 = call fastcc i1 @gic_check_gicv2(i8* noundef %1) #18
  br i1 %call4, label %if.end6, label %cleanup69

if.end6:                                          ; preds = %if.then3
  %2 = load i8, i8* @gicv2_force_probe, align 4, !range !15
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.16, i64 0, i64 0)) #20
  br label %cleanup69

if.end9:                                          ; preds = %if.end6
  %start = getelementptr inbounds %struct.resource, %struct.resource* %cpuif_res, i64 0, i32 0
  %3 = load i64, i64* %start, align 8
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !15
  %tobool10.not = icmp eq i8 %4, 0
  %or14 = select i1 %tobool10.not, i64 29273397577910035, i64 29273397577912083
  %call15 = call i8* @__ioremap(i64 noundef %3, i64 noundef 8192, i64 %or14) #17
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %cleanup69, label %if.end18

if.end18:                                         ; preds = %if.end9
  %add.ptr = getelementptr i8, i8* %call15, i64 4096
  %call19 = call fastcc i1 @gic_check_gicv2(i8* noundef %add.ptr) #18
  br i1 %call19, label %if.end27, label %do.end23

do.end23:                                         ; preds = %if.end18
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i64 0, i64 0), i64* noundef nonnull %start) #20
  %5 = load i8*, i8** %base, align 8
  call void @iounmap(i8* noundef %5) #17
  store i8* %call15, i8** %base, align 8
  br label %cleanup69

if.end27:                                         ; preds = %if.end18
  call void @iounmap(i8* noundef nonnull %call15) #17
  %6 = load i64, i64* %start, align 8
  %7 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !15
  %tobool31.not = icmp eq i8 %7, 0
  %or37 = select i1 %tobool31.not, i64 29273397577910035, i64 29273397577912083
  %call39 = call i8* @__ioremap(i64 noundef %6, i64 noundef 131072, i64 %or37) #17
  %tobool40.not = icmp eq i8* %call39, null
  br i1 %tobool40.not, label %cleanup69, label %cleanup

cleanup:                                          ; preds = %if.end27
  %call48 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i64 0, i64 0), i64* noundef nonnull %start) #20
  %8 = load i64, i64* %start, align 8
  %sub = add i64 %8, 131071
  %end = getelementptr inbounds %struct.resource, %struct.resource* %cpuif_res, i64 0, i32 1
  store i64 %sub, i64* %end, align 8
  %9 = load i8*, i8** %base, align 8
  call void @iounmap(i8* noundef %9) #17
  store i8* %call39, i8** %base, align 8
  br label %if.end50

if.end50:                                         ; preds = %cleanup, %if.end
  %call51 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %cpuif_res) #18
  %cmp52 = icmp eq i64 %call51, 131072
  br i1 %cmp52, label %if.then53, label %cleanup69

if.then53:                                        ; preds = %if.end50
  %10 = load i8*, i8** %base, align 8
  %call54 = call fastcc i1 @gic_check_gicv2(i8* noundef %10) #18
  br i1 %call54, label %lor.lhs.false, label %cleanup69

lor.lhs.false:                                    ; preds = %if.then53
  %11 = load i8*, i8** %base, align 8
  %add.ptr55 = getelementptr i8, i8* %11, i64 61440
  %call56 = call fastcc i1 @gic_check_gicv2(i8* noundef %add.ptr55) #18
  br i1 %call56, label %if.end58, label %cleanup69

if.end58:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %base, align 8
  %add.ptr59 = getelementptr i8, i8* %12, i64 61440
  store i8* %add.ptr59, i8** %base, align 8
  %start60 = getelementptr inbounds %struct.resource, %struct.resource* %cpuif_res, i64 0, i32 0
  %13 = load i64, i64* %start60, align 8
  %add61 = add i64 %13, 61440
  store i64 %add61, i64* %start60, align 8
  %call67 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i64* noundef nonnull %start60) #20
  br label %cleanup69

cleanup69:                                        ; preds = %if.end27, %if.end9, %if.then3, %do.end, %do.end23, %if.end50, %if.end58, %if.then53, %lor.lhs.false, %entry
  %retval.1 = phi i1 [ false, %entry ], [ false, %lor.lhs.false ], [ false, %if.then53 ], [ true, %if.end58 ], [ true, %if.end50 ], [ false, %if.end27 ], [ false, %if.end9 ], [ false, %if.then3 ], [ false, %do.end ], [ true, %do.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #16
  ret i1 %retval.1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @gic_of_setup_kvm_info(%struct.device_node* noundef %node) unnamed_addr #0 section ".init.text" {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v2_kvm_info, i64 0, i32 0), align 8
  %call = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 0) #17
  store i32 %call, i32* getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v2_kvm_info, i64 0, i32 2), align 8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(%struct.device_node* noundef %node, i32 noundef 2, %struct.resource* noundef getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v2_kvm_info, i64 0, i32 4)) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @of_address_to_resource(%struct.device_node* noundef %node, i32 noundef 3, %struct.resource* noundef getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v2_kvm_info, i64 0, i32 1)) #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4, %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @irq_desc_get_handler_data(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %handler_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 1
  %0 = load i8*, i8** %handler_data, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  ret %struct.irq_chip* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chained_irq_enter(%struct.irq_chip* nocapture noundef readonly %chip, %struct.irq_desc* noundef %desc) unnamed_addr #2 {
entry:
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 10
  %0 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.end10

if.end:                                           ; preds = %entry
  %irq_mask_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 8
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask_ack, align 8
  %tobool1.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #17
  br label %if.end10

if.else:                                          ; preds = %if.end
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 7
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  %irq_data4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %2(%struct.irq_data* noundef %irq_data4) #17
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 6
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8
  %tobool5.not = icmp eq void (%struct.irq_data*)* %3, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  call void %3(%struct.irq_data* noundef %irq_data4) #17
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6, %entry, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(%struct.irq_desc* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chained_irq_exit(%struct.irq_chip* nocapture noundef readonly %chip, %struct.irq_desc* noundef %desc) unnamed_addr #2 {
entry:
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 10
  %0 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %0, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 9
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.sink = phi void (%struct.irq_data*)* [ %1, %if.else ], [ %0, %entry ]
  %irq_data2 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %.sink(%struct.irq_data* noundef %irq_data2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_handle_irq(void (%struct.pt_regs*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_handle_irq(%struct.pt_regs* noundef %regs) #2 {
entry:
  %0 = load i8*, i8** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 2, i32 0), align 8
  %add.ptr = getelementptr i8, i8* %0, i64 12
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %and51 = and i32 %1, 1023
  %cmp52 = icmp ugt i32 %and51, 1019
  br i1 %cmp52, label %do.end36, label %if.end.lr.ph, !prof !16

if.end.lr.ph:                                     ; preds = %entry
  %add.ptr16 = getelementptr i8, i8* %0, i64 16
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end33
  %and53 = phi i32 [ %and51, %if.end.lr.ph ], [ %and, %if.end33 ]
  %2 = phi i32 [ %1, %if.end.lr.ph ], [ %5, %if.end33 ]
  %call4 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #18
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then15, label %if.end17, !prof !8

if.then15:                                        ; preds = %if.end
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %2, i8* %add.ptr16) #16, !srcloc !14
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !30
  %cmp18 = icmp ult i32 %and53, 16
  br i1 %cmp18, label %if.then20, label %if.end33

if.then20:                                        ; preds = %if.end17
  call void asm sideeffect "dmb ishld", "~{memory}"() #16, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  %call29 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call29, ptrtoint (i32* @sgi_intid to i64)
  %3 = inttoptr i64 %add to i8*
  %conv30 = zext i32 %2 to i64
  call fastcc void @__percpu_write_32(i8* noundef %3, i64 noundef %conv30) #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %if.end17
  %4 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 6), align 8
  %call34 = call i32 @handle_domain_irq(%struct.irq_domain* noundef %4, i32 noundef %and53, %struct.pt_regs* noundef %regs) #17
  %5 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %and = and i32 %5, 1023
  %cmp = icmp ugt i32 %and, 1019
  br i1 %cmp, label %do.end36, label %if.end, !prof !16

do.end36:                                         ; preds = %if.end33, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @gic_smp_init() unnamed_addr #0 section ".init.text" {
entry:
  %sgi_fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %sgi_fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %sgi_fwspec, i64 0, i32 0
  %1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %sgi_fwspec, i64 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  %3 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 6), align 8
  %fwnode1 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %3, i64 0, i32 6
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %fwnode, align 8
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %sgi_fwspec, i64 0, i32 1
  store i32 1, i32* %param_count, align 8
  call fastcc void @cpuhp_setup_state_nocalls() #18
  %5 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 6), align 8
  %call2 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef %5, i32 noundef -1, i32 noundef 8, i32 noundef -1, i8* noundef nonnull %0, i1 noundef false, %struct.irq_affinity_desc* noundef null) #17
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then, label %if.end18, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 872; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !34
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @set_smp_ipi_range(i32 noundef %call2, i32 noundef 8) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end18
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__percpu_write_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #8 {
entry:
  %conv = trunc i64 %val to i32
  %0 = bitcast i8* %ptr to i32*
  store volatile i32 %conv, i32* %0, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #9 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !35
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_domain_irq(%struct.irq_domain* noundef, i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state_nocalls() unnamed_addr #2 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 96, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef nonnull @gic_starting_cpu, i32 (i32)* noundef null, i1 noundef false) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_starting_cpu(i32 noundef %cpu) #2 {
entry:
  %call = call fastcc i32 @gic_cpu_init(%struct.gic_chip_data* noundef getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0)) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i1 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_cpu_init(%struct.gic_chip_data* noundef %gic) unnamed_addr #2 {
entry:
  %common_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 1, i32 0
  %0 = load i8*, i8** %common_base, align 8
  %common_base2 = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 2, i32 0
  %1 = load i8*, i8** %common_base2, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %cmp = icmp eq %struct.gic_chip_data* %gic, getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0)
  br i1 %cmp, label %if.then, label %if.end36

if.then:                                          ; preds = %entry
  %cmp4 = icmp ugt i32 %3, 7
  br i1 %cmp4, label %if.then11, label %if.end22, !prof !16

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 508; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !36
  br label %cleanup

if.end22:                                         ; preds = %if.then
  call fastcc void @gic_check_cpu_features() #18
  %call23 = call fastcc i8 @gic_get_cpumask(%struct.gic_chip_data* noundef getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0)) #18
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 %idxprom
  store i8 %call23, i8* %arrayidx, align 1
  %neg = xor i8 %call23, -1
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %for.inc.1.thread65, label %for.inc

for.inc.1.thread65:                               ; preds = %if.end22
  %4 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 1), align 1
  %and.166 = and i8 %4, %neg
  store i8 %and.166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 1), align 1
  br label %for.inc.2.thread69

for.inc:                                          ; preds = %if.end22
  %5 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 0), align 1
  %and = and i8 %5, %neg
  store i8 %and, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 0), align 1
  %cmp28.not.1 = icmp eq i32 %3, 1
  br i1 %cmp28.not.1, label %for.inc.2.thread69, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %6 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 1), align 1
  %and.1 = and i8 %6, %neg
  store i8 %and.1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 1), align 1
  %cmp28.not.2 = icmp eq i32 %3, 2
  br i1 %cmp28.not.2, label %for.inc.3.thread73, label %for.inc.2

for.inc.2.thread69:                               ; preds = %for.inc.1.thread65, %for.inc
  %7 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 2), align 1
  %and.270 = and i8 %7, %neg
  store i8 %and.270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 2), align 1
  br label %for.inc.3.thread73

for.inc.2:                                        ; preds = %for.inc.1
  %8 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 2), align 1
  %and.2 = and i8 %8, %neg
  store i8 %and.2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 2), align 1
  %cmp28.not.3 = icmp eq i32 %3, 3
  br i1 %cmp28.not.3, label %for.inc.4.thread77, label %for.inc.3

for.inc.3.thread73:                               ; preds = %for.inc.2.thread69, %for.inc.1
  %9 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 3), align 1
  %and.374 = and i8 %9, %neg
  store i8 %and.374, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 3), align 1
  br label %for.inc.4.thread77

for.inc.3:                                        ; preds = %for.inc.2
  %10 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 3), align 1
  %and.3 = and i8 %10, %neg
  store i8 %and.3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 3), align 1
  %cmp28.not.4 = icmp eq i32 %3, 4
  br i1 %cmp28.not.4, label %for.inc.5.thread81, label %for.inc.4

for.inc.4.thread77:                               ; preds = %for.inc.3.thread73, %for.inc.2
  %11 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 4), align 1
  %and.478 = and i8 %11, %neg
  store i8 %and.478, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 4), align 1
  br label %for.inc.5.thread81

for.inc.4:                                        ; preds = %for.inc.3
  %12 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 4), align 1
  %and.4 = and i8 %12, %neg
  store i8 %and.4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 4), align 1
  %cmp28.not.5 = icmp eq i32 %3, 5
  br i1 %cmp28.not.5, label %for.inc.6.thread85, label %for.inc.5

for.inc.5.thread81:                               ; preds = %for.inc.4.thread77, %for.inc.3
  %13 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 5), align 1
  %and.582 = and i8 %13, %neg
  store i8 %and.582, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 5), align 1
  br label %for.inc.6.thread85

for.inc.5:                                        ; preds = %for.inc.4
  %14 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 5), align 1
  %and.5 = and i8 %14, %neg
  store i8 %and.5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 5), align 1
  %cmp28.not.6 = icmp eq i32 %3, 6
  br i1 %cmp28.not.6, label %if.then30.7, label %if.end36.sink.split

for.inc.6.thread85:                               ; preds = %for.inc.5.thread81, %for.inc.4
  %15 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 6), align 1
  %and.686 = and i8 %15, %neg
  store i8 %and.686, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 6), align 1
  br label %if.then30.7

if.then30.7:                                      ; preds = %for.inc.5, %for.inc.6.thread85
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %for.inc.5, %if.then30.7
  %.sink89 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 7), %if.then30.7 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 6), %for.inc.5 ]
  %16 = load i8, i8* %.sink89, align 1
  %and.7 = and i8 %16, %neg
  store i8 %and.7, i8* %.sink89, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %entry
  call void @gic_cpu_config(i8* noundef %0, i32 noundef 32, void ()* noundef null) #17
  %add.ptr = getelementptr i8, i8* %1, i64 4
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 240, i8* %add.ptr) #16, !srcloc !14
  call fastcc void @gic_cpu_if_up(%struct.gic_chip_data* noundef %gic) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end36
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_check_cpu_features() unnamed_addr #2 {
entry:
  %call = call i1 @this_cpu_has_cap(i32 noundef 29) #17
  %.b41 = load i1, i1* @gic_check_cpu_features.__already_done, align 1
  %lnot3 = xor i1 %.b41, true
  %0 = select i1 %call, i1 %lnot3, i1 false
  br i1 %0, label %if.then, label %if.end29, !prof !16

if.then:                                          ; preds = %entry
  store i1 true, i1* @gic_check_cpu_features.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 57; .short (1 << 0)|((1 << 3) | ((2) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !37
  br label %if.end29

if.end29:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @gic_get_cpumask(%struct.gic_chip_data* nocapture noundef readonly %gic) unnamed_addr #2 {
entry:
  %common_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 1, i32 0
  %0 = load i8*, i8** %common_base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 2048
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %shr = lshr i32 %1, 16
  %or = or i32 %shr, %1
  %shr2 = lshr i32 %or, 8
  %or3 = or i32 %shr2, %or
  %tobool.not = icmp eq i32 %or3, 0
  br i1 %tobool.not, label %for.cond, label %if.end10

for.cond:                                         ; preds = %entry
  %add.ptr1.1 = getelementptr i8, i8* %0, i64 2052
  %2 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.1) #16, !srcloc !10
  %shr.1 = lshr i32 %2, 16
  %or.1 = or i32 %shr.1, %2
  %shr2.1 = lshr i32 %or.1, 8
  %or3.1 = or i32 %shr2.1, %or.1
  %tobool.not.1 = icmp eq i32 %or3.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %if.end10

for.cond.1:                                       ; preds = %for.cond
  %add.ptr1.2 = getelementptr i8, i8* %0, i64 2056
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.2) #16, !srcloc !10
  %shr.2 = lshr i32 %3, 16
  %or.2 = or i32 %shr.2, %3
  %shr2.2 = lshr i32 %or.2, 8
  %or3.2 = or i32 %shr2.2, %or.2
  %tobool.not.2 = icmp eq i32 %or3.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %if.end10

for.cond.2:                                       ; preds = %for.cond.1
  %add.ptr1.3 = getelementptr i8, i8* %0, i64 2060
  %4 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.3) #16, !srcloc !10
  %shr.3 = lshr i32 %4, 16
  %or.3 = or i32 %shr.3, %4
  %shr2.3 = lshr i32 %or.3, 8
  %or3.3 = or i32 %shr2.3, %or.3
  %tobool.not.3 = icmp eq i32 %or3.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %if.end10

for.cond.3:                                       ; preds = %for.cond.2
  %add.ptr1.4 = getelementptr i8, i8* %0, i64 2064
  %5 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.4) #16, !srcloc !10
  %shr.4 = lshr i32 %5, 16
  %or.4 = or i32 %shr.4, %5
  %shr2.4 = lshr i32 %or.4, 8
  %or3.4 = or i32 %shr2.4, %or.4
  %tobool.not.4 = icmp eq i32 %or3.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %if.end10

for.cond.4:                                       ; preds = %for.cond.3
  %add.ptr1.5 = getelementptr i8, i8* %0, i64 2068
  %6 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.5) #16, !srcloc !10
  %shr.5 = lshr i32 %6, 16
  %or.5 = or i32 %shr.5, %6
  %shr2.5 = lshr i32 %or.5, 8
  %or3.5 = or i32 %shr2.5, %or.5
  %tobool.not.5 = icmp eq i32 %or3.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %if.end10

for.cond.5:                                       ; preds = %for.cond.4
  %add.ptr1.6 = getelementptr i8, i8* %0, i64 2072
  %7 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.6) #16, !srcloc !10
  %shr.6 = lshr i32 %7, 16
  %or.6 = or i32 %shr.6, %7
  %shr2.6 = lshr i32 %or.6, 8
  %or3.6 = or i32 %shr2.6, %or.6
  %tobool.not.6 = icmp eq i32 %or3.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %if.end10

for.cond.6:                                       ; preds = %for.cond.5
  %add.ptr1.7 = getelementptr i8, i8* %0, i64 2076
  %8 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.7) #16, !srcloc !10
  %shr.7 = lshr i32 %8, 16
  %or.7 = or i32 %shr.7, %8
  %shr2.7 = lshr i32 %or.7, 8
  %or3.7 = or i32 %shr2.7, %or.7
  %tobool.not.7 = icmp eq i32 %or3.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %if.end10

for.cond.7:                                       ; preds = %for.cond.6
  %call5 = call fastcc i32 @cpumask_weight() #18
  %cmp6 = icmp ugt i32 %call5, 1
  br i1 %cmp6, label %do.end, label %if.end10

do.end:                                           ; preds = %for.cond.7
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0)) #20
  br label %if.end10

if.end10:                                         ; preds = %entry, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %for.cond.6, %do.end, %for.cond.7
  %mask.125 = phi i32 [ 0, %do.end ], [ 0, %for.cond.7 ], [ %or3, %entry ], [ %or3.1, %for.cond ], [ %or3.2, %for.cond.1 ], [ %or3.3, %for.cond.2 ], [ %or3.4, %for.cond.3 ], [ %or3.5, %for.cond.4 ], [ %or3.6, %for.cond.5 ], [ %or3.7, %for.cond.6 ]
  %conv = trunc i32 %mask.125 to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(i8* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_cpu_if_up(%struct.gic_chip_data* noundef readonly %gic) unnamed_addr #2 {
entry:
  %common_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 2, i32 0
  %0 = load i8*, i8** %common_base, align 8
  %cmp = icmp eq %struct.gic_chip_data* %gic, getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0)
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #18
  %cmp2.inv = icmp slt i32 %call, 1
  %phi.bo = select i1 %cmp2.inv, i32 1, i32 513
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %mode.0 = phi i32 [ 1, %entry ], [ %phi.bo, %land.lhs.true ]
  %call6 = call fastcc i1 @gic_check_gicv2(i8* noundef %0) #18
  br i1 %call6, label %for.cond.preheader, label %if.end11

for.cond.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr i8, i8* %0, i64 208
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %add.ptr) #16, !srcloc !14
  %add.ptr10.1 = getelementptr i8, i8* %0, i64 212
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %add.ptr10.1) #16, !srcloc !14
  %add.ptr10.2 = getelementptr i8, i8* %0, i64 216
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %add.ptr10.2) #16, !srcloc !14
  %add.ptr10.3 = getelementptr i8, i8* %0, i64 220
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %add.ptr10.3) #16, !srcloc !14
  br label %if.end11

if.end11:                                         ; preds = %for.cond.preheader, %if.end
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %0) #16, !srcloc !10
  call void asm sideeffect "dmb oshld", "~{memory}"() #16, !srcloc !38
  %conv16 = zext i32 %1 to i64
  %2 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv16) #16, !srcloc !39
  %and = and i32 %1, 480
  %or18 = or i32 %mode.0, %and
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %or18, i8* %0) #16, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @this_cpu_has_cap(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #2 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #17
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @gic_check_gicv2(i8* noundef %base) unnamed_addr #2 {
entry:
  %add.ptr = getelementptr i8, i8* %base, i64 252
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %and = and i32 %0, 16715775
  %cmp = icmp eq i32 %and, 132155
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s) unnamed_addr #2 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef nonnull @gicv2_force_probe) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @devm_kmalloc(%struct.device* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_eoimode1_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #2 {
entry:
  call void @gic_mask_irq(%struct.irq_data* noundef %d) #18
  %call = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef 896) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_eoimode1_eoi_irq(%struct.irq_data* nocapture noundef readonly %d) #2 {
entry:
  %call = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #18
  %call1 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #18
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %call, 16
  br i1 %cmp, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !40
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call8, ptrtoint (i32* @sgi_intid to i64)
  %0 = inttoptr i64 %add to i8*
  %call9 = call fastcc i64 @__percpu_read_32(i8* noundef %0) #18
  %conv = trunc i64 %call9 to i32
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.end
  %hwirq.0 = phi i32 [ %conv, %if.then2 ], [ %call, %if.end ]
  %call13 = call fastcc i8* @gic_cpu_base(%struct.irq_data* noundef %d) #18
  %add.ptr = getelementptr i8, i8* %call13, i64 4096
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %hwirq.0, i8* %add.ptr) #16, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @gic_irq_set_vcpu_affinity(%struct.irq_data* nocapture noundef readonly %d, i8* noundef readnone %vcpu) #13 {
entry:
  %call = call fastcc i1 @cascading_gic_irq(%struct.irq_data* noundef %d) #18
  br i1 %call, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #18
  %cmp = icmp ult i32 %call1, 16
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq i8* %vcpu, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @irqd_set_forwarded_to_vcpu(%struct.irq_data* noundef %d) #18
  br label %return

if.else:                                          ; preds = %if.end
  call fastcc void @irqd_clr_forwarded_to_vcpu(%struct.irq_data* noundef %d) #18
  br label %return

return:                                           ; preds = %if.then2, %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %entry ], [ 0, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_set_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %mask_val, i1 noundef %force) #2 {
entry:
  %call = call fastcc i8* @gic_dist_base(%struct.irq_data* noundef %d) #18
  %add.ptr = getelementptr i8, i8* %call, i64 2048
  %call1 = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #18
  %idx.ext = zext i32 %call1 to i64
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 %idx.ext
  br i1 %force, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %mask_val, %struct.cpumask* noundef nonnull @__cpu_online_mask) #22
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %mask_val) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cpu.0 = phi i32 [ %call4, %if.else ], [ %call3, %if.then ]
  %cmp = icmp ult i32 %cpu.0, 8
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp5.not = icmp ult i32 %cpu.0, %0
  %or.cond = select i1 %cmp, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @needs_rmw_access, i64 0, i32 0)) #18
  %cmp9 = icmp sgt i32 %call8, 0
  %idxprom = zext i32 %cpu.0 to i64
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  br i1 %cmp9, label %if.then14, label %if.else15, !prof !16

if.then14:                                        ; preds = %if.end7
  call fastcc void @rmw_writeb(i8 noundef %1, i8* noundef %add.ptr2) #18
  br label %if.end18

if.else15:                                        ; preds = %if.end7
  call fastcc void @__raw_writeb(i8 noundef %1, i8* noundef %add.ptr2) #18
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then14
  %call19 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu.0) #18
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %call19) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end18
  %retval.0 = phi i32 [ 2, %if.end18 ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_ipi_send_mask(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %mask) #2 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader, !prof !16

for.cond.preheader:                               ; preds = %entry
  %call24 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %mask) #22
  %cmp325 = icmp ult i32 %call24, %0
  br i1 %cmp325, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %1 = load i64, i64* %hwirq, align 8
  %2 = trunc i64 %1 to i32
  %conv2 = or i32 %2, 33554432
  %3 = load i8*, i8** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 1, i32 0), align 8
  %add.ptr = getelementptr i8, i8* %3, i64 3840
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %conv2, i8* %add.ptr) #16, !srcloc !14
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %call27 = phi i32 [ %call, %for.body ], [ %call24, %for.cond.preheader ]
  %map.026 = phi i64 [ %or6, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom = sext i32 %call27 to i64
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @gic_cpu_map, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %4 to i64
  %or6 = or i64 %map.026, %conv5
  %call = call i32 @cpumask_next(i32 noundef %call27, %struct.cpumask* noundef %mask) #22
  %cmp3 = icmp ult i32 %call, %0
  br i1 %cmp3, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %phi.bo = shl i64 %or6, 16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %map.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %phi.bo, %for.end.loopexit ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !42
  %hwirq7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %5 = load i64, i64* %hwirq7, align 8
  %or8 = or i64 %5, %map.0.lcssa
  %conv9 = trunc i64 %or8 to i32
  %6 = load i8*, i8** getelementptr inbounds ([1 x %struct.gic_chip_data], [1 x %struct.gic_chip_data]* @gic_data, i64 0, i64 0, i32 1, i32 0), align 8
  %add.ptr10 = getelementptr i8, i8* %6, i64 3840
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %conv9, i8* %add.ptr10) #16, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #2 {
entry:
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef 384) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_unmask_irq(%struct.irq_data* nocapture noundef readonly %d) #2 {
entry:
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef 256) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_eoi_irq(%struct.irq_data* nocapture noundef readonly %d) #2 {
entry:
  %call = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #18
  %cmp = icmp ult i32 %call, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !43
  %call6 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call6, ptrtoint (i32* @sgi_intid to i64)
  %0 = inttoptr i64 %add to i8*
  %call7 = call fastcc i64 @__percpu_read_32(i8* noundef %0) #18
  %conv = trunc i64 %call7 to i32
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %hwirq.0 = phi i32 [ %conv, %if.then ], [ %call, %entry ]
  %call10 = call fastcc i8* @gic_cpu_base(%struct.irq_data* noundef %d) #18
  %add.ptr = getelementptr i8, i8* %call10, i64 16
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %hwirq.0, i8* %add.ptr) #16, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_retrigger(%struct.irq_data* nocapture noundef readonly %data) #2 {
entry:
  %call = call i32 @gic_irq_set_irqchip_state(%struct.irq_data* noundef %data, i32 noundef 0, i1 noundef true) #18
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_set_type(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %type) #2 {
entry:
  %call = call fastcc i8* @gic_dist_base(%struct.irq_data* noundef %d) #18
  %call1 = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #18
  %cmp = icmp ult i32 %call1, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp2.not = icmp eq i32 %type, 1
  %cond = select i1 %cmp2.not, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.fr = freeze i32 %call1
  %cmp3 = icmp ugt i32 %call1.fr, 31
  br i1 %cmp3, label %switch.early.test, label %if.end8

switch.early.test:                                ; preds = %if.end
  switch i32 %type, label %cleanup [
    i32 4, label %if.end8
    i32 1, label %if.end8
  ]

if.end8:                                          ; preds = %switch.early.test, %switch.early.test, %if.end
  %add.ptr = getelementptr i8, i8* %call, i64 3072
  %call9 = call i32 @gic_configure_irq(i32 noundef %call1.fr, i32 noundef %type, i8* noundef %add.ptr, void ()* noundef null) #17
  %tobool = icmp ne i32 %call9, 0
  %cmp11 = icmp ult i32 %call1.fr, 32
  %or.cond18 = and i1 %cmp11, %tobool
  br i1 %or.cond18, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end8
  %sub = add nsw i32 %call1.fr, -16
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 noundef %sub) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %switch.early.test, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -22, %switch.early.test ], [ 0, %do.end ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_get_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i8* nocapture noundef writeonly %val) #2 {
entry:
  switch i32 %which, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @gic_peek_irq(%struct.irq_data* noundef %d, i32 noundef 512) #18
  %tobool = icmp ne i32 %call, 0
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i32 @gic_peek_irq(%struct.irq_data* noundef %d, i32 noundef 768) #18
  %tobool3 = icmp ne i32 %call2, 0
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  %call6 = call fastcc i32 @gic_peek_irq(%struct.irq_data* noundef %d, i32 noundef 256) #18
  %tobool7.not = icmp eq i32 %call6, 0
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb5, %sw.bb1, %sw.bb
  %tobool.sink = phi i1 [ %tobool, %sw.bb ], [ %tobool3, %sw.bb1 ], [ %tobool7.not, %sw.bb5 ]
  %frombool = zext i1 %tobool.sink to i8
  store i8 %frombool, i8* %val, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_set_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i1 noundef %val) #2 {
entry:
  switch i32 %which, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %cond = select i1 %val, i32 512, i32 640
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %cond3 = select i1 %val, i32 768, i32 896
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %cond6 = select i1 %val, i32 384, i32 256
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %reg.0 = phi i32 [ %cond6, %sw.bb4 ], [ %cond3, %sw.bb1 ], [ %cond, %sw.bb ]
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef %reg.0) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_poke_irq(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %offset) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #18
  %rem = and i32 %call, 31
  %shl = shl nuw i32 1, %rem
  %call1 = call fastcc i8* @gic_dist_base(%struct.irq_data* noundef %d) #18
  %idx.ext = zext i32 %offset to i64
  %add.ptr = getelementptr i8, i8* %call1, i64 %idx.ext
  %0 = lshr i32 %call, 3
  %mul = and i32 %0, 536870908
  %idx.ext3 = zext i32 %mul to i64
  %add.ptr4 = getelementptr i8, i8* %add.ptr, i64 %idx.ext3
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %shl, i8* %add.ptr4) #16, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @gic_irq(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @gic_dist_base(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #18
  %dist_base = getelementptr inbounds i8, i8* %call, i64 288
  %common_base = bitcast i8* %dist_base to i8**
  %0 = load i8*, i8** %common_base, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 7
  %0 = load i8*, i8** %chip_data, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__percpu_read_32(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = load volatile i32, i32* %0, align 4
  %conv = zext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @gic_cpu_base(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #18
  %cpu_base = getelementptr inbounds i8, i8* %call, i64 296
  %common_base = bitcast i8* %cpu_base to i8**
  %0 = load i8*, i8** %common_base, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, i8* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_peek_irq(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %offset) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #18
  %rem = and i32 %call, 31
  %call1 = call fastcc i8* @gic_dist_base(%struct.irq_data* noundef %d) #18
  %idx.ext = zext i32 %offset to i64
  %add.ptr = getelementptr i8, i8* %call1, i64 %idx.ext
  %0 = lshr i32 %call, 3
  %mul = and i32 %0, 536870908
  %idx.ext3 = zext i32 %mul to i64
  %add.ptr4 = getelementptr i8, i8* %add.ptr, i64 %idx.ext3
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr4) #16, !srcloc !10
  %2 = lshr i32 %1, %rem
  %3 = and i32 %2, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 1048576
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @cascading_gic_irq(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_handler_data(%struct.irq_data* noundef %d) #18
  %cmp = icmp ne i8* %call, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #13 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 1048576
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clr_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #13 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -1048577
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @irq_data_get_irq_handler_data(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %handler_data = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 1
  %1 = load i8*, i8** %handler_data, align 8
  ret i8* %1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #2 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #18
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rmw_writeb(i8 noundef %bval, i8* noundef %addr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %addr to i64
  %and = and i64 %0, 3
  %mul = shl nuw nsw i64 %and, 3
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #18
  %idx.neg = sub nsw i64 0, %and
  %add.ptr = getelementptr i8, i8* %addr, i64 %idx.neg
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %shl.neg = shl nsw i64 -1, %mul
  %sub4 = xor i64 %mul, 56
  %shr = lshr i64 -1, %sub4
  %and5 = and i64 %shr, %shl.neg
  %2 = trunc i64 %and5 to i32
  %3 = xor i32 %2, -1
  %conv9 = and i32 %1, %3
  %conv10 = zext i8 %bval to i32
  %sh_prom = trunc i64 %mul to i32
  %shl11 = shl nuw i32 %conv10, %sh_prom
  %or = or i32 %conv9, %shl11
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %or, i8* %add.ptr) #16, !srcloc !14
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_writeb(i8 noundef %val, i8* noundef %addr) unnamed_addr #2 {
entry:
  call void asm sideeffect "strb ${0:w}, [$1]", "rZ,r"(i8 %val, i8* %addr) #16, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_data_update_effective_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %m) unnamed_addr #2 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 4, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %m) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #15 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %arraydecay = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #2 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #17
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #2 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !46
  call fastcc void @do_raw_spin_lock_flags() #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock() #18
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #2 {
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
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #2 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @rmw_writeb.rmw_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !48
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #2 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !49
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #2 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #18
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !16

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #2 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @rmw_writeb.rmw_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @rmw_writeb.rmw_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #16, !srcloc !51
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #2 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @rmw_writeb.rmw_lock to i8*), i8 0) #16, !srcloc !52
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #2 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !53
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #2 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #2 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_iomap(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i32* noundef %out_value) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i32* noundef %out_value) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_of_quirks(%struct.device_node* noundef, %struct.gic_quirk* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i32* noundef %out_values) unnamed_addr #2 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #17
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @gic_enable_rmw_access(i8* nocapture noundef readnone %data) #2 {
entry:
  %call = call i32 @of_machine_is_compatible(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @static_key_enable() #18
  br label %return

return:                                           ; preds = %entry, %if.then
  %0 = xor i1 %tobool.not, true
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable() unnamed_addr #2 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !15
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !16

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @needs_rmw_access, i64 0, i32 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @needs_rmw_access, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @needs_rmw_access, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !8

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !55
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @needs_rmw_access, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i8* noundef %host_data) unnamed_addr #2 {
entry:
  %conv = zext i32 %size to i64
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i64 noundef %conv, i32 noundef 0, %struct.irq_domain_ops* noundef nonnull @gic_irq_domain_hierarchy_ops, i8* noundef %host_data) #17
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.module* noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #9 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @irq_domain_add_legacy(%struct.device_node* noundef, i32 noundef, i32 noundef, i64 noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_dist_init(%struct.gic_chip_data* nocapture noundef readonly %gic) unnamed_addr #2 {
entry:
  %gic_irqs1 = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 7
  %0 = load i32, i32* %gic_irqs1, align 8
  %common_base = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %gic, i64 0, i32 1, i32 0
  %1 = load i8*, i8** %common_base, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %1) #16, !srcloc !14
  %call = call fastcc i8 @gic_get_cpumask(%struct.gic_chip_data* noundef %gic) #18
  %conv = zext i8 %call to i32
  %or3 = mul nuw i32 %conv, 16843009
  %cmp24 = icmp ugt i32 %0, 32
  br i1 %cmp24, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr5 = getelementptr i8, i8* %1, i64 2048
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.025 = phi i32 [ 32, %for.body.lr.ph ], [ %add, %for.body ]
  %mul = and i32 %i.025, 1073741820
  %idx.ext = zext i32 %mul to i64
  %add.ptr6 = getelementptr i8, i8* %add.ptr5, i64 %idx.ext
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %or3, i8* %add.ptr6) #16, !srcloc !14
  %add = add i32 %i.025, 4
  %cmp = icmp ult i32 %add, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @gic_dist_config(i8* noundef %1, i32 noundef %0, void ()* noundef null) #17
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 1, i8* %1) #16, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef, i32 noundef, i64 noundef, i32 noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* nocapture noundef readonly %arg) #2 {
entry:
  %hwirq = alloca i64, align 8
  %type = alloca i32, align 4
  %0 = bitcast i64* %hwirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %hwirq, align 8, !annotation !29
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  %2 = bitcast i8* %arg to %struct.irq_fwspec*
  %call = call i32 @gic_irq_domain_translate(%struct.irq_domain* noundef %domain, %struct.irq_fwspec* noundef %2, i64* noundef nonnull %hwirq, i32* noundef nonnull %type) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cmp20.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp20.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i64, i64* %hwirq, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add i32 %i.021, %virq
  %conv = sext i32 %i.021 to i64
  %add1 = add i64 %3, %conv
  %call2 = call i32 @gic_irq_domain_map(%struct.irq_domain* noundef %domain, i32 noundef %add, i64 noundef %add1) #18
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(%struct.irq_domain* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_domain_translate(%struct.irq_domain* nocapture noundef readnone %d, %struct.irq_fwspec* nocapture noundef readonly %fwspec, i64* nocapture noundef writeonly %hwirq, i32* nocapture noundef writeonly %type) #2 {
entry:
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %0 = load i32, i32* %param_count, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ult i32 %1, 16
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %hwirq, align 8
  store i32 1, i32* %type, align 4
  br label %return

if.end:                                           ; preds = %entry
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %2) #18
  br i1 %call, label %if.then4, label %if.end40

if.then4:                                         ; preds = %if.end
  %cmp6 = icmp slt i32 %0, 3
  br i1 %cmp6, label %return, label %if.end9

if.end9:                                          ; preds = %if.then4
  %arrayidx11 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %3 = load i32, i32* %arrayidx11, align 4
  switch i32 %3, label %return [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb15
  ]

sw.bb15:                                          ; preds = %if.end9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end9, %sw.bb15
  %.sink108 = phi i32 [ 16, %sw.bb15 ], [ 32, %if.end9 ]
  %arrayidx17 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %4 = load i32, i32* %arrayidx17, align 4
  %add18 = add i32 %4, %.sink108
  %storemerge = zext i32 %add18 to i64
  store i64 %storemerge, i64* %hwirq, align 8
  %arrayidx21 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 2
  %5 = load i32, i32* %arrayidx21, align 4
  %and = and i32 %5, 15
  store i32 %and, i32* %type, align 4
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %if.then31, label %return, !prof !16

if.then31:                                        ; preds = %sw.epilog
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1080; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !56
  br label %return

if.end40:                                         ; preds = %if.end
  %call42 = call fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef %2) #18
  %cmp45.not = icmp eq i32 %0, 2
  %or.cond = select i1 %call42, i1 %cmp45.not, i1 false
  br i1 %or.cond, label %if.end48, label %return

if.end48:                                         ; preds = %if.end40
  %arrayidx50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %6 = load i32, i32* %arrayidx50, align 4
  %conv51 = zext i32 %6 to i64
  store i64 %conv51, i64* %hwirq, align 8
  %arrayidx53 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %7 = load i32, i32* %arrayidx53, align 4
  store i32 %7, i32* %type, align 4
  %cmp55 = icmp eq i32 %7, 0
  br i1 %cmp55, label %if.then69, label %return, !prof !16

if.then69:                                        ; preds = %if.end48
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic.c\22; .popsection; .long 14472b - 14470b; .short 1091; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !57
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end40, %if.end48, %if.then69, %sw.epilog, %if.then31, %if.end9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then4 ], [ -22, %if.end9 ], [ 0, %if.then31 ], [ 0, %sw.epilog ], [ 0, %if.then69 ], [ 0, %if.end48 ], [ -22, %if.end40 ], [ -22, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_domain_map(%struct.irq_domain* noundef %d, i32 noundef %irq, i64 noundef %hw) #2 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.gic_chip_data**
  %1 = load %struct.gic_chip_data*, %struct.gic_chip_data** %0, align 8
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #17
  %call1 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %call) #18
  %switch = icmp ult i64 %hw, 32
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %call2 = call i32 @irq_set_percpu_devid(i32 noundef %irq) #17
  %chip = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %1, i64 0, i32 0
  %2 = load i8*, i8** %host_data, align 8
  call void @irq_domain_set_info(%struct.irq_domain* noundef %d, i32 noundef %irq, i64 noundef %hw, %struct.irq_chip* noundef %chip, i8* noundef %2, void (%struct.irq_desc*)* noundef nonnull @handle_percpu_devid_irq, i8* noundef null, i8* noundef null) #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %chip4 = getelementptr inbounds %struct.gic_chip_data, %struct.gic_chip_data* %1, i64 0, i32 0
  %3 = load i8*, i8** %host_data, align 8
  call void @irq_domain_set_info(%struct.irq_domain* noundef %d, i32 noundef %irq, i64 noundef %hw, %struct.irq_chip* noundef %chip4, i8* noundef %3, void (%struct.irq_desc*)* noundef nonnull @handle_fasteoi_irq, i8* noundef null, i8* noundef null) #17
  call fastcc void @irq_set_probe(i32 noundef %irq) #18
  call fastcc void @irqd_set_single_target(%struct.irq_data* noundef %call1) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  call fastcc void @irqd_set_handle_enforce_irqctx(%struct.irq_data* noundef %call1) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef readnone %desc) unnamed_addr #15 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  ret %struct.irq_data* %irq_data
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(%struct.irq_domain* noundef, i32 noundef, i64 noundef, %struct.irq_chip* noundef, i8* noundef, void (%struct.irq_desc*)* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(%struct.irq_desc* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(%struct.irq_desc* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_probe(i32 noundef %irq) unnamed_addr #2 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 1024, i64 noundef 0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_single_target(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #13 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 16777216
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_handle_enforce_irqctx(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #13 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 268435456
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #18
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, @of_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef readonly %fwnode) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %0, @irqchip_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #15 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @gic_irq_domain_unmap(%struct.irq_domain* nocapture noundef %d, i32 noundef %irq) #15 {
entry:
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(i8* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(%struct.device_node* noundef, i32 noundef, %struct.resource* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_hyp_mode_available() unnamed_addr #5 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 0), align 4
  %cmp = icmp eq i32 %0, 3602
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 1), align 4
  %cmp1 = icmp eq i32 %1, 3602
  %2 = select i1 %cmp, i1 %cmp1, i1 false
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_size(%struct.resource* nocapture noundef readonly %res) unnamed_addr #5 {
entry:
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %0 = load i64, i64* %end, align 8
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %sub = add i64 %0, 1
  %add = sub i64 %sub, %1
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__ioremap(i64 noundef, i64 noundef, i64) local_unnamed_addr #1

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { cold nobuiltin "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nounwind readonly }
attributes #22 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{i64 2153703651}
!10 = !{i64 2152688741, i64 2152688788, i64 2152688794, i64 2152688831, i64 2152688849, i64 2152689769, i64 2152689817, i64 2152689865, i64 2152689928, i64 2152689977, i64 2152688927, i64 2152688952, i64 2152688978, i64 2152688984, i64 2152689021, i64 2152689027, i64 2152689077, i64 2152689123, i64 2152689156}
!11 = !{i64 2153702342}
!12 = !{i64 2153711572}
!13 = !{i64 2153711415, i64 2153711447}
!14 = !{i64 4821715}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148792480}
!18 = !{i64 2148794226}
!19 = !{i64 2153738769}
!20 = !{!"branch_weights", i32 2000, i32 2002}
!21 = !{i64 2153752285}
!22 = !{i64 2153754256}
!23 = !{i64 2153732043}
!24 = !{i64 2153734446}
!25 = !{i64 2153736113}
!26 = !{i64 2153744542}
!27 = !{i64 2153757984}
!28 = !{i64 2153759617}
!29 = !{!"auto-init"}
!30 = !{i64 2153696823}
!31 = !{i64 2153696881}
!32 = !{i64 2153700149}
!33 = !{i64 2153700921}
!34 = !{i64 2153717713}
!35 = !{i64 2149046991, i64 2149047038, i64 2149047044, i64 2149047081, i64 2149047099, i64 2149048026, i64 2149048074, i64 2149048122, i64 2149048185, i64 2149048234, i64 2149047177, i64 2149047202, i64 2149047228, i64 2149047234, i64 2149047271, i64 2149047277, i64 2149047327, i64 2149047373, i64 2149047406}
!36 = !{i64 2153710311}
!37 = !{i64 2153681005}
!38 = !{i64 2153707473}
!39 = !{i64 2153707316, i64 2153707348}
!40 = !{i64 2153692197}
!41 = !{i64 2153692969}
!42 = !{i64 2153715865}
!43 = !{i64 2153686768}
!44 = !{i64 2153687540}
!45 = !{i64 4821368}
!46 = !{i64 2149501455}
!47 = !{i64 2149527298}
!48 = !{i64 2149280626, i64 2149280673, i64 2149280679, i64 2149280716, i64 2149280734, i64 2149282045, i64 2149282093, i64 2149282141, i64 2149282204, i64 2149282253, i64 2149280812, i64 2149280837, i64 2149280863, i64 2149280869, i64 2149281711, i64 2149281751, i64 2149281769, i64 2149281801, i64 2149281829, i64 2149281883, i64 2149281903, i64 2149282000, i64 2149280892, i64 2149280906, i64 2149280912, i64 2149280962, i64 2149281008, i64 2149281041}
!49 = !{i64 2149282805, i64 2149282852, i64 2149282858, i64 2149282895, i64 2149282913, i64 2149283856, i64 2149283904, i64 2149283952, i64 2149284015, i64 2149284064, i64 2149282991, i64 2149283016, i64 2149283042, i64 2149283048, i64 2149283085, i64 2149283091, i64 2149283141, i64 2149283187, i64 2149283220}
!50 = !{i64 2149274923, i64 2149274970, i64 2149274976, i64 2149275013, i64 2149275031, i64 2149276372, i64 2149276420, i64 2149276468, i64 2149276531, i64 2149276580, i64 2149275109, i64 2149275134, i64 2149275160, i64 2149275166, i64 2149276038, i64 2149276078, i64 2149276096, i64 2149276128, i64 2149276156, i64 2149276210, i64 2149276230, i64 2149276327, i64 2149275189, i64 2149275203, i64 2149275209, i64 2149275259, i64 2149275305, i64 2149275338}
!51 = !{i64 2147871595, i64 2147871628, i64 2147871681, i64 2147871740, i64 2147871774, i64 2147871829, i64 2147871858, i64 2147871878}
!52 = !{i64 2149326819}
!53 = !{i64 2149290700, i64 2149290747, i64 2149290753, i64 2149290790, i64 2149290808, i64 2149292119, i64 2149292167, i64 2149292215, i64 2149292278, i64 2149292327, i64 2149290886, i64 2149290911, i64 2149290937, i64 2149290943, i64 2149291785, i64 2149291825, i64 2149291843, i64 2149291875, i64 2149291903, i64 2149291957, i64 2149291977, i64 2149292074, i64 2149290966, i64 2149290980, i64 2149290986, i64 2149291036, i64 2149291082, i64 2149291115}
!54 = !{i64 2148788349}
!55 = !{i64 2148790095}
!56 = !{i64 2153719404}
!57 = !{i64 2153721045}
