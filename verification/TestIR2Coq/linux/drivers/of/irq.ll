; ModuleID = 'drivers/of/irq.c'
source_filename = "drivers/of/irq.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.seq_file = type opaque
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type opaque
%struct.irq_affinity_notify = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
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
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.of_intc_desc = type { %struct.list_head, i32 (%struct.device_node*, %struct.device_node*)*, %struct.device_node*, %struct.device_node* }

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"interrupt-map-mask\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"of_irq_init: no init function for %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"\013OF: of_irq_init: children remain, but no parents\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"#msi-cells\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"msi-map-mask\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_of_parse_and_map(%struct.device_node* noundef %dev, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %oirq = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %oirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @of_irq_parse_one(%struct.device_node* noundef %dev, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %oirq) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @irq_create_of_mapping(%struct.of_phandle_args* noundef nonnull %oirq) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_irq_parse_one(%struct.device_node* noundef %device, i32 noundef %index, %struct.of_phandle_args* noundef %out_irq) local_unnamed_addr #0 {
entry:
  %intsize = alloca i32, align 4
  %0 = bitcast i32* %intsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %intsize, align 4, !annotation !7
  %call = call i8* @of_get_property(%struct.device_node* noundef %device, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* noundef null) #15
  %1 = bitcast i8* %call to i32*
  %call1 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %device, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %index, %struct.of_phandle_args* noundef %out_irq) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* noundef %device) #14
  %cmp = icmp eq %struct.device_node* %call3, null
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %call3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %intsize) #14
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end5
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_irq, i64 0, i32 0
  store %struct.device_node* %call3, %struct.device_node** %np, align 8
  %2 = load i32, i32* %intsize, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_irq, i64 0, i32 1
  store i32 %2, i32* %args_count, align 8
  %cmp1144.not = icmp eq i32 %2, 0
  br i1 %cmp1144.not, label %cleanup.sink.split, label %for.body

for.cond:                                         ; preds = %for.body
  %3 = load i32, i32* %intsize, align 4
  %cmp11 = icmp ult i32 %inc, %3
  br i1 %cmp11, label %for.body, label %cleanup.sink.split

for.body:                                         ; preds = %if.end9, %for.cond
  %4 = phi i32 [ %3, %for.cond ], [ %2, %if.end9 ]
  %i.045 = phi i32 [ %inc, %for.cond ], [ 0, %if.end9 ]
  %mul = mul i32 %4, %index
  %add = add i32 %mul, %i.045
  %idx.ext = sext i32 %i.045 to i64
  %add.ptr = getelementptr %struct.of_phandle_args, %struct.of_phandle_args* %out_irq, i64 0, i32 2, i64 %idx.ext
  %call12 = call i32 @of_property_read_u32_index(%struct.device_node* noundef %device, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 noundef %add, i32* noundef %add.ptr) #15
  %tobool13.not = icmp eq i32 %call12, 0
  %inc = add nuw i32 %i.045, 1
  br i1 %tobool13.not, label %for.cond, label %cleanup

cleanup.sink.split:                               ; preds = %for.cond, %if.end9, %entry
  %call17 = call i32 @of_irq_parse_raw(i32* noundef %1, %struct.of_phandle_args* noundef %out_irq) #14
  br label %cleanup

cleanup:                                          ; preds = %for.body, %cleanup.sink.split, %if.end5, %if.end
  %retval.0 = phi i32 [ -22, %if.end ], [ -22, %if.end5 ], [ %call17, %cleanup.sink.split ], [ %call12, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_of_mapping(%struct.of_phandle_args* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node* noundef %child) local_unnamed_addr #0 {
entry:
  %parent = alloca i32, align 4
  %0 = bitcast i32* %parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %parent, align 4, !annotation !7
  %tobool.not = icmp eq %struct.device_node* %child, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry, %land.rhs
  %child.addr.0 = phi %struct.device_node* [ %p.0, %land.rhs ], [ %child, %entry ]
  %call1 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %child.addr.0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %parent) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %do.body
  %call4 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef nonnull %child.addr.0) #15
  br label %if.end6

if.else:                                          ; preds = %do.body
  %1 = load i32, i32* %parent, align 4
  %call5 = call %struct.device_node* @of_find_node_by_phandle(i32 noundef %1) #15
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %p.0 = phi %struct.device_node* [ %call4, %if.then3 ], [ %call5, %if.else ]
  %tobool7.not = icmp eq %struct.device_node* %p.0, null
  br i1 %tobool7.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end6
  %call8 = call i8* @of_get_property(%struct.device_node* noundef nonnull %p.0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* noundef null) #15
  %cmp = icmp eq i8* %call8, null
  br i1 %cmp, label %do.body, label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end6, %entry
  %retval.0 = phi %struct.device_node* [ null, %entry ], [ %p.0, %land.rhs ], [ null, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_irq_parse_raw(i32* noundef readonly %addr, %struct.of_phandle_args* nocapture noundef %out_irq) local_unnamed_addr #0 {
entry:
  %initial_match_array = alloca [16 x i32], align 4
  %dummy_imask = alloca [17 x i32], align 4
  %intsize = alloca i32, align 4
  %newintsize = alloca i32, align 4
  %newaddrsize = alloca i32, align 4
  %imaplen = alloca i32, align 4
  %0 = bitcast [16 x i32]* %initial_match_array to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 0
  %1 = bitcast [17 x i32]* %dummy_imask to i8*
  call void @llvm.lifetime.start.p0i8(i64 68, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(68) %1, i8 -1, i64 68, i1 false)
  %2 = bitcast i32* %intsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  store i32 1, i32* %intsize, align 4
  %3 = bitcast i32* %newintsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  store i32 0, i32* %newintsize, align 4
  %4 = bitcast i32* %newaddrsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  store i32 0, i32* %newaddrsize, align 4
  %5 = bitcast i32* %imaplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13
  store i32 0, i32* %imaplen, align 4, !annotation !7
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_irq, i64 0, i32 0
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %ipar.0 = phi %struct.device_node* [ %6, %entry ], [ %call2, %if.end ]
  %call1 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %ipar.0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %intsize) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %call2 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* noundef %ipar.0) #14
  %tobool3.not = icmp eq %struct.device_node* %call2, null
  br i1 %tobool3.not, label %cleanup, label %do.body

