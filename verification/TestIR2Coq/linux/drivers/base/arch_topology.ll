; ModuleID = 'drivers/base/arch_topology.c'
source_filename = "drivers/base/arch_topology.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_arch_topology__371_202_register_cpu_capacity_sysctl4:\09\09\09"
module asm ".long\09register_cpu_capacity_sysctl - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_arch_topology__375_389_free_raw_capacity1:\09\09\09"
module asm ".long\09free_raw_capacity - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [4 x i64] }
%struct.scale_freq_data = type { i32, void ()* }
%struct.cpu_topology = type { i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.66 = type { %struct.kernfs_elem_dir }
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
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.67, %struct.device* }
%union.anon.67 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.51, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.4, %union.anon.65, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.22, i8* }
%union.anon.22 = type { i64 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.26, i32 }
%union.anon.26 = type { %struct.kuid_t }
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
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.55 }
%union.anon.55 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.56, %union.anon.57 }
%union.anon.56 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.57 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.59, %struct.qspinlock }
%union.anon.59 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.21, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
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
%struct.cgroup_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.36, %union.anon.37, i32 }
%struct.request_queue = type opaque
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.50, i32, [12 x i8] }
%union.anon.50 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.52, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.52 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.clk = type opaque

@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@scale_freq_counters_mask = internal global %struct.cpumask zeroinitializer, align 8
@scale_freq_invariant = internal unnamed_addr global i8 0, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sft_data = internal global %struct.scale_freq_data* null, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@arch_freq_scale = dso_local global i64 1024, section ".data..percpu", align 8
@cpu_scale = dso_local global i64 1024, section ".data..percpu", align 8
@thermal_pressure = dso_local global i64 0, section ".data..percpu", align 8
@__UNIQUE_ID___addressable_register_cpu_capacity_sysctl372 = internal global i8* bitcast (i32 ()* @register_cpu_capacity_sysctl to i8*), section ".discard.addressable", align 8
@raw_capacity = internal unnamed_addr global i32* null, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@freq_factor = internal global i32 1, section ".data..percpu", align 4
@topology_parse_cpu_capacity.cap_parsing_failed = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [19 x i8] c"capacity-dmips-mhz\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\013cpu_capacity: missing %pOF raw capacity\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"\013cpu_capacity: partial information: fallback to 1024 for all CPUs\0A\00", align 1
@__UNIQUE_ID___addressable_free_raw_capacity376 = internal global i8* bitcast (i32 ()* @free_raw_capacity to i8*), section ".discard.addressable", align 8
@cpu_topology = dso_local global [256 x %struct.cpu_topology] zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"\013%s: too early to get CPU%d device!\0A\00", align 1
@__func__.register_cpu_capacity_sysctl = private unnamed_addr constant [29 x i8] c"register_cpu_capacity_sysctl\00", align 1
@dev_attr_cpu_capacity = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_capacity_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"cpu_capacity\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@of_root = external dso_local local_unnamed_addr global %struct.device_node*, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\013No CPU information found in DT\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cpu-map\00", align 1
@parse_cluster.package_id = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"cluster%d\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"core%d\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\013%pOF: cpu-map children should be clusters\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"\013%pOF: Non-leaf cluster with core %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"\014%pOF: empty cluster\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"thread%d\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\013%pOF: Can't get CPU for thread\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"\013%pOF: Core has both threads and CPU\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"\013%pOF: Can't get CPU for leaf core\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"\016CPU node for %pOF exist but the possible cpu range is :%*pbl\0A\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_free_raw_capacity376 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_register_cpu_capacity_sysctl372 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @topology_scale_freq_invariant() local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i1 @supports_scale_freq_counters(%struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @supports_scale_freq_counters(%struct.cpumask* noundef %cpus) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %cpus, %struct.cpumask* noundef nonnull @scale_freq_counters_mask) #14
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @topology_set_scale_freq_source(%struct.scale_freq_data* noundef %data, %struct.cpumask* noundef %cpus) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @cpumask_empty() #14
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i1 @topology_scale_freq_invariant() #14
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* @scale_freq_invariant, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__rcu_read_lock() #15
  %call273 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpus) #16
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp74 = icmp ult i32 %call273, %0
  br i1 %cmp74, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %1 = ptrtoint %struct.scale_freq_data* %data to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end56
  %2 = phi i32 [ %0, %for.body.lr.ph ], [ %7, %if.end56 ]
  %call275 = phi i32 [ %call273, %for.body.lr.ph ], [ %call2, %if.end56 ]
  %idxprom = sext i32 %call275 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.scale_freq_data** @sft_data to i64)
  %4 = inttoptr i64 %add to %struct.scale_freq_data**
  %5 = load volatile %struct.scale_freq_data*, %struct.scale_freq_data** %4, align 8
  %tobool.not = icmp eq %struct.scale_freq_data* %5, null
  br i1 %tobool.not, label %do.body14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %source = getelementptr inbounds %struct.scale_freq_data, %struct.scale_freq_data* %5, i64 0, i32 0
  %6 = load i32, i32* %source, align 8
  %cmp12.not = icmp eq i32 %6, 1
  br i1 %cmp12.not, label %if.end56, label %do.body14

