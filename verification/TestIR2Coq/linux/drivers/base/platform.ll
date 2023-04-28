; ModuleID = 'drivers/base/platform.c'
source_filename = "drivers/base/platform.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.66, %struct.device* }
%union.anon.66 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.sched_info = type {}
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
%struct.page = type { i64, %union.anon.2, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.raw_spinlock = type { %struct.qspinlock }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ida = type { %struct.xarray }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], void (%struct.irq_affinity*, i32)*, i8* }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.platform_device_info = type { %struct.device*, %struct.fwnode_handle*, i8, i8*, i32, %struct.resource*, i32, i8*, i64, i64, %struct.property_entry* }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.67 }
%union.anon.67 = type { i8* }
%struct.software_node = type { i8*, %struct.software_node*, %struct.property_entry* }
%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i64)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }

@.str = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@platform_bus = dso_local global %struct.device { %struct.kobject zeroinitializer, %struct.device* null, %struct.device_private* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.device_type* null, %struct.bus_type* null, %struct.device_driver* null, i8* null, i8* null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, %struct.dev_pm_domain* null, %struct.irq_domain* null, %struct.raw_spinlock zeroinitializer, %struct.list_head zeroinitializer, i64* null, i64 0, i64 0, %struct.bus_dma_region* null, %struct.device_dma_parameters* null, %struct.list_head zeroinitializer, %struct.dma_coherent_mem* null, %struct.io_tlb_mem* null, %struct.dev_archdata zeroinitializer, %struct.device_node* null, %struct.fwnode_handle* null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.class* null, %struct.attribute_group** null, void (%struct.device*)* null, %struct.iommu_group* null, %struct.dev_iommu* null, i32 0, i8 0 }, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"0 is an invalid IRQ number\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"IRQ index %u not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"devm_platform_get_irqs_affinity_release\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"failed to update irq%d affinity descriptor (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"IRQ %s not found\0A\00", align 1
@platform_bus_type = dso_local global %struct.bus_type { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @platform_dev_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @platform_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @platform_uevent, i32 (%struct.device*)* @platform_probe, void (%struct.device*)* null, void (%struct.device*)* @platform_remove, void (%struct.device*)* @platform_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i64)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @platform_dma_configure, %struct.dev_pm_ops* @platform_dev_pm_ops, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@platform_devid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"%s.%d.auto\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to claim resource %d: %pR\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"\013%s: drivers registered with %s can not be probed asynchronously\0A\00", align 1
@__func__.__platform_driver_probe = private unnamed_addr constant [24 x i8] c"__platform_driver_probe\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\013failed to register platform driver %ps: %d\0A\00", align 1
@platform_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @platform_dev_group, %struct.attribute_group* null], align 8
@platform_dev_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @pm_generic_runtime_suspend, i32 (%struct.device*)* @pm_generic_runtime_resume, i32 (%struct.device*)* null }, align 8
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@platform_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @platform_dev_attrs_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @platform_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@platform_dev_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_modalias, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_numa_node, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_driver_override, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_numa_node = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @numa_node_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"numa_node\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_driver_override = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @driver_override_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @driver_override_store }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"platform:%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"driver_override\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"MODALIAS=%s%s\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"platform:\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"probe deferral not supported\0A\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"remove callback returned a non-zero value. This will be ignored.\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.resource* @platform_get_resource(%struct.platform_device* nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %num_resources = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 6
  %0 = load i32, i32* %num_resources, align 8
  %cmp17.not = icmp eq i32 %0, 0
  br i1 %cmp17.not, label %cleanup5, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %resource = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 7
  %1 = load %struct.resource*, %struct.resource** %resource, align 8
  %conv = zext i32 %type to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %num.addr.018 = phi i32 [ %num, %for.body.lr.ph ], [ %num.addr.1, %for.inc ]
  %arrayidx = getelementptr %struct.resource, %struct.resource* %1, i64 %indvars.iv
  %call = call fastcc i64 @resource_type(%struct.resource* noundef %arrayidx) #9
  %cmp1 = icmp eq i64 %call, %conv
  br i1 %cmp1, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dec = add i32 %num.addr.018, -1
  %cmp3 = icmp eq i32 %num.addr.018, 0
  br i1 %cmp3, label %cleanup5, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %num.addr.1 = phi i32 [ %dec, %land.lhs.true ], [ %num.addr.018, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup5, label %for.body

cleanup5:                                         ; preds = %for.inc, %land.lhs.true, %entry
  %retval.2 = phi %struct.resource* [ null, %entry ], [ %arrayidx, %land.lhs.true ], [ null, %for.inc ]
  ret %struct.resource* %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_type(%struct.resource* nocapture noundef readonly %res) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 7936
  ret i64 %and
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.resource* @platform_get_mem_or_io(%struct.platform_device* nocapture noundef readonly %dev, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %num_resources = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 6
  %0 = load i32, i32* %num_resources, align 8
  %cmp14.not = icmp eq i32 %0, 0
  br i1 %cmp14.not, label %cleanup2, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %resource = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 7
  %1 = load %struct.resource*, %struct.resource** %resource, align 8
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %num.addr.015 = phi i32 [ %num, %for.body.lr.ph ], [ %num.addr.1, %for.inc ]
  %arrayidx = getelementptr %struct.resource, %struct.resource* %1, i64 %indvars.iv
  %call = call fastcc i64 @resource_type(%struct.resource* noundef %arrayidx) #9
  %and = and i64 %call, 768
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %dec = add i32 %num.addr.015, -1
  %cmp1 = icmp eq i32 %num.addr.015, 0
  br i1 %cmp1, label %cleanup2, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %num.addr.1 = phi i32 [ %dec, %land.lhs.true ], [ %num.addr.015, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup2, label %for.body

cleanup2:                                         ; preds = %for.inc, %land.lhs.true, %entry
  %retval.2 = phi %struct.resource* [ null, %entry ], [ %arrayidx, %land.lhs.true ], [ null, %for.inc ]
  ret %struct.resource* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devm_platform_get_and_ioremap_resource(%struct.platform_device* noundef %pdev, i32 noundef %index, %struct.resource** noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %call = call %struct.resource* @platform_get_resource(%struct.platform_device* noundef %pdev, i32 noundef 512, i32 noundef %index) #9
  %tobool.not = icmp eq %struct.resource** %res, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.resource* %call, %struct.resource** %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3
  %call1 = call i8* @devm_ioremap_resource(%struct.device* noundef %dev, %struct.resource* noundef %call) #10
  ret i8* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @devm_ioremap_resource(%struct.device* noundef, %struct.resource* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device* noundef %pdev, i32 noundef %index) local_unnamed_addr #2 {
entry:
  %call = call i8* @devm_platform_get_and_ioremap_resource(%struct.platform_device* noundef %pdev, i32 noundef %index, %struct.resource** noundef null) #9
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devm_platform_ioremap_resource_byname(%struct.platform_device* noundef %pdev, i8* noundef %name) local_unnamed_addr #2 {
entry:
  %call = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* noundef %pdev, i32 noundef 512, i8* noundef %name) #9
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3
  %call1 = call i8* @devm_ioremap_resource(%struct.device* noundef %dev, %struct.resource* noundef %call) #10
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device* nocapture noundef readonly %dev, i32 noundef %type, i8* noundef %name) local_unnamed_addr #2 {
entry:
  %num_resources = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 6
  %0 = load i32, i32* %num_resources, align 8
  %cmp25.not = icmp eq i32 %0, 0
  br i1 %cmp25.not, label %cleanup13, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %resource = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 7
  %conv5 = zext i32 %type to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %4, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %2 = load %struct.resource*, %struct.resource** %resource, align 8
  %arrayidx = getelementptr %struct.resource, %struct.resource* %2, i64 %indvars.iv
  %name1 = getelementptr %struct.resource, %struct.resource* %2, i64 %indvars.iv, i32 2
  %3 = load i8*, i8** %name1, align 8
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %for.inc, label %if.end, !prof !7

if.end:                                           ; preds = %for.body
  %call = call fastcc i64 @resource_type(%struct.resource* noundef %arrayidx) #9
  %cmp6 = icmp eq i64 %call, %conv5
  br i1 %cmp6, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %call9 = call i32 @strcmp(i8* noundef nonnull %3, i8* noundef %name) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup13, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i32, i32* %num_resources, align 8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end, %for.body
  %4 = phi i32 [ %.pre, %land.lhs.true.for.inc_crit_edge ], [ %1, %if.end ], [ %1, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = zext i32 %4 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %5
  br i1 %cmp, label %for.body, label %cleanup13

cleanup13:                                        ; preds = %for.inc, %land.lhs.true, %entry
  %retval.2 = phi %struct.resource* [ null, %entry ], [ %arrayidx, %land.lhs.true ], [ null, %for.inc ]
  ret %struct.resource* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_get_irq_optional(%struct.platform_device* nocapture noundef readonly %dev, i32 noundef %num) local_unnamed_addr #2 {
entry:
  %of_node = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 3, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @of_irq_get(%struct.device_node* noundef nonnull %0, i32 noundef %num) #10
  %cmp = icmp sgt i32 %call, 0
  %cmp4 = icmp eq i32 %call, -517
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %out, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %call7 = call %struct.resource* @platform_get_resource(%struct.platform_device* noundef %dev, i32 noundef 1024, i32 noundef %num) #9
  %tobool11.not = icmp eq %struct.resource* %call7, null
  br i1 %tobool11.not, label %cleanup80, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end6
  %flags22 = getelementptr inbounds %struct.resource, %struct.resource* %call7, i64 0, i32 3
  %1 = load i64, i64* %flags22, align 8
  %and23 = and i64 %1, 255
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.then35, label %if.then25

if.then25:                                        ; preds = %land.lhs.true21
  %start = getelementptr inbounds %struct.resource, %struct.resource* %call7, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  %conv = trunc i64 %2 to i32
  %call26 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %conv) #10
  %tobool27.not = icmp eq %struct.irq_data* %call26, null
  br i1 %tobool27.not, label %cleanup80, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then25
  %3 = load i64, i64* %flags22, align 8
  %4 = trunc i64 %3 to i32
  %conv32 = and i32 %4, 255
  call fastcc void @irqd_set_trigger_type(%struct.irq_data* noundef nonnull %call26, i32 noundef %conv32) #9
  br label %if.then35

if.then35:                                        ; preds = %land.lhs.true21, %cleanup.thread
  %start36 = getelementptr inbounds %struct.resource, %struct.resource* %call7, i64 0, i32 0
  %5 = load i64, i64* %start36, align 8
  %conv37 = trunc i64 %5 to i32
  br label %out

out:                                              ; preds = %if.then, %if.then35
  %ret.0 = phi i32 [ %call, %if.then ], [ %conv37, %if.then35 ]
  %cmp55 = icmp eq i32 %ret.0, 0
  br i1 %cmp55, label %do.end, label %cleanup80, !prof !7

do.end:                                           ; preds = %out
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/platform.c\22; .popsection; .long 14472b - 14470b; .short 234; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !8
  br label %cleanup80

cleanup80:                                        ; preds = %if.end6, %if.then25, %out, %do.end
  %ret.0115 = phi i32 [ %ret.0, %out ], [ 0, %do.end ], [ -6, %if.then25 ], [ -6, %if.end6 ]
  ret i32 %ret.0115
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_trigger_type(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %type) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -16
  store i32 %and, i32* %state_use_accessors, align 8
  %and1 = and i32 %type, 15
  %2 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors3 = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %2, i64 0, i32 0
  %3 = load i32, i32* %state_use_accessors3, align 8
  %or = or i32 %3, %and1
  store i32 %or, i32* %state_use_accessors3, align 8
  %4 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors5 = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %4, i64 0, i32 0
  %5 = load i32, i32* %state_use_accessors5, align 8
  %or6 = or i32 %5, 33554432
  store i32 %or6, i32* %state_use_accessors5, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_get_irq(%struct.platform_device* noundef %dev, i32 noundef %num) local_unnamed_addr #2 {
entry:
  %call = call i32 @platform_get_irq_optional(%struct.platform_device* noundef %dev, i32 noundef %num) #9
  %cmp = icmp slt i32 %call, 0
  %cmp1 = icmp ne i32 %call, -517
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 3
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef %num) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_irq_count(%struct.platform_device* nocapture noundef readonly %dev) local_unnamed_addr #2 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %nr.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %call = call i32 @platform_get_irq_optional(%struct.platform_device* noundef %dev, i32 noundef %nr.0) #9
  %cmp = icmp sgt i32 %call, -1
  %inc = add i32 %nr.0, 1
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %cmp1 = icmp eq i32 %call, -517
  %.nr.0 = select i1 %cmp1, i32 -517, i32 %nr.0
  ret i32 %.nr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_platform_get_irqs_affinity(%struct.platform_device* noundef %dev, %struct.irq_affinity* noundef %affd, i32 noundef %minvec, i32 noundef %maxvec, i32** nocapture noundef writeonly %irqs) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.irq_affinity* %affd, null
  br i1 %tobool.not, label %cleanup54, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %maxvec, %minvec
  br i1 %cmp, label %cleanup54, label %if.end2

if.end2:                                          ; preds = %if.end
  %call = call i32 @platform_irq_count(%struct.platform_device* noundef %dev) #9
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %cleanup54, label %if.end5

if.end5:                                          ; preds = %if.end2
  %cmp6 = icmp ult i32 %call, %minvec
  br i1 %cmp6, label %cleanup54, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = call i32 @irq_calc_affinity_vectors(i32 noundef %minvec, i32 noundef %call, %struct.irq_affinity* noundef nonnull %affd) #10
  %cmp10 = icmp ult i32 %call9, %minvec
  br i1 %cmp10, label %cleanup54, label %if.end12

if.end12:                                         ; preds = %if.end8
  %cmp13 = icmp ugt i32 %call9, %maxvec
  %spec.select = select i1 %cmp13, i32 %maxvec, i32 %call9
  %conv = sext i32 %spec.select to i64
  %mul = shl nsw i64 %conv, 2
  %add = add nsw i64 %mul, 4
  %call16 = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_platform_get_irqs_affinity_release, i64 noundef %add, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0)) #10
  %tobool17.not = icmp eq i8* %call16, null
  br i1 %tobool17.not, label %cleanup54, label %if.end19

