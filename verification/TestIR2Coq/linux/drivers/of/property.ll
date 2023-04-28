; ModuleID = 'drivers/of/property.c'
source_filename = "drivers/of/property.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type opaque
%struct.irq_affinity_notify = type opaque
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.supplier_bindings = type { %struct.device_node* (%struct.device_node*, i8*, i32)*, i8, i8 }
%struct.of_endpoint = type { i32, i32, %struct.device_node* }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013OF: size of %s in node %pOF is not a multiple of %d\0A\00", align 1
@of_graph_parse_endpoint.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s(): endpoint %pOF has no parent node\0A\00", align 1
@__func__.of_graph_parse_endpoint = private unnamed_addr constant [24 x i8] c"of_graph_parse_endpoint\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\013OF: graph: no port node found in %pOF\0A\00", align 1
@of_graph_get_next_endpoint.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.of_graph_get_next_endpoint = private unnamed_addr constant [27 x i8] c"of_graph_get_next_endpoint\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@of_fwnode_ops = dso_local constant %struct.fwnode_operations { %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_get, void (%struct.fwnode_handle*)* @of_fwnode_put, i1 (%struct.fwnode_handle*)* @of_fwnode_device_is_available, i8* (%struct.fwnode_handle*, %struct.device*)* @of_fwnode_device_get_match_data, i1 (%struct.fwnode_handle*, i8*)* @of_fwnode_property_present, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* @of_fwnode_property_read_int_array, i32 (%struct.fwnode_handle*, i8*, i8**, i64)* @of_fwnode_property_read_string_array, i8* (%struct.fwnode_handle*)* @of_fwnode_get_name, i8* (%struct.fwnode_handle*)* @of_fwnode_get_name_prefix, %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_get_parent, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @of_fwnode_get_next_child_node, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* @of_fwnode_get_named_child_node, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @of_fwnode_get_reference_args, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @of_fwnode_graph_get_next_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_graph_get_remote_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_graph_get_port_parent, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* @of_fwnode_graph_parse_endpoint, i32 (%struct.fwnode_handle*)* @of_fwnode_add_links }, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@of_supplier_bindings = internal unnamed_addr constant [34 x %struct.supplier_bindings] [%struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_clocks, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_interconnects, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_iommus, i8 1, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_iommu_maps, i8 1, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_mboxes, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_io_channels, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_interrupt_parent, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_dmas, i8 1, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_power_domains, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_hwlocks, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_extcon, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_nvmem_cells, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_phys, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_wakeup_parent, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl0, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl1, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl2, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl3, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl4, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl5, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl6, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl7, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl8, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_remote_endpoint, i8 0, i8 1 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pwms, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_resets, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_leds, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_backlight, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_gpio_compat, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_interrupts, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_regulators, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_gpio, i8 0, i8 0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_gpios, i8 0, i8 0 }, %struct.supplier_bindings zeroinitializer], align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"iommu-map\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"io-channel\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"#io-channel-cells\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"hwlocks\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"#hwlock-cells\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"wakeup-parent\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"pinctrl-0\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"pinctrl-1\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"pinctrl-2\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"pinctrl-3\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"pinctrl-4\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"pinctrl-5\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"pinctrl-6\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"pinctrl-7\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"pinctrl-8\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"pwms\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"#pwm-cells\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"gpio-hog\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"-supply\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"-gpio\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c",nr-gpios\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"-gpios\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @of_graph_is_present(%struct.device_node* noundef %node) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #12
  %tobool.not = icmp eq %struct.device_node* %call, null
  %spec.select = select i1 %tobool.not, %struct.device_node* %node, %struct.device_node* %call
  %call1 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %spec.select, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #12
  %tobool2 = icmp ne %struct.device_node* %call1, null
  ret i1 %tobool2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_count_elems_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %elem_size) local_unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #12
  %tobool.not = icmp eq %struct.property* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 1
  %1 = load i32, i32* %length, align 8
  %.frozen = freeze i32 %1
  %div = sdiv i32 %.frozen, %elem_size
  %2 = mul i32 %div, %elem_size
  %rem.decomposed = sub i32 %.frozen, %2
  %cmp.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end3
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef %propname, %struct.device_node* noundef %np, i32 noundef %elem_size) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry ], [ -61, %if.end ], [ %div, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_u32_index(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %index, i32* nocapture noundef writeonly %out_value) local_unnamed_addr #0 {
entry:
  %add = shl i32 %index, 2
  %mul = add i32 %add, 4
  %call = call fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %mul, i32 noundef 0, i64* noundef null) #14
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %call) #14
  br i1 %call2, label %if.then, label %__be32_to_cpup.exit

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %call) #14
  %conv4 = trunc i64 %call3 to i32
  br label %cleanup

__be32_to_cpup.exit:                              ; preds = %entry
  %0 = bitcast i8* %call to i32*
  %idx.ext = zext i32 %index to i64
  %add.ptr = getelementptr i32, i32* %0, i64 %idx.ext
  %1 = load i32, i32* %add.ptr, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %1) #15
  store i32 %call.i.i, i32* %out_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %__be32_to_cpup.exit, %if.then
  %retval.0 = phi i32 [ %conv4, %if.then ], [ 0, %__be32_to_cpup.exit ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %min, i32 noundef %max, i64* noundef writeonly %len) unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #12
  %tobool.not = icmp eq %struct.property* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  %tobool2.not = icmp eq i8* %0, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -61) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 1
  %1 = load i32, i32* %length, align 8
  %cmp = icmp ult i32 %1, %min
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end5
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -75) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %tobool9.not = icmp ne i32 %max, 0
  %cmp11 = icmp ugt i32 %1, %max
  %or.cond = select i1 %tobool9.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %call13 = call fastcc i8* @ERR_PTR(i64 noundef -75) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %tobool15.not = icmp eq i64* %len, null
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end14
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %len, align 8
  %.pre = load i8*, i8** %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then16, %if.then12, %if.then6, %if.then3, %if.then
  %retval.0 = phi i8* [ %call7, %if.then6 ], [ %call13, %if.then12 ], [ %call4, %if.then3 ], [ %call1, %if.then ], [ %.pre, %if.then16 ], [ %0, %if.end14 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_u64_index(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %index, i64* nocapture noundef writeonly %out_value) local_unnamed_addr #0 {
entry:
  %add = shl i32 %index, 3
  %mul = add i32 %add, 8
  %call = call fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %mul, i32 noundef 0, i64* noundef null) #14
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %call) #14
  br i1 %call2, label %if.then, label %__be64_to_cpup.exit

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %call) #14
  %conv4 = trunc i64 %call3 to i32
  br label %cleanup

__be64_to_cpup.exit:                              ; preds = %entry
  %0 = bitcast i8* %call to i64*
  %idx.ext = zext i32 %index to i64
  %add.ptr = getelementptr i64, i64* %0, i64 %idx.ext
  %1 = load i64, i64* %add.ptr, align 8
  %call.i.i = call fastcc i64 @__fswab64(i64 noundef %1) #15
  store i64 %call.i.i, i64* %out_value, align 8
  br label %cleanup