do.end:                                           ; preds = %do.body
  %cmp = icmp eq %struct.device_node* %ipar.0, null
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %do.end
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_irq, i64 0, i32 1
  %7 = load i32, i32* %args_count, align 8
  %8 = load i32, i32* %intsize, align 4
  %cmp8.not = icmp eq i32 %7, %8
  br i1 %cmp8.not, label %do.body12, label %cleanup

do.body12:                                        ; preds = %if.end6, %do.body12
  %old.0 = phi %struct.device_node* [ %call14, %do.body12 ], [ %ipar.0, %if.end6 ]
  %call13 = call i8* @of_get_property(%struct.device_node* noundef nonnull %old.0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* noundef null) #15
  %call14 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef nonnull %old.0) #15
  %tobool16 = icmp ne %struct.device_node* %call14, null
  %cmp17 = icmp eq i8* %call13, null
  %9 = select i1 %tobool16, i1 %cmp17, i1 false
  br i1 %9, label %do.body12, label %do.end18

do.end18:                                         ; preds = %do.body12
  br i1 %cmp17, label %cond.end30.thread, label %cond.false28

cond.false28:                                     ; preds = %do.end18
  %10 = bitcast i8* %call13 to i32*
  %11 = load i32, i32* %10, align 4
  %call29 = call fastcc i32 @__fswab32(i32 noundef %11) #16
  %12 = load i32, i32* %intsize, align 4
  %add = add i32 %12, %call29
  %cmp33 = icmp ugt i32 %add, 16
  br i1 %cmp33, label %if.then41, label %for.cond.preheader, !prof !8

cond.end30.thread:                                ; preds = %do.end18
  %13 = load i32, i32* %intsize, align 4
  %14 = add i32 %13, -15
  %cmp33420 = icmp ult i32 %14, -17
  br i1 %cmp33420, label %if.then41, label %for.body.lr.ph, !prof !8

for.cond.preheader:                               ; preds = %cond.false28
  %cmp54377.not = icmp eq i32 %call29, 0
  br i1 %cmp54377.not, label %for.cond63.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %cond.end30.thread, %for.cond.preheader
  %cond31421425 = phi i32 [ %call29, %for.cond.preheader ], [ 2, %cond.end30.thread ]
  %15 = phi i32 [ %12, %for.cond.preheader ], [ %13, %cond.end30.thread ]
  %tobool56.not = icmp eq i32* %addr, null
  %16 = add i32 %cond31421425, 2147483647
  %17 = icmp ult i32 %16, -2147483647
  br i1 %17, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i32 %cond31421425, -2
  br label %vector.body

vector.body:                                      ; preds = %pred.load.continue444, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %pred.load.continue444 ]
  %induction442 = or i32 %index, 1
  %18 = sext i32 %index to i64
  %19 = sext i32 %induction442 to i64
  br i1 %tobool56.not, label %pred.load.continue, label %pred.load.if

pred.load.if:                                     ; preds = %vector.body
  %20 = getelementptr i32, i32* %addr, i64 %18
  %21 = load i32, i32* %20, align 4
  br label %pred.load.continue

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %22 = phi i32 [ poison, %vector.body ], [ %21, %pred.load.if ]
  br i1 %tobool56.not, label %pred.load.continue444, label %pred.load.if443

pred.load.if443:                                  ; preds = %pred.load.continue
  %23 = getelementptr i32, i32* %addr, i64 %19
  %24 = load i32, i32* %23, align 4
  br label %pred.load.continue444