do.body14:                                        ; preds = %for.body, %lor.lhs.false
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.scale_freq_data** elementtype(%struct.scale_freq_data*) %4, i64 %1) #17, !srcloc !8
  call fastcc void @cpumask_set_cpu(i32 noundef %call275, %struct.cpumask* noundef nonnull @scale_freq_counters_mask) #14
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end56

if.end56:                                         ; preds = %do.body14, %lor.lhs.false
  %7 = phi i32 [ %.pre, %do.body14 ], [ %2, %lor.lhs.false ]
  %call2 = call i32 @cpumask_next(i32 noundef %call275, %struct.cpumask* noundef %cpus) #16
  %cmp = icmp ult i32 %call2, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end56, %if.end
  call fastcc void @rcu_read_unlock() #14
  call fastcc void @update_scale_freq_invariant(i1 noundef true) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty() unnamed_addr #0 {
entry:
  %call = call fastcc i1 @bitmap_empty() #14
  ret i1 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_scale_freq_invariant(i1 noundef %status) unnamed_addr #0 {
entry:
  %frombool = zext i1 %status to i8
  %0 = load i8, i8* @scale_freq_invariant, align 4, !range !9
  %cmp = icmp eq i8 %0, %frombool
  br i1 %cmp, label %if.end12, label %if.end

if.end:                                           ; preds = %entry
  %call = call i1 @topology_scale_freq_invariant() #14
  %1 = xor i1 %call, %status
  br i1 %1, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  store i8 %frombool, i8* @scale_freq_invariant, align 4
  br label %if.end12

if.end12:                                         ; preds = %entry, %if.then9, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @topology_clear_scale_freq_source(i32 noundef %source, %struct.cpumask* noundef %cpus) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %call75 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpus) #16
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp76 = icmp ult i32 %call75, %0
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end53
  %1 = phi i32 [ %6, %if.end53 ], [ %0, %entry ]
  %call77 = phi i32 [ %call, %if.end53 ], [ %call75, %entry ]
  %idxprom = sext i32 %call77 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.scale_freq_data** @sft_data to i64)
  %3 = inttoptr i64 %add to %struct.scale_freq_data**
  %4 = load volatile %struct.scale_freq_data*, %struct.scale_freq_data** %3, align 8
  %tobool.not = icmp eq %struct.scale_freq_data* %4, null
  br i1 %tobool.not, label %if.end53, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %source10 = getelementptr inbounds %struct.scale_freq_data, %struct.scale_freq_data* %4, i64 0, i32 0
  %5 = load i32, i32* %source10, align 8
  %cmp11 = icmp eq i32 %5, %source
  br i1 %cmp11, label %do.body19, label %if.end53

do.body19:                                        ; preds = %land.lhs.true
  store volatile %struct.scale_freq_data* null, %struct.scale_freq_data** %3, align 8
  call fastcc void @cpumask_clear_cpu(i32 noundef %call77, %struct.cpumask* noundef nonnull @scale_freq_counters_mask) #14
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end53