if.end19:                                         ; preds = %if.end12
  %count = bitcast i8* %call16 to i32*
  store i32 %spec.select, i32* %count, align 4
  %cmp20113 = icmp sgt i32 %spec.select, 0
  br i1 %cmp20113, label %for.body.lr.ph, label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end19
  %irq27 = getelementptr inbounds i8, i8* %call16, i64 4
  %0 = bitcast i8* %irq27 to [0 x i32]*
  %wide.trip.count = zext i32 %spec.select to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = trunc i64 %indvars.iv to i32
  %call22 = call i32 @platform_get_irq(%struct.platform_device* noundef %dev, i32 noundef %1) #9
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %err_free_devres, label %for.inc

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr [0 x i32], [0 x i32]* %0, i64 0, i64 %indvars.iv
  store i32 %call22, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %call28 = call %struct.irq_affinity_desc* @irq_create_affinity_masks(i32 noundef %spec.select, %struct.irq_affinity* noundef nonnull %affd) #10
  %tobool29.not = icmp eq %struct.irq_affinity_desc* %call28, null
  br i1 %tobool29.not, label %err_free_devres, label %for.cond32.preheader

for.end.thread:                                   ; preds = %if.end19
  %call28126 = call %struct.irq_affinity_desc* @irq_create_affinity_masks(i32 noundef %spec.select, %struct.irq_affinity* noundef nonnull %affd) #10
  %tobool29.not127 = icmp eq %struct.irq_affinity_desc* %call28126, null
  br i1 %tobool29.not127, label %err_free_devres, label %for.end51

