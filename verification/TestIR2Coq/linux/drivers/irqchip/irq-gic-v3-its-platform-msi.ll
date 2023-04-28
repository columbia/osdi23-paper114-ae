; ModuleID = 'drivers/irqchip/irq-gic-v3-its-platform-msi.c'
source_filename = "drivers/irqchip/irq-gic-v3-its-platform-msi.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_irq_gic_v3_its_platform_msi__215_163_its_pmsi_initearly:\09\09\09"
module asm ".long\09its_pmsi_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.msi_domain_info = type { i32, %struct.msi_domain_ops*, %struct.irq_chip*, i8*, void (%struct.irq_desc*)*, i8*, i8*, i8* }
%struct.msi_domain_ops = type { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, void (%struct.msi_alloc_info*, i32)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)*, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)*, void (%struct.irq_domain*, %struct.device*)* }
%struct.msi_alloc_info = type { %struct.msi_desc*, i64, i64, [2 x %union.anon.51] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.46 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.42, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.42 = type { %struct.kernfs_elem_dir }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [4 x i64] }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
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
%struct.address_space = type opaque
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.41, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.24, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.5 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
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
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.15 }
%struct.anon.15 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.23, i32, [12 x i8] }
%union.anon.23 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.25, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.39 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.40, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.40 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.41 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.msi_msg = type { %union.anon.43, %union.anon.44, %union.anon.45 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%struct.irq_affinity_desc = type opaque
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { %union.anon.48, %struct.anon.49, %union.anon.50 }
%union.anon.48 = type { i32 }
%struct.anon.49 = type { i16, i16, i32 }
%union.anon.50 = type { i8* }
%union.anon.51 = type { i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type opaque
%struct.irq_affinity_notify = type opaque
%struct.proc_dir_entry = type opaque
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }

@__UNIQUE_ID___addressable_its_pmsi_init216 = internal global i8* bitcast (i32 ()* @its_pmsi_init to i8*), section ".discard.addressable", align 8
@its_device_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3-its\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 8
@.str = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\013%s: unable to locate ITS domain\0A\00", align 1
@its_pmsi_domain_info = internal global %struct.msi_domain_info { i32 3, %struct.msi_domain_ops* @its_pmsi_ops, %struct.irq_chip* @its_pmsi_irq_chip, i8* null, void (%struct.irq_desc*)* null, i8* null, i8* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"\013%s: unable to create platform domain\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\016Platform MSI: %s domain created\0A\00", align 1
@its_pmsi_ops = internal global %struct.msi_domain_ops { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)* null, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)* null, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)* null, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)* null, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)* @its_pmsi_prepare, void (%struct.msi_alloc_info*, i32)* null, void (%struct.msi_alloc_info*, %struct.msi_desc*)* null, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)* null, i32 (%struct.irq_domain*, %struct.device*, i32)* null, void (%struct.irq_domain*, %struct.device*)* null }, align 8
@its_pmsi_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i32 (%struct.irq_data*, %struct.cpumask*, i1)* null, i32 (%struct.irq_data*)* null, i32 (%struct.irq_data*, i32)* null, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, {}* null, {}* null, i32 (%struct.irq_data*, i8*)* null, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"#msi-cells\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"ITS-pMSI\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_its_pmsi_init216 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @iort_pmsi_get_dev_id(%struct.device* noundef %dev, i32* noundef %dev_id) local_unnamed_addr #0 {
entry:
  ret i32 -1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @its_pmsi_init() #1 section ".init.text" {