pred.load.continue444:                            ; preds = %pred.load.if443, %pred.load.continue
  %predphi445 = phi i32 [ %24, %pred.load.if443 ], [ 0, %pred.load.continue ]
  %predphi = phi i32 [ %22, %pred.load.if443 ], [ 0, %pred.load.continue ]
  %25 = getelementptr [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 %18
  %26 = getelementptr [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 %19
  store i32 %predphi, i32* %25, align 4
  store i32 %predphi445, i32* %26, align 4
  %index.next = add nuw i32 %index, 2
  %27 = icmp eq i32 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %pred.load.continue444
  %cmp.n = icmp eq i32 %cond31421425, %n.vec
  br i1 %cmp.n, label %for.cond63.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %i.0378.ph = phi i32 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

if.then41:                                        ; preds = %cond.end30.thread, %cond.false28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/irq.c\22; .popsection; .long 14472b - 14470b; .short 146; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !11
  br label %cleanup

for.cond63.preheader:                             ; preds = %cond.end59, %middle.block, %for.cond.preheader
  %cond31421426 = phi i32 [ 0, %for.cond.preheader ], [ %cond31421425, %middle.block ], [ %cond31421425, %cond.end59 ]
  %28 = phi i32 [ %12, %for.cond.preheader ], [ %15, %middle.block ], [ %15, %cond.end59 ]
  %cmp64380.not = icmp eq i32 %28, 0
  br i1 %cmp64380.not, label %while.body.lr.ph, label %cond.end98

for.body:                                         ; preds = %for.body.preheader, %cond.end59
  %i.0378 = phi i32 [ %inc, %cond.end59 ], [ %i.0378.ph, %for.body.preheader ]
  %.pre417 = sext i32 %i.0378 to i64
  br i1 %tobool56.not, label %cond.end59, label %cond.true57

cond.true57:                                      ; preds = %for.body
  %arrayidx = getelementptr i32, i32* %addr, i64 %.pre417
  %29 = load i32, i32* %arrayidx, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %for.body, %cond.true57
  %cond60 = phi i32 [ %29, %cond.true57 ], [ 0, %for.body ]
  %arrayidx62 = getelementptr [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 %.pre417
  store i32 %cond60, i32* %arrayidx62, align 4
  %inc = add nuw i32 %i.0378, 1
  %exitcond.not = icmp eq i32 %inc, %cond31421425
  br i1 %exitcond.not, label %for.cond63.preheader, label %for.body, !llvm.loop !12

while.body.lr.ph:                                 ; preds = %cond.end98, %for.cond63.preheader
  %tobool113 = icmp ne i32* %addr, null
  %arraydecay129 = getelementptr inbounds [17 x i32], [17 x i32]* %dummy_imask, i64 0, i64 0
  br label %while.body

cond.end98:                                       ; preds = %for.cond63.preheader, %cond.end98
  %i.1381 = phi i32 [ %inc104, %cond.end98 ], [ 0, %for.cond63.preheader ]
  %idxprom67 = sext i32 %i.1381 to i64
  %arrayidx68 = getelementptr %struct.of_phandle_args, %struct.of_phandle_args* %out_irq, i64 0, i32 2, i64 %idxprom67
  %30 = load i32, i32* %arrayidx68, align 4
  %call97 = call fastcc i32 @__fswab32(i32 noundef %30) #16
  %add100 = add i32 %i.1381, %cond31421426
  %idxprom101 = zext i32 %add100 to i64
  %arrayidx102 = getelementptr [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 %idxprom101
  store i32 %call97, i32* %arrayidx102, align 4
  %inc104 = add nuw i32 %i.1381, 1
  %exitcond413.not = icmp eq i32 %inc104, %28
  br i1 %exitcond413.not, label %while.body.lr.ph, label %cond.end98

while.body:                                       ; preds = %while.body.lr.ph, %skiplevel
  %ipar.2400 = phi %struct.device_node* [ %ipar.0, %while.body.lr.ph ], [ %newpar.2, %skiplevel ]
  %match_array.0399 = phi i32* [ %arraydecay, %while.body.lr.ph ], [ %match_array.1, %skiplevel ]
  %addrsize.0398 = phi i32 [ %cond31421426, %while.body.lr.ph ], [ %addrsize.1, %skiplevel ]
  %call108 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef nonnull %ipar.2400, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #14
  br i1 %call108, label %cleanup, label %if.end111

if.end111:                                        ; preds = %while.body
  %tobool112 = icmp eq i32 %addrsize.0398, 0
  %or.cond = or i1 %tobool113, %tobool112
  br i1 %or.cond, label %if.end116, label %cleanup

if.end116:                                        ; preds = %if.end111
  %call117 = call i8* @of_get_property(%struct.device_node* noundef nonnull %ipar.2400, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %imaplen) #15
  %cmp118 = icmp eq i8* %call117, null
  br i1 %cmp118, label %if.then120, label %if.end123

if.then120:                                       ; preds = %if.end116
  %call122 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* noundef nonnull %ipar.2400) #14
  br label %skiplevel

if.end123:                                        ; preds = %if.end116
  %31 = load i32, i32* %imaplen, align 4
  %conv125 = ashr i32 %31, 2
  store i32 %conv125, i32* %imaplen, align 4
  %call126 = call i8* @of_get_property(%struct.device_node* noundef nonnull %ipar.2400, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* noundef null) #15
  %32 = bitcast i8* %call126 to i32*
  %tobool127.not = icmp eq i8* %call126, null
  %spec.select = select i1 %tobool127.not, i32* %arraydecay129, i32* %32
  %33 = load i32, i32* %imaplen, align 4
  %34 = load i32, i32* %intsize, align 4
  %add132387 = add i32 %34, %addrsize.0398
  %add133388 = add i32 %add132387, 1
  %cmp134389 = icmp ugt i32 %33, %add133388
  br i1 %cmp134389, label %for.cond142.preheader.preheader, label %cleanup

for.cond142.preheader.preheader:                  ; preds = %if.end123
  %35 = bitcast i8* %call117 to i32*
  br label %for.cond142.preheader

for.cond142.preheader:                            ; preds = %for.cond142.preheader.preheader, %if.end213
  %36 = phi i32 [ %sub, %if.end213 ], [ %33, %for.cond142.preheader.preheader ]
  %add132391 = phi i32 [ %add132, %if.end213 ], [ %add132387, %for.cond142.preheader.preheader ]
  %imap.0390 = phi i32* [ %add.ptr, %if.end213 ], [ %35, %for.cond142.preheader.preheader ]
  %cmp144382.not = icmp eq i32 %add132391, 0
  br i1 %cmp144382.not, label %__be32_to_cpup.exit, label %for.body146.preheader

for.body146.preheader:                            ; preds = %for.cond142.preheader
  %37 = add i32 %add132391, -1
  %38 = zext i32 %37 to i64
  br label %for.body146

for.body146:                                      ; preds = %for.body146.preheader, %for.body146
  %39 = phi i32 [ %dec, %for.body146 ], [ %36, %for.body146.preheader ]
  %imap.1385 = phi i32* [ %incdec.ptr, %for.body146 ], [ %imap.0390, %for.body146.preheader ]
  %match.1384 = phi i32 [ %and155, %for.body146 ], [ 1, %for.body146.preheader ]
  %i.2383 = phi i32 [ %inc157, %for.body146 ], [ 0, %for.body146.preheader ]
  %idxprom147 = sext i32 %i.2383 to i64
  %arrayidx148 = getelementptr i32, i32* %match_array.0399, i64 %idxprom147
  %40 = load i32, i32* %arrayidx148, align 4
  %incdec.ptr = getelementptr i32, i32* %imap.1385, i64 1
  %41 = load i32, i32* %imap.1385, align 4
  %xor = xor i32 %41, %40
  %arrayidx150 = getelementptr i32, i32* %spec.select, i64 %idxprom147
  %42 = load i32, i32* %arrayidx150, align 4
  %and151 = and i32 %xor, %42
  %tobool152.not = icmp eq i32 %and151, 0
  %lnot.ext154 = zext i1 %tobool152.not to i32
  %and155 = and i32 %match.1384, %lnot.ext154
  %inc157 = add nuw i32 %i.2383, 1
  %dec = add i32 %39, -1
  store i32 %dec, i32* %imaplen, align 4
  %exitcond415.not = icmp eq i32 %inc157, %add132391
  br i1 %exitcond415.not, label %for.end158.loopexit, label %for.body146

for.end158.loopexit:                              ; preds = %for.body146
  %scevgep = getelementptr i32, i32* %imap.0390, i64 1
  %scevgep414 = getelementptr i32, i32* %scevgep, i64 %38
  br label %__be32_to_cpup.exit

__be32_to_cpup.exit:                              ; preds = %for.end158.loopexit, %for.cond142.preheader
  %match.1.lcssa = phi i32 [ 1, %for.cond142.preheader ], [ %and155, %for.end158.loopexit ]
  %imap.1.lcssa = phi i32* [ %imap.0390, %for.cond142.preheader ], [ %scevgep414, %for.end158.loopexit ]
  %43 = load i32, i32* %imap.1.lcssa, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %43) #16
  %call161 = call %struct.device_node* @of_find_node_by_phandle(i32 noundef %call.i.i) #15
  %incdec.ptr162 = getelementptr i32, i32* %imap.1.lcssa, i64 1
  %44 = load i32, i32* %imaplen, align 4
  %dec163 = add i32 %44, -1
  store i32 %dec163, i32* %imaplen, align 4
  %cmp164 = icmp eq %struct.device_node* %call161, null
  br i1 %cmp164, label %cleanup, label %if.end168

if.end168:                                        ; preds = %__be32_to_cpup.exit
  %call169 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %call161) #15
  %call172 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %call161, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %newintsize) #14
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end176, label %cleanup

