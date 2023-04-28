; ModuleID = 'drivers/clocksource/arm_arch_timer.c'
source_filename = "drivers/clocksource/arm_arch_timer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.cpumask = type { [4 x i64] }
%struct.arch_timer_kvm_info = type { %struct.timecounter, i32, i32 }
%struct.timecounter = type { %struct.cyclecounter*, i64, i64, i64, i64 }
%struct.cyclecounter = type { i64 (%struct.cyclecounter*)*, i64, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i64, i32, i32, i64, i32, i32, i64, i8*, %struct.list_head, i32, i32, i32, i64, i32 (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, %struct.module* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
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
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.seq_file = type opaque
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.41, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.41 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.address_space = type opaque
%union.anon.39 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.40, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.40 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.kref = type { %struct.refcount_struct }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.42, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.42 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.arch_timer_mem = type { i64, i64, [8 x %struct.arch_timer_mem_frame] }
%struct.arch_timer_mem_frame = type { i8, i64, i64, i32, i32 }
%struct.timespec64 = type { i64, i64 }

@__setup_str_early_evtstrm_cfg = internal constant [35 x i8] c"clocksource.arm_arch_timer.evtstrm\00", section ".init.rodata", align 1
@__setup_early_evtstrm_cfg = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__setup_str_early_evtstrm_cfg, i32 0, i32 0), i32 (i8*)* @early_evtstrm_cfg, i32 1 }, section ".init.setup", align 8
@arch_timer_read_counter = dso_local local_unnamed_addr global i64 ()* @arch_counter_get_cntvct, section ".data..ro_after_init", align 8
@arch_timer_rate = internal global i32 0, section ".data..ro_after_init", align 4
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@evtstrm_available = internal global %struct.cpumask zeroinitializer, align 8
@arch_timer_kvm_info = internal global %struct.arch_timer_kvm_info zeroinitializer, align 8
@__of_table_armv7_arch_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*)* @arch_timer_of_init to i8*) }, section "__timer_of_table", align 8
@__of_table_armv8_arch_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv8-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*)* @arch_timer_of_init to i8*) }, section "__timer_of_table", align 8
@__of_table_armv7_arch_timer_mem = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*)* @arch_timer_mem_of_init to i8*) }, section "__timer_of_table", align 8
@arch_timer_uses_ppi = internal unnamed_addr global i32 2, section ".data..ro_after_init", align 4
@clocksource_counter = internal global %struct.clocksource { i64 (%struct.clocksource*)* @arch_counter_read, i64 72057594037927935, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), %struct.list_head zeroinitializer, i32 400, i32 1, i32 0, i64 1, i32 (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, %struct.module* null }, align 8
@evtstrm_enable = internal global i8 0, section ".data..ro_after_init", align 1
@arch_timers_present = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str = private unnamed_addr constant [46 x i8] c"\014arch_timer: multiple nodes in dt, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@arch_timer_ppi_names = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)], align 8
@arch_timer_ppi = internal unnamed_addr global [5 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"always-on\00", align 1
@arch_timer_c3stop = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\013arch_timer: No interrupt available, giving up\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"arm,no-tick-in-suspend\00", align 1
@arch_counter_suspend_stop = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sec-phys\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"virt\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"hyp-phys\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"hyp-virt\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\014arch_timer: frequency not available\0A\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global [2 x i32], align 4
@arch_timer_evt = internal unnamed_addr global %struct.clock_event_device* null, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"arch_timer\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"\013arch_timer: can't register interrupt %d (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"clockevents/arm/arch_timer:starting\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"arch_sys_timer\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"arch_mem_timer\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@arch_timer_mem_use_virtual = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@.str.17 = private unnamed_addr constant [70 x i8] c"\014arch_timer: WARNING: Invalid trigger for IRQ%d, assuming level low\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"\014arch_timer: WARNING: Please fix your firmware\0A\00", align 1
@arch_timer_mem_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 8
@arch_timer_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv8-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 8
@.str.19 = private unnamed_addr constant [65 x i8] c"\016arch_timer: %s%s%s timer(s) running at %lu.%02luMHz (%s%s%s).\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"cp15\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@cyclecounter = internal global %struct.cyclecounter { i64 (%struct.cyclecounter*)* @arch_counter_read_cc, i64 72057594037927935, i32 0, i32 0 }, section ".data..ro_after_init", align 8
@arch_counter_base = internal unnamed_addr global i8* null, section ".data..ro_after_init", align 8
@.str.25 = private unnamed_addr constant [13 x i8] c"frame-number\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"\013arch_timer: [Firmware Bug]: Missing frame-number.\0A\00", align 1
@.str.27 = private unnamed_addr constant [76 x i8] c"\013arch_timer: [Firmware Bug]: Wrong frame-number, only 0-%u are permitted.\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"\013arch_timer: [Firmware Bug]: Duplicated frame-number.\0A\00", align 1
@.str.29 = private unnamed_addr constant [62 x i8] c"\013arch_timer: Unable to find a suitable frame in timer @ %pa\0A\00", align 1
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"\013arch_timer: Can't map CNTCTLBase @ %pa\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"\013arch_timer: Unable to map frame @ %pa\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"\013arch_timer: Frame missing %s irq.\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.33 = private unnamed_addr constant [43 x i8] c"\013arch_timer: Can't map frame's registers\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"\013arch_timer: Failed to request mem timer irq\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"arch_sys_counter\00", align 1
@llvm.compiler.used = appending global [4 x i8*] [i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_armv7_arch_timer, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_armv7_arch_timer_mem, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_armv8_arch_timer, i32 0, i32 0, i32 0), i8* bitcast (%struct.obs_kernel_param* @__setup_early_evtstrm_cfg to i8*)], section "llvm.metadata"
@switch.table.__arch_timer_setup = private unnamed_addr constant [4 x i32 (%struct.clock_event_device*)*] [i32 (%struct.clock_event_device*)* @arch_timer_shutdown_phys, i32 (%struct.clock_event_device*)* @arch_timer_shutdown_phys, i32 (%struct.clock_event_device*)* @arch_timer_shutdown_virt, i32 (%struct.clock_event_device*)* @arch_timer_shutdown_phys], align 8
@switch.table.__arch_timer_setup.36 = private unnamed_addr constant [4 x i32 (i64, %struct.clock_event_device*)*] [i32 (i64, %struct.clock_event_device*)* @arch_timer_set_next_event_phys, i32 (i64, %struct.clock_event_device*)* @arch_timer_set_next_event_phys, i32 (i64, %struct.clock_event_device*)* @arch_timer_set_next_event_virt, i32 (i64, %struct.clock_event_device*)* @arch_timer_set_next_event_phys], align 8

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @early_evtstrm_cfg(i8* noundef %buf) #0 section ".init.text" {
entry:
  %call = call fastcc i32 @strtobool(i8* noundef %buf) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @arch_counter_get_cntvct() #1 {