entry:
  call fastcc void @its_pmsi_of_init() #10
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @its_pmsi_of_init() unnamed_addr #1 section ".init.text" {
entry:
  %call = call fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef null) #11
  %tobool.not14 = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not14, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %np.015 = phi %struct.device_node* [ %call7, %for.inc ], [ %call, %entry ]
  %call1 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %np.015) #12
  br i1 %call1, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call2 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef nonnull %np.015) #11
  br i1 %call2, label %if.end4, label %for.inc

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef nonnull %np.015) #11
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np.015, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  call fastcc void @its_pmsi_init_one(%struct.fwnode_handle* noundef %call5, i8* noundef %0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body, %if.end4
  %call7 = call fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef nonnull %np.015) #11
  %tobool.not = icmp eq %struct.device_node* %call7, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef %from) unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef %from, %struct.of_device_id* noundef getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @its_device_id, i64 0, i64 0), %struct.of_device_id** noundef null) #12
  ret %struct.device_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* noundef null) #12
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @its_pmsi_init_one(%struct.fwnode_handle* noundef %fwnode, i8* noundef %name) unnamed_addr #1 section ".init.text" {
entry:
  %call = call fastcc %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* noundef %fwnode) #11
  %tobool.not = icmp eq %struct.irq_domain* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call %struct.msi_domain_info* @msi_get_domain_info(%struct.irq_domain* noundef nonnull %call) #12
  %tobool2.not = icmp eq %struct.msi_domain_info* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call %struct.irq_domain* @platform_msi_create_irq_domain(%struct.fwnode_handle* noundef %fwnode, %struct.msi_domain_info* noundef nonnull @its_pmsi_domain_info, %struct.irq_domain* noundef nonnull %call) #12
  %tobool5.not = icmp eq %struct.irq_domain* %call4, null
  %. = select i1 %tobool5.not, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry
  %.sink = phi i8* [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %entry ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %lor.lhs.false ], [ %., %if.end ]
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef %.sink, i8* noundef %name) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef readnone %node) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  %cond = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef, %struct.of_device_id* noundef, %struct.of_device_id** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #0 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #14
  %fwnode1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode1, align 8
  %call = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* noundef nonnull %fwspec, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #14
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.msi_domain_info* @msi_get_domain_info(%struct.irq_domain* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @platform_msi_create_irq_domain(%struct.fwnode_handle* noundef, %struct.msi_domain_info* noundef, %struct.irq_domain* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_pmsi_prepare(%struct.irq_domain* nocapture noundef readonly %domain, %struct.device* noundef %dev, i32 noundef %nvec, %struct.msi_alloc_info* noundef %info) #0 {
entry:
  %dev_id = alloca i32, align 4
  %0 = bitcast i32* %dev_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %dev_id, align 4, !annotation !7
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %1 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %call = call %struct.msi_domain_info* @msi_get_domain_info(%struct.irq_domain* noundef %1) #12
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @of_pmsi_get_dev_id(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev, i32* noundef nonnull %dev_id) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @iort_pmsi_get_dev_id(%struct.device* noundef %dev, i32* noundef nonnull %dev_id) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  %tobool3.not = icmp eq i32 %ret.0, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load i32, i32* %dev_id, align 4
  %conv = zext i32 %3 to i64
  %ul = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %info, i64 0, i32 3, i64 0, i32 0
  store i64 %conv, i64* %ul, align 8
  %conv25 = sext i32 %nvec to i64
  %call26 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv25) #15
  %conv29 = trunc i64 %call26 to i32
  %4 = icmp sgt i32 %conv29, 32
  %cond35 = select i1 %4, i32 %conv29, i32 32
  %ops = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %call, i64 0, i32 1
  %5 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8
  %msi_prepare = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %5, i64 0, i32 4
  %6 = load i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)** %msi_prepare, align 8
  %7 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %call37 = call i32 %6(%struct.irq_domain* noundef %7, %struct.device* noundef %dev, i32 noundef %cond35, %struct.msi_alloc_info* noundef %info) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5
  %retval.0 = phi i32 [ %call37, %if.end5 ], [ %ret.0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_pmsi_get_dev_id(%struct.irq_domain* nocapture noundef readonly %domain, %struct.device* nocapture noundef readonly %dev, i32* nocapture noundef writeonly %dev_id) unnamed_addr #0 {
entry:
  %args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %args to i8*
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %index.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond ]
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %index.0, %struct.of_phandle_args* noundef nonnull %args) #12
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8
  %call1 = call fastcc %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain* noundef %domain) #11
  %cmp = icmp eq %struct.device_node* %2, %call1
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 1
  %3 = load i32, i32* %args_count, align 8
  %cmp2.not = icmp eq i32 %3, 1
  br i1 %cmp2.not, label %cleanup, label %cleanup.thread, !prof !8

cleanup.thread:                                   ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its-platform-msi.c\22; .popsection; .long 14472b - 14470b; .short 30; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #14
  br label %cleanup25

cleanup:                                          ; preds = %if.then
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 2, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %dev_id, align 4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #14
  br label %cleanup25

do.cond:                                          ; preds = %do.body
  %inc = add i32 %index.0, 1
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #14
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %do.body, label %cleanup25

cleanup25:                                        ; preds = %do.cond, %cleanup, %cleanup.thread
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ %call, %cleanup ], [ %call, %do.cond ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #8 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #11
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.of_phandle_args* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain* nocapture noundef readonly %d) unnamed_addr #9 {
entry:
  %fwnode = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 6
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %0) #11
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %0, i64 -1, i32 4
  %1 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %1, %struct.device_node* null
  ret %struct.device_node* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #9 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #11
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #8 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #14, !range !10
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold nobuiltin "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152715316}
!10 = !{i64 0, i64 65}