if.end53:                                         ; preds = %do.body19, %land.lhs.true, %for.body
  %6 = phi i32 [ %.pre, %do.body19 ], [ %1, %land.lhs.true ], [ %1, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %call77, %struct.cpumask* noundef %cpus) #16
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end53, %entry
  call fastcc void @rcu_read_unlock() #14
  call void @synchronize_rcu() #15
  call fastcc void @update_scale_freq_invariant(i1 noundef false) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @topology_scale_freq_tick() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (%struct.scale_freq_data** @sft_data to i64)
  %0 = inttoptr i64 %add to %struct.scale_freq_data**
  %1 = load volatile %struct.scale_freq_data*, %struct.scale_freq_data** %0, align 8
  %tobool.not = icmp eq %struct.scale_freq_data* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %set_freq_scale = getelementptr inbounds %struct.scale_freq_data, %struct.scale_freq_data* %1, i64 0, i32 1
  %2 = load void ()*, void ()** %set_freq_scale, align 8
  call void %2() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #5 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !10
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @topology_set_freq_scale(%struct.cpumask* noundef %cpus, i64 noundef %cur_freq, i64 noundef %max_freq) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %cur_freq, 0
  %tobool1.not = icmp eq i64 %max_freq, 0
  %0 = or i1 %tobool.not, %tobool1.not
  br i1 %0, label %if.then, label %if.end19, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/arch_topology.c\22; .popsection; .long 14472b - 14470b; .short 134; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !12
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call = call fastcc i1 @supports_scale_freq_counters(%struct.cpumask* noundef %cpus) #14
  br i1 %call, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end19
  %shl = shl i64 %cur_freq, 10
  %div = udiv i64 %shl, %max_freq
  %call2238 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpus) #16
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp39 = icmp ult i32 %call2238, %1
  br i1 %cmp39, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end21, %for.body
  %call2240 = phi i32 [ %call22, %for.body ], [ %call2238, %if.end21 ]
  %idxprom = sext i32 %call2240 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (i64* @arch_freq_scale to i64)
  %3 = inttoptr i64 %add to i64*
  store i64 %div, i64* %3, align 8
  %call22 = call i32 @cpumask_next(i32 noundef %call2240, %struct.cpumask* noundef %cpus) #16
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call22, %4
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end21, %if.then, %if.end19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @topology_set_cpu_scale(i32 noundef %cpu, i64 noundef %capacity) local_unnamed_addr #6 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @cpu_scale to i64)
  %1 = inttoptr i64 %add to i64*
  store i64 %capacity, i64* %1, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local void @topology_set_thermal_pressure(%struct.cpumask* noundef %cpus, i64 noundef %th_pressure) local_unnamed_addr #7 {
entry:
  %call16 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpus) #16
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp17 = icmp ult i32 %call16, %0
  br i1 %cmp17, label %do.body2, label %for.end

do.body2:                                         ; preds = %entry, %do.body2
  %call18 = phi i32 [ %call, %do.body2 ], [ %call16, %entry ]
  %idxprom = sext i32 %call18 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i64* @thermal_pressure to i64)
  %2 = inttoptr i64 %add to i64*
  store volatile i64 %th_pressure, i64* %2, align 8
  %call = call i32 @cpumask_next(i32 noundef %call18, %struct.cpumask* noundef %cpus) #16
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %do.body2, label %for.end