cleanup:                                          ; preds = %__be64_to_cpup.exit, %if.then
  %retval.0 = phi i32 [ %conv4, %if.then ], [ 0, %__be64_to_cpup.exit ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_variable_u8_array(%struct.device_node* noundef %np, i8* noundef %propname, i8* nocapture noundef writeonly %out_values, i64 noundef %sz_min, i64 noundef %sz_max) local_unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %sz, align 8, !annotation !7
  %conv = trunc i64 %sz_min to i32
  %conv2 = trunc i64 %sz_max to i32
  %call = call fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %conv, i32 noundef %conv2, i64* noundef nonnull %sz) #14
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call) #14
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %sz_max, 0
  br i1 %tobool.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  %.pre = load i64, i64* %sz, align 8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  store i64 %sz_min, i64* %sz, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.then6
  %1 = phi i64 [ %.pre, %if.end.if.end7_crit_edge ], [ %sz_min, %if.then6 ]
  %tobool8.not19 = icmp eq i64 %1, 0
  br i1 %tobool8.not19, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end7, %while.body
  %val.022 = phi i8* [ %incdec.ptr, %while.body ], [ %call, %if.end7 ]
  %count.021 = phi i64 [ %dec, %while.body ], [ %1, %if.end7 ]
  %out_values.addr.020 = phi i8* [ %incdec.ptr9, %while.body ], [ %out_values, %if.end7 ]
  %dec = add i64 %count.021, -1
  %incdec.ptr = getelementptr i8, i8* %val.022, i64 1
  %2 = load i8, i8* %val.022, align 1
  %incdec.ptr9 = getelementptr i8, i8* %out_values.addr.020, i64 1
  store i8 %2, i8* %out_values.addr.020, align 1
  %tobool8.not = icmp eq i64 %dec, 0
  br i1 %tobool8.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end7, %if.then
  %retval.0.in = phi i64 [ %call4, %if.then ], [ 0, %if.end7 ], [ %1, %while.body ]
  %retval.0 = trunc i64 %retval.0.in to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_variable_u16_array(%struct.device_node* noundef %np, i8* noundef %propname, i16* nocapture noundef writeonly %out_values, i64 noundef %sz_min, i64 noundef %sz_max) local_unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %sz, align 8, !annotation !7
  %sz_min.tr = trunc i64 %sz_min to i32
  %conv = shl i32 %sz_min.tr, 1
  %sz_max.tr = trunc i64 %sz_max to i32
  %conv2 = shl i32 %sz_max.tr, 1
  %call = call fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %conv, i32 noundef %conv2, i64* noundef nonnull %sz) #14
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call) #14
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %sz_max, 0
  %1 = load i64, i64* %sz, align 8
  %div = lshr i64 %1, 1
  %storemerge = select i1 %tobool.not, i64 %sz_min, i64 %div
  store i64 %storemerge, i64* %sz, align 8
  %tobool8.not20 = icmp eq i64 %storemerge, 0
  br i1 %tobool8.not20, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  %2 = bitcast i8* %call to i16*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %val.023 = phi i16* [ %incdec.ptr, %while.body ], [ %2, %while.body.preheader ]
  %count.022 = phi i64 [ %dec, %while.body ], [ %storemerge, %while.body.preheader ]
  %out_values.addr.021 = phi i16* [ %incdec.ptr10, %while.body ], [ %out_values, %while.body.preheader ]
  %dec = add i64 %count.022, -1
  %incdec.ptr = getelementptr i16, i16* %val.023, i64 1
  %3 = load i16, i16* %val.023, align 2
  %call.i.i = call fastcc i16 @__fswab16(i16 noundef %3) #15
  %incdec.ptr10 = getelementptr i16, i16* %out_values.addr.021, i64 1
  store i16 %call.i.i, i16* %out_values.addr.021, align 2
  %tobool8.not = icmp eq i64 %dec, 0
  br i1 %tobool8.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %if.then
  %retval.0.in = phi i64 [ %call4, %if.then ], [ 0, %if.end ], [ %storemerge, %while.body ]
  %retval.0 = trunc i64 %retval.0.in to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* nocapture noundef writeonly %out_values, i64 noundef %sz_min, i64 noundef %sz_max) local_unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %sz, align 8, !annotation !7
  %sz_min.tr = trunc i64 %sz_min to i32
  %conv = shl i32 %sz_min.tr, 2
  %sz_max.tr = trunc i64 %sz_max to i32
  %conv2 = shl i32 %sz_max.tr, 2
  %call = call fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %conv, i32 noundef %conv2, i64* noundef nonnull %sz) #14
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call) #14
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %sz_max, 0
  %1 = load i64, i64* %sz, align 8
  %div = lshr i64 %1, 2
  %storemerge = select i1 %tobool.not, i64 %sz_min, i64 %div
  store i64 %storemerge, i64* %sz, align 8
  %tobool8.not20 = icmp eq i64 %storemerge, 0
  br i1 %tobool8.not20, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  %2 = bitcast i8* %call to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %val.023 = phi i32* [ %incdec.ptr, %while.body ], [ %2, %while.body.preheader ]
  %count.022 = phi i64 [ %dec, %while.body ], [ %storemerge, %while.body.preheader ]
  %out_values.addr.021 = phi i32* [ %incdec.ptr10, %while.body ], [ %out_values, %while.body.preheader ]
  %dec = add i64 %count.022, -1
  %incdec.ptr = getelementptr i32, i32* %val.023, i64 1
  %3 = load i32, i32* %val.023, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %3) #15
  %incdec.ptr10 = getelementptr i32, i32* %out_values.addr.021, i64 1
  store i32 %call.i.i, i32* %out_values.addr.021, align 4
  %tobool8.not = icmp eq i64 %dec, 0
  br i1 %tobool8.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %if.then
  %retval.0.in = phi i64 [ %call4, %if.then ], [ 0, %if.end ], [ %storemerge, %while.body ]
  %retval.0 = trunc i64 %retval.0.in to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_u64(%struct.device_node* noundef %np, i8* noundef %propname, i64* nocapture noundef writeonly %out_value) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef 8, i32 noundef 0, i64* noundef null) #14
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %call) #14
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %call) #14
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to i32*
  %call3 = call fastcc i64 @of_read_number(i32* noundef %0) #14
  store i64 %call3, i64* %out_value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell) unnamed_addr #5 {