if.end176:                                        ; preds = %if.end168
  %call177 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %call161, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %newaddrsize) #14
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end176.if.end180_crit_edge, label %if.then179

if.end176.if.end180_crit_edge:                    ; preds = %if.end176
  %.pre = load i32, i32* %newaddrsize, align 4
  br label %if.end180

if.then179:                                       ; preds = %if.end176
  store i32 0, i32* %newaddrsize, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.end176.if.end180_crit_edge, %if.then179
  %45 = phi i32 [ %.pre, %if.end176.if.end180_crit_edge ], [ 0, %if.then179 ]
  %46 = load i32, i32* %newintsize, align 4
  %add183 = add i32 %46, %45
  %cmp184 = icmp ugt i32 %add183, 16
  br i1 %cmp184, label %if.then198, label %lor.lhs.false, !prof !8

if.then198:                                       ; preds = %if.end180
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/irq.c\22; .popsection; .long 14472b - 14470b; .short 234; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end180
  %47 = load i32, i32* %imaplen, align 4
  %cmp210 = icmp ult i32 %47, %add183
  br i1 %cmp210, label %cleanup, label %if.end213

if.end213:                                        ; preds = %lor.lhs.false
  %idx.ext = zext i32 %add183 to i64
  %add.ptr = getelementptr i32, i32* %incdec.ptr162, i64 %idx.ext
  %sub = sub i32 %47, %add183
  store i32 %sub, i32* %imaplen, align 4
  %48 = load i32, i32* %intsize, align 4
  %add132 = add i32 %48, %addrsize.0398
  %add133 = add i32 %add132, 1
  %cmp134 = icmp ugt i32 %sub, %add133
  %tobool137.not405 = icmp eq i32 %match.1.lcssa, 0
  %not.call169 = xor i1 %call169, true
  %tobool137.not = select i1 %not.call169, i1 true, i1 %tobool137.not405
  %49 = select i1 %cmp134, i1 %tobool137.not, i1 false
  br i1 %49, label %for.cond142.preheader, label %while.end

while.end:                                        ; preds = %if.end213
  br i1 %tobool137.not, label %cleanup, label %if.end219

if.end219:                                        ; preds = %while.end
  %50 = load i32, i32* %newaddrsize, align 4
  %idx.ext220 = zext i32 %50 to i64
  %idx.neg = sub nsw i64 0, %idx.ext220
  %add.ptr221 = getelementptr i32, i32* %add.ptr, i64 %idx.neg
  %51 = load i32, i32* %newintsize, align 4
  %idx.ext222 = zext i32 %51 to i64
  %idx.neg223 = sub nsw i64 0, %idx.ext222
  %add.ptr224 = getelementptr i32, i32* %add.ptr221, i64 %idx.neg223
  %cmp226395.not = icmp eq i32 %51, 0
  br i1 %cmp226395.not, label %for.end240, label %for.body228.lr.ph

for.body228.lr.ph:                                ; preds = %if.end219
  %add.ptr231 = getelementptr i32, i32* %add.ptr, i64 %idx.neg223
  br label %for.body228