for.end:                                          ; preds = %do.body2, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @register_cpu_capacity_sysctl() #0 {
entry:
  %call10 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond.backedge
  %call12 = phi i32 [ %call, %for.cond.backedge ], [ %call10, %entry ]
  %call1 = call %struct.device* @get_cpu_device(i32 noundef %call12) #15
  %tobool.not = icmp eq %struct.device* %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.register_cpu_capacity_sysctl, i64 0, i64 0), i32 noundef %call12) #19
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end, %if.end
  %call = call i32 @cpumask_next(i32 noundef %call12, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

if.end:                                           ; preds = %for.body
  %call3 = call i32 @device_create_file(%struct.device* noundef nonnull %call1, %struct.device_attribute* noundef nonnull @dev_attr_cpu_capacity) #15
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @topology_update_cpu_topology() local_unnamed_addr #8 {
entry:
  ret i32 0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local void @topology_normalize_cpu_scale() local_unnamed_addr #7 {
entry:
  %0 = load i32*, i32** @raw_capacity, align 8
  %tobool.not = icmp eq i32* %0, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %call54 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %cmp55 = icmp ult i32 %call54, %1
  br i1 %cmp55, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body, %for.cond.preheader
  %capacity_scale.0.lcssa = phi i64 [ 1, %for.cond.preheader ], [ %cond, %for.body ]
  %call958 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %cmp1059 = icmp ult i32 %call958, %1
  br i1 %cmp1059, label %for.body12, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %call57 = phi i32 [ %call, %for.body ], [ %call54, %for.cond.preheader ]
  %capacity_scale.056 = phi i64 [ %cond, %for.body ], [ 1, %for.cond.preheader ]
  %idxprom = sext i32 %call57 to i64
  %arrayidx = getelementptr i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx3 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx3, align 8
  %add = add i64 %3, ptrtoint (i32* @freq_factor to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %mul = mul i32 %5, %2
  %conv = zext i32 %mul to i64
  %cmp5 = icmp ult i64 %capacity_scale.056, %conv
  %cond = select i1 %cmp5, i64 %conv, i64 %capacity_scale.056
  %call = call i32 @cpumask_next(i32 noundef %call57, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.cond8.preheader

for.body12:                                       ; preds = %for.cond8.preheader, %for.body12
  %call960 = phi i32 [ %call9, %for.body12 ], [ %call958, %for.cond8.preheader ]
  %idxprom13 = sext i32 %call960 to i64
  %arrayidx14 = getelementptr i32, i32* %0, i64 %idxprom13
  %6 = load i32, i32* %arrayidx14, align 4
  %arrayidx23 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom13
  %7 = load i64, i64* %arrayidx23, align 8
  %add24 = add i64 %7, ptrtoint (i32* @freq_factor to i64)
  %8 = inttoptr i64 %add24 to i32*
  %9 = load i32, i32* %8, align 4
  %mul25 = mul i32 %9, %6
  %conv26 = zext i32 %mul25 to i64
  %shl = shl nuw nsw i64 %conv26, 10
  %call27 = call fastcc i64 @div64_u64(i64 noundef %shl, i64 noundef %capacity_scale.0.lcssa) #14, !range !13
  call void @topology_set_cpu_scale(i32 noundef %call960, i64 noundef %call27) #14
  %call9 = call i32 @cpumask_next(i32 noundef %call960, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %10 = load i32, i32* @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %10
  br i1 %cmp10, label %for.body12, label %cleanup

cleanup:                                          ; preds = %for.body12, %for.cond8.preheader, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #8 {
entry:
  %div = udiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i1 @topology_parse_cpu_capacity(%struct.device_node* noundef %cpu_node, i32 noundef %cpu) local_unnamed_addr #9 section ".init.text" {
entry:
  %cpu_capacity = alloca i32, align 4
  %0 = bitcast i32* %cpu_capacity to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %cpu_capacity, align 4, !annotation !14
  %.b50 = load i1, i1* @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  br i1 %.b50, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %cpu_node, i32* noundef nonnull %cpu_capacity) #14
  %tobool1.not = icmp eq i32 %call, 0
  %1 = load i32*, i32** @raw_capacity, align 8
  %tobool3.not = icmp eq i32* %1, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %tobool3.not, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.then2
  %call5 = call fastcc i32 @cpumask_weight() #14
  %conv = zext i32 %call5 to i64
  %call6 = call fastcc i8* @kcalloc(i64 noundef %conv) #14
  store i8* %call6, i8** bitcast (i32** @raw_capacity to i8**), align 8
  %tobool7.not = icmp eq i8* %call6, null
  %2 = bitcast i8* %call6 to i32*
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then4
  store i1 true, i1* @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  br label %cleanup

if.end10:                                         ; preds = %if.then4, %if.then2
  %3 = phi i32* [ %2, %if.then4 ], [ %1, %if.then2 ]
  %4 = load i32, i32* %cpu_capacity, align 4
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  %call11 = call %struct.clk* @of_clk_get(%struct.device_node* noundef %cpu_node, i32 noundef 0) #15
  %5 = bitcast %struct.clk* %call11 to i8*
  %call12 = call fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %5) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end10
  %call15 = call i64 @clk_get_rate(%struct.clk* noundef %call11) #15
  %div = udiv i64 %call15, 1000
  %conv16 = trunc i64 %div to i32
  %arrayidx20 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx20, align 8
  %add = add i64 %6, ptrtoint (i32* @freq_factor to i64)
  %7 = inttoptr i64 %add to i32*
  store i32 %conv16, i32* %7, align 4
  call void @clk_put(%struct.clk* noundef %call11) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool3.not, label %if.end34, label %do.end26

do.end26:                                         ; preds = %if.else
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* noundef %cpu_node) #19
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0)) #19
  br label %if.end34