entry:
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !8
  %0 = call i64 asm sideeffect "mrs $0, cntvct_el0", "=r"() #14, !srcloc !9
  %1 = call i64 asm sideeffect "\09eor\09$0, $1, $1\0A\09add\09$0, sp, $0\0A\09ldr\09xzr, [$0]", "=r,r"(i64 %0) #14, !srcloc !10
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @arch_timer_get_rate() local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @arch_timer_rate, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i1 @arch_timer_evtstrm_available() local_unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i32 @cpumask_test_cpu(i32 noundef %1) #13
  %tobool = icmp ne i32 %call2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* @evtstrm_available, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !11
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local nonnull %struct.arch_timer_kvm_info* @arch_timer_get_kvm_info() local_unnamed_addr #7 {
entry:
  ret %struct.arch_timer_kvm_info* @arch_timer_kvm_info
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @arch_timer_of_init(%struct.device_node* noundef %np) #0 section ".init.text" {
entry:
  %0 = load i32, i32* @arch_timers_present, align 4
  %1 = and i32 %0, 1
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0)) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %0, 1
  store i32 %or, i32* @arch_timers_present, align 4
  %call3 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #13
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.inc ]
  br i1 %call3, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %arrayidx = getelementptr [5 x i8*], [5 x i8*]* @arch_timer_ppi_names, i64 0, i64 %indvars.iv
  %2 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 @of_irq_get_byname(%struct.device_node* noundef %np, i8* noundef %2) #17
  br label %if.end9

if.else:                                          ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %call8 = call i32 @of_irq_get(%struct.device_node* noundef %np, i32 noundef %3) #17
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %irq.0 = phi i32 [ %call7, %if.then6 ], [ %call8, %if.else ]
  %cmp10 = icmp sgt i32 %irq.0, 0
  br i1 %cmp10, label %if.then12, label %for.inc

if.then12:                                        ; preds = %if.end9
  %arrayidx14 = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %indvars.iv
  store i32 %irq.0, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %if.then12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call fastcc void @arch_timer_populate_kvm_info() #18
  %call16 = call fastcc i32 @arch_timer_get_cntfrq() #13
  call fastcc void @arch_timer_of_configure_rate(i32 noundef %call16, %struct.device_node* noundef %np) #18
  %call17 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #13
  %lnot = xor i1 %call17, true
  %frombool18 = zext i1 %lnot to i8
  store i8 %frombool18, i8* @arch_timer_c3stop, align 1
  %call22 = call fastcc i32 @arch_timer_select_ppi() #18
  store i32 %call22, i32* @arch_timer_uses_ppi, align 4
  %idxprom23 = zext i32 %call22 to i64
  %arrayidx24 = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %idxprom23
  %4 = load i32, i32* %arrayidx24, align 4
  %tobool25.not = icmp eq i32 %4, 0
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %for.end
  %call31 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0)) #16
  br label %cleanup

if.end32:                                         ; preds = %for.end
  %call33 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #13
  %frombool34 = zext i1 %call33 to i8
  store i8 %frombool34, i8* @arch_counter_suspend_stop, align 1
  %call35 = call fastcc i32 @arch_timer_register() #18
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %cleanup

if.end38:                                         ; preds = %if.end32
  %call39 = call fastcc i1 @arch_timer_needs_of_probing() #18
  br i1 %call39, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end38
  call fastcc void @arch_timer_common_init() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end32, %if.end41, %do.end29, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end41 ], [ -22, %do.end29 ], [ %call35, %if.end32 ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @arch_timer_mem_of_init(%struct.device_node* noundef %np) #0 section ".init.text" {
entry:
  %res = alloca %struct.resource, align 8
  %n = alloca i32, align 4
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !12
  %call = call fastcc i8* @kzalloc(i64 noundef 272) #13
  %1 = bitcast i8* %call to %struct.arch_timer_mem*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup59, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(%struct.device_node* noundef %np, i32 noundef 0, %struct.resource* noundef nonnull %res) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  %cntctlbase = bitcast i8* %call to i64*
  store i64 %2, i64* %cntctlbase, align 8
  %call5 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %res) #13
  %size = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %size to i64*
  store i64 %call5, i64* %3, align 8
  %call6 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef %np, %struct.device_node* noundef null) #17
  %cmp.not104 = icmp eq %struct.device_node* %call6, null
  br i1 %cmp.not104, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end4
  %4 = bitcast i32* %n to i8*
  %frame21 = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %frame21 to [8 x %struct.arch_timer_mem_frame]*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %frame_node.0105 = phi %struct.device_node* [ %call6, %for.body.lr.ph ], [ %call41, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #14
  store i32 0, i32* %n, align 4, !annotation !12
  %call8 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %frame_node.0105, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32* noundef nonnull %n) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %for.body
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0)) #16
  br label %cleanup.thread

if.end12:                                         ; preds = %for.body
  %6 = load i32, i32* %n, align 4
  %cmp13 = icmp ugt i32 %6, 7
  br i1 %cmp13, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end12
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.27, i64 0, i64 0), i32 noundef 7) #16
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end12
  %idxprom = zext i32 %6 to i64
  %valid = getelementptr [8 x %struct.arch_timer_mem_frame], [8 x %struct.arch_timer_mem_frame]* %5, i64 0, i64 %idxprom, i32 0
  %7 = load i8, i8* %valid, align 8, !range !13
  %tobool22.not = icmp eq i8 %7, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end20
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i64 0, i64 0)) #16
  br label %cleanup.thread

if.end29:                                         ; preds = %if.end20
  %call30 = call i32 @of_address_to_resource(%struct.device_node* noundef nonnull %frame_node.0105, i32 noundef 0, %struct.resource* noundef nonnull %res) #17
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.inc, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end29, %do.end, %do.end17, %do.end26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #14
  br label %out

for.inc:                                          ; preds = %if.end29
  %8 = load i64, i64* %start, align 8
  %cntbase = getelementptr [8 x %struct.arch_timer_mem_frame], [8 x %struct.arch_timer_mem_frame]* %5, i64 0, i64 %idxprom, i32 1
  store i64 %8, i64* %cntbase, align 8
  %call35 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %res) #13
  %size36 = getelementptr [8 x %struct.arch_timer_mem_frame], [8 x %struct.arch_timer_mem_frame]* %5, i64 0, i64 %idxprom, i32 2
  store i64 %call35, i64* %size36, align 8
  %call37 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef nonnull %frame_node.0105, i32 noundef 1) #17
  %virt_irq = getelementptr [8 x %struct.arch_timer_mem_frame], [8 x %struct.arch_timer_mem_frame]* %5, i64 0, i64 %idxprom, i32 4
  store i32 %call37, i32* %virt_irq, align 4
  %call38 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef nonnull %frame_node.0105, i32 noundef 0) #17
  %phys_irq = getelementptr [8 x %struct.arch_timer_mem_frame], [8 x %struct.arch_timer_mem_frame]* %5, i64 0, i64 %idxprom, i32 3
  store i32 %call38, i32* %phys_irq, align 8
  store i8 1, i8* %valid, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #14
  %call41 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef %np, %struct.device_node* noundef nonnull %frame_node.0105) #17
  %cmp.not = icmp eq %struct.device_node* %call41, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end4
  %call42 = call fastcc %struct.arch_timer_mem_frame* @arch_timer_mem_find_best_frame(%struct.arch_timer_mem* noundef nonnull %1) #18
  %tobool43.not = icmp eq %struct.arch_timer_mem_frame* %call42, null
  br i1 %tobool43.not, label %do.end47, label %if.end51

do.end47:                                         ; preds = %for.end
  %call50 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %call) #16
  br label %out

if.end51:                                         ; preds = %for.end
  %call52 = call fastcc i32 @arch_timer_mem_frame_get_cntfrq(%struct.arch_timer_mem_frame* noundef nonnull %call42) #18
  call fastcc void @arch_timer_of_configure_rate(i32 noundef %call52, %struct.device_node* noundef %np) #18
  %call53 = call fastcc i32 @arch_timer_mem_frame_register(%struct.arch_timer_mem_frame* noundef nonnull %call42) #18
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true, label %out

land.lhs.true:                                    ; preds = %if.end51
  %call55 = call fastcc i1 @arch_timer_needs_of_probing() #18
  br i1 %call55, label %out, label %if.then56