for.cond32.preheader:                             ; preds = %for.end
  br i1 %cmp20113, label %for.body35.lr.ph, label %for.end51

for.body35.lr.ph:                                 ; preds = %for.cond32.preheader
  %irq36 = getelementptr inbounds i8, i8* %call16, i64 4
  %2 = bitcast i8* %irq36 to [0 x i32]*
  %wide.trip.count124 = zext i32 %spec.select to i64
  br label %for.body35

for.body35:                                       ; preds = %for.body35.lr.ph, %for.inc49
  %indvars.iv121 = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next122, %for.inc49 ]
  %arrayidx38 = getelementptr [0 x i32], [0 x i32]* %2, i64 0, i64 %indvars.iv121
  %3 = load i32, i32* %arrayidx38, align 4
  %arrayidx40 = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %call28, i64 %indvars.iv121
  %call41 = call i32 @irq_update_affinity_desc(i32 noundef %3, %struct.irq_affinity_desc* noundef %arrayidx40) #10
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.inc49, label %do.end

do.end:                                           ; preds = %for.body35
  %idxprom37.le = and i64 %indvars.iv121, 4294967295
  %arrayidx38.le = getelementptr [0 x i32], [0 x i32]* %2, i64 0, i64 %idxprom37.le
  %dev44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 3
  %4 = load i32, i32* %arrayidx38.le, align 4
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev44, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 noundef %4, i32 noundef %call41) #12
  %5 = bitcast %struct.irq_affinity_desc* %call28 to i8*
  call void @kfree(i8* noundef nonnull %5) #10
  br label %err_free_devres

for.inc49:                                        ; preds = %for.body35
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %for.end51, label %for.body35

for.end51:                                        ; preds = %for.inc49, %for.end.thread, %for.cond32.preheader
  %call28128130 = phi %struct.irq_affinity_desc* [ %call28, %for.cond32.preheader ], [ %call28126, %for.end.thread ], [ %call28, %for.inc49 ]
  %dev52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 3
  call void @devres_add(%struct.device* noundef %dev52, i8* noundef nonnull %call16) #10
  %6 = bitcast %struct.irq_affinity_desc* %call28128130 to i8*
  call void @kfree(i8* noundef nonnull %6) #10
  %irq53 = getelementptr inbounds i8, i8* %call16, i64 4
  %7 = bitcast i32** %irqs to i8**
  store i8* %irq53, i8** %7, align 8
  br label %cleanup54

err_free_devres:                                  ; preds = %for.body, %for.end.thread, %for.end, %do.end
  %ret.2 = phi i32 [ %call41, %do.end ], [ -12, %for.end ], [ -12, %for.end.thread ], [ %call22, %for.body ]
  call void @devres_free(i8* noundef nonnull %call16) #10
  br label %cleanup54