if.end34:                                         ; preds = %do.end26, %if.else
  store i1 true, i1* @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  %call35 = call i32 @free_raw_capacity() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then14, %if.end10, %entry, %if.then8
  %retval.0 = phi i1 [ false, %if.then8 ], [ false, %entry ], [ true, %if.end10 ], [ true, %if.then14 ], [ false, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i32* noundef %out_value) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i32* noundef %out_value) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #14
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #15
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk* @of_clk_get(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %ptr) unnamed_addr #8 {
entry:
  %call = call fastcc i1 @IS_ERR(i8* noundef %ptr) #14
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %ptr) #14
  %conv = trunc i64 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_get_rate(%struct.clk* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(%struct.clk* noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @free_raw_capacity() #0 {
entry:
  %0 = load i8*, i8** bitcast (i32** @raw_capacity to i8**), align 8
  call void @kfree(i8* noundef %0) #15
  store i32* null, i32** @raw_capacity, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local nonnull %struct.cpumask* @cpu_coregroup_mask(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  %call = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %core_sibling, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, %struct.cpumask* @__cpu_online_mask, %struct.cpumask* %core_sibling
  %llc_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 3
  %0 = load i32, i32* %llc_id, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end16, label %if.then6

if.then6:                                         ; preds = %entry
  %llc_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 6
  %call9 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %llc_sibling, %struct.cpumask* noundef %spec.select) #14
  %tobool10.not = icmp eq i32 %call9, 0
  %spec.select25 = select i1 %tobool10.not, %struct.cpumask* %spec.select, %struct.cpumask* %llc_sibling
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %entry
  %core_mask.1 = phi %struct.cpumask* [ %spec.select, %entry ], [ %spec.select25, %if.then6 ]
  ret %struct.cpumask* %core_mask.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_subset(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay, i64* noundef %arraydecay2) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_siblings_masks(i32 noundef %cpuid) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpuid to i64
  %call37 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #16
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp38 = icmp ult i32 %call37, %0
  br i1 %cmp38, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %llc_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 3
  %llc_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 6
  %package_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 2
  %core_sibling10 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  %core_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 1
  %thread_sibling15 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %call39 = phi i32 [ %call37, %for.body.lr.ph ], [ %call, %for.cond.backedge ]
  %idxprom1 = sext i32 %call39 to i64
  %1 = load i32, i32* %llc_id, align 4
  %llc_id3 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom1, i32 3
  %2 = load i32, i32* %llc_id3, align 4
  %cmp4 = icmp eq i32 %1, %2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call fastcc void @cpumask_set_cpu(i32 noundef %call39, %struct.cpumask* noundef %llc_sibling) #14
  %llc_sibling5 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom1, i32 6
  call fastcc void @cpumask_set_cpu(i32 noundef %cpuid, %struct.cpumask* noundef %llc_sibling5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, i32* %package_id, align 8
  %package_id6 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom1, i32 2
  %4 = load i32, i32* %package_id6, align 8
  %cmp7.not = icmp eq i32 %3, %4
  br i1 %cmp7.not, label %if.end9, label %for.cond.backedge

if.end9:                                          ; preds = %if.end
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom1, i32 5
  call fastcc void @cpumask_set_cpu(i32 noundef %cpuid, %struct.cpumask* noundef %core_sibling) #14
  call fastcc void @cpumask_set_cpu(i32 noundef %call39, %struct.cpumask* noundef %core_sibling10) #14
  %5 = load i32, i32* %core_id, align 4
  %core_id11 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom1, i32 1
  %6 = load i32, i32* %core_id11, align 4
  %cmp12.not = icmp eq i32 %5, %6
  br i1 %cmp12.not, label %if.end14, label %for.cond.backedge

if.end14:                                         ; preds = %if.end9
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom1, i32 4
  call fastcc void @cpumask_set_cpu(i32 noundef %cpuid, %struct.cpumask* noundef %thread_sibling) #14
  call fastcc void @cpumask_set_cpu(i32 noundef %call39, %struct.cpumask* noundef %thread_sibling15) #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end14, %if.end, %if.end9
  %call = call i32 @cpumask_next(i32 noundef %call39, %struct.cpumask* noundef nonnull @__cpu_online_mask) #16
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.cond.backedge, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @reset_cpu_topology() local_unnamed_addr #9 section ".init.text" {
entry:
  %call9 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call11 = phi i32 [ %call, %for.body ], [ %call9, %entry ]
  %idxprom = zext i32 %call11 to i64
  %thread_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 0
  store i32 -1, i32* %thread_id, align 8
  %core_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 1
  store i32 -1, i32* %core_id, align 4
  %package_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 2
  store i32 -1, i32* %package_id, align 8
  %llc_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 3
  store i32 -1, i32* %llc_id, align 4
  call fastcc void @clear_cpu_topology(i32 noundef %call11) #14
  %call = call i32 @cpumask_next(i32 noundef %call11, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_cpu_topology(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %llc_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 6
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %llc_sibling) #14
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %llc_sibling) #14
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %core_sibling) #14
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %core_sibling) #14
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %thread_sibling) #14
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %thread_sibling) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @remove_cpu_topology(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  %call39 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %core_sibling) #16
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp40 = icmp ult i32 %call39, %0
  br i1 %cmp40, label %for.body, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body, %entry
  %1 = phi i32 [ %0, %entry ], [ %2, %for.body ]
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  %call742 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %thread_sibling) #16
  %cmp843 = icmp ult i32 %call742, %1
  br i1 %cmp843, label %for.body9, label %for.cond14.preheader

for.body:                                         ; preds = %entry, %for.body
  %call41 = phi i32 [ %call, %for.body ], [ %call39, %entry ]
  %idxprom1 = sext i32 %call41 to i64
  %core_sibling3 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom1, i32 5
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %core_sibling3) #14
  %call = call i32 @cpumask_next(i32 noundef %call41, %struct.cpumask* noundef %core_sibling) #16
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %for.body, label %for.cond4.preheader