entry:
  %0 = load i32, i32* %cell, align 4
  %incdec.ptr = getelementptr i32, i32* %cell, i64 1
  %1 = load i32, i32* %incdec.ptr, align 4
  %call.1 = call fastcc i32 @__fswab32(i32 noundef %1) #15
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #15
  %conv = zext i32 %call to i64
  %shl.1 = shl nuw i64 %conv, 32
  %conv.1 = zext i32 %call.1 to i64
  %or9.1 = or i64 %shl.1, %conv.1
  ret i64 %or9.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_variable_u64_array(%struct.device_node* noundef %np, i8* noundef %propname, i64* nocapture noundef writeonly %out_values, i64 noundef %sz_min, i64 noundef %sz_max) local_unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %sz, align 8, !annotation !7
  %sz_min.tr = trunc i64 %sz_min to i32
  %conv = shl i32 %sz_min.tr, 3
  %sz_max.tr = trunc i64 %sz_max to i32
  %conv2 = shl i32 %sz_max.tr, 3
  %call = call fastcc i8* @of_find_property_value_of_size(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %conv, i32 noundef %conv2, i64* noundef nonnull %sz) #14
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call) #14
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %sz_max, 0
  %1 = load i64, i64* %sz, align 8
  %div = lshr i64 %1, 3
  %storemerge = select i1 %tobool.not, i64 %sz_min, i64 %div
  store i64 %storemerge, i64* %sz, align 8
  %tobool8.not20 = icmp eq i64 %storemerge, 0
  br i1 %tobool8.not20, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  %2 = bitcast i8* %call to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %val.023 = phi i32* [ %add.ptr, %while.body ], [ %2, %while.body.preheader ]
  %count.022 = phi i64 [ %dec, %while.body ], [ %storemerge, %while.body.preheader ]
  %out_values.addr.021 = phi i64* [ %incdec.ptr, %while.body ], [ %out_values, %while.body.preheader ]
  %dec = add i64 %count.022, -1
  %call9 = call fastcc i64 @of_read_number(i32* noundef %val.023) #14
  %incdec.ptr = getelementptr i64, i64* %out_values.addr.021, i64 1
  store i64 %call9, i64* %out_values.addr.021, align 8
  %add.ptr = getelementptr i32, i32* %val.023, i64 2
  %tobool8.not = icmp eq i64 %dec, 0
  br i1 %tobool8.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %if.then
  %retval.0.in = phi i64 [ %call4, %if.then ], [ 0, %if.end ], [ %storemerge, %while.body ]
  %retval.0 = trunc i64 %retval.0.in to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_string(%struct.device_node* noundef %np, i8* noundef %propname, i8** nocapture noundef writeonly %out_string) local_unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #12
  %tobool.not = icmp eq %struct.property* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 1
  %1 = load i32, i32* %length, align 8
  %conv = sext i32 %1 to i64
  %call5 = call i64 @strnlen(i8* noundef nonnull %0, i64 noundef %conv) #12
  %2 = load i32, i32* %length, align 8
  %conv7 = sext i32 %2 to i64
  %cmp.not = icmp ult i64 %call5, %conv7
  br i1 %cmp.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end3
  %3 = load i8*, i8** %value, align 8
  store i8* %3, i8** %out_string, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry ], [ -61, %if.end ], [ -84, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_match_string(%struct.device_node* noundef %np, i8* noundef %propname, i8* noundef %string) local_unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #12
  %tobool.not = icmp eq %struct.property* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 1
  %1 = load i32, i32* %length, align 8
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %cmp37 = icmp ult i8* %0, %add.ptr
  br i1 %cmp37, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end3, %for.inc
  %p.039 = phi i8* [ %add.ptr6, %for.inc ], [ %0, %if.end3 ]
  %i.038 = phi i32 [ %inc, %for.inc ], [ 0, %if.end3 ]
  %sub.ptr.rhs.cast = ptrtoint i8* %p.039 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call i64 @strnlen(i8* noundef %p.039, i64 noundef %sub.ptr.sub) #12
  %add = add i64 %call5, 1
  %add.ptr6 = getelementptr i8, i8* %p.039, i64 %add
  %cmp7 = icmp ugt i8* %add.ptr6, %add.ptr
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %for.body
  %call10 = call i32 @strcmp(i8* noundef %string, i8* noundef %p.039) #12
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end9
  %inc = add i32 %i.038, 1
  %cmp = icmp ult i8* %add.ptr6, %add.ptr
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end9, %for.inc, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -61, %if.end ], [ -61, %if.end3 ], [ -84, %for.body ], [ %i.038, %if.end9 ], [ -61, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_property_read_string_helper(%struct.device_node* noundef %np, i8* noundef %propname, i8** noundef writeonly %out_strs, i64 noundef %sz, i32 noundef %skip) local_unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #12
  %tobool.not = icmp eq %struct.property* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 1
  %1 = load i32, i32* %length, align 8
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  %cmp58 = icmp ult i8* %0, %add.ptr
  br i1 %cmp58, label %land.rhs.lr.ph, label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end3
  %conv6 = sext i32 %skip to i64
  %add = add i64 %conv6, %sz
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %p.062 = phi i8* [ %0, %land.rhs.lr.ph ], [ %add.ptr13, %for.inc ]
  %i.060 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %out_strs.addr.059 = phi i8** [ %out_strs, %land.rhs.lr.ph ], [ %out_strs.addr.1, %for.inc ]
  %tobool5.not = icmp eq i8** %out_strs.addr.059, null
  %conv = sext i32 %i.060 to i64
  %cmp7 = icmp ugt i64 %add, %conv
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp7
  br i1 %or.cond, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %sub.ptr.rhs.cast = ptrtoint i8* %p.062 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call9 = call i64 @strnlen(i8* noundef %p.062, i64 noundef %sub.ptr.sub) #12
  %conv11 = shl i64 %call9, 32
  %sext = add i64 %conv11, 4294967296
  %idx.ext12 = ashr exact i64 %sext, 32
  %add.ptr13 = getelementptr i8, i8* %p.062, i64 %idx.ext12
  %cmp14 = icmp ugt i8* %add.ptr13, %add.ptr
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %for.body
  br i1 %tobool5.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %cmp19.not = icmp slt i32 %i.060, %skip
  br i1 %cmp19.not, label %for.inc, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %incdec.ptr = getelementptr i8*, i8** %out_strs.addr.059, i64 1
  store i8* %p.062, i8** %out_strs.addr.059, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %land.lhs.true, %if.then21
  %out_strs.addr.1 = phi i8** [ %incdec.ptr, %if.then21 ], [ %out_strs.addr.059, %land.lhs.true ], [ null, %if.end17 ]
  %inc = add i32 %i.060, 1
  %cmp = icmp ult i8* %add.ptr13, %add.ptr
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %land.rhs, %for.inc, %if.end3
  %i.0.lcssa = phi i32 [ 0, %if.end3 ], [ %inc, %for.inc ], [ %i.060, %land.rhs ]
  %sub = sub i32 %i.0.lcssa, %skip
  %cmp25 = icmp slt i32 %sub, 1
  %cond = select i1 %cmp25, i32 -61, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end, %entry, %for.end
  %retval.0 = phi i32 [ %cond, %for.end ], [ -22, %entry ], [ -61, %if.end ], [ -84, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32* @of_prop_next_u32(%struct.property* noundef readonly %prop, i32* noundef readonly %cur, i32* nocapture noundef writeonly %pu) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.property* %prop, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32* %cur, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %value = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 2
  %0 = bitcast i8** %value to i32**
  %1 = load i32*, i32** %0, align 8
  br label %__be32_to_cpup.exit

if.end3:                                          ; preds = %if.end
  %add.ptr16 = getelementptr i32, i32* %cur, i64 1
  %add.ptr = bitcast i32* %add.ptr16 to i8*
  %value4 = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 2
  %2 = load i8*, i8** %value4, align 8
  %length = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 1
  %3 = load i32, i32* %length, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr5 = getelementptr i8, i8* %2, i64 %idx.ext
  %cmp.not = icmp ugt i8* %add.ptr5, %add.ptr
  br i1 %cmp.not, label %__be32_to_cpup.exit, label %cleanup

__be32_to_cpup.exit:                              ; preds = %if.end3, %if.then2
  %4 = phi i32* [ %add.ptr16, %if.end3 ], [ %1, %if.then2 ]
  %5 = load i32, i32* %4, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %5) #15
  store i32 %call.i.i, i32* %pu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %__be32_to_cpup.exit
  %retval.0 = phi i32* [ %4, %__be32_to_cpup.exit ], [ null, %entry ], [ null, %if.end3 ]
  ret i32* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @of_prop_next_string(%struct.property* noundef readonly %prop, i8* noundef %cur) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.property* %prop, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8* %cur, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %value = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call i64 @strlen(i8* noundef nonnull %cur) #12
  %add = add i64 %call, 1
  %add.ptr = getelementptr i8, i8* %cur, i64 %add
  %value4 = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 2
  %1 = load i8*, i8** %value4, align 8
  %length = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 1
  %2 = load i32, i32* %length, align 8
  %idx.ext = sext i32 %2 to i64
  %add.ptr5 = getelementptr i8, i8* %1, i64 %idx.ext
  %cmp.not = icmp ult i8* %add.ptr, %add.ptr5
  %add.ptr. = select i1 %cmp.not, i8* %add.ptr, i8* null
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %if.then2
  %retval.0 = phi i8* [ %0, %if.then2 ], [ null, %entry ], [ %add.ptr., %if.end3 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_graph_parse_endpoint(%struct.device_node* noundef %node, %struct.of_endpoint* noundef %endpoint) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_get_parent(%struct.device_node* noundef %node) #12
  %tobool.not = icmp eq %struct.device_node* %call, null
  %.b55 = load i1, i1* @of_graph_parse_endpoint.__already_done, align 1
  %lnot5 = xor i1 %.b55, true
  %0 = select i1 %tobool.not, i1 %lnot5, i1 false
  br i1 %0, label %if.then, label %if.end31, !prof !8

if.then:                                          ; preds = %entry
  store i1 true, i1* @of_graph_parse_endpoint.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.of_graph_parse_endpoint, i64 0, i64 0), %struct.device_node* noundef %node) #12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/property.c\22; .popsection; .long 14472b - 14470b; .short 580; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !9
  br label %if.end31

if.end31:                                         ; preds = %if.then, %entry
  %1 = bitcast %struct.of_endpoint* %endpoint to i8*
  %call40 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 16) #12
  %local_node = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %endpoint, i64 0, i32 2
  store %struct.device_node* %node, %struct.device_node** %local_node, align 8
  %port = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %endpoint, i64 0, i32 0
  call fastcc void @of_property_read_u32(%struct.device_node* noundef %call, i32* noundef %port) #14
  %id = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %endpoint, i64 0, i32 1
  call fastcc void @of_property_read_u32(%struct.device_node* noundef %node, i32* noundef %id) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_property_read_u32(%struct.device_node* noundef %np, i32* nocapture noundef writeonly %out_value) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* noundef %out_value, i64 noundef 1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_port_by_id(%struct.device_node* noundef %parent, i32 noundef %id) local_unnamed_addr #0 {