cleanup54:                                        ; preds = %if.end12, %if.end8, %if.end5, %if.end2, %if.end, %entry, %err_free_devres, %for.end51
  %retval.0 = phi i32 [ %ret.2, %err_free_devres ], [ %spec.select, %for.end51 ], [ -1, %entry ], [ -34, %if.end ], [ %call, %if.end2 ], [ -28, %if.end5 ], [ -28, %if.end8 ], [ -12, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_calc_affinity_vectors(i32 noundef, i32 noundef, %struct.irq_affinity* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_platform_get_irqs_affinity_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #2 {
entry:
  %count = bitcast i8* %res to i32*
  %0 = load i32, i32* %count, align 4
  %cmp9.not = icmp eq i32 %0, 0
  br i1 %cmp9.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %irq = getelementptr inbounds i8, i8* %res, i64 4
  %1 = bitcast i8* %irq to [0 x i32]*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom = sext i32 %i.010 to i64
  %arrayidx = getelementptr [0 x i32], [0 x i32]* %1, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  call void @irq_dispose_mapping(i32 noundef %2) #10
  %inc = add nuw i32 %i.010, 1
  %3 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_affinity_desc* @irq_create_affinity_masks(i32 noundef, %struct.irq_affinity* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_update_affinity_desc(i32 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_get_irq_byname(%struct.platform_device* noundef %dev, i8* noundef %name) local_unnamed_addr #2 {
entry:
  %call = call fastcc i32 @__platform_get_irq_byname(%struct.platform_device* noundef %dev, i8* noundef %name) #9
  %cmp = icmp slt i32 %call, 0
  %cmp1 = icmp ne i32 %call, -517
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 3
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %name) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__platform_get_irq_byname(%struct.platform_device* nocapture noundef readonly %dev, i8* noundef %name) unnamed_addr #2 {
entry:
  %of_node = getelementptr inbounds %struct.platform_device, %struct.platform_device* %dev, i64 0, i32 3, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @of_irq_get_byname(%struct.device_node* noundef nonnull %0, i8* noundef %name) #10
  %cmp = icmp sgt i32 %call, 0
  %cmp4 = icmp eq i32 %call, -517
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %call7 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* noundef %dev, i32 noundef 1024, i8* noundef %name) #9
  %tobool8.not = icmp eq %struct.resource* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end6
  %start = getelementptr inbounds %struct.resource, %struct.resource* %call7, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %cmp10 = icmp eq i64 %1, 0
  br i1 %cmp10, label %do.end, label %if.end25, !prof !7

do.end:                                           ; preds = %if.then9
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/platform.c\22; .popsection; .long 14472b - 14470b; .short 448; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  %.pre = load i64, i64* %start, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then9
  %2 = phi i64 [ %.pre, %do.end ], [ %1, %if.then9 ]
  %conv34 = trunc i64 %2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then, %if.end25
  %retval.0 = phi i32 [ %conv34, %if.end25 ], [ %call, %if.then ], [ -6, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_get_irq_byname_optional(%struct.platform_device* nocapture noundef readonly %dev, i8* noundef %name) local_unnamed_addr #2 {
entry:
  %call = call fastcc i32 @__platform_get_irq_byname(%struct.platform_device* noundef %dev, i8* noundef %name) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_add_devices(%struct.platform_device** nocapture noundef readonly %devs, i32 noundef %num) local_unnamed_addr #2 {
entry:
  %cmp15 = icmp sgt i32 %num, 0
  br i1 %cmp15, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.platform_device*, %struct.platform_device** %devs, i64 %indvars.iv
  %0 = load %struct.platform_device*, %struct.platform_device** %arrayidx, align 8
  %call = call i32 @platform_device_register(%struct.platform_device* noundef %0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i32
  %cmp118.not = icmp eq i32 %1, 0
  br i1 %cmp118.not, label %for.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %dec19.in = phi i32 [ %dec19, %while.body ], [ %1, %while.cond.preheader ]
  %dec19 = add nsw i32 %dec19.in, -1
  %idxprom212 = zext i32 %dec19 to i64
  %arrayidx3 = getelementptr %struct.platform_device*, %struct.platform_device** %devs, i64 %idxprom212
  %2 = load %struct.platform_device*, %struct.platform_device** %arrayidx3, align 8
  call void @platform_device_unregister(%struct.platform_device* noundef %2) #9
  %cmp1 = icmp sgt i32 %dec19.in, 1
  br i1 %cmp1, label %while.body, label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %while.body, %entry, %while.cond.preheader
  %ret.1 = phi i32 [ %call, %while.cond.preheader ], [ 0, %entry ], [ %call, %while.body ], [ 0, %for.inc ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_device_register(%struct.platform_device* noundef %pdev) local_unnamed_addr #2 {
entry:
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3
  call void @device_initialize(%struct.device* noundef %dev) #10
  call fastcc void @setup_pdev_dma_masks(%struct.platform_device* noundef %pdev) #9
  %call = call i32 @platform_device_add(%struct.platform_device* noundef %pdev) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @platform_device_unregister(%struct.platform_device* noundef %pdev) local_unnamed_addr #2 {
entry:
  call void @platform_device_del(%struct.platform_device* noundef %pdev) #9
  call void @platform_device_put(%struct.platform_device* noundef %pdev) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @platform_device_put(%struct.platform_device* noundef %pdev) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.platform_device* %pdev to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3
  call void @put_device(%struct.device* noundef %dev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.platform_device* @platform_device_alloc(i8* noundef %name, i32 noundef %id) local_unnamed_addr #2 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #10
  %add1 = add i64 %call, 553
  %call2 = call fastcc i8* @kzalloc(i64 noundef %add1) #9
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name3 = getelementptr inbounds i8, i8* %call2, i64 552
  %call4 = call i8* @strcpy(i8* noundef %name3, i8* noundef %name) #10
  %pdev = bitcast i8* %call2 to %struct.platform_device*
  %name7 = bitcast i8* %call2 to i8**
  store i8* %name3, i8** %name7, align 8
  %id9 = getelementptr inbounds i8, i8* %call2, i64 8
  %0 = bitcast i8* %id9 to i32*
  store i32 %id, i32* %0, align 8
  %dev = getelementptr inbounds i8, i8* %call2, i64 16
  %1 = bitcast i8* %dev to %struct.device*
  call void @device_initialize(%struct.device* noundef %1) #10
  %release = getelementptr inbounds i8, i8* %call2, i64 456
  %2 = bitcast i8* %release to void (%struct.device*)**
  store void (%struct.device*)* @platform_device_release, void (%struct.device*)** %2, align 8
  call fastcc void @setup_pdev_dma_masks(%struct.platform_device* noundef nonnull %pdev) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %pdev15.pre-phi = bitcast i8* %call2 to %struct.platform_device*
  ret %struct.platform_device* %pdev15.pre-phi
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #2 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #10
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @platform_device_release(%struct.device* noundef %dev) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 35
  %0 = bitcast %struct.dev_iommu** %add.ptr to i8*
  %platform_data = getelementptr inbounds %struct.dev_iommu*, %struct.dev_iommu** %add.ptr, i64 16
  %1 = bitcast %struct.dev_iommu** %platform_data to i8**
  %2 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %2) #10
  %mfd_cell = getelementptr inbounds %struct.dev_iommu*, %struct.dev_iommu** %add.ptr, i64 68
  %3 = bitcast %struct.dev_iommu** %mfd_cell to i8**
  %4 = load i8*, i8** %3, align 8
  call void @kfree(i8* noundef %4) #10
  %resource = getelementptr inbounds %struct.dev_iommu*, %struct.dev_iommu** %add.ptr, i64 65
  %5 = bitcast %struct.dev_iommu** %resource to i8**
  %6 = load i8*, i8** %5, align 8
  call void @kfree(i8* noundef %6) #10
  %driver_override = getelementptr inbounds %struct.dev_iommu*, %struct.dev_iommu** %add.ptr, i64 67
  %7 = bitcast %struct.dev_iommu** %driver_override to i8**
  %8 = load i8*, i8** %7, align 8
  call void @kfree(i8* noundef %8) #10
  call void @kfree(i8* noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @setup_pdev_dma_masks(%struct.platform_device* noundef %pdev) unnamed_addr #4 {
entry:
  %dma_parms = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 5
  %dma_parms1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3, i32 20
  store %struct.device_dma_parameters* %dma_parms, %struct.device_dma_parameters** %dma_parms1, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3, i32 17
  %0 = load i64, i64* %coherent_dma_mask, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 4294967295, i64* %coherent_dma_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dma_mask = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3, i32 16
  %1 = load i64*, i64** %dma_mask, align 8
  %tobool6.not = icmp eq i64* %1, null
  br i1 %tobool6.not, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %platform_dma_mask = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 4
  store i64 4294967295, i64* %platform_dma_mask, align 8
  store i64* %platform_dma_mask, i64** %dma_mask, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_device_add_resources(%struct.platform_device* nocapture noundef %pdev, %struct.resource* noundef %res, i32 noundef %num) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.resource* %res, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.resource* %res to i8*
  %conv = zext i32 %num to i64
  %mul = shl nuw nsw i64 %conv, 6
  %call = call i8* @kmemdup(i8* noundef nonnull %0, i64 noundef %mul, i32 noundef 3264) #10
  %1 = bitcast i8* %call to %struct.resource*
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %r.0 = phi %struct.resource* [ %1, %if.then ], [ null, %entry ]
  %resource = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 7
  %2 = bitcast %struct.resource** %resource to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #10
  store %struct.resource* %r.0, %struct.resource** %resource, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 6
  store i32 %num, i32* %num_resources, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_device_add_data(%struct.platform_device* nocapture noundef %pdev, i8* noundef %data, i64 noundef %size) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @kmemdup(i8* noundef nonnull %data, i64 noundef %size, i32 noundef 3264) #10
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %d.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %platform_data = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3, i32 7
  %0 = load i8*, i8** %platform_data, align 8
  call void @kfree(i8* noundef %0) #10
  store i8* %d.0, i8** %platform_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_device_add(%struct.platform_device* noundef %pdev) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.platform_device* %pdev, null
  br i1 %tobool.not, label %cleanup71, label %if.end

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3, i32 1
  %0 = load %struct.device*, %struct.device** %parent, align 8
  %tobool1.not = icmp eq %struct.device* %0, null
  br i1 %tobool1.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.device* @platform_bus, %struct.device** %parent, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %bus = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3, i32 5
  store %struct.bus_type* @platform_bus_type, %struct.bus_type** %bus, align 8
  %id = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 1
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb12
  ]

sw.default:                                       ; preds = %if.end5
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %2, i32 noundef %1) #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  %name10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 0
  %3 = load i8*, i8** %name10, align 8
  %call11 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %3) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end5
  %call13 = call fastcc i32 @ida_alloc() #9
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %cleanup71, label %if.end15

if.end15:                                         ; preds = %sw.bb12
  store i32 %call13, i32* %id, align 8
  %id_auto = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 2
  store i8 1, i8* %id_auto, align 4
  %name18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 0
  %4 = load i8*, i8** %name18, align 8
  %call20 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef %4, i32 noundef %call13) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end15, %sw.bb, %sw.default
  %num_resources = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 6
  %5 = load i32, i32* %num_resources, align 8
  %cmp21128.not = icmp eq i32 %5, 0
  br i1 %cmp21128.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %sw.epilog
  %resource = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %6 = load %struct.resource*, %struct.resource** %resource, align 8
  %arrayidx = getelementptr %struct.resource, %struct.resource* %6, i64 %indvars.iv
  %name22 = getelementptr %struct.resource, %struct.resource* %6, i64 %indvars.iv, i32 2
  %7 = load i8*, i8** %name22, align 8
  %cmp23 = icmp eq i8* %7, null
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %for.body
  %call26 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #9
  store i8* %call26, i8** %name22, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %for.body
  %parent29 = getelementptr %struct.resource, %struct.resource* %6, i64 %indvars.iv, i32 5
  %8 = load %struct.resource*, %struct.resource** %parent29, align 8
  %tobool30.not = icmp eq %struct.resource* %8, null
  br i1 %tobool30.not, label %if.then31, label %if.then42

if.then31:                                        ; preds = %if.end28
  %call32 = call fastcc i64 @resource_type(%struct.resource* noundef %arrayidx) #9
  switch i64 %call32, label %for.inc [
    i64 512, label %if.then42
    i64 256, label %if.then42.fold.split
  ]

if.then42.fold.split:                             ; preds = %if.then31
  br label %if.then42

if.then42:                                        ; preds = %if.then31, %if.then42.fold.split, %if.end28
  %p.0.ph = phi %struct.resource* [ @iomem_resource, %if.then31 ], [ %8, %if.end28 ], [ @ioport_resource, %if.then42.fold.split ]
  %call43 = call i32 @insert_resource(%struct.resource* noundef nonnull %p.0.ph, %struct.resource* noundef %arrayidx) #10
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.then42
  %9 = trunc i64 %indvars.iv to i32
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 noundef %9, %struct.resource* noundef %arrayidx) #12
  br label %failed

for.inc:                                          ; preds = %if.then31, %if.then42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, i32* %num_resources, align 8
  %11 = zext i32 %10 to i64
  %cmp21 = icmp ult i64 %indvars.iv.next, %11
  br i1 %cmp21, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %12 = trunc i64 %indvars.iv.next to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %sw.epilog
  %i.0.lcssa = phi i32 [ 0, %sw.epilog ], [ %12, %for.end.loopexit ]
  %call51 = call i32 @device_add(%struct.device* noundef %dev) #10
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %cleanup71, label %failed

failed:                                           ; preds = %cleanup, %for.end
  %i.0127 = phi i32 [ %9, %cleanup ], [ %i.0.lcssa, %for.end ]
  %ret.4 = phi i32 [ %call43, %cleanup ], [ %call51, %for.end ]
  %id_auto55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 2
  %13 = load i8, i8* %id_auto55, align 4, !range !10
  %tobool56.not = icmp eq i8 %13, 0
  br i1 %tobool56.not, label %if.end60, label %if.then57

if.then57:                                        ; preds = %failed
  %14 = load i32, i32* %id, align 8
  call void @ida_free(%struct.ida* noundef nonnull @platform_devid_ida, i32 noundef %14) #10
  store i32 -2, i32* %id, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %failed
  %tobool61.not132 = icmp eq i32 %i.0127, 0
  br i1 %tobool61.not132, label %cleanup71, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end60
  %resource63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 7
  %15 = zext i32 %i.0127 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end70
  %indvars.iv137 = phi i64 [ %15, %while.body.lr.ph ], [ %16, %if.end70 ]
  %16 = add nsw i64 %indvars.iv137, -1
  %17 = load %struct.resource*, %struct.resource** %resource63, align 8
  %parent66 = getelementptr %struct.resource, %struct.resource* %17, i64 %16, i32 5
  %18 = load %struct.resource*, %struct.resource** %parent66, align 8
  %tobool67.not = icmp eq %struct.resource* %18, null
  br i1 %tobool67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %while.body
  %arrayidx65 = getelementptr %struct.resource, %struct.resource* %17, i64 %16
  %call69 = call i32 @release_resource(%struct.resource* noundef %arrayidx65) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %while.body
  %tobool61.not.wide = icmp eq i64 %16, 0
  br i1 %tobool61.not.wide, label %cleanup71, label %while.body

cleanup71:                                        ; preds = %if.end70, %if.end60, %sw.bb12, %for.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %for.end ], [ %call13, %sw.bb12 ], [ %ret.4, %if.end60 ], [ %ret.4, %if.end70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ida_alloc() unnamed_addr #2 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @platform_devid_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_resource(%struct.resource* noundef, %struct.resource* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(%struct.resource* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @platform_device_del(%struct.platform_device* noundef %pdev) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.platform_device* %pdev to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #9
  br i1 %call, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3
  call void @device_del(%struct.device* noundef %dev) #10
  %id_auto = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 2
  %1 = load i8, i8* %id_auto, align 4, !range !10
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %id = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 1
  %2 = load i32, i32* %id, align 8
  call void @ida_free(%struct.ida* noundef nonnull @platform_devid_ida, i32 noundef %2) #10
  store i32 -2, i32* %id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %num_resources = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 6
  %3 = load i32, i32* %num_resources, align 8
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %if.end7, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %resource = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end6
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %7, %if.end6 ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end6 ]
  %5 = load %struct.resource*, %struct.resource** %resource, align 8
  %parent = getelementptr %struct.resource, %struct.resource* %5, i64 %indvars.iv, i32 5
  %6 = load %struct.resource*, %struct.resource** %parent, align 8
  %tobool3.not = icmp eq %struct.resource* %6, null
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.resource, %struct.resource* %5, i64 %indvars.iv
  %call5 = call i32 @release_resource(%struct.resource* noundef %arrayidx) #10
  %.pre = load i32, i32* %num_resources, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.body
  %7 = phi i32 [ %.pre, %if.then4 ], [ %4, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = zext i32 %7 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %8
  br i1 %cmp, label %for.body, label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* nocapture noundef readonly %pdevinfo) local_unnamed_addr #2 {