for.body228:                                      ; preds = %for.body228.lr.ph, %for.body228
  %i.3396 = phi i32 [ 0, %for.body228.lr.ph ], [ %inc239, %for.body228 ]
  %idx.ext232 = sext i32 %i.3396 to i64
  %add.ptr233 = getelementptr i32, i32* %add.ptr231, i64 %idx.ext232
  %52 = load i32, i32* %add.ptr233, align 4
  %call.i.i361 = call fastcc i32 @__fswab32(i32 noundef %52) #16
  %arrayidx237 = getelementptr %struct.of_phandle_args, %struct.of_phandle_args* %out_irq, i64 0, i32 2, i64 %idx.ext232
  store i32 %call.i.i361, i32* %arrayidx237, align 4
  %inc239 = add nuw i32 %i.3396, 1
  %exitcond416.not = icmp eq i32 %inc239, %51
  br i1 %exitcond416.not, label %for.end240, label %for.body228

for.end240:                                       ; preds = %for.body228, %if.end219
  store i32 %51, i32* %intsize, align 4
  store i32 %51, i32* %args_count, align 8
  br label %skiplevel

skiplevel:                                        ; preds = %for.end240, %if.then120
  %addrsize.1 = phi i32 [ %addrsize.0398, %if.then120 ], [ %50, %for.end240 ]
  %match_array.1 = phi i32* [ %match_array.0399, %if.then120 ], [ %add.ptr224, %for.end240 ]
  %newpar.2 = phi %struct.device_node* [ %call122, %if.then120 ], [ %call161, %for.end240 ]
  store %struct.device_node* %newpar.2, %struct.device_node** %np, align 8
  %cmp106.not = icmp eq %struct.device_node* %newpar.2, null
  br i1 %cmp106.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end, %if.end123, %while.body, %skiplevel, %if.end111, %while.end, %__be32_to_cpup.exit, %if.end168, %lor.lhs.false, %if.end6, %do.end, %if.then41, %if.then198
  %retval.0 = phi i32 [ -22, %if.end6 ], [ -22, %do.end ], [ -14, %if.then41 ], [ -14, %if.then198 ], [ -14, %lor.lhs.false ], [ -22, %if.end168 ], [ -22, %__be32_to_cpup.exit ], [ -22, %if.end123 ], [ 0, %while.body ], [ -2, %skiplevel ], [ -22, %if.end111 ], [ -22, %while.end ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 68, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #4 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np, i8* noundef %propname) unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #15
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.of_phandle_args* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(%struct.device_node* noundef, i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_irq_to_resource(%struct.device_node* noundef %dev, i32 noundef %index, %struct.resource* noundef %r) local_unnamed_addr #0 {
entry:
  %name = alloca i8*, align 8
  %call = call i32 @of_irq_get(%struct.device_node* noundef %dev, i32 noundef %index) #14
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool = icmp ne %struct.resource* %r, null
  %tobool1 = icmp ne i32 %call, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %name, align 8
  %1 = bitcast %struct.resource* %r to i8*
  %call3 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 64) #15
  call fastcc void @of_property_read_string_index(%struct.device_node* noundef %dev, i32 noundef %index, i8** noundef nonnull %name) #14
  %conv26 = zext i32 %call to i64
  %end = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 1
  store i64 %conv26, i64* %end, align 8
  %start = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 0
  store i64 %conv26, i64* %start, align 8
  %call5 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %call) #15
  %call6 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef %call5) #14
  %or = or i32 %call6, 1024
  %conv7 = zext i32 %or to i64
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 3
  store i64 %conv7, i64* %flags, align 8
  %2 = load i8*, i8** %name, align 8
  %tobool8.not = icmp eq i8* %2, null
  br i1 %tobool8.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then2
  %call9 = call fastcc i8* @of_node_full_name(%struct.device_node* noundef %dev) #14
  br label %cond.end