entry:
  %port_id = alloca i32, align 4
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %parent, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #12
  %tobool.not = icmp eq %struct.device_node* %call, null
  %spec.select = select i1 %tobool.not, %struct.device_node* %parent, %struct.device_node* %call
  %call1 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %spec.select, %struct.device_node* noundef null) #12
  %cmp.not25 = icmp eq %struct.device_node* %call1, null
  br i1 %cmp.not25, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = bitcast i32* %port_id to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %port.026 = phi %struct.device_node* [ %call1, %for.body.lr.ph ], [ %call9, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %port_id, align 4
  %call2 = call i1 @of_node_name_eq(%struct.device_node* noundef nonnull %port.026, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #12
  br i1 %call2, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %port.026, i32* noundef nonnull %port_id) #14
  %1 = load i32, i32* %port_id, align 4
  %cmp6 = icmp eq i32 %1, %id
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  br i1 %cmp6, label %for.end, label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %cleanup
  %call9 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %spec.select, %struct.device_node* noundef nonnull %port.026) #12
  %cmp.not = icmp eq %struct.device_node* %call9, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cleanup, %entry
  %port.0.lcssa = phi %struct.device_node* [ null, %entry ], [ %port.026, %cleanup ], [ null, %for.inc ]
  ret %struct.device_node* %port.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node* noundef, %struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_node_name_eq(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* noundef %parent, %struct.device_node* noundef %prev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %parent, null
  br i1 %tobool.not, label %cleanup76, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.device_node* %prev, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef nonnull %parent, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #12
  %tobool3.not = icmp eq %struct.device_node* %call, null
  %spec.select = select i1 %tobool3.not, %struct.device_node* %parent, %struct.device_node* %call
  %call6 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef nonnull %spec.select, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #12
  %tobool7.not = icmp eq %struct.device_node* %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end61

do.end:                                           ; preds = %if.then2
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* noundef nonnull %spec.select) #13
  br label %cleanup76

if.else:                                          ; preds = %if.end
  %call11 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef nonnull %prev) #12
  %tobool12.not = icmp eq %struct.device_node* %call11, null
  %.b100 = load i1, i1* @of_graph_get_next_endpoint.__already_done, align 1
  %lnot17 = xor i1 %.b100, true
  %0 = select i1 %tobool12.not, i1 %lnot17, i1 false
  br i1 %0, label %if.then21, label %if.end49, !prof !8

if.then21:                                        ; preds = %if.else
  store i1 true, i1* @of_graph_get_next_endpoint.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.of_graph_get_next_endpoint, i64 0, i64 0), %struct.device_node* noundef nonnull %prev) #12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/property.c\22; .popsection; .long 14472b - 14470b; .short 669; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !10
  br label %if.end49

if.end49:                                         ; preds = %if.then21, %if.else
  br i1 %tobool12.not, label %cleanup76, label %if.end61

if.end61:                                         ; preds = %if.then2, %if.end49
  %port.0 = phi %struct.device_node* [ %call11, %if.end49 ], [ %call6, %if.then2 ]
  %parent.addr.1 = phi %struct.device_node* [ %parent, %if.end49 ], [ %spec.select, %if.then2 ]
  %call62104 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %port.0, %struct.device_node* noundef %prev) #12
  %tobool63.not105 = icmp eq %struct.device_node* %call62104, null
  br i1 %tobool63.not105, label %do.body66, label %cleanup76

while.cond.loopexit:                              ; preds = %do.cond71
  %call62 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %call67, %struct.device_node* noundef null) #12
  %tobool63.not = icmp eq %struct.device_node* %call62, null
  br i1 %tobool63.not, label %do.body66.backedge, label %cleanup76

do.body66:                                        ; preds = %if.end61, %do.body66.backedge
  %port.2 = phi %struct.device_node* [ %call67, %do.body66.backedge ], [ %port.0, %if.end61 ]
  %call67 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %parent.addr.1, %struct.device_node* noundef nonnull %port.2) #12
  %tobool68.not = icmp eq %struct.device_node* %call67, null
  br i1 %tobool68.not, label %cleanup76, label %do.cond71

do.cond71:                                        ; preds = %do.body66
  %call72 = call i1 @of_node_name_eq(%struct.device_node* noundef nonnull %call67, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #12
  br i1 %call72, label %while.cond.loopexit, label %do.body66.backedge

do.body66.backedge:                               ; preds = %do.cond71, %while.cond.loopexit
  br label %do.body66

cleanup76:                                        ; preds = %while.cond.loopexit, %do.body66, %if.end61, %do.end, %if.end49, %entry
  %retval.1 = phi %struct.device_node* [ null, %do.end ], [ null, %entry ], [ null, %if.end49 ], [ %call62104, %if.end61 ], [ %call62, %while.cond.loopexit ], [ null, %do.body66 ]
  ret %struct.device_node* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* noundef %parent, i32 noundef %port_reg, i32 noundef %reg) local_unnamed_addr #0 {