entry:
  %name = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 3
  %0 = load i8*, i8** %name, align 8
  %id = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 4
  %1 = load i32, i32* %id, align 8
  %call = call %struct.platform_device* @platform_device_alloc(i8* noundef %0, i32 noundef %1) #9
  %tobool.not = icmp eq %struct.platform_device* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 0
  %2 = load %struct.device*, %struct.device** %parent, align 8
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3
  %parent2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 1
  store %struct.device* %2, %struct.device** %parent2, align 8
  %fwnode = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 1
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %fwnode4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 26
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %fwnode4, align 8
  %call7 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %3) #9
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %3, i64 -1, i32 4
  %4 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call7, %struct.device_node* %4, %struct.device_node* null
  %of_node = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 25
  store %struct.device_node* %cond, %struct.device_node** %of_node, align 8
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 2
  %5 = load i8, i8* %of_node_reused, align 8, !range !10
  %of_node_reused13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 37
  %bf.load = load i8, i8* %of_node_reused13, align 4
  %bf.shl = shl nuw nsw i8 %5, 2
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %of_node_reused13, align 4
  %dma_mask = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 9
  %6 = load i64, i64* %dma_mask, align 8
  %tobool15.not = icmp eq i64 %6, 0
  br i1 %tobool15.not, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end
  %platform_dma_mask = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 4
  store i64 %6, i64* %platform_dma_mask, align 8
  %dma_mask20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 16
  store i64* %platform_dma_mask, i64** %dma_mask20, align 8
  %7 = load i64, i64* %dma_mask, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, %struct.platform_device* %call, i64 0, i32 3, i32 17
  store i64 %7, i64* %coherent_dma_mask, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end
  %res = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 5
  %8 = load %struct.resource*, %struct.resource** %res, align 8
  %num_res = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 6
  %9 = load i32, i32* %num_res, align 8
  %call24 = call i32 @platform_device_add_resources(%struct.platform_device* noundef nonnull %call, %struct.resource* noundef %8, i32 noundef %9) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %do.end46