cond.end:                                         ; preds = %if.then2, %cond.false
  %cond = phi i8* [ %call9, %cond.false ], [ %2, %if.then2 ]
  %name10 = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 2
  store i8* %cond, i8** %name10, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_irq_get(%struct.device_node* noundef %dev, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %oirq = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %oirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @of_irq_parse_one(%struct.device_node* noundef %dev, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %oirq) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %oirq, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8
  %call1 = call fastcc %struct.irq_domain* @irq_find_host(%struct.device_node* noundef %1) #14
  %tobool2.not = icmp eq %struct.irq_domain* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @irq_create_of_mapping(%struct.of_phandle_args* noundef nonnull %oirq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry ], [ -517, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_property_read_string_index(%struct.device_node* noundef %np, i32 noundef %index, i8** noundef %output) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_string_helper(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** noundef %output, i64 noundef 1, i32 noundef %index) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irqd_get_trigger_type(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 15
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @of_node_full_name(%struct.device_node* noundef readonly %np) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_find_host(%struct.device_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_domain* @irq_find_matching_host(%struct.device_node* noundef %node, i32 noundef 1) #14
  %tobool.not = icmp eq %struct.irq_domain* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.irq_domain* @irq_find_matching_host(%struct.device_node* noundef %node, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %d.0 = phi %struct.irq_domain* [ %call, %entry ], [ %call1, %if.then ]
  ret %struct.irq_domain* %d.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_irq_get_byname(%struct.device_node* noundef %dev, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call = call i32 @of_property_match_string(%struct.device_node* noundef %dev, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %name) #15
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @of_irq_get(%struct.device_node* noundef %dev, i32 noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(%struct.device_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_irq_count(%struct.device_node* noundef %dev) local_unnamed_addr #0 {
entry:
  %irq = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %irq to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %nr.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %call = call i32 @of_irq_parse_one(%struct.device_node* noundef %dev, i32 noundef %nr.0, %struct.of_phandle_args* noundef nonnull %irq) #14
  %cmp = icmp eq i32 %call, 0
  %inc = add i32 %nr.0, 1
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %nr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_irq_to_resource_table(%struct.device_node* noundef %dev, %struct.resource* noundef %res, i32 noundef %nr_irqs) local_unnamed_addr #0 {
entry:
  %cmp7 = icmp sgt i32 %nr_irqs, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %i.09 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %res.addr.08 = phi %struct.resource* [ %incdec.ptr, %for.inc ], [ %res, %entry ]
  %call = call i32 @of_irq_to_resource(%struct.device_node* noundef %dev, i32 noundef %i.09, %struct.resource* noundef %res.addr.08) #14
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.09, 1
  %incdec.ptr = getelementptr %struct.resource, %struct.resource* %res.addr.08, i64 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.09, %for.body ], [ %nr_irqs, %for.inc ]
  ret i32 %i.0.lcssa
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @of_irq_init(%struct.of_device_id* noundef %matches) local_unnamed_addr #6 section ".init.text" {
entry:
  %match = alloca %struct.of_device_id*, align 8
  %intc_desc_list = alloca %struct.list_head, align 8
  %intc_parent_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.of_device_id** %match to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.of_device_id* null, %struct.of_device_id** %match, align 8, !annotation !7
  %1 = bitcast %struct.list_head* %intc_desc_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %2 = bitcast %struct.list_head* %intc_parent_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !7
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %intc_desc_list) #14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %intc_parent_list) #14
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef null, %struct.of_device_id* noundef %matches, %struct.of_device_id** noundef nonnull %match) #15
  %tobool.not252 = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not252, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.inc, %entry
  %call43262 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %intc_desc_list) #14
  %tobool44.not263 = icmp eq i32 %call43262, 0
  br i1 %tobool44.not263, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %3 = bitcast %struct.list_head* %intc_desc_list to %struct.of_intc_desc**
  %next97 = getelementptr inbounds %struct.list_head, %struct.list_head* %intc_parent_list, i64 0, i32 0
  br label %while.body

for.body:                                         ; preds = %entry, %for.inc
  %np.0253 = phi %struct.device_node* [ %call42, %for.inc ], [ %call, %entry ]
  %call1 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef nonnull %np.0253, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #14
  br i1 %call1, label %lor.lhs.false, label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %call2 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %np.0253) #15
  br i1 %call2, label %if.end, label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8
  %data = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %4, i64 0, i32 3
  %5 = load i8*, i8** %data, align 8
  %tobool3.not = icmp eq i8* %5, null
  br i1 %tobool3.not, label %do.end, label %if.end29, !prof !8

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %4, i64 0, i32 2, i64 0
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef %arraydecay) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/irq.c\22; .popsection; .long 14472b - 14470b; .short 495; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !14
  br label %for.inc

if.end29:                                         ; preds = %if.end
  %call30 = call fastcc i8* @kzalloc() #14
  %tobool31.not = icmp eq i8* %call30, null
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end29
  %6 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8
  %data34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %6, i64 0, i32 3
  %7 = bitcast i8** %data34 to i32 (%struct.device_node*, %struct.device_node*)**
  %8 = load i32 (%struct.device_node*, %struct.device_node*)*, i32 (%struct.device_node*, %struct.device_node*)** %7, align 8
  %irq_init_cb = getelementptr inbounds i8, i8* %call30, i64 16
  %9 = bitcast i8* %irq_init_cb to i32 (%struct.device_node*, %struct.device_node*)**
  store i32 (%struct.device_node*, %struct.device_node*)* %8, i32 (%struct.device_node*, %struct.device_node*)** %9, align 8
  %dev = getelementptr inbounds i8, i8* %call30, i64 24
  %10 = bitcast i8* %dev to %struct.device_node**
  store %struct.device_node* %np.0253, %struct.device_node** %10, align 8
  %call36 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* noundef nonnull %np.0253) #14
  %interrupt_parent = getelementptr inbounds i8, i8* %call30, i64 32
  %11 = bitcast i8* %interrupt_parent to %struct.device_node**
  %cmp = icmp eq %struct.device_node* %call36, %np.0253
  %spec.select = select i1 %cmp, %struct.device_node* null, %struct.device_node* %call36
  store %struct.device_node* %spec.select, %struct.device_node** %11, align 8
  %list = bitcast i8* %call30 to %struct.list_head*
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %list, %struct.list_head* noundef nonnull %intc_desc_list) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body, %lor.lhs.false, %if.end33
  %call42 = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef nonnull %np.0253, %struct.of_device_id* noundef %matches, %struct.of_device_id** noundef nonnull %match) #15
  %tobool.not = icmp eq %struct.device_node* %call42, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end114
  %parent.0264 = phi %struct.device_node* [ null, %while.body.lr.ph ], [ %22, %if.end114 ]
  %12 = load %struct.of_intc_desc*, %struct.of_intc_desc** %3, align 8
  %list60257 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %12, i64 0, i32 0
  %cmp61.not258 = icmp eq %struct.list_head* %list60257, %intc_desc_list
  br i1 %cmp61.not258, label %for.end92, label %for.body65

for.body65:                                       ; preds = %while.body, %cleanup
  %list60261 = phi %struct.list_head* [ %list60, %cleanup ], [ %list60257, %while.body ]
  %desc.0259 = phi %struct.of_intc_desc* [ %temp_desc.0260, %cleanup ], [ %12, %while.body ]
  %temp_desc.0260.in = bitcast %struct.of_intc_desc* %desc.0259 to %struct.of_intc_desc**
  %temp_desc.0260 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc.0260.in, align 8
  %interrupt_parent66 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %desc.0259, i64 0, i32 3
  %13 = load %struct.device_node*, %struct.device_node** %interrupt_parent66, align 8
  %cmp67.not = icmp eq %struct.device_node* %13, %parent.0264
  br i1 %cmp67.not, label %if.end70, label %cleanup