if.then56:                                        ; preds = %land.lhs.true
  call fastcc void @arch_timer_common_init() #18
  br label %out

out:                                              ; preds = %cleanup.thread, %if.end51, %land.lhs.true, %if.then56, %if.end, %do.end47
  %ret.0 = phi i32 [ -22, %if.end ], [ %call53, %if.end51 ], [ 0, %land.lhs.true ], [ 0, %if.then56 ], [ -22, %do.end47 ], [ -22, %cleanup.thread ]
  call void @kfree(i8* noundef nonnull %call) #17
  br label %cleanup59

cleanup59:                                        ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kvm_arch_ptp_get_crosststamp(i64* noundef writeonly %cycle, %struct.timespec64* nocapture noundef writeonly %ts, %struct.clocksource** noundef writeonly %cs) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @arch_timer_uses_ppi, align 4
  %cmp = icmp ne i32 %0, 2
  %. = zext i1 %cmp to i32
  %call = call i32 @arm_smccc_1_1_get_conduit() #17
  switch i32 %call, label %sw.epilog.thread [
    i32 2, label %do.body
    i32 1, label %do.body7
  ]

do.body:                                          ; preds = %entry
  %1 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2248146945, i32 %.) #14, !srcloc !14
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  %2 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2248146945, i32 %.) #14, !srcloc !15
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %entry
  call void asm sideeffect "", "{x0},{x1},~{memory}"(i64 2248146945, i32 %.) #14, !srcloc !16
  br label %cleanup

sw.epilog:                                        ; preds = %do.body7, %do.body
  %.pn = phi { i64, i64, i64, i64 } [ %2, %do.body7 ], [ %1, %do.body ]
  %hvc_res.sroa.13.0 = extractvalue { i64, i64, i64, i64 } %.pn, 3
  %hvc_res.sroa.10.0 = extractvalue { i64, i64, i64, i64 } %.pn, 2
  %hvc_res.sroa.0.0 = extractvalue { i64, i64, i64, i64 } %.pn, 0
  %3 = and i64 %hvc_res.sroa.0.0, 2147483648
  %cmp42.not = icmp eq i64 %3, 0
  br i1 %cmp42.not, label %if.end45, label %cleanup

if.end45:                                         ; preds = %sw.epilog
  %hvc_res.sroa.7.0 = extractvalue { i64, i64, i64, i64 } %.pn, 1
  %shl = shl i64 %hvc_res.sroa.0.0, 32
  %or = or i64 %shl, %hvc_res.sroa.7.0
  %call49 = call [2 x i64] @ns_to_timespec64(i64 noundef %or) #17
  %call49.fca.0.extract = extractvalue [2 x i64] %call49, 0
  %call49.fca.1.extract = extractvalue [2 x i64] %call49, 1
  %tmp48.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %call49.fca.0.extract, i64* %tmp48.sroa.0.0..sroa_idx, align 8
  %tmp48.sroa.4.0..sroa_idx63 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %call49.fca.1.extract, i64* %tmp48.sroa.4.0..sroa_idx63, align 8
  %tobool50.not = icmp eq i64* %cycle, null
  br i1 %tobool50.not, label %if.end56, label %if.then51

if.then51:                                        ; preds = %if.end45
  %shl53 = shl i64 %hvc_res.sroa.10.0, 32
  %or55 = or i64 %shl53, %hvc_res.sroa.13.0
  store i64 %or55, i64* %cycle, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end45
  %tobool57.not = icmp eq %struct.clocksource** %cs, null
  br i1 %tobool57.not, label %cleanup, label %if.then58

if.then58:                                        ; preds = %if.end56
  store %struct.clocksource* @clocksource_counter, %struct.clocksource** %cs, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %if.end56, %if.then58, %sw.epilog
  %retval.0 = phi i32 [ -95, %sw.epilog ], [ 0, %if.then58 ], [ 0, %if.end56 ], [ -95, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s) unnamed_addr #1 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef nonnull @evtstrm_enable) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np, i8* noundef %propname) unnamed_addr #1 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef null) #17
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @arch_timer_populate_kvm_info() unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 2), align 4
  store i32 %0, i32* getelementptr inbounds (%struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* @arch_timer_kvm_info, i64 0, i32 1), align 8
  %call = call fastcc i1 @is_kernel_in_hyp_mode() #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 1), align 4
  store i32 %1, i32* getelementptr inbounds (%struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* @arch_timer_kvm_info, i64 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_timer_get_cntfrq() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntfrq_el0", "=r"() #14, !srcloc !17
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @arch_timer_of_configure_rate(i32 noundef %rate, %struct.device_node* noundef %np) unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @arch_timer_rate, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.end8

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull @arch_timer_rate) #13
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 %rate, i32* @arch_timer_rate, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call fastcc i32 @validate_timer_rate() #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end3
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0)) #16
  br label %if.end8

if.end8:                                          ; preds = %entry, %do.end, %if.end3
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @arch_timer_select_ppi() unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i1 @is_kernel_in_hyp_mode() #13
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @is_hyp_mode_available() #13
  %call1.not = xor i1 %call1, true
  %0 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 2), align 4
  %tobool = icmp ne i32 %0, 0
  %or.cond = select i1 %call1.not, i1 %tobool, i1 false
  %. = select i1 %or.cond, i32 2, i32 1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 3, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @arch_timer_register() unnamed_addr #0 section ".init.text" {
entry:
  %call = call i8* @__alloc_percpu(i64 noundef 256, i64 noundef 64) #17
  store i8* %call, i8** bitcast (%struct.clock_event_device** @arch_timer_evt to i8**), align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @arch_timer_uses_ppi, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  switch i32 %0, label %do.body [
    i32 2, label %sw.epilog
    i32 0, label %sw.bb2
    i32 1, label %sw.bb2
    i32 3, label %sw.bb12
  ]

sw.bb2:                                           ; preds = %if.end, %if.end
  %call3 = call fastcc i32 @request_percpu_irq(i32 noundef %1, i32 (i32, i8*)* noundef nonnull @arch_timer_handler_phys, i8* noundef nonnull %call) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end23, label %do.end21

sw.bb12:                                          ; preds = %if.end
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clocksource/arm_arch_timer.c\22; .popsection; .long 14472b - 14470b; .short 1146; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !18
  unreachable

sw.epilog:                                        ; preds = %if.end, %sw.bb12
  %arch_timer_handler_phys.sink = phi i32 (i32, i8*)* [ @arch_timer_handler_phys, %sw.bb12 ], [ @arch_timer_handler_virt, %if.end ]
  %call13 = call fastcc i32 @request_percpu_irq(i32 noundef %1, i32 (i32, i8*)* noundef nonnull %arch_timer_handler_phys.sink, i8* noundef nonnull %call) #13
  %tobool17.not = icmp eq i32 %call13, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %sw.bb2, %sw.epilog
  %err.055 = phi i32 [ %call13, %sw.epilog ], [ %call3, %sw.bb2 ]
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 noundef %1, i32 noundef %err.055) #16
  br label %out_free

if.end23:                                         ; preds = %sw.bb2, %sw.epilog
  %call28 = call fastcc i32 @cpuhp_setup_state() #13
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %out_unreg_cpupm

out_unreg_cpupm:                                  ; preds = %if.end23
  %2 = load i32, i32* @arch_timer_uses_ppi, align 4
  %idxprom32 = zext i32 %2 to i64
  %arrayidx33 = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %idxprom32
  %3 = load i32, i32* %arrayidx33, align 4
  %4 = load i8*, i8** bitcast (%struct.clock_event_device** @arch_timer_evt to i8**), align 8
  call void @free_percpu_irq(i32 noundef %3, i8* noundef %4) #17
  br label %out_free