if.end27:                                         ; preds = %if.end23
  %data = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 7
  %10 = load i8*, i8** %data, align 8
  %size_data = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 8
  %11 = load i64, i64* %size_data, align 8
  %call28 = call i32 @platform_device_add_data(%struct.platform_device* noundef nonnull %call, i8* noundef %10, i64 noundef %11) #9
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.end46

if.end31:                                         ; preds = %if.end27
  %properties = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i64 0, i32 10
  %12 = load %struct.property_entry*, %struct.property_entry** %properties, align 8
  %tobool32.not = icmp eq %struct.property_entry* %12, null
  br i1 %tobool32.not, label %if.end40, label %if.then33

if.then33:                                        ; preds = %if.end31
  %call36 = call i32 @device_create_managed_software_node(%struct.device* noundef %dev, %struct.property_entry* noundef nonnull %12, %struct.software_node* noundef null) #10
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %do.end46

if.end40:                                         ; preds = %if.then33, %if.end31
  %call41 = call i32 @platform_device_add(%struct.platform_device* noundef nonnull %call) #9
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %do.end46

do.end46:                                         ; preds = %if.end23, %if.end27, %if.then33, %if.end40
  %ret.0 = phi i32 [ %call24, %if.end23 ], [ %call28, %if.end27 ], [ %call36, %if.then33 ], [ %call41, %if.end40 ]
  call void @platform_device_put(%struct.platform_device* noundef nonnull %call) #9
  %conv = sext i32 %ret.0 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %do.end46
  %conv.sink = phi i64 [ %conv, %do.end46 ], [ -12, %entry ]
  %call47 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #9
  %13 = bitcast i8* %call47 to %struct.platform_device*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end40
  %retval.0 = phi %struct.platform_device* [ %call, %if.end40 ], [ %13, %cleanup.sink.split ]
  ret %struct.platform_device* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #6 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(%struct.device* noundef, %struct.property_entry* noundef, %struct.software_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__platform_driver_register(%struct.platform_driver* noundef %drv, %struct.module* noundef %owner) local_unnamed_addr #2 {
entry:
  %driver = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5
  %owner1 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5, i32 2
  store %struct.module* %owner, %struct.module** %owner1, align 8
  %bus = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5, i32 1
  store %struct.bus_type* @platform_bus_type, %struct.bus_type** %bus, align 8
  %call = call i32 @driver_register(%struct.device_driver* noundef %driver) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(%struct.device_driver* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @platform_driver_unregister(%struct.platform_driver* noundef %drv) local_unnamed_addr #2 {
entry:
  %driver = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5
  call void @driver_unregister(%struct.device_driver* noundef %driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(%struct.device_driver* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @__platform_driver_probe(%struct.platform_driver* noundef %drv, i32 (%struct.platform_device*)* noundef %probe, %struct.module* noundef %module) local_unnamed_addr #7 section ".init.text" {
entry:
  %probe_type = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5, i32 5
  %0 = load i32, i32* %probe_type, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.__platform_driver_probe, i64 0, i64 0)) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 2, i32* %probe_type, align 4
  %prevent_deferred_probe = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 7
  store i8 1, i8* %prevent_deferred_probe, align 8
  %suppress_bind_attrs = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5, i32 4
  store i8 1, i8* %suppress_bind_attrs, align 8
  %probe6 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 0
  store i32 (%struct.platform_device*)* %probe, i32 (%struct.platform_device*)** %probe6, align 8
  %call7 = call i32 @__platform_driver_register(%struct.platform_driver* noundef %drv, %struct.module* noundef %module) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end
  %bus = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5, i32 1
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 20
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %rlock.i = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i64 0, i32 6, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  store i32 (%struct.platform_device*)* @platform_probe_fail, i32 (%struct.platform_device*)** %probe6, align 8
  %p14 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %drv, i64 0, i32 5, i32 18
  %4 = load %struct.driver_private*, %struct.driver_private** %p14, align 8
  %k_list = getelementptr inbounds %struct.driver_private, %struct.driver_private* %4, i64 0, i32 1, i32 1
  %call15 = call fastcc i32 @list_empty(%struct.list_head* noundef %k_list) #9
  %tobool16.not = icmp eq i32 %call15, 0
  %5 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %p21 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %5, i64 0, i32 20
  %6 = load %struct.subsys_private*, %struct.subsys_private** %p21, align 8
  %rlock.i45 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i64 0, i32 6, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i45) #10
  br i1 %tobool16.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %if.end9
  call void @platform_driver_unregister(%struct.platform_driver* noundef %drv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then25, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call7, %if.end ], [ -19, %if.then25 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @platform_probe_fail(%struct.platform_device* nocapture noundef readnone %pdev) #6 {
entry:
  ret i32 -6
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

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.platform_device* @__platform_create_bundle(%struct.platform_driver* noundef %driver, i32 (%struct.platform_device*)* noundef %probe, %struct.resource* noundef %res, i32 noundef %n_res, i8* noundef %data, i64 noundef %size, %struct.module* noundef %module) local_unnamed_addr #7 section ".init.text" {
entry:
  %name = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %driver, i64 0, i32 5, i32 0
  %0 = load i8*, i8** %name, align 8
  %call = call %struct.platform_device* @platform_device_alloc(i8* noundef %0, i32 noundef -1) #9
  %tobool.not = icmp eq %struct.platform_device* %call, null
  br i1 %tobool.not, label %err_out, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @platform_device_add_resources(%struct.platform_device* noundef nonnull %call, %struct.resource* noundef %res, i32 noundef %n_res) #9
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %err_pdev_put

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @platform_device_add_data(%struct.platform_device* noundef nonnull %call, i8* noundef %data, i64 noundef %size) #9
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %err_pdev_put

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @platform_device_add(%struct.platform_device* noundef nonnull %call) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_pdev_put

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @__platform_driver_probe(%struct.platform_driver* noundef %driver, i32 (%struct.platform_device*)* noundef %probe, %struct.module* noundef %module) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %err_pdev_del

err_pdev_del:                                     ; preds = %if.end13
  call void @platform_device_del(%struct.platform_device* noundef nonnull %call) #9
  br label %err_pdev_put

err_pdev_put:                                     ; preds = %if.end9, %if.end5, %if.end, %err_pdev_del
  %error.0 = phi i32 [ %call2, %if.end ], [ %call6, %if.end5 ], [ %call10, %if.end9 ], [ %call14, %err_pdev_del ]
  call void @platform_device_put(%struct.platform_device* noundef nonnull %call) #9
  br label %err_out

err_out:                                          ; preds = %entry, %err_pdev_put
  %error.1 = phi i32 [ %error.0, %err_pdev_put ], [ -12, %entry ]
  %conv = sext i32 %error.1 to i64
  %call18 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #9
  %1 = bitcast i8* %call18 to %struct.platform_device*
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %err_out
  %retval.0 = phi %struct.platform_device* [ %1, %err_out ], [ %call, %if.end13 ]
  ret %struct.platform_device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__platform_register_drivers(%struct.platform_driver** nocapture noundef readonly %drivers, i32 noundef %count, %struct.module* noundef %owner) local_unnamed_addr #2 {
entry:
  %cmp23.not = icmp eq i32 %count, 0
  br i1 %cmp23.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %count to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.platform_driver*, %struct.platform_driver** %drivers, i64 %indvars.iv
  %0 = load %struct.platform_driver*, %struct.platform_driver** %arrayidx, align 8
  %call = call i32 @__platform_driver_register(%struct.platform_driver* noundef %0, %struct.module* noundef %owner) #9
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i32
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %arrayidx.le = getelementptr %struct.platform_driver*, %struct.platform_driver** %drivers, i64 %idxprom.le
  %2 = load %struct.platform_driver*, %struct.platform_driver** %arrayidx.le, align 8
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), %struct.platform_driver* noundef %2, i32 noundef %call) #12
  %tobool.not26 = icmp eq i32 %1, 0
  br i1 %tobool.not26, label %cleanup, label %while.body

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