for.cond14.preheader:                             ; preds = %for.body9, %for.cond4.preheader
  %3 = phi i32 [ %1, %for.cond4.preheader ], [ %4, %for.body9 ]
  %llc_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 6
  %call1745 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %llc_sibling) #16
  %cmp1846 = icmp ult i32 %call1745, %3
  br i1 %cmp1846, label %for.body19, label %for.end23

for.body9:                                        ; preds = %for.cond4.preheader, %for.body9
  %call744 = phi i32 [ %call7, %for.body9 ], [ %call742, %for.cond4.preheader ]
  %idxprom10 = sext i32 %call744 to i64
  %thread_sibling12 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom10, i32 4
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %thread_sibling12) #14
  %call7 = call i32 @cpumask_next(i32 noundef %call744, %struct.cpumask* noundef %thread_sibling) #16
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %call7, %4
  br i1 %cmp8, label %for.body9, label %for.cond14.preheader

for.body19:                                       ; preds = %for.cond14.preheader, %for.body19
  %call1747 = phi i32 [ %call17, %for.body19 ], [ %call1745, %for.cond14.preheader ]
  %idxprom20 = sext i32 %call1747 to i64
  %llc_sibling22 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom20, i32 6
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %llc_sibling22) #14
  %call17 = call i32 @cpumask_next(i32 noundef %call1747, %struct.cpumask* noundef %llc_sibling) #16
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp18 = icmp ult i32 %call17, %5
  br i1 %cmp18, label %for.body19, label %for.end23

for.end23:                                        ; preds = %for.body19, %for.cond14.preheader
  call fastcc void @clear_cpu_topology(i32 noundef %cpu) #14
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local i32 @parse_acpi_topology() local_unnamed_addr #9 section ".init.text" {
entry:
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_cpu_topology() local_unnamed_addr #9 section ".init.text" {
entry:
  call void @reset_cpu_topology() #20
  %call = call i32 @parse_acpi_topology() #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end5.sink.split

if.else:                                          ; preds = %entry
  %call1 = call fastcc i1 @of_have_populated_dt() #14
  br i1 %call1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.else
  %call2 = call fastcc i32 @parse_dt_topology() #20
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %land.lhs.true, %entry
  call void @reset_cpu_topology() #20
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.else, %land.lhs.true
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @of_have_populated_dt() unnamed_addr #11 {
entry:
  %0 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  %cmp = icmp ne %struct.device_node* %0, null
  ret i1 %cmp
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @parse_dt_topology() unnamed_addr #9 section ".init.text" {
entry:
  %call = call fastcc %struct.device_node* @of_find_node_by_path() #14
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #15
  %tobool3.not = icmp eq %struct.device_node* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @parse_cluster(%struct.device_node* noundef nonnull %call2, i32 noundef 0) #20
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @topology_normalize_cpu_scale() #14
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call928 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %cmp1029 = icmp ult i32 %call928, %0
  br i1 %cmp1029, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end8, %for.body
  %call931 = phi i32 [ %call9, %for.body ], [ %call928, %if.end8 ]
  %ret.030 = phi i32 [ %spec.select, %for.body ], [ 0, %if.end8 ]
  %idxprom = sext i32 %call931 to i64
  %package_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 2
  %1 = load i32, i32* %package_id, align 8
  %cmp11 = icmp eq i32 %1, -1
  %spec.select = select i1 %cmp11, i32 -22, i32 %ret.030
  %call9 = call i32 @cpumask_next(i32 noundef %call931, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #16
  %cmp10 = icmp ult i32 %call9, %0
  br i1 %cmp10, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end8, %if.end, %if.end5, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end ], [ %call6, %if.end5 ], [ 0, %if.end8 ], [ %spec.select, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_bit() #14
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit() unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @scale_freq_counters_mask, i64 0, i32 0, i64 0), i64 noundef 256) #15
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !18
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @cpu_capacity_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 36
  %0 = getelementptr inbounds i32, i32* %add.ptr, i64 101
  %1 = load i32, i32* %0, align 4
  %call = call fastcc i64 @topology_get_cpu_scale(i32 noundef %1) #14
  %call2 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 noundef %call) #15
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) unnamed_addr #11 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @cpu_scale to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i32* noundef %out_values) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #15
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 4)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #8 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #8 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_subset(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_subset(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_find_node_by_path() unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_find_node_opts_by_path(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** noundef null) #15
  ret %struct.device_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @parse_cluster(%struct.device_node* noundef %cluster, i32 noundef %depth) unnamed_addr #9 section ".init.text" {