out_free:                                         ; preds = %out_unreg_cpupm, %do.end21
  %err.2 = phi i32 [ %err.055, %do.end21 ], [ %call28, %out_unreg_cpupm ]
  %5 = load i8*, i8** bitcast (%struct.clock_event_device** @arch_timer_evt to i8**), align 8
  call void @free_percpu(i8* noundef %5) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %err.2, %out_free ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i1 @arch_timer_needs_of_probing() unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @arch_timers_present, align 4
  %and = and i32 %0, 3
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = and i32 %0, 1
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, %struct.of_device_id* getelementptr inbounds ([3 x %struct.of_device_id], [3 x %struct.of_device_id]* @arch_timer_of_match, i64 0, i64 0), %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @arch_timer_mem_of_match, i64 0, i64 0)
  %call3 = call fastcc %struct.device_node* @of_find_matching_node(%struct.of_device_id* noundef %.) #13
  %tobool5.not = icmp eq %struct.device_node* %call3, null
  br i1 %tobool5.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call6 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %call3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ %call6, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @arch_timer_common_init() unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @arch_timers_present, align 4
  call fastcc void @arch_timer_banner(i32 noundef %0) #18
  %1 = load i32, i32* @arch_timers_present, align 4
  call fastcc void @arch_counter_register(i32 noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_kernel_in_hyp_mode() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, CurrentEL", "=r"() #14, !srcloc !19
  %cmp = icmp eq i64 %0, 8
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @validate_timer_rate() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @arch_timer_rate, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %0, 1000000
  br i1 %cmp, label %if.then8, label %return, !prof !20

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clocksource/arm_arch_timer.c\22; .popsection; .long 14472b - 14470b; .short 930; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !21
  br label %return

return:                                           ; preds = %if.end, %if.then8, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values) unnamed_addr #1 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #17
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_hyp_mode_available() unnamed_addr #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 0), align 4
  %cmp = icmp eq i32 %0, 3602
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 1), align 4
  %cmp1 = icmp eq i32 %1, 3602
  %2 = select i1 %cmp, i1 %cmp1, i1 false
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @request_percpu_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i8* noundef %percpu_dev_id) unnamed_addr #1 {
entry:
  %call = call i32 @__request_percpu_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef 0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* noundef %percpu_dev_id) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_handler_virt(i32 noundef %irq, i8* noundef %dev_id) #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntv_ctl_el0", "=r"() #14, !srcloc !22
  %1 = and i64 %0, 4
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %timer_handler.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = bitcast i8* %dev_id to %struct.clock_event_device*
  %or.i = and i64 %0, 4294967293
  %conv12.i.i.i = or i64 %or.i, 2
  call void asm sideeffect "msr cntv_ctl_el0, ${0:x}", "rZ"(i64 %conv12.i.i.i) #14, !srcloc !23
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  %event_handler.i = bitcast i8* %dev_id to void (%struct.clock_event_device*)**
  %3 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler.i, align 64
  call void %3(%struct.clock_event_device* noundef %2) #17
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %entry, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_handler_phys(i32 noundef %irq, i8* noundef %dev_id) #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntp_ctl_el0", "=r"() #14, !srcloc !25
  %1 = and i64 %0, 4
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %timer_handler.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = bitcast i8* %dev_id to %struct.clock_event_device*
  %or.i = and i64 %0, 4294967293
  %conv.i.i.i = or i64 %or.i, 2
  call void asm sideeffect "msr cntp_ctl_el0, ${0:x}", "rZ"(i64 %conv.i.i.i) #14, !srcloc !26
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  %event_handler.i = bitcast i8* %dev_id to void (%struct.clock_event_device*)**
  %3 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler.i, align 64
  call void %3(%struct.clock_event_device* noundef %2) #17
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %entry, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #1 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 121, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @arch_timer_starting_cpu, i32 (i32)* noundef nonnull @arch_timer_dying_cpu, i1 noundef false) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_starting_cpu(i32 noundef %cpu) #1 {
entry:
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** @arch_timer_evt, align 8
  %1 = ptrtoint %struct.clock_event_device* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to %struct.clock_event_device*
  call fastcc void @__arch_timer_setup(i32 noundef 1, %struct.clock_event_device* noundef %2) #13
  %3 = load i32, i32* @arch_timer_uses_ppi, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call2 = call fastcc i32 @check_ppi_trigger(i32 noundef %4) #13, !range !27
  %5 = load i32, i32* @arch_timer_uses_ppi, align 4
  %idxprom3 = zext i32 %5 to i64
  %arrayidx4 = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  call void @enable_percpu_irq(i32 noundef %6, i32 noundef %call2) #17
  call fastcc void @arch_counter_set_user_access() #13
  %7 = load i8, i8* @evtstrm_enable, align 1, !range !13
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %entry
  call fastcc void @arch_timer_configure_evtstream() #13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_dying_cpu(i32 noundef %cpu) #1 {
entry:
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** @arch_timer_evt, align 8
  %1 = ptrtoint %struct.clock_event_device* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to %struct.clock_event_device*
  %add10 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add10 to i32*
  %4 = load i32, i32* %3, align 4
  call fastcc void @cpumask_clear_cpu(i32 noundef %4) #13
  call fastcc void @arch_timer_stop(%struct.clock_event_device* noundef %2) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, i32 (i32, i8*)* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__arch_timer_setup(i32 noundef %type, %struct.clock_event_device* noundef %clk) unnamed_addr #1 {
entry:
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 9
  store i32 2, i32* %features, align 4
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i8, i8* @arch_timer_c3stop, align 1, !range !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 10, i32* %features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %name = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %name, align 8
  %rating = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 22
  store i32 450, i32* %rating, align 32
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call8 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %2) #13
  %cpumask = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 25
  store %struct.cpumask* %call8, %struct.cpumask** %cpumask, align 16
  %3 = load i32, i32* @arch_timer_uses_ppi, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %irq = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 23
  store i32 %4, i32* %irq, align 4
  %5 = icmp ult i32 %3, 4
  br i1 %5, label %switch.lookup, label %do.body12

do.body12:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clocksource/arm_arch_timer.c\22; .popsection; .long 14472b - 14470b; .short 795; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !28
  unreachable

switch.lookup:                                    ; preds = %if.end
  %6 = sext i32 %3 to i64
  %switch.gep = getelementptr inbounds [4 x i32 (%struct.clock_event_device*)*], [4 x i32 (%struct.clock_event_device*)*]* @switch.table.__arch_timer_setup, i64 0, i64 %6
  %switch.load = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %switch.gep, align 8
  %7 = sext i32 %3 to i64
  %switch.gep64 = getelementptr inbounds [4 x i32 (i64, %struct.clock_event_device*)*], [4 x i32 (i64, %struct.clock_event_device*)*]* @switch.table.__arch_timer_setup.36, i64 0, i64 %7
  %switch.load65 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %switch.gep64, align 8
  %set_state_shutdown10 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 14
  store i32 (%struct.clock_event_device*)* %switch.load, i32 (%struct.clock_event_device*)** %set_state_shutdown10, align 32
  br label %if.end33

if.else:                                          ; preds = %entry
  store i32 34, i32* %features, align 4
  %name20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %name20, align 8
  %rating21 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 22
  store i32 400, i32* %rating21, align 32
  %cpumask22 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 25
  store %struct.cpumask* @__cpu_possible_mask, %struct.cpumask** %cpumask22, align 16
  %.b62 = load i1, i1* @arch_timer_mem_use_virtual, align 1
  %set_state_shutdown25 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 14
  br i1 %.b62, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.else
  store i32 (%struct.clock_event_device*)* @arch_timer_shutdown_virt_mem, i32 (%struct.clock_event_device*)** %set_state_shutdown25, align 32
  br label %if.end33