entry:
  %endpoint = alloca %struct.of_endpoint, align 8
  %0 = bitcast %struct.of_endpoint* %endpoint to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* noundef %parent, %struct.device_node* noundef null) #14
  %cmp.not17 = icmp eq %struct.device_node* %call, null
  br i1 %cmp.not17, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp2 = icmp eq i32 %port_reg, -1
  %port = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %endpoint, i64 0, i32 0
  %cmp4 = icmp eq i32 %reg, -1
  %id = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %endpoint, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %node.018 = phi %struct.device_node* [ %call, %for.body.lr.ph ], [ %call7, %for.inc ]
  %call1 = call i32 @of_graph_parse_endpoint(%struct.device_node* noundef nonnull %node.018, %struct.of_endpoint* noundef nonnull %endpoint) #14
  %1 = load i32, i32* %port, align 8
  %cmp3 = icmp eq i32 %1, %port_reg
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, i32* %id, align 4
  %cmp6 = icmp eq i32 %2, %reg
  %or.cond16 = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond16, label %cleanup, label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %call7 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* noundef %parent, %struct.device_node* noundef nonnull %node.018) #14
  %cmp.not = icmp eq %struct.device_node* %call7, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %entry
  %node.0.lcssa = phi %struct.device_node* [ null, %entry ], [ null, %for.inc ], [ %node.018, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret %struct.device_node* %node.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* noundef %node) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 0) #12
  ret %struct.device_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_port_parent(%struct.device_node* noundef %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry
  %call3 = call %struct.device_node* @of_get_next_parent(%struct.device_node* noundef nonnull %node) #12
  %tobool2.not = icmp eq %struct.device_node* %call3, null
  br i1 %tobool2.not, label %cleanup, label %for.body.1

for.body.1:                                       ; preds = %for.body
  %call3.1 = call %struct.device_node* @of_get_next_parent(%struct.device_node* noundef nonnull %call3) #12
  %call4.1 = call i1 @of_node_name_eq(%struct.device_node* noundef %call3.1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #12
  %call4.1.not = xor i1 %call4.1, true
  %tobool2.1.not = icmp eq %struct.device_node* %call3.1, null
  %or.cond = or i1 %call4.1.not, %tobool2.1.not
  br i1 %or.cond, label %cleanup, label %for.body.2

for.body.2:                                       ; preds = %for.body.1
  %call3.2 = call %struct.device_node* @of_get_next_parent(%struct.device_node* noundef nonnull %call3.1) #12
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.body.1, %for.body.2, %entry
  %retval.0 = phi %struct.device_node* [ null, %entry ], [ %call3, %for.body ], [ %call3.1, %for.body.1 ], [ %call3.2, %for.body.2 ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* noundef %node) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* noundef %node) #14
  %call1 = call %struct.device_node* @of_graph_get_port_parent(%struct.device_node* noundef %call) #14
  ret %struct.device_node* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_remote_port(%struct.device_node* noundef %node) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* noundef %node) #14
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.device_node* @of_get_next_parent(%struct.device_node* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.device_node* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_graph_get_endpoint_count(%struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* noundef %np, %struct.device_node* noundef null) #14
  %cmp.not7 = icmp eq %struct.device_node* %call, null
  br i1 %cmp.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %num.09 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %endpoint.08 = phi %struct.device_node* [ %call1, %for.body ], [ %call, %entry ]
  %inc = add i32 %num.09, 1
  %call1 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* noundef %np, %struct.device_node* noundef nonnull %endpoint.08) #14
  %cmp.not = icmp eq %struct.device_node* %call1, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %num.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  ret i32 %num.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node* noundef %node, i32 noundef %port, i32 noundef %endpoint) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* noundef %node, i32 noundef %port, i32 noundef %endpoint) #14
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* noundef nonnull %call) #14
  %tobool2.not = icmp eq %struct.device_node* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %call1) #12
  %spec.select = select i1 %call6, %struct.device_node* %call1, %struct.device_node* null
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry
  %retval.0 = phi %struct.device_node* [ null, %entry ], [ null, %if.end ], [ %spec.select, %if.end5 ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal %struct.fwnode_handle* @of_fwnode_get(%struct.fwnode_handle* noundef readonly %fwnode) #8 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %tobool.not = icmp eq %struct.device_node* %cond, null
  %fwnode5 = getelementptr inbounds %struct.device_node, %struct.device_node* %cond, i64 0, i32 3
  %cond8 = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode5
  ret %struct.fwnode_handle* %cond8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal void @of_fwnode_put(%struct.fwnode_handle* nocapture noundef %fwnode) #8 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @of_fwnode_device_is_available(%struct.fwnode_handle* noundef %fwnode) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call i1 @of_device_is_available(%struct.device_node* noundef %cond) #12
  ret i1 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @of_fwnode_device_get_match_data(%struct.fwnode_handle* nocapture noundef readnone %fwnode, %struct.device* noundef %dev) #0 {
entry:
  %call = call i8* @of_device_get_match_data(%struct.device* noundef %dev) #12
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @of_fwnode_property_present(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef %cond, i8* noundef %propname) #14
  ret i1 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_fwnode_property_read_int_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i32 noundef %elem_size, i8* noundef writeonly %val, i64 noundef %nval) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %tobool.not = icmp eq i8* %val, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @of_property_count_elems_of_size(%struct.device_node* noundef %cond, i8* noundef %propname, i32 noundef %elem_size) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %elem_size, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
    i32 8, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %call3 = call fastcc i32 @of_property_read_u8_array(%struct.device_node* noundef %cond, i8* noundef %propname, i8* noundef nonnull %val, i64 noundef %nval) #14
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %1 = bitcast i8* %val to i16*
  %call5 = call fastcc i32 @of_property_read_u16_array(%struct.device_node* noundef %cond, i8* noundef %propname, i16* noundef nonnull %1, i64 noundef %nval) #14
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %2 = bitcast i8* %val to i32*
  %call7 = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %cond, i8* noundef %propname, i32* noundef nonnull %2, i64 noundef %nval) #14
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %3 = bitcast i8* %val to i64*
  %call9 = call fastcc i32 @of_property_read_u64_array(%struct.device_node* noundef %cond, i8* noundef %propname, i64* noundef nonnull %3, i64 noundef %nval) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb, %if.then
  %retval.0 = phi i32 [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb ], [ %call2, %if.then ], [ -6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_fwnode_property_read_string_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %tobool.not = icmp eq i8** %val, null
  br i1 %tobool.not, label %cond.false4, label %cond.true2

cond.true2:                                       ; preds = %entry
  %call3 = call fastcc i32 @of_property_read_string_array(%struct.device_node* noundef %cond, i8* noundef %propname, i8** noundef nonnull %val, i64 noundef %nval) #14
  br label %cond.end6

cond.false4:                                      ; preds = %entry
  %call5 = call fastcc i32 @of_property_count_strings(%struct.device_node* noundef %cond, i8* noundef %propname) #14
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false4, %cond.true2
  %cond7 = phi i32 [ %call3, %cond.true2 ], [ %call5, %cond.false4 ]
  ret i32 %cond7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @of_fwnode_get_name(%struct.fwnode_handle* noundef readonly %fwnode) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %cond, i64 0, i32 2
  %1 = load i8*, i8** %full_name, align 8
  %call2 = call fastcc i8* @kbasename(i8* noundef %1) #14
  ret i8* %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i8* @of_fwnode_get_name_prefix(%struct.fwnode_handle* noundef readonly %fwnode) #8 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %cond, i64 0, i32 6
  %1 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %tobool.not = icmp eq %struct.device_node* %1, null
  %retval.0 = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @of_fwnode_get_parent(%struct.fwnode_handle* noundef %fwnode) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef %cond) #12
  %tobool.not = icmp eq %struct.device_node* %call2, null
  %fwnode5 = getelementptr inbounds %struct.device_node, %struct.device_node* %call2, i64 0, i32 3
  %cond8 = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode5
  ret %struct.fwnode_handle* %cond8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @of_fwnode_get_next_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef %child) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call4 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %child) #14
  %add.ptr11 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %child, i64 -1, i32 4
  %1 = bitcast %struct.list_head* %add.ptr11 to %struct.device_node*
  %cond14 = select i1 %call4, %struct.device_node* %1, %struct.device_node* null
  %call15 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef %cond, %struct.device_node* noundef %cond14) #12
  %tobool.not = icmp eq %struct.device_node* %call15, null
  %fwnode18 = getelementptr inbounds %struct.device_node, %struct.device_node* %call15, i64 0, i32 3
  %cond21 = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode18
  ret %struct.fwnode_handle* %cond21
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @of_fwnode_get_named_child_node(%struct.fwnode_handle* noundef %fwnode, i8* noundef %childname) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef %cond, %struct.device_node* noundef null) #12
  %cmp.not24 = icmp eq %struct.device_node* %call2, null
  br i1 %cmp.not24, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %child.025 = phi %struct.device_node* [ %call10, %for.inc ], [ %call2, %entry ]
  %call3 = call i1 @of_node_name_eq(%struct.device_node* noundef nonnull %child.025, i8* noundef %childname) #12
  br i1 %call3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %fwnode6 = getelementptr inbounds %struct.device_node, %struct.device_node* %child.025, i64 0, i32 3
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call10 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef %cond, %struct.device_node* noundef nonnull %child.025) #12
  %cmp.not = icmp eq %struct.device_node* %call10, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi %struct.fwnode_handle* [ %fwnode6, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_fwnode_get_reference_args(%struct.fwnode_handle* noundef %fwnode, i8* noundef %prop, i8* noundef %nargs_prop, i32 noundef %nargs, i32 noundef %index, %struct.fwnode_reference_args* noundef writeonly %args) #0 {
entry:
  %of_args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %of_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %tobool.not = icmp eq i8* %nargs_prop, null
  %call5 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr12 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %1 = bitcast %struct.list_head* %add.ptr12 to %struct.device_node*
  %cond15 = select i1 %call5, %struct.device_node* %1, %struct.device_node* null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %cond15, i8* noundef %prop, i8* noundef nonnull %nargs_prop, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %of_args) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call16 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* noundef %cond15, i8* noundef %prop, i32 noundef %nargs, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %of_args) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call16, %if.else ]
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end
  %tobool19.not = icmp eq %struct.fwnode_reference_args* %args, null
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end18
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 1
  %2 = load i32, i32* %args_count, align 8
  %nargs22 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 1
  store i32 %2, i32* %nargs22, align 8
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 0
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8
  %tobool24.not = icmp eq %struct.device_node* %3, null
  %fwnode26 = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i64 0, i32 3
  %cond29 = select i1 %tobool24.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode26
  %fwnode30 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 0
  store %struct.fwnode_handle* %cond29, %struct.fwnode_handle** %fwnode30, align 8
  %cmp33.not = icmp eq i32 %2, 0
  br i1 %cmp33.not, label %cond.end37.thread, label %cond.end37