entry:
  %name = alloca [20 x i8], align 1
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %0, i8 0, i64 20, i1 false), !annotation !14
  %add = add i32 %depth, 1
  %call120 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0) #15
  %call2121 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %cluster, i8* noundef nonnull %0) #15
  %tobool.not122 = icmp eq %struct.device_node* %call2121, null
  br i1 %tobool.not122, label %do.body7.preheader, label %if.then

do.body:                                          ; preds = %if.then
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 noundef %inc) #15
  %call2 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %cluster, i8* noundef nonnull %0) #15
  %tobool.not = icmp eq %struct.device_node* %call2, null
  br i1 %tobool.not, label %do.body7.preheader, label %if.then

if.then:                                          ; preds = %entry, %do.body
  %call2124 = phi %struct.device_node* [ %call2, %do.body ], [ %call2121, %entry ]
  %i.0123 = phi i32 [ %inc, %do.body ], [ 0, %entry ]
  %call3 = call fastcc i32 @parse_cluster(%struct.device_node* noundef nonnull %call2124, i32 noundef %add) #20
  %cmp.not = icmp eq i32 %call3, 0
  %inc = add i32 %i.0123, 1
  br i1 %cmp.not, label %do.body, label %cleanup

do.body7.preheader:                               ; preds = %do.body, %entry
  %call9100 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0) #15
  %call11101 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %cluster, i8* noundef nonnull %0) #15
  %tobool12.not102 = icmp eq %struct.device_node* %call11101, null
  br i1 %tobool12.not102, label %do.end39, label %if.then13.lr.ph

if.then13.lr.ph:                                  ; preds = %do.body7.preheader
  %cmp14 = icmp eq i32 %depth, 0
  br label %if.then13

if.then13:                                        ; preds = %if.then13.lr.ph, %if.end35
  %call11105 = phi %struct.device_node* [ %call11101, %if.then13.lr.ph ], [ %call11, %if.end35 ]
  %i.1104 = phi i32 [ 0, %if.then13.lr.ph ], [ %inc36, %if.end35 ]
  br i1 %cmp14, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.then13
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), %struct.device_node* noundef nonnull %call11101) #19
  br label %cleanup

if.end20:                                         ; preds = %if.then13
  br i1 %tobool.not122, label %if.end31, label %if.end31.thread

if.end31.thread:                                  ; preds = %if.end20
  %call30 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), %struct.device_node* noundef %cluster, i8* noundef nonnull %0) #19
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %1 = load i32, i32* @parse_cluster.package_id, align 4
  %call24 = call fastcc i32 @parse_core(%struct.device_node* noundef nonnull %call11105, i32 noundef %1, i32 noundef %i.1104) #20
  %cmp32.not = icmp eq i32 %call24, 0
  br i1 %cmp32.not, label %if.end35, label %cleanup

if.end35:                                         ; preds = %if.end31
  %inc36 = add i32 %i.1104, 1
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 noundef %inc36) #15
  %call11 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %cluster, i8* noundef nonnull %0) #15
  %tobool12.not = icmp eq %struct.device_node* %call11, null
  br i1 %tobool12.not, label %do.end39, label %if.then13

do.end39:                                         ; preds = %if.end35, %do.body7.preheader
  %brmerge.demorgan = and i1 %tobool.not122, %tobool12.not102
  br i1 %brmerge.demorgan, label %do.end45, label %if.end48

do.end45:                                         ; preds = %do.end39
  %call47 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), %struct.device_node* noundef %cluster) #19
  br label %if.end48

if.end48:                                         ; preds = %do.end39, %do.end45
  br i1 %tobool.not122, label %if.then50, label %cleanup

if.then50:                                        ; preds = %if.end48
  %2 = load i32, i32* @parse_cluster.package_id, align 4
  %inc51 = add i32 %2, 1
  store i32 %inc51, i32* @parse_cluster.package_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end31, %if.end31.thread, %if.end48, %if.then50, %do.end18
  %retval.0 = phi i32 [ -22, %do.end18 ], [ 0, %if.then50 ], [ 0, %if.end48 ], [ -22, %if.end31.thread ], [ %call24, %if.end31 ], [ %call3, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_node_opts_by_path(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @parse_core(%struct.device_node* noundef %core, i32 noundef %package_id, i32 noundef %core_id) unnamed_addr #9 section ".init.text" {
entry:
  %name = alloca [20 x i8], align 1
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %0, i8 0, i64 20, i1 false), !annotation !14
  %call84 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 20, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 noundef 0) #15
  %call285 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %core, i8* noundef nonnull %0) #15
  %tobool.not86 = icmp eq %struct.device_node* %call285, null
  br i1 %tobool.not86, label %do.end19.thread, label %if.then