if.else28:                                        ; preds = %if.else
  store i32 (%struct.clock_event_device*)* @arch_timer_shutdown_phys_mem, i32 (%struct.clock_event_device*)** %set_state_shutdown25, align 32
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.else28, %switch.lookup
  %arch_timer_shutdown_virt_mem.sink = phi i32 (%struct.clock_event_device*)* [ @arch_timer_shutdown_virt_mem, %if.then24 ], [ @arch_timer_shutdown_phys_mem, %if.else28 ], [ %switch.load, %switch.lookup ]
  %arch_timer_set_next_event_virt_mem.sink = phi i32 (i64, %struct.clock_event_device*)* [ @arch_timer_set_next_event_virt_mem, %if.then24 ], [ @arch_timer_set_next_event_phys_mem, %if.else28 ], [ %switch.load65, %switch.lookup ]
  %set_state_oneshot_stopped26 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 13
  store i32 (%struct.clock_event_device*)* %arch_timer_shutdown_virt_mem.sink, i32 (%struct.clock_event_device*)** %set_state_oneshot_stopped26, align 8
  %set_next_event27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 1
  store i32 (i64, %struct.clock_event_device*)* %arch_timer_set_next_event_virt_mem.sink, i32 (i64, %struct.clock_event_device*)** %set_next_event27, align 8
  %call35 = call i32 %arch_timer_shutdown_virt_mem.sink(%struct.clock_event_device* noundef %clk) #17
  %8 = load i32, i32* @arch_timer_rate, align 4
  call void @clockevents_config_and_register(%struct.clock_event_device* noundef %clk, i32 noundef %8, i64 noundef 15, i64 noundef 2147483647) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_ppi_trigger(i32 noundef %irq) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @irq_get_trigger_type(i32 noundef %irq) #13
  switch i32 %call, label %do.end [
    i32 8, label %if.end
    i32 4, label %if.end
  ]

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.17, i64 0, i64 0), i32 noundef %irq) #16
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %entry, %entry, %do.end
  %flags.0 = phi i32 [ 8, %do.end ], [ %call, %entry ], [ %call, %entry ]
  ret i32 %flags.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_counter_set_user_access() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @arch_timer_get_cntkctl() #13
  %and = and i32 %call, -776
  %or = or i32 %and, 2
  call fastcc void @arch_timer_set_cntkctl(i32 noundef %or) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_timer_configure_evtstream() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @arch_timer_rate, align 4
  %1 = udiv i32 %0, 20000
  %2 = icmp ult i32 %0, 20000
  %3 = call i32 @llvm.ctlz.i32(i32 %1, i1 false) #14, !range !29
  %narrow.i = sub nuw nsw i32 32, %3
  %narrow3.i = select i1 %2, i32 0, i32 %narrow.i
  %sub = add nsw i32 %narrow3.i, -1
  %cmp = icmp ugt i32 %narrow3.i, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = zext i32 %1 to i64
  %sub5 = add nsw i32 %narrow3.i, -2
  %sh_prom = zext i32 %sub5 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, %4
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 %sub, i32 %narrow3.i
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %lsb.0 = phi i32 [ %sub, %entry ], [ %spec.select, %land.lhs.true ]
  %cmp6 = icmp slt i32 %lsb.0, 15
  %cond = select i1 %cmp6, i32 %lsb.0, i32 15
  %5 = icmp sgt i32 %cond, 0
  %cond14 = select i1 %5, i32 %cond, i32 0
  call fastcc void @arch_timer_evtstrm_enable(i32 noundef %cond14) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_shutdown_virt(%struct.clock_event_device* nocapture noundef readnone %clk) #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntv_ctl_el0", "=r"() #14, !srcloc !22
  %1 = and i64 %0, 4294967294
  call void asm sideeffect "msr cntv_ctl_el0, ${0:x}", "rZ"(i64 %1) #14, !srcloc !23
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_set_next_event_virt(i64 noundef %evt, %struct.clock_event_device* nocapture noundef readnone %clk) #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntv_ctl_el0", "=r"() #14, !srcloc !22
  %1 = and i64 %0, 4294967292
  %2 = or i64 %1, 1
  %conv17.i.i.i = and i64 %evt, 4294967295
  call void asm sideeffect "msr cntv_tval_el0, ${0:x}", "rZ"(i64 %conv17.i.i.i) #14, !srcloc !30
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  call void asm sideeffect "msr cntv_ctl_el0, ${0:x}", "rZ"(i64 %2) #14, !srcloc !23
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_shutdown_phys(%struct.clock_event_device* nocapture noundef readnone %clk) #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntp_ctl_el0", "=r"() #14, !srcloc !25
  %1 = and i64 %0, 4294967294
  call void asm sideeffect "msr cntp_ctl_el0, ${0:x}", "rZ"(i64 %1) #14, !srcloc !26
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_set_next_event_phys(i64 noundef %evt, %struct.clock_event_device* nocapture noundef readnone %clk) #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntp_ctl_el0", "=r"() #14, !srcloc !25
  %1 = and i64 %0, 4294967292
  %2 = or i64 %1, 1
  %conv4.i.i.i = and i64 %evt, 4294967295
  call void asm sideeffect "msr cntp_tval_el0, ${0:x}", "rZ"(i64 %conv4.i.i.i) #14, !srcloc !31
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  call void asm sideeffect "msr cntp_ctl_el0, ${0:x}", "rZ"(i64 %2) #14, !srcloc !26
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_shutdown_virt_mem(%struct.clock_event_device* nocapture noundef readonly %clk) #1 {
entry:
  %add.ptr17.i.i = getelementptr %struct.clock_event_device, %struct.clock_event_device* %clk, i64 -1, i32 26, i32 1
  %base20.i.i = bitcast %struct.list_head** %add.ptr17.i.i to i8**
  %0 = load i8*, i8** %base20.i.i, align 64
  %add.ptr21.i.i = getelementptr i8, i8* %0, i64 60
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr21.i.i) #14, !srcloc !32
  %2 = and i32 %1, -2
  %3 = load i8*, i8** %base20.i.i, align 64
  %add.ptr16.i.i = getelementptr i8, i8* %3, i64 60
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %2, i8* %add.ptr16.i.i) #14, !srcloc !33
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_set_next_event_virt_mem(i64 noundef %evt, %struct.clock_event_device* nocapture noundef readonly %clk) #1 {
entry:
  %add.ptr17.i.i = getelementptr %struct.clock_event_device, %struct.clock_event_device* %clk, i64 -1, i32 26, i32 1
  %base20.i.i = bitcast %struct.list_head** %add.ptr17.i.i to i8**
  %0 = load i8*, i8** %base20.i.i, align 64
  %add.ptr21.i.i = getelementptr i8, i8* %0, i64 60
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr21.i.i) #14, !srcloc !32
  %2 = and i32 %1, -4
  %3 = or i32 %2, 1
  %conv128.i = trunc i64 %evt to i32
  %4 = load i8*, i8** %base20.i.i, align 64
  %add.ptr19.i.i = getelementptr i8, i8* %4, i64 56
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %conv128.i, i8* %add.ptr19.i.i) #14, !srcloc !33
  %5 = load i8*, i8** %base20.i.i, align 64
  %add.ptr16.i.i = getelementptr i8, i8* %5, i64 60
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %3, i8* %add.ptr16.i.i) #14, !srcloc !33
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_shutdown_phys_mem(%struct.clock_event_device* nocapture noundef readonly %clk) #1 {
entry:
  %add.ptr.i.i = getelementptr %struct.clock_event_device, %struct.clock_event_device* %clk, i64 -1, i32 26, i32 1
  %base.i.i = bitcast %struct.list_head** %add.ptr.i.i to i8**
  %0 = load i8*, i8** %base.i.i, align 64
  %add.ptr1.i.i = getelementptr i8, i8* %0, i64 44
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.i.i) #14, !srcloc !32
  %2 = and i32 %1, -2
  %3 = load i8*, i8** %base.i.i, align 64
  %add.ptr1.i3.i = getelementptr i8, i8* %3, i64 44
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %2, i8* %add.ptr1.i3.i) #14, !srcloc !33
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_set_next_event_phys_mem(i64 noundef %evt, %struct.clock_event_device* nocapture noundef readonly %clk) #1 {
entry:
  %add.ptr.i.i = getelementptr %struct.clock_event_device, %struct.clock_event_device* %clk, i64 -1, i32 26, i32 1
  %base.i.i = bitcast %struct.list_head** %add.ptr.i.i to i8**
  %0 = load i8*, i8** %base.i.i, align 64
  %add.ptr1.i.i = getelementptr i8, i8* %0, i64 44
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.i.i) #14, !srcloc !32
  %2 = and i32 %1, -4
  %3 = or i32 %2, 1
  %conv124.i = trunc i64 %evt to i32
  %4 = load i8*, i8** %base.i.i, align 64
  %add.ptr4.i.i = getelementptr i8, i8* %4, i64 40
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %conv124.i, i8* %add.ptr4.i.i) #14, !srcloc !33
  %5 = load i8*, i8** %base.i.i, align 64
  %add.ptr1.i14.i = getelementptr i8, i8* %5, i64 44
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %3, i8* %add.ptr1.i14.i) #14, !srcloc !33
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(%struct.clock_event_device* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_get_trigger_type(i32 noundef %irq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %irq) #17
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef nonnull %call) #13
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irqd_get_trigger_type(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #2 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 15
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_timer_get_cntkctl() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntkctl_el1", "=r"() #14, !srcloc !34
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_timer_set_cntkctl(i32 noundef %cntkctl) unnamed_addr #1 {
entry:
  %conv = zext i32 %cntkctl to i64
  call void asm sideeffect "msr cntkctl_el1, ${0:x}", "rZ"(i64 %conv) #14, !srcloc !35
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_timer_evtstrm_enable(i32 noundef %divider) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @arch_timer_get_cntkctl() #13
  %and = and i32 %call, -245
  %shl = shl i32 %divider, 4
  %or = or i32 %shl, 4
  %or1 = or i32 %and, %or
  call fastcc void @arch_timer_set_cntkctl(i32 noundef %or1) #13
  call fastcc void @arch_timer_set_evtstrm_feature() #13
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call3, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  call fastcc void @cpumask_set_cpu(i32 noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_timer_set_evtstrm_feature() unnamed_addr #1 {
entry:
  call void @cpu_set_feature(i32 noundef 2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  call fastcc void @set_bit(i64 noundef %conv) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_set_feature(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @evtstrm_available, i64 0, i32 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  call fastcc void @clear_bit(i64 noundef %conv) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_timer_stop(%struct.clock_event_device* noundef %clk) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @arch_timer_uses_ppi, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @arch_timer_ppi, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  call void @disable_percpu_irq(i32 noundef %1) #17
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %clk, i64 0, i32 14
  %2 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_shutdown, align 32
  %call1 = call i32 %2(%struct.clock_event_device* noundef %clk) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @evtstrm_available, i64 0, i32 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_find_matching_node(%struct.of_device_id* noundef %matches) unnamed_addr #1 {
entry:
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef null, %struct.of_device_id* noundef %matches, %struct.of_device_id** noundef null) #17
  ret %struct.device_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef, %struct.of_device_id* noundef, %struct.of_device_id** noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @arch_timer_banner(i32 noundef %type) unnamed_addr #0 section ".init.text" {
entry:
  %conv = zext i32 %type to i64
  %and = and i64 %conv, 1
  %tobool.not = icmp eq i64 %and, 0
  %cmp = icmp eq i32 %type, 3
  %and5 = and i64 %conv, 2
  %tobool6.not = icmp eq i64 %and5, 0
  %0 = load i32, i32* @arch_timer_rate, align 4
  %1 = load i32, i32* @arch_timer_uses_ppi, align 4
  %cmp14 = icmp eq i32 %1, 2
  %cond16 = select i1 %cmp14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %cond17 = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* %cond16
  %.b37 = load i1, i1* @arch_timer_mem_use_virtual, align 1
  %cond28 = select i1 %.b37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %cond7 = select i1 %tobool6.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  %cond31 = select i1 %tobool6.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* %cond28
  %cond21 = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %div9 = udiv i32 %0, 10000
  %2 = urem i32 %div9, 100
  %rem = zext i32 %2 to i64
  %3 = udiv i32 %0, 1000000
  %div = zext i32 %3 to i64
  %cond3 = select i1 %cmp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond3, i8* noundef %cond7, i64 noundef %div, i64 noundef %rem, i8* noundef %cond17, i8* noundef %cond21, i8* noundef %cond31) #16
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @arch_counter_register(i32 noundef %type) unnamed_addr #0 section ".init.text" {
entry:
  %0 = and i32 %type, 1
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @is_hyp_mode_available() #13
  %call.not = xor i1 %call, true
  %1 = load i32, i32* @arch_timer_uses_ppi, align 4
  %cmp = icmp eq i32 %1, 2
  %or.cond = select i1 %call.not, i1 true, i1 %cmp
  %arch_counter_get_cntvct.arch_counter_get_cntpct = select i1 %or.cond, i64 ()* @arch_counter_get_cntvct, i64 ()* @arch_counter_get_cntpct
  store i64 ()* %arch_counter_get_cntvct.arch_counter_get_cntpct, i64 ()** @arch_timer_read_counter, align 8
  store i32 1, i32* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @clocksource_counter, i64 0, i32 12), align 8
  br label %if.end4

if.else3:                                         ; preds = %entry
  store i64 ()* @arch_counter_get_cntvct_mem, i64 ()** @arch_timer_read_counter, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then
  %2 = phi i64 ()* [ @arch_counter_get_cntvct_mem, %if.else3 ], [ %arch_counter_get_cntvct.arch_counter_get_cntpct, %if.then ]
  %3 = load i8, i8* @arch_counter_suspend_stop, align 1, !range !13
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %4 = load i64, i64* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @clocksource_counter, i64 0, i32 13), align 8
  %or = or i64 %4, 128
  store i64 %or, i64* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @clocksource_counter, i64 0, i32 13), align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %call8 = call i64 %2() #17
  %5 = load i32, i32* @arch_timer_rate, align 4
  call fastcc void @clocksource_register_hz(i32 noundef %5) #13
  %6 = load i32, i32* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @clocksource_counter, i64 0, i32 2), align 8
  store i32 %6, i32* getelementptr inbounds (%struct.cyclecounter, %struct.cyclecounter* @cyclecounter, i64 0, i32 2), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @clocksource_counter, i64 0, i32 3), align 4
  store i32 %7, i32* getelementptr inbounds (%struct.cyclecounter, %struct.cyclecounter* @cyclecounter, i64 0, i32 3), align 4
  call void @timecounter_init(%struct.timecounter* noundef getelementptr inbounds (%struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* @arch_timer_kvm_info, i64 0, i32 0), %struct.cyclecounter* noundef nonnull @cyclecounter, i64 noundef %call8) #17
  %8 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %9 = load i32, i32* @arch_timer_rate, align 4
  %conv10 = zext i32 %9 to i64
  call void @sched_clock_register(i64 ()* noundef %8, i32 noundef 56, i64 noundef %conv10) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @arch_counter_get_cntpct() #1 {