cond.end37.thread:                                ; preds = %if.end21
  %arrayidx4177 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 0
  store i64 0, i64* %arrayidx4177, align 8
  br label %cond.end37.1.thread

cond.end37:                                       ; preds = %if.end21
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %phi.cast = zext i32 %4 to i64
  %arrayidx41 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 0
  store i64 %phi.cast, i64* %arrayidx41, align 8
  %cmp33.1.not = icmp eq i32 %2, 1
  br i1 %cmp33.1.not, label %cond.end37.1.thread, label %cond.end37.1

cond.end37.1.thread:                              ; preds = %cond.end37.thread, %cond.end37
  %arrayidx41.180 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 1
  store i64 0, i64* %arrayidx41.180, align 8
  br label %cond.end37.2.thread

cond.end37.1:                                     ; preds = %cond.end37
  %arrayidx.1 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 1
  %5 = load i32, i32* %arrayidx.1, align 8
  %phi.cast69 = zext i32 %5 to i64
  %arrayidx41.1 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 1
  store i64 %phi.cast69, i64* %arrayidx41.1, align 8
  %cmp33.2 = icmp ugt i32 %2, 2
  br i1 %cmp33.2, label %cond.end37.2, label %cond.end37.2.thread

cond.end37.2.thread:                              ; preds = %cond.end37.1.thread, %cond.end37.1
  %arrayidx41.283 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 2
  store i64 0, i64* %arrayidx41.283, align 8
  br label %cond.end37.3.thread

cond.end37.2:                                     ; preds = %cond.end37.1
  %arrayidx.2 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 2
  %6 = load i32, i32* %arrayidx.2, align 4
  %phi.cast70 = zext i32 %6 to i64
  %arrayidx41.2 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 2
  store i64 %phi.cast70, i64* %arrayidx41.2, align 8
  %cmp33.3.not = icmp eq i32 %2, 3
  br i1 %cmp33.3.not, label %cond.end37.3.thread, label %cond.end37.3

cond.end37.3.thread:                              ; preds = %cond.end37.2.thread, %cond.end37.2
  %arrayidx41.386 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 3
  store i64 0, i64* %arrayidx41.386, align 8
  br label %cond.end37.4.thread

cond.end37.3:                                     ; preds = %cond.end37.2
  %arrayidx.3 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 3
  %7 = load i32, i32* %arrayidx.3, align 8
  %phi.cast71 = zext i32 %7 to i64
  %arrayidx41.3 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 3
  store i64 %phi.cast71, i64* %arrayidx41.3, align 8
  %cmp33.4 = icmp ugt i32 %2, 4
  br i1 %cmp33.4, label %cond.end37.4, label %cond.end37.4.thread

cond.end37.4.thread:                              ; preds = %cond.end37.3.thread, %cond.end37.3
  %arrayidx41.489 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 4
  store i64 0, i64* %arrayidx41.489, align 8
  br label %cond.end37.5.thread

cond.end37.4:                                     ; preds = %cond.end37.3
  %arrayidx.4 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 4
  %8 = load i32, i32* %arrayidx.4, align 4
  %phi.cast72 = zext i32 %8 to i64
  %arrayidx41.4 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 4
  store i64 %phi.cast72, i64* %arrayidx41.4, align 8
  %cmp33.5.not = icmp eq i32 %2, 5
  br i1 %cmp33.5.not, label %cond.end37.5.thread, label %cond.end37.5

cond.end37.5.thread:                              ; preds = %cond.end37.4.thread, %cond.end37.4
  %arrayidx41.592 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 5
  store i64 0, i64* %arrayidx41.592, align 8
  br label %cond.end37.6.thread

cond.end37.5:                                     ; preds = %cond.end37.4
  %arrayidx.5 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 5
  %9 = load i32, i32* %arrayidx.5, align 8
  %phi.cast73 = zext i32 %9 to i64
  %arrayidx41.5 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 5
  store i64 %phi.cast73, i64* %arrayidx41.5, align 8
  %cmp33.6 = icmp ugt i32 %2, 6
  br i1 %cmp33.6, label %cond.end37.6, label %cond.end37.6.thread

cond.end37.6.thread:                              ; preds = %cond.end37.5.thread, %cond.end37.5
  %arrayidx41.695 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 6
  store i64 0, i64* %arrayidx41.695, align 8
  br label %cond.end37.7

cond.end37.6:                                     ; preds = %cond.end37.5
  %arrayidx.6 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 6
  %10 = load i32, i32* %arrayidx.6, align 4
  %phi.cast74 = zext i32 %10 to i64
  %arrayidx41.6 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 6
  store i64 %phi.cast74, i64* %arrayidx41.6, align 8
  %cmp33.7.not = icmp eq i32 %2, 7
  br i1 %cmp33.7.not, label %cond.end37.7, label %cond.true34.7

cond.true34.7:                                    ; preds = %cond.end37.6
  %arrayidx.7 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i64 0, i32 2, i64 7
  %11 = load i32, i32* %arrayidx.7, align 8
  %phi.cast75 = zext i32 %11 to i64
  br label %cond.end37.7

cond.end37.7:                                     ; preds = %cond.end37.6.thread, %cond.true34.7, %cond.end37.6
  %cond38.7 = phi i64 [ %phi.cast75, %cond.true34.7 ], [ 0, %cond.end37.6 ], [ 0, %cond.end37.6.thread ]
  %arrayidx41.7 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 7
  store i64 %cond38.7, i64* %arrayidx41.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end37.7, %if.end18, %if.end
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %if.end18 ], [ 0, %cond.end37.7 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @of_fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef %prev) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call4 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %prev) #14
  %add.ptr11 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %prev, i64 -1, i32 4
  %1 = bitcast %struct.list_head* %add.ptr11 to %struct.device_node*
  %cond14 = select i1 %call4, %struct.device_node* %1, %struct.device_node* null
  %call15 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* noundef %cond, %struct.device_node* noundef %cond14) #14
  %tobool.not = icmp eq %struct.device_node* %call15, null
  %fwnode18 = getelementptr inbounds %struct.device_node, %struct.device_node* %call15, i64 0, i32 3
  %cond21 = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode18
  ret %struct.fwnode_handle* %cond21
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @of_fwnode_graph_get_remote_endpoint(%struct.fwnode_handle* noundef %fwnode) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* noundef %cond) #14
  %tobool.not = icmp eq %struct.device_node* %call2, null
  %fwnode5 = getelementptr inbounds %struct.device_node, %struct.device_node* %call2, i64 0, i32 3
  %cond8 = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode5
  ret %struct.fwnode_handle* %cond8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @of_fwnode_graph_get_port_parent(%struct.fwnode_handle* noundef %fwnode) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef %cond) #12
  %tobool.not = icmp eq %struct.device_node* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i1 @of_node_name_eq(%struct.device_node* noundef nonnull %call2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #12
  br i1 %call3, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.end
  %fwnode8 = getelementptr inbounds %struct.device_node, %struct.device_node* %call2, i64 0, i32 3
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = call %struct.device_node* @of_get_next_parent(%struct.device_node* noundef nonnull %call2) #12
  %tobool16.not = icmp eq %struct.device_node* %call14, null
  %fwnode18 = getelementptr inbounds %struct.device_node, %struct.device_node* %call14, i64 0, i32 3
  %cond21 = select i1 %tobool16.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then4
  %retval.0 = phi %struct.fwnode_handle* [ %cond21, %if.end12 ], [ %fwnode8, %if.then4 ], [ null, %entry ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_fwnode_graph_parse_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_endpoint* nocapture noundef writeonly %endpoint) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef %cond) #12
  %local_fwnode = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %endpoint, i64 0, i32 2
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %local_fwnode, align 8
  %port = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %endpoint, i64 0, i32 0
  call fastcc void @of_property_read_u32(%struct.device_node* noundef %call2, i32* noundef %port) #14
  %id = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %endpoint, i64 0, i32 1
  call fastcc void @of_property_read_u32(%struct.device_node* noundef %cond, i32* noundef %id) #14
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_fwnode_add_links(%struct.fwnode_handle* noundef %fwnode) #0 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #14
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %tobool.not13 = icmp ne %struct.list_head* %add.ptr, null
  %1 = and i1 %tobool.not13, %call
  br i1 %1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %properties = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 5, i32 1
  %2 = bitcast %struct.list_head** %properties to %struct.property**
  %p.014 = load %struct.property*, %struct.property** %2, align 8
  %cmp.not15 = icmp eq %struct.property* %p.014, null
  br i1 %cmp.not15, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %p.016 = phi %struct.property* [ %p.0, %for.body ], [ %p.014, %if.end ]
  %name = getelementptr inbounds %struct.property, %struct.property* %p.016, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  call fastcc void @of_link_property(%struct.device_node* noundef nonnull %0, i8* noundef %3) #14
  %next = getelementptr inbounds %struct.property, %struct.property* %p.016, i64 0, i32 3
  %p.0 = load %struct.property*, %struct.property** %next, align 8
  %cmp.not = icmp eq %struct.property* %p.0, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.end ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #9 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__fswab64(i64 noundef %val) unnamed_addr #9 {