while.body:                                       ; preds = %do.end, %while.body
  %indvars.iv32 = phi i64 [ %3, %while.body ], [ %indvars.iv, %do.end ]
  %3 = add nsw i64 %indvars.iv32, -1
  %arrayidx8 = getelementptr %struct.platform_driver*, %struct.platform_driver** %drivers, i64 %3
  %4 = load %struct.platform_driver*, %struct.platform_driver** %arrayidx8, align 8
  call void @platform_driver_unregister(%struct.platform_driver* noundef %4) #9
  %tobool.not.wide = icmp eq i64 %3, 0
  br i1 %tobool.not.wide, label %cleanup, label %while.body

cleanup:                                          ; preds = %for.inc, %while.body, %entry, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry ], [ %call, %while.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @platform_unregister_drivers(%struct.platform_driver** nocapture noundef readonly %drivers, i32 noundef %count) local_unnamed_addr #2 {
entry:
  %tobool.not3 = icmp eq i32 %count, 0
  br i1 %tobool.not3, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %0 = zext i32 %count to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ %0, %while.body.preheader ], [ %1, %while.body ]
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr %struct.platform_driver*, %struct.platform_driver** %drivers, i64 %1
  %2 = load %struct.platform_driver*, %struct.platform_driver** %arrayidx, align 8
  call void @platform_driver_unregister(%struct.platform_driver* noundef %2) #9
  %tobool.not.wide = icmp eq i64 %1, 0
  br i1 %tobool.not.wide, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_dma_configure(%struct.device* noundef %dev) #2 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @of_dma_configure(%struct.device* noundef %dev, %struct.device_node* noundef nonnull %0) #9
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_dma_configure(%struct.device* noundef %dev, %struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %call = call i32 @of_dma_configure_id(%struct.device* noundef %dev, %struct.device_node* noundef %np, i1 noundef true, i32* noundef null) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @platform_match(%struct.device* noundef %dev, %struct.device_driver* nocapture noundef readonly %drv) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 35
  %0 = bitcast %struct.dev_iommu** %add.ptr to %struct.platform_device*
  %add.ptr6 = getelementptr %struct.device_driver, %struct.device_driver* %drv, i64 -1, i32 14
  %driver_override = getelementptr inbounds %struct.dev_iommu*, %struct.dev_iommu** %add.ptr, i64 67
  %1 = bitcast %struct.dev_iommu** %driver_override to i8**
  %2 = load i8*, i8** %1, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* noundef nonnull %2, i8* noundef %3) #10
  %tobool8.not = icmp eq i32 %call, 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = call fastcc i32 @of_driver_match_device(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end
  %id_table = getelementptr inbounds %struct.attribute_group**, %struct.attribute_group*** %add.ptr6, i64 23
  %4 = bitcast %struct.attribute_group*** %id_table to %struct.platform_device_id**
  %5 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %tobool16.not = icmp eq %struct.platform_device_id* %5, null
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end12
  %call19 = call fastcc %struct.platform_device_id* @platform_match_id(%struct.platform_device_id* noundef nonnull %5, %struct.platform_device* noundef %0) #9
  %cmp = icmp ne %struct.platform_device_id* %call19, null
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %name21 = bitcast %struct.dev_iommu** %add.ptr to i8**
  %6 = load i8*, i8** %name21, align 8
  %name22 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %7 = load i8*, i8** %name22, align 8
  %call23 = call i32 @strcmp(i8* noundef %6, i8* noundef %7) #10
  %cmp24 = icmp eq i32 %call23, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end20, %if.then17, %if.then
  %retval.0.shrunk = phi i1 [ %tobool8.not, %if.then ], [ %cmp, %if.then17 ], [ %cmp24, %if.end20 ], [ true, %if.end ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @platform_uevent(%struct.device* noundef %dev, %struct.kobj_uevent_env* noundef %env) #2 {
entry:
  %call = call i32 @of_device_uevent_modalias(%struct.device* noundef %dev, %struct.kobj_uevent_env* noundef %env) #10
  %cmp.not = icmp eq i32 %call, -19
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 35
  %name = bitcast %struct.dev_iommu** %add.ptr to i8**
  %0 = load i8*, i8** %name, align 8
  %call5 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @platform_probe(%struct.device* noundef %_dev) #2 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 0, i32 6
  %0 = bitcast %struct.device_driver** %driver to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -40
  %add.ptr6 = getelementptr %struct.device, %struct.device* %_dev, i64 -1, i32 35
  %2 = bitcast %struct.dev_iommu** %add.ptr6 to %struct.platform_device*
  %probe = bitcast i8* %add.ptr to i32 (%struct.platform_device*)**
  %3 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %probe, align 8
  %cmp = icmp eq i32 (%struct.platform_device*)* %3, @platform_probe_fail
  br i1 %cmp, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 0, i32 25
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call = call i32 @of_clk_set_defaults(%struct.device_node* noundef %4, i1 noundef false) #10
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %5 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %probe, align 8
  %tobool17.not = icmp eq i32 (%struct.platform_device*)* %5, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end11
  %call20 = call i32 %5(%struct.platform_device* noundef %2) #10
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %out

out:                                              ; preds = %if.then18
  %6 = getelementptr i8, i8* %1, i64 152
  %7 = load i8, i8* %6, align 8, !range !10
  %tobool25 = icmp ne i8 %7, 0
  %cmp27 = icmp eq i32 %call20, -517
  %or.cond = select i1 %tobool25, i1 %cmp27, i1 false
  br i1 %or.cond, label %do.end32, label %cleanup

do.end32:                                         ; preds = %out
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %_dev, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then18, %out, %do.end32, %if.end, %entry
  %retval.0 = phi i32 [ -6, %entry ], [ %call, %if.end ], [ -6, %do.end32 ], [ %call20, %out ], [ 0, %if.then18 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @platform_remove(%struct.device* noundef %_dev) #2 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 0, i32 6
  %0 = bitcast %struct.device_driver** %driver to i8**
  %1 = load i8*, i8** %0, align 8
  %remove = getelementptr i8, i8* %1, i64 -32
  %2 = bitcast i8* %remove to i32 (%struct.platform_device*)**
  %3 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %2, align 8
  %tobool.not = icmp eq i32 (%struct.platform_device*)* %3, null
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr6 = getelementptr %struct.device, %struct.device* %_dev, i64 -1, i32 35
  %4 = bitcast %struct.dev_iommu** %add.ptr6 to %struct.platform_device*
  %call = call i32 %3(%struct.platform_device* noundef %4) #10
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.then
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %_dev, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i64 0, i64 0)) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then, %do.end12, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @platform_shutdown(%struct.device* noundef %_dev) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %_dev, i64 -1, i32 35
  %0 = bitcast %struct.dev_iommu** %add.ptr to %struct.platform_device*
  %driver = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 0, i32 6
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr %struct.device_driver, %struct.device_driver* %1, i64 -1, i32 14
  %shutdown = getelementptr inbounds %struct.attribute_group**, %struct.attribute_group*** %add.ptr7, i64 2
  %2 = bitcast %struct.attribute_group*** %shutdown to void (%struct.platform_device*)**
  %3 = load void (%struct.platform_device*)*, void (%struct.platform_device*)** %2, align 8
  %tobool8.not = icmp eq void (%struct.platform_device*)* %3, null
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end
  call void %3(%struct.platform_device* noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @platform_find_device_by_driver(%struct.device* noundef %start, %struct.device_driver* noundef %drv) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.device_driver* %drv to i8*
  %call = call %struct.device* @bus_find_device(%struct.bus_type* noundef nonnull @platform_bus_type, %struct.device* noundef %start, i8* noundef %0, i32 (%struct.device*, i8*)* noundef nonnull @__platform_match) #10
  ret %struct.device* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @bus_find_device(%struct.bus_type* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__platform_match(%struct.device* noundef %dev, i8* nocapture noundef readonly %drv) #2 {
entry:
  %0 = bitcast i8* %drv to %struct.device_driver*
  %call = call i32 @platform_match(%struct.device* noundef %dev, %struct.device_driver* noundef %0) #9
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @early_platform_cleanup() local_unnamed_addr #7 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @platform_bus_init() local_unnamed_addr #7 section ".init.text" {
entry:
  call void @early_platform_cleanup() #13
  %call = call i32 @device_register(%struct.device* noundef nonnull @platform_bus) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @put_device(%struct.device* noundef nonnull @platform_bus) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @bus_register(%struct.bus_type* noundef nonnull @platform_bus_type) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @device_unregister(%struct.device* noundef nonnull @platform_bus) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(%struct.bus_type* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #1 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

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
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(%struct.device* noundef, %struct.device_node* noundef, i1 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i16 @platform_dev_attrs_visible(%struct.kobject* nocapture noundef readnone %kobj, %struct.attribute* noundef readonly %a, i32 noundef %n) #1 {
entry:
  %cmp = icmp eq %struct.attribute* %a, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_numa_node, i64 0, i32 0)
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %a, i64 0, i32 1
  %0 = load i16, i16* %mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i16 [ %0, %if.end ], [ 0, %entry ]
  ret i16 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @numa_node_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 noundef -1) #10
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @modalias_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call i64 @of_device_modalias(%struct.device* noundef %dev, i8* noundef %buf, i64 noundef 4096) #10
  %conv = trunc i64 %call to i32
  %cmp.not = icmp eq i32 %conv, -19
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 35
  %name = bitcast %struct.dev_iommu** %add.ptr to i8**
  %0 = load i8*, i8** %name, align 8
  %call9 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0.in = phi i32 [ %call9, %if.end ], [ %conv, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_device_modalias(%struct.device* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @driver_override_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 35
  call fastcc void @device_lock(%struct.device* noundef %dev) #9
  %driver_override = getelementptr inbounds %struct.dev_iommu*, %struct.dev_iommu** %add.ptr, i64 67
  %0 = bitcast %struct.dev_iommu** %driver_override to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* noundef %1) #10
  %conv = sext i32 %call to i64
  call fastcc void @device_unlock(%struct.device* noundef %dev) #9
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @driver_override_store(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 35
  %cmp = icmp ugt i64 %count, 4094
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @kstrndup(i8* noundef %buf, i64 noundef %count, i32 noundef 3264) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call i8* @strchr(i8* noundef nonnull %call, i32 noundef 10) #10
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  store i8 0, i8* %call3, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  call fastcc void @device_lock(%struct.device* noundef %dev) #9
  %driver_override7 = getelementptr inbounds %struct.dev_iommu*, %struct.dev_iommu** %add.ptr, i64 67
  %0 = bitcast %struct.dev_iommu** %driver_override7 to i8**
  %1 = load i8*, i8** %0, align 8
  %call8 = call i64 @strlen(i8* noundef nonnull %call) #10
  %tobool9.not = icmp eq i64 %call8, 0
  br i1 %tobool9.not, label %if.else, label %if.end13

if.else:                                          ; preds = %if.end6
  call void @kfree(i8* noundef nonnull %call) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.else
  %storemerge = phi i8* [ null, %if.else ], [ %call, %if.end6 ]
  store i8* %storemerge, i8** %0, align 8
  call fastcc void @device_unlock(%struct.device* noundef %dev) #9
  call void @kfree(i8* noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13
  %retval.0 = phi i64 [ %count, %if.end13 ], [ -22, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_lock(%struct.device* noundef %dev) unnamed_addr #2 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_lock(%struct.mutex* noundef %mutex) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_unlock(%struct.device* noundef %dev) unnamed_addr #2 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrndup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_driver_match_device(%struct.device* noundef %dev, %struct.device_driver* nocapture noundef readonly %drv) unnamed_addr #2 {
entry:
  %of_match_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 6
  %0 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table, align 8
  %call = call %struct.of_device_id* @of_match_device(%struct.of_device_id* noundef %0, %struct.device* noundef %dev) #10
  %cmp = icmp ne %struct.of_device_id* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.platform_device_id* @platform_match_id(%struct.platform_device_id* noundef %id, %struct.platform_device* nocapture noundef %pdev) unnamed_addr #2 {
entry:
  %arrayidx9 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %id, i64 0, i32 0, i64 0
  %0 = load i8, i8* %arrayidx9, align 8
  %tobool.not10 = icmp eq i8 %0, 0
  br i1 %tobool.not10, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %name1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %arrayidx12 = phi i8* [ %arrayidx9, %while.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %1 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* noundef %1, i8* noundef %arrayidx12) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %indvars = bitcast i8* %arrayidx12 to %struct.platform_device_id*
  %id_entry = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 8
  %2 = bitcast %struct.platform_device_id** %id_entry to i8**
  store i8* %arrayidx12, i8** %2, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %arrayidx12, i64 32
  %3 = load i8, i8* %incdec.ptr, align 8
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %return, label %while.body

return:                                           ; preds = %if.end, %entry, %if.then
  %retval.0 = phi %struct.platform_device_id* [ %indvars, %if.then ], [ null, %entry ], [ null, %if.end ]
  ret %struct.platform_device_id* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.of_device_id* @of_match_device(%struct.of_device_id* noundef, %struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(%struct.device* noundef, %struct.kobj_uevent_env* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(%struct.device_node* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @pm_generic_runtime_suspend(%struct.device* nocapture noundef readnone %dev) #6 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @pm_generic_runtime_resume(%struct.device* nocapture noundef readnone %dev) #6 {
entry:
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2154151435}
!9 = !{i64 2154158407}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149773398}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148143023, i64 2148143056, i64 2148143109, i64 2148143168, i64 2148143202, i64 2148143257, i64 2148143286, i64 2148143306}
!14 = !{i64 2149780679}
!15 = !{i64 2149727527}