if.end70:                                         ; preds = %for.body65
  call fastcc void @list_del(%struct.list_head* noundef %list60261) #14
  %dev72 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %desc.0259, i64 0, i32 2
  %14 = load %struct.device_node*, %struct.device_node** %dev72, align 8
  call fastcc void @of_node_set_flag(%struct.device_node* noundef %14) #14
  %irq_init_cb74 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %desc.0259, i64 0, i32 1
  %15 = load i32 (%struct.device_node*, %struct.device_node*)*, i32 (%struct.device_node*, %struct.device_node*)** %irq_init_cb74, align 8
  %16 = load %struct.device_node*, %struct.device_node** %dev72, align 8
  %17 = load %struct.device_node*, %struct.device_node** %interrupt_parent66, align 8
  %call77 = call i32 %15(%struct.device_node* noundef %16, %struct.device_node* noundef %17) #15
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.end70
  %18 = load %struct.device_node*, %struct.device_node** %dev72, align 8
  call fastcc void @of_node_clear_flag(%struct.device_node* noundef %18) #14
  %19 = bitcast %struct.of_intc_desc* %desc.0259 to i8*
  call void @kfree(i8* noundef %19) #15
  br label %cleanup

if.end81:                                         ; preds = %if.end70
  call fastcc void @list_add_tail(%struct.list_head* noundef %list60261, %struct.list_head* noundef nonnull %intc_parent_list) #14
  br label %cleanup

cleanup:                                          ; preds = %for.body65, %if.end81, %if.then79
  %list60 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %temp_desc.0260, i64 0, i32 0
  %cmp61.not = icmp eq %struct.list_head* %list60, %intc_desc_list
  br i1 %cmp61.not, label %for.end92, label %for.body65

for.end92:                                        ; preds = %cleanup, %while.body
  %20 = load volatile %struct.list_head*, %struct.list_head** %next97, align 8
  %cmp99.not = icmp eq %struct.list_head* %20, %intc_parent_list
  %tobool107.not250 = icmp eq %struct.list_head* %20, null
  %tobool107.not = or i1 %cmp99.not, %tobool107.not250
  br i1 %tobool107.not, label %do.end111, label %if.end114

do.end111:                                        ; preds = %for.end92
  %call113 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0)) #17
  br label %while.end

if.end114:                                        ; preds = %for.end92
  call fastcc void @list_del(%struct.list_head* noundef nonnull %20) #14
  %dev116 = getelementptr inbounds %struct.list_head, %struct.list_head* %20, i64 1, i32 1
  %21 = bitcast %struct.list_head** %dev116 to %struct.device_node**
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = bitcast %struct.list_head* %20 to i8*
  call void @kfree(i8* noundef nonnull %23) #15
  %call43 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %intc_desc_list) #14
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end114, %while.cond.preheader, %do.end111
  %24 = bitcast %struct.list_head* %intc_parent_list to %struct.of_intc_desc**
  %25 = load %struct.of_intc_desc*, %struct.of_intc_desc** %24, align 8
  %list133265 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %25, i64 0, i32 0
  %cmp134.not266 = icmp eq %struct.list_head* %list133265, %intc_parent_list
  br i1 %cmp134.not266, label %err, label %for.body138

for.body138:                                      ; preds = %while.end, %for.body138
  %list133268 = phi %struct.list_head* [ %list133, %for.body138 ], [ %list133265, %while.end ]
  %desc.1267 = phi %struct.of_intc_desc* [ %temp_desc.1, %for.body138 ], [ %25, %while.end ]
  %temp_desc.1.in = bitcast %struct.of_intc_desc* %desc.1267 to %struct.of_intc_desc**
  %temp_desc.1 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc.1.in, align 8
  call fastcc void @list_del(%struct.list_head* noundef %list133268) #14
  %26 = bitcast %struct.of_intc_desc* %desc.1267 to i8*
  call void @kfree(i8* noundef %26) #15
  %list133 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %temp_desc.1, i64 0, i32 0
  %cmp134.not = icmp eq %struct.list_head* %list133, %intc_parent_list
  br i1 %cmp134.not, label %err, label %for.body138

err:                                              ; preds = %if.end29, %for.body138, %while.end
  %27 = bitcast %struct.list_head* %intc_desc_list to %struct.of_intc_desc**
  %28 = load %struct.of_intc_desc*, %struct.of_intc_desc** %27, align 8
  %list166269 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %28, i64 0, i32 0
  %cmp167.not270 = icmp eq %struct.list_head* %list166269, %intc_desc_list
  br i1 %cmp167.not270, label %for.end183, label %for.body171

for.body171:                                      ; preds = %err, %for.body171
  %list166272 = phi %struct.list_head* [ %list166, %for.body171 ], [ %list166269, %err ]
  %desc.2271 = phi %struct.of_intc_desc* [ %temp_desc.2, %for.body171 ], [ %28, %err ]
  %temp_desc.2.in = bitcast %struct.of_intc_desc* %desc.2271 to %struct.of_intc_desc**
  %temp_desc.2 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc.2.in, align 8
  call fastcc void @list_del(%struct.list_head* noundef %list166272) #14
  %29 = bitcast %struct.of_intc_desc* %desc.2271 to i8*
  call void @kfree(i8* noundef %29) #15
  %list166 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %temp_desc.2, i64 0, i32 0
  %cmp167.not = icmp eq %struct.list_head* %list166, %intc_desc_list
  br i1 %cmp167.not, label %for.end183, label %for.body171

for.end183:                                       ; preds = %for.body171, %err
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef, %struct.of_device_id* noundef, %struct.of_device_id** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #15
  ret i8* %call.i.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_node_set_flag(%struct.device_node* noundef %n) unnamed_addr #0 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  call fastcc void @set_bit(i64* noundef %_flags) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_node_clear_flag(%struct.device_node* noundef %n) unnamed_addr #0 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  call fastcc void @clear_bit(i64* noundef %_flags) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_msi_map_id(%struct.device* noundef %dev, %struct.device_node* noundef %msi_np, i32 noundef %id_in) local_unnamed_addr #0 {