entry:
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !39
  %0 = call i64 asm sideeffect "mrs $0, cntpct_el0", "=r"() #14, !srcloc !40
  %1 = call i64 asm sideeffect "\09eor\09$0, $1, $1\0A\09add\09$0, sp, $0\0A\09ldr\09xzr, [$0]", "=r,r"(i64 %0) #14, !srcloc !41
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @arch_counter_get_cntvct_mem() #1 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = load i8*, i8** @arch_counter_base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 12
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #14, !srcloc !32
  %2 = load i8*, i8** @arch_counter_base, align 8
  %add.ptr2 = getelementptr i8, i8* %2, i64 8
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr2) #14, !srcloc !32
  %4 = load i8*, i8** @arch_counter_base, align 8
  %add.ptr6 = getelementptr i8, i8* %4, i64 12
  %5 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr6) #14, !srcloc !32
  %cmp.not = icmp eq i32 %1, %5
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %conv = zext i32 %1 to i64
  %shl = shl nuw i64 %conv, 32
  %conv9 = zext i32 %3 to i64
  %or = or i64 %shl, %conv9
  ret i64 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clocksource_register_hz(i32 noundef %hz) unnamed_addr #1 {
entry:
  %call = call i32 @__clocksource_register_scale(%struct.clocksource* noundef nonnull @clocksource_counter, i32 noundef 1, i32 noundef %hz) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(%struct.timecounter* noundef, %struct.cyclecounter* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(i64 ()* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(%struct.clocksource* noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @arch_counter_read_cc(%struct.cyclecounter* nocapture noundef readnone %cc) #1 {
entry:
  %0 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call = call i64 %0() #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #1 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #17
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(%struct.device_node* noundef, i32 noundef, %struct.resource* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_size(%struct.resource* nocapture noundef readonly %res) unnamed_addr #2 {
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
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef, %struct.device_node* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc %struct.arch_timer_mem_frame* @arch_timer_mem_find_best_frame(%struct.arch_timer_mem* noundef %timer_mem) unnamed_addr #0 section ".init.text" {
entry:
  %cntctlbase1 = getelementptr inbounds %struct.arch_timer_mem, %struct.arch_timer_mem* %timer_mem, i64 0, i32 0
  %0 = load i64, i64* %cntctlbase1, align 8
  %size = getelementptr inbounds %struct.arch_timer_mem, %struct.arch_timer_mem* %timer_mem, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %2 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !13
  %tobool.not = icmp eq i8 %2, 0
  %or5 = select i1 %tobool.not, i64 29273397577910035, i64 29273397577912083
  %call = call i8* @__ioremap(i64 noundef %0, i64 noundef %1, i64 %or5) #17
  %tobool6.not = icmp eq i8* %call, null
  br i1 %tobool6.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i64* noundef %cntctlbase1) #16
  br label %cleanup36

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %call, i64 8
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #14, !srcloc !32
  %conv = zext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.inc ]
  %best_frame.078 = phi %struct.arch_timer_mem_frame* [ null, %if.end ], [ %best_frame.174, %for.inc ]
  %arrayidx = getelementptr %struct.arch_timer_mem, %struct.arch_timer_mem* %timer_mem, i64 0, i32 2, i64 %indvars.iv
  %valid = getelementptr inbounds %struct.arch_timer_mem_frame, %struct.arch_timer_mem_frame* %arrayidx, i64 0, i32 0
  %4 = load i8, i8* %valid, align 8, !range !13
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %for.inc, label %if.end14

if.end14:                                         ; preds = %for.body
  %5 = shl i64 %indvars.iv, 2
  %6 = add nuw nsw i64 %5, 64
  %add.ptr15 = getelementptr i8, i8* %call, i64 %6
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 63, i8* %add.ptr15) #14, !srcloc !33
  %7 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr15) #14, !srcloc !32
  %shl = shl i64 2, %5
  %and = and i64 %shl, %conv
  %tobool24.not = icmp ne i64 %and, 0
  %neg = and i32 %7, 18
  %tobool27.not = icmp eq i32 %neg, 18
  %or.cond = select i1 %tobool24.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end14
  store i1 true, i1* @arch_timer_mem_use_virtual, align 1
  br label %for.end