entry:
  %or19 = call i64 @llvm.bswap.i64(i64 %val)
  ret i64 %or19
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @__fswab16(i16 noundef %val) unnamed_addr #9 {
entry:
  %rev = call i16 @llvm.bswap.i16(i16 %val)
  ret i16 %rev
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* nocapture noundef writeonly %out_values, i64 noundef %sz) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef %sz, i64 noundef 0) #14
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #8 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_device_get_match_data(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np, i8* noundef %propname) unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #12
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u8_array(%struct.device_node* noundef %np, i8* noundef %propname, i8* nocapture noundef writeonly %out_values, i64 noundef %sz) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u8_array(%struct.device_node* noundef %np, i8* noundef %propname, i8* noundef %out_values, i64 noundef %sz, i64 noundef 0) #14
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u16_array(%struct.device_node* noundef %np, i8* noundef %propname, i16* nocapture noundef writeonly %out_values, i64 noundef %sz) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u16_array(%struct.device_node* noundef %np, i8* noundef %propname, i16* noundef %out_values, i64 noundef %sz, i64 noundef 0) #14
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u64_array(%struct.device_node* noundef %np, i8* noundef %propname, i64* nocapture noundef writeonly %out_values, i64 noundef %sz) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u64_array(%struct.device_node* noundef %np, i8* noundef %propname, i64* noundef %out_values, i64 noundef %sz, i64 noundef 0) #14
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_string_array(%struct.device_node* noundef %np, i8* noundef %propname, i8** noundef %out_strs, i64 noundef %sz) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_string_helper(%struct.device_node* noundef %np, i8* noundef %propname, i8** noundef %out_strs, i64 noundef %sz, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_count_strings(%struct.device_node* noundef %np, i8* noundef %propname) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_string_helper(%struct.device_node* noundef %np, i8* noundef %propname, i8** noundef null, i64 noundef 0, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kbasename(i8* noundef %path) unnamed_addr #0 {
entry:
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47) #12
  %tobool.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool.not, i8* %path, i8* %add.ptr
  ret i8* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef, %struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.of_phandle_args* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node* noundef, i8* noundef, i32 noundef, i32 noundef, %struct.of_phandle_args* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_link_property(%struct.device_node* noundef %con_np, i8* noundef %prop_name) unnamed_addr #0 {
entry:
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry, %while.end
  %i.0.ph10 = phi i32 [ 0, %entry ], [ %i.1.lcssa, %while.end ]
  %s.0.ph9 = phi %struct.supplier_bindings* [ getelementptr inbounds ([34 x %struct.supplier_bindings], [34 x %struct.supplier_bindings]* @of_supplier_bindings, i64 0, i64 0), %entry ], [ %incdec.ptr12, %while.end ]
  %parse_prop31 = getelementptr inbounds %struct.supplier_bindings, %struct.supplier_bindings* %s.0.ph9, i64 0, i32 0
  %0 = load %struct.device_node* (%struct.device_node*, i8*, i32)*, %struct.device_node* (%struct.device_node*, i8*, i32)** %parse_prop31, align 8
  %tobool1.not32 = icmp eq %struct.device_node* (%struct.device_node*, i8*, i32)* %0, null
  br i1 %tobool1.not32, label %while.end13, label %while.body

while.body:                                       ; preds = %land.rhs.lr.ph, %if.then
  %1 = phi %struct.device_node* (%struct.device_node*, i8*, i32)* [ %3, %if.then ], [ %0, %land.rhs.lr.ph ]
  %s.0333 = phi %struct.supplier_bindings* [ %incdec.ptr, %if.then ], [ %s.0.ph9, %land.rhs.lr.ph ]
  %optional = getelementptr inbounds %struct.supplier_bindings, %struct.supplier_bindings* %s.0333, i64 0, i32 1
  %2 = load i8, i8* %optional, align 8, !range !11
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call = call i1 @fw_devlink_is_strict() #12
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %parse_prop.le = getelementptr inbounds %struct.supplier_bindings, %struct.supplier_bindings* %s.0333, i64 0, i32 0
  %.pre = load %struct.device_node* (%struct.device_node*, i8*, i32)*, %struct.device_node* (%struct.device_node*, i8*, i32)** %parse_prop.le, align 8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr %struct.supplier_bindings, %struct.supplier_bindings* %s.0333, i64 1
  %parse_prop = getelementptr inbounds %struct.supplier_bindings, %struct.supplier_bindings* %incdec.ptr, i64 0, i32 0
  %3 = load %struct.device_node* (%struct.device_node*, i8*, i32)*, %struct.device_node* (%struct.device_node*, i8*, i32)** %parse_prop, align 8
  %tobool1.not = icmp eq %struct.device_node* (%struct.device_node*, i8*, i32)* %3, null
  br i1 %tobool1.not, label %while.end13, label %while.body

if.end:                                           ; preds = %while.body, %land.lhs.true.if.end_crit_edge
  %4 = phi %struct.device_node* (%struct.device_node*, i8*, i32)* [ %.pre, %land.lhs.true.if.end_crit_edge ], [ %1, %while.body ]
  %parse_prop19 = getelementptr %struct.supplier_bindings, %struct.supplier_bindings* %s.0333, i64 0, i32 0
  %call54 = call %struct.device_node* %4(%struct.device_node* noundef %con_np, i8* noundef %prop_name, i32 noundef %i.0.ph10) #12
  %tobool6.not5 = icmp eq %struct.device_node* %call54, null
  br i1 %tobool6.not5, label %while.end, label %while.body7.lr.ph

while.body7.lr.ph:                                ; preds = %if.end
  %node_not_dev = getelementptr inbounds %struct.supplier_bindings, %struct.supplier_bindings* %s.0333, i64 0, i32 2
  br label %while.body7

while.body7:                                      ; preds = %while.body7.lr.ph, %cond.end
  %call57 = phi %struct.device_node* [ %call54, %while.body7.lr.ph ], [ %call5, %cond.end ]
  %i.16 = phi i32 [ %i.0.ph10, %while.body7.lr.ph ], [ %inc, %cond.end ]
  %5 = load i8, i8* %node_not_dev, align 1, !range !11
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %while.body7
  %call9 = call fastcc %struct.device_node* @of_get_compat_node(%struct.device_node* noundef %con_np) #14
  br label %cond.end

cond.end:                                         ; preds = %while.body7, %cond.true
  %cond = phi %struct.device_node* [ %call9, %cond.true ], [ %con_np, %while.body7 ]
  %inc = add i32 %i.16, 1
  call fastcc void @of_link_to_phandle(%struct.device_node* noundef %cond, %struct.device_node* noundef nonnull %call57) #14
  %6 = load %struct.device_node* (%struct.device_node*, i8*, i32)*, %struct.device_node* (%struct.device_node*, i8*, i32)** %parse_prop19, align 8
  %call5 = call %struct.device_node* %6(%struct.device_node* noundef %con_np, i8* noundef %prop_name, i32 noundef %inc) #12
  %tobool6.not = icmp eq %struct.device_node* %call5, null
  br i1 %tobool6.not, label %while.end, label %while.body7

while.end:                                        ; preds = %cond.end, %if.end
  %i.1.lcssa = phi i32 [ %i.0.ph10, %if.end ], [ %inc, %cond.end ]
  %incdec.ptr12 = getelementptr %struct.supplier_bindings, %struct.supplier_bindings* %s.0333, i64 1
  br i1 %tobool6.not5, label %land.rhs.lr.ph, label %while.end13

while.end13:                                      ; preds = %while.end, %land.rhs.lr.ph, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @fw_devlink_is_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_get_compat_node(%struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %tobool.not13 = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not13, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end5
  %np.addr.014 = phi %struct.device_node* [ %call6, %if.end5 ], [ %np, %entry ]
  %call1 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %np.addr.014) #12
  %spec.select = select i1 %call1, %struct.device_node* %np.addr.014, %struct.device_node* null
  %call2 = call %struct.property* @of_find_property(%struct.device_node* noundef %spec.select, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i32* noundef null) #12
  %tobool3.not = icmp eq %struct.property* %call2, null
  br i1 %tobool3.not, label %if.end5, label %while.end

if.end5:                                          ; preds = %while.body
  %call6 = call %struct.device_node* @of_get_next_parent(%struct.device_node* noundef %spec.select) #12
  %tobool.not = icmp eq %struct.device_node* %call6, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end5, %while.body, %entry
  %np.addr.2 = phi %struct.device_node* [ null, %entry ], [ %spec.select, %while.body ], [ null, %if.end5 ]
  ret %struct.device_node* %np.addr.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_link_to_phandle(%struct.device_node* noundef %con_np, %struct.device_node* noundef %sup_np) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.device_node* @of_get_compat_node(%struct.device_node* noundef %sup_np) #14
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @of_is_ancestor_of(%struct.device_node* noundef %con_np, %struct.device_node* noundef nonnull %call) #14
  br i1 %call1, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %call, i64 0, i32 3
  %dev = getelementptr inbounds %struct.device_node, %struct.device_node* %call, i64 0, i32 3, i32 2
  %0 = load %struct.device*, %struct.device** %dev, align 8
  %call5 = call %struct.device* @get_device(%struct.device* noundef %0) #12
  %tobool6.not = icmp eq %struct.device* %call5, null
  br i1 %tobool6.not, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %call7 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef nonnull %call) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.device_node, %struct.device_node* %call, i64 0, i32 3, i32 5
  %1 = load i8, i8* %flags, align 8
  %2 = and i8 %1, 2
  %tobool10.not = icmp eq i8 %2, 0
  br i1 %tobool10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %lor.lhs.false, %if.end4
  call void @put_device(%struct.device* noundef %call5) #12
  %tobool15.not = icmp eq %struct.device_node* %con_np, null
  %fwnode16 = getelementptr inbounds %struct.device_node, %struct.device_node* %con_np, i64 0, i32 3
  %cond = select i1 %tobool15.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode16
  %call25 = call i32 @fwnode_link_add(%struct.fwnode_handle* noundef %cond, %struct.fwnode_handle* noundef %fwnode) #12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false, %if.end, %entry, %if.end13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_clocks(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_interconnects(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_iommus(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_iommu_maps(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call i32 @strcmp(i8* noundef %prop_name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %mul = shl i32 %index, 2
  %add = or i32 %mul, 1
  %call1 = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %add) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.device_node* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_mboxes(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_io_channels(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_interrupt_parent(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_dmas(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_power_domains(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_hwlocks(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_extcon(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_nvmem_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_phys(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_wakeup_parent(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl0(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl1(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl2(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl3(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl4(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl5(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl6(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl7(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pinctrl8(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_remote_endpoint(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_pwms(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_resets(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_leds(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_backlight(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_gpio_compat(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %sup_args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %sup_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @strcmp(i8* noundef %prop_name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef %prop_name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0)) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32* noundef null) #12
  %tobool4.not = icmp eq %struct.property* %call3, null
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %prop_name, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 noundef %index, %struct.of_phandle_args* noundef nonnull %sup_args) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end6
  %np11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sup_args, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %land.lhs.true, %if.end10
  %retval.0 = phi %struct.device_node* [ %1, %if.end10 ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_interrupts(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %sup_args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %sup_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @strcmp(i8* noundef %prop_name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef %prop_name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0)) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call i32 @of_irq_parse_one(%struct.device_node* noundef %np, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %sup_args) #12
  %tobool4.not = icmp eq i32 %call3, 0
  %np5 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sup_args, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np5, align 8
  %cond = select i1 %tobool4.not, %struct.device_node* %1, %struct.device_node* null
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct.device_node* [ %cond, %if.end ], [ null, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_regulators(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* noundef null) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_gpio(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)) #14
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @parse_gpios(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index) #0 {
entry:
  %call = call fastcc i32 @strcmp_suffix(i8* noundef %prop_name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0)) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.device_node* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @parse_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef %list_name, i8* noundef %cells_name) unnamed_addr #0 {
entry:
  %sup_args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %sup_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @strcmp(i8* noundef %prop_name, i8* noundef %list_name) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %cells_name, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %sup_args) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %np5 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sup_args, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi %struct.device_node* [ %1, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret %struct.device_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(%struct.device_node* noundef, i32 noundef, %struct.of_phandle_args* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* noundef %np, i8* noundef %prop_name, i32 noundef %index, i8* noundef %suffix, i8* noundef %cells_name) unnamed_addr #0 {
entry:
  %sup_args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %sup_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call fastcc i32 @strcmp_suffix(i8* noundef %prop_name, i8* noundef %suffix) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %prop_name, i8* noundef %cells_name, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %sup_args) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %np5 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sup_args, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi %struct.device_node* [ %1, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strcmp_suffix(i8* noundef %str, i8* noundef %suffix) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %str) #12
  %conv = trunc i64 %call to i32
  %call1 = call i64 @strlen(i8* noundef %suffix) #12
  %conv2 = trunc i64 %call1 to i32
  %cmp.not = icmp ugt i32 %conv, %conv2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %idx.ext = and i64 %call, 4294967295
  %add.ptr = getelementptr i8, i8* %str, i64 %idx.ext
  %idx.ext4 = and i64 %call1, 4294967295
  %idx.neg = sub nsw i64 0, %idx.ext4
  %add.ptr5 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  %call6 = call i32 @strcmp(i8* noundef %add.ptr5, i8* noundef %suffix) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call6, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_is_ancestor_of(%struct.device_node* noundef readnone %test_ancestor, %struct.device_node* noundef %child) unnamed_addr #0 {
entry:
  %tobool.not6 = icmp eq %struct.device_node* %child, null
  %cmp7 = icmp eq %struct.device_node* %child, %test_ancestor
  %or.cond8 = or i1 %tobool.not6, %cmp7
  br i1 %or.cond8, label %return, label %if.end

if.end:                                           ; preds = %entry, %if.end
  %child.addr.09 = phi %struct.device_node* [ %call1, %if.end ], [ %child, %entry ]
  %call1 = call %struct.device_node* @of_get_next_parent(%struct.device_node* noundef nonnull %child.addr.09) #12
  %tobool.not = icmp eq %struct.device_node* %call1, null
  %cmp = icmp eq %struct.device_node* %call1, %test_ancestor
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %return, label %if.end

return:                                           ; preds = %if.end, %entry
  %tobool.not.lcssa = phi i1 [ %tobool.not6, %entry ], [ %tobool.not, %if.end ]
  %0 = xor i1 %tobool.not.lcssa, true
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @of_node_check_flag(%struct.device_node* noundef %n) unnamed_addr #10 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  %0 = load volatile i64, i64* %_flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 3
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_link_add(%struct.fwnode_handle* noundef, %struct.fwnode_handle* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #16 = { nounwind }

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
!9 = !{i64 2152360890}
!10 = !{i64 2152364428}
!11 = !{i8 0, i8 2}