if.then:                                          ; preds = %entry, %if.end16
  %call288 = phi %struct.device_node* [ %call2, %if.end16 ], [ %call285, %entry ]
  %i.087 = phi i32 [ %inc, %if.end16 ], [ 0, %entry ]
  %call3 = call fastcc i32 @get_cpu_for_node(%struct.device_node* noundef nonnull %call288) #20
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %idxprom81 = zext i32 %call3 to i64
  %package_id5 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom81, i32 2
  store i32 %package_id, i32* %package_id5, align 8
  %core_id8 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom81, i32 1
  store i32 %core_id, i32* %core_id8, align 4
  %thread_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom81, i32 0
  store i32 %i.087, i32* %thread_id, align 8
  br label %if.end16

if.else:                                          ; preds = %if.then
  %cmp11.not = icmp eq i32 %call3, -19
  br i1 %cmp11.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.else
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), %struct.device_node* noundef nonnull %call288) #19
  br label %cleanup

if.end16:                                         ; preds = %if.then4, %if.else
  %inc = add i32 %i.087, 1
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 20, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 noundef %inc) #15
  %call2 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %core, i8* noundef nonnull %0) #15
  %tobool.not = icmp eq %struct.device_node* %call2, null
  br i1 %tobool.not, label %do.end19, label %if.then

do.end19:                                         ; preds = %if.end16
  %call20 = call fastcc i32 @get_cpu_for_node(%struct.device_node* noundef %core) #20
  %cmp21 = icmp sgt i32 %call20, -1
  br i1 %cmp21, label %if.then22, label %if.else37

do.end19.thread:                                  ; preds = %entry
  %call2090 = call fastcc i32 @get_cpu_for_node(%struct.device_node* noundef %core) #20
  %cmp2191 = icmp sgt i32 %call2090, -1
  br i1 %cmp2191, label %if.end30, label %if.else37

if.then22:                                        ; preds = %do.end19
  br i1 %tobool.not86, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.then22
  %call29 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), %struct.device_node* noundef %core) #19
  br label %cleanup

if.end30:                                         ; preds = %do.end19.thread, %if.then22
  %call209395 = phi i32 [ %call20, %if.then22 ], [ %call2090, %do.end19.thread ]
  %idxprom3180 = zext i32 %call209395 to i64
  %package_id33 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom3180, i32 2
  store i32 %package_id, i32* %package_id33, align 8
  %core_id36 = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom3180, i32 1
  store i32 %core_id, i32* %core_id36, align 4
  br label %cleanup

if.else37:                                        ; preds = %do.end19.thread, %do.end19
  %call2092 = phi i32 [ %call2090, %do.end19.thread ], [ %call20, %do.end19 ]
  %cmp39 = icmp ne i32 %call2092, -19
  %or.cond = select i1 %tobool.not86, i1 %cmp39, i1 false
  br i1 %or.cond, label %do.end43, label %cleanup

do.end43:                                         ; preds = %if.else37
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), %struct.device_node* noundef %core) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.else37, %do.end43, %do.end27, %do.end
  %retval.0 = phi i32 [ -22, %do.end27 ], [ -22, %do.end43 ], [ -22, %do.end ], [ 0, %if.else37 ], [ 0, %if.end30 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @get_cpu_for_node(%struct.device_node* noundef %node) unnamed_addr #9 section ".init.text" {
entry:
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 noundef 0) #15
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_cpu_node_to_id(%struct.device_node* noundef nonnull %call) #15
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.end
  %call3 = call i1 @topology_parse_cpu_capacity(%struct.device_node* noundef nonnull %call, i32 noundef %call1) #20
  br label %cleanup

do.end:                                           ; preds = %if.end
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), %struct.device_node* noundef nonnull %call, i32 noundef %0, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call1, %do.end ], [ %call1, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(%struct.device_node* noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2154678290}
!9 = !{i8 0, i8 2}
!10 = !{i64 2149043644, i64 2149043691, i64 2149043697, i64 2149043734, i64 2149043752, i64 2149044679, i64 2149044727, i64 2149044775, i64 2149044838, i64 2149044887, i64 2149043830, i64 2149043855, i64 2149043881, i64 2149043887, i64 2149043924, i64 2149043930, i64 2149043980, i64 2149044026, i64 2149044059}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2154768713}
!13 = !{i64 0, i64 4398046510081}
!14 = !{!"auto-init"}
!15 = !{i64 2149551593}
!16 = !{i64 2147905115, i64 2147905626, i64 2147905656, i64 2147905682, i64 2147905714, i64 2147905743}
!17 = !{i64 2149551810}
!18 = !{i64 2147915685, i64 2147916206, i64 2147916236, i64 2147916262, i64 2147916294, i64 2147916323}