cleanup:                                          ; preds = %if.end14
  %neg30 = and i32 %7, 33
  %tobool33.not = icmp eq i32 %neg30, 33
  %arrayidx.best_frame.0 = select i1 %tobool33.not, %struct.arch_timer_mem_frame* %arrayidx, %struct.arch_timer_mem_frame* %best_frame.078
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body
  %best_frame.174 = phi %struct.arch_timer_mem_frame* [ %arrayidx.best_frame.0, %cleanup ], [ %best_frame.078, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cleanup.thread
  %best_frame.2 = phi %struct.arch_timer_mem_frame* [ %arrayidx, %cleanup.thread ], [ %best_frame.174, %for.inc ]
  call void @iounmap(i8* noundef nonnull %call) #17
  br label %cleanup36

cleanup36:                                        ; preds = %for.end, %do.end
  %retval.0 = phi %struct.arch_timer_mem_frame* [ %best_frame.2, %for.end ], [ null, %do.end ]
  ret %struct.arch_timer_mem_frame* %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @arch_timer_mem_frame_get_cntfrq(%struct.arch_timer_mem_frame* noundef %frame) unnamed_addr #0 section ".init.text" {
entry:
  %cntbase = getelementptr inbounds %struct.arch_timer_mem_frame, %struct.arch_timer_mem_frame* %frame, i64 0, i32 1
  %0 = load i64, i64* %cntbase, align 8
  %size = getelementptr inbounds %struct.arch_timer_mem_frame, %struct.arch_timer_mem_frame* %frame, i64 0, i32 2
  %1 = load i64, i64* %size, align 8
  %2 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !13
  %tobool.not = icmp eq i8 %2, 0
  %or4 = select i1 %tobool.not, i64 29273397577910035, i64 29273397577912083
  %call = call i8* @__ioremap(i64 noundef %0, i64 noundef %1, i64 %or4) #17
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i64* noundef %cntbase) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %call, i64 16
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #14, !srcloc !32
  call void @iounmap(i8* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @arch_timer_mem_frame_register(%struct.arch_timer_mem_frame* nocapture noundef readonly %frame) unnamed_addr #0 section ".init.text" {
entry:
  %.b4748 = load i1, i1* @arch_timer_mem_use_virtual, align 1
  %virt_irq = getelementptr inbounds %struct.arch_timer_mem_frame, %struct.arch_timer_mem_frame* %frame, i64 0, i32 4
  %phys_irq = getelementptr inbounds %struct.arch_timer_mem_frame, %struct.arch_timer_mem_frame* %frame, i64 0, i32 3
  %irq.0.in = select i1 %.b4748, i32* %virt_irq, i32* %phys_irq
  %irq.0 = load i32, i32* %irq.0.in, align 4
  %tobool1.not = icmp eq i32 %irq.0, 0
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %entry
  %cond = select i1 %.b4748, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0), i8* noundef %cond) #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  %cntbase = getelementptr inbounds %struct.arch_timer_mem_frame, %struct.arch_timer_mem_frame* %frame, i64 0, i32 1
  %0 = load i64, i64* %cntbase, align 8
  %size = getelementptr inbounds %struct.arch_timer_mem_frame, %struct.arch_timer_mem_frame* %frame, i64 0, i32 2
  %1 = load i64, i64* %size, align 8
  %call5 = call %struct.resource* @__request_region(%struct.resource* noundef nonnull @iomem_resource, i64 noundef %0, i64 noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 0) #17
  %tobool6.not = icmp eq %struct.resource* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %2 = load i64, i64* %cntbase, align 8
  %3 = load i64, i64* %size, align 8
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !13
  %tobool11.not = icmp eq i8 %4, 0
  %or16 = select i1 %tobool11.not, i64 29273397577910035, i64 29273397577912083
  %call17 = call i8* @__ioremap(i64 noundef %2, i64 noundef %3, i64 %or16) #17
  %tobool18.not = icmp eq i8* %call17, null
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end8
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0)) #16
  br label %cleanup