entry:
  %msi_np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %msi_np, %struct.device_node** %msi_np.addr, align 8
  %call = call fastcc i32 @__of_msi_map_id(%struct.device* noundef %dev, %struct.device_node** noundef nonnull %msi_np.addr, i32 noundef %id_in) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__of_msi_map_id(%struct.device* noundef readonly %dev, %struct.device_node** noundef %np, i32 noundef %id_in) unnamed_addr #0 {
entry:
  %id_out = alloca i32, align 4
  %0 = bitcast i32* %id_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 %id_in, i32* %id_out, align 4
  %tobool.not6 = icmp eq %struct.device* %dev, null
  br i1 %tobool.not6, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %parent_dev.07 = phi %struct.device* [ %2, %for.inc ], [ %dev, %entry ]
  %of_node = getelementptr inbounds %struct.device, %struct.device* %parent_dev.07, i64 0, i32 25
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call = call i32 @of_map_id(%struct.device_node* noundef %1, i32 noundef %id_in, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), %struct.device_node** noundef %np, i32* noundef nonnull %id_out) #15
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.end.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.device, %struct.device* %parent_dev.07, i64 0, i32 1
  %2 = load %struct.device*, %struct.device** %parent, align 8
  %tobool.not = icmp eq %struct.device* %2, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body, %for.inc
  %.pre = load i32, i32* %id_out, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %3 = phi i32 [ %.pre, %for.end.loopexit ], [ %id_in, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @of_msi_map_get_device_domain(%struct.device* noundef %dev, i32 noundef %id, i32 noundef %bus_token) local_unnamed_addr #0 {
entry:
  %np = alloca %struct.device_node*, align 8
  %0 = bitcast %struct.device_node** %np to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.device_node* null, %struct.device_node** %np, align 8
  %call = call fastcc i32 @__of_msi_map_id(%struct.device* noundef %dev, %struct.device_node** noundef nonnull %np, i32 noundef %id) #14
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8
  %call1 = call fastcc %struct.irq_domain* @irq_find_matching_host(%struct.device_node* noundef %1, i32 noundef %bus_token) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.irq_domain* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_find_matching_host(%struct.device_node* noundef %node, i32 noundef %bus_token) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef %node) #14
  %call1 = call fastcc %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* noundef %call, i32 noundef %bus_token) #14
  ret %struct.irq_domain* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @of_msi_get_domain(%struct.device* nocapture readnone %dev, %struct.device_node* noundef %np, i32 noundef %token) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.of_phandle_args, align 8
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 noundef 0) #15
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #14
  br i1 %call1, label %if.end5, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call fastcc %struct.irq_domain* @irq_find_matching_host(%struct.device_node* noundef nonnull %call, i32 noundef %token) #14
  br label %cleanup17

if.end5:                                          ; preds = %land.lhs.true, %entry
  %cmp = icmp eq i32 %token, 4
  br i1 %cmp, label %if.then6, label %cleanup17

if.then6:                                         ; preds = %if.end5
  %0 = bitcast %struct.of_phandle_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call733 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, %struct.of_phandle_args* noundef nonnull %args) #15
  %tobool8.not34 = icmp eq i32 %call733, 0
  br i1 %tobool8.not34, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %if.then6
  %np9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 0
  br label %while.body

while.cond:                                       ; preds = %while.body
  %call7 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 noundef %inc, %struct.of_phandle_args* noundef nonnull %args) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.body, label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %index.035 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond ]
  %1 = load %struct.device_node*, %struct.device_node** %np9, align 8
  %call10 = call fastcc %struct.irq_domain* @irq_find_matching_host(%struct.device_node* noundef %1, i32 noundef 4) #14
  %tobool11.not = icmp eq %struct.irq_domain* %call10, null
  %inc = add i32 %index.035, 1
  br i1 %tobool11.not, label %while.cond, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  br label %cleanup17

cleanup:                                          ; preds = %while.cond, %if.then6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  br label %cleanup17

cleanup17:                                        ; preds = %if.then, %if.end5, %cleanup, %cleanup.thread
  %retval.1 = phi %struct.irq_domain* [ %call2, %if.then ], [ %call10, %cleanup.thread ], [ null, %cleanup ], [ null, %if.end5 ]
  ret %struct.irq_domain* %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_msi_configure(%struct.device* nocapture noundef writeonly %dev, %struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %call = call %struct.irq_domain* @of_msi_get_domain(%struct.device* undef, %struct.device_node* noundef %np, i32 noundef 4) #14
  call fastcc void @dev_set_msi_domain(%struct.device* noundef %dev, %struct.irq_domain* noundef %call) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @dev_set_msi_domain(%struct.device* nocapture noundef writeonly %dev, %struct.irq_domain* noundef %d) unnamed_addr #10 {
entry:
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 13
  store %struct.irq_domain* %d, %struct.irq_domain** %msi_domain, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #15
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(%struct.device_node* noundef, i8* noundef, i8** noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #13, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #13, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_map_id(%struct.device_node* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.device_node** noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* noundef %fwnode, i32 noundef %bus_token) unnamed_addr #0 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %fwnode1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode1, align 8
  %call = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* noundef nonnull %fwspec, i32 noundef %bus_token) #15
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret %struct.irq_domain* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef readnone %node) unnamed_addr #11 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  %cond = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{i64 2153058585}
!12 = distinct !{!12, !10}
!13 = !{i64 2153065067}
!14 = !{i64 2153071128}
!15 = !{i64 2148061777, i64 2148062288, i64 2148062318, i64 2148062344, i64 2148062376, i64 2148062405}
!16 = !{i64 2148072347, i64 2148072868, i64 2148072898, i64 2148072924, i64 2148072956, i64 2148072985}