if.end25:                                         ; preds = %if.end8
  %call26 = call fastcc i32 @arch_timer_mem_register(i8* noundef nonnull %call17, i32 noundef %irq.0) #18
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @iounmap(i8* noundef nonnull %call17) #17
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  store i8* %call17, i8** @arch_counter_base, align 8
  %5 = load i32, i32* @arch_timers_present, align 4
  %6 = or i32 %5, 2
  store i32 %6, i32* @arch_timers_present, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end29, %if.then28, %do.end22, %do.end
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ 0, %if.end29 ], [ -6, %do.end22 ], [ -22, %do.end ], [ -16, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__ioremap(i64 noundef, i64 noundef, i64) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(i8* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.resource* @__request_region(%struct.resource* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @arch_timer_mem_register(i8* noundef %base, i32 noundef %irq) unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 320) #13
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %base1 = bitcast i8* %call to i8**
  store i8* %base, i8** %base1, align 64
  %evt = getelementptr inbounds i8, i8* %call, i64 64
  %0 = bitcast i8* %evt to %struct.clock_event_device*
  %irq2 = getelementptr inbounds i8, i8* %call, i64 228
  %1 = bitcast i8* %irq2 to i32*
  store i32 %irq, i32* %1, align 4
  call fastcc void @__arch_timer_setup(i32 noundef 2, %struct.clock_event_device* noundef %0) #13
  %.b25 = load i1, i1* @arch_timer_mem_use_virtual, align 1
  %arch_timer_handler_virt_mem.arch_timer_handler_phys_mem = select i1 %.b25, i32 (i32, i8*)* @arch_timer_handler_virt_mem, i32 (i32, i8*)* @arch_timer_handler_phys_mem
  %call8 = call fastcc i32 @request_irq(i32 noundef %irq, i32 (i32, i8*)* noundef nonnull %arch_timer_handler_virt_mem.arch_timer_handler_phys_mem, i8* noundef %evt) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0)) #16
  call void @kfree(i8* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call8, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_handler_virt_mem(i32 noundef %irq, i8* noundef %dev_id) #1 {
entry:
  %add.ptr17.i.i = getelementptr i8, i8* %dev_id, i64 -64
  %base20.i.i = bitcast i8* %add.ptr17.i.i to i8**
  %0 = load i8*, i8** %base20.i.i, align 64
  %add.ptr21.i.i = getelementptr i8, i8* %0, i64 60
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr21.i.i) #14, !srcloc !32
  %2 = and i32 %1, 4
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %timer_handler.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %3 = bitcast i8* %dev_id to %struct.clock_event_device*
  %or.i = or i32 %1, 2
  %4 = load i8*, i8** %base20.i.i, align 64
  %add.ptr16.i.i = getelementptr i8, i8* %4, i64 60
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %or.i, i8* %add.ptr16.i.i) #14, !srcloc !33
  %event_handler.i = bitcast i8* %dev_id to void (%struct.clock_event_device*)**
  %5 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler.i, align 64
  call void %5(%struct.clock_event_device* noundef %3) #17
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %entry, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arch_timer_handler_phys_mem(i32 noundef %irq, i8* noundef %dev_id) #1 {
entry:
  %add.ptr.i.i = getelementptr i8, i8* %dev_id, i64 -64
  %base.i.i = bitcast i8* %add.ptr.i.i to i8**
  %0 = load i8*, i8** %base.i.i, align 64
  %add.ptr1.i.i = getelementptr i8, i8* %0, i64 44
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr1.i.i) #14, !srcloc !32
  %2 = and i32 %1, 4
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %timer_handler.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %3 = bitcast i8* %dev_id to %struct.clock_event_device*
  %or.i = or i32 %1, 2
  %4 = load i8*, i8** %base.i.i, align 64
  %add.ptr1.i11.i = getelementptr i8, i8* %4, i64 44
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %or.i, i8* %add.ptr1.i11.i) #14, !srcloc !33
  %event_handler.i = bitcast i8* %dev_id to void (%struct.clock_event_device*)**
  %5 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler.i, align 64
  call void %5(%struct.clock_event_device* noundef %3) #17
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %entry, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @request_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i8* noundef %dev) unnamed_addr #1 {
entry:
  %call = call i32 @request_threaded_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i32 (i32, i8*)* noundef null, i64 noundef 82432, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* noundef %dev) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, i32 (i32, i8*)* noundef, i32 (i32, i8*)* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @arch_counter_read(%struct.clocksource* nocapture noundef readnone %cs) #1 {
entry:
  %0 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call = call i64 %0() #17
  ret i64 %call
}

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2150040098}
!9 = !{i64 2150040162}
!10 = !{i64 2150040357, i64 2150040385, i64 2150040412}
!11 = !{i64 2149150022, i64 2149150069, i64 2149150075, i64 2149150112, i64 2149150130, i64 2149151057, i64 2149151105, i64 2149151153, i64 2149151216, i64 2149151265, i64 2149150208, i64 2149150233, i64 2149150259, i64 2149150265, i64 2149150302, i64 2149150308, i64 2149150358, i64 2149150404, i64 2149150437}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 2152969755}
!15 = !{i64 2152972001}
!16 = !{i64 2152973395}
!17 = !{i64 2150036773}
!18 = !{i64 2152944185}
!19 = !{i64 2149400425}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2152933258}
!22 = !{i64 2150034713}
!23 = !{i64 2150033534}
!24 = !{i64 2150033886}
!25 = !{i64 2150034163}
!26 = !{i64 2150033139}
!27 = !{i32 0, i32 16}
!28 = !{i64 2152918380}
!29 = !{i32 0, i32 33}
!30 = !{i64 2150033729}
!31 = !{i64 2150033334}
!32 = !{i64 2152015054, i64 2152015101, i64 2152015107, i64 2152015144, i64 2152015162, i64 2152016082, i64 2152016130, i64 2152016178, i64 2152016241, i64 2152016290, i64 2152015240, i64 2152015265, i64 2152015291, i64 2152015297, i64 2152015334, i64 2152015340, i64 2152015390, i64 2152015436, i64 2152015469}
!33 = !{i64 4110083}
!34 = !{i64 2150037103}
!35 = !{i64 2150037448}
!36 = !{i64 2150037603}
!37 = !{i64 2147846343, i64 2147846854, i64 2147846884, i64 2147846910, i64 2147846942, i64 2147846971}
!38 = !{i64 2147856913, i64 2147857434, i64 2147857464, i64 2147857490, i64 2147857522, i64 2147857551}
!39 = !{i64 2150038668}
!40 = !{i64 2150038732}
!41 = !{i64 2150038927, i64 2150038955, i64 2150038982}
