; ModuleID = 'kernel/irq/irqdesc.c'
source_filename = "kernel/irq/irqdesc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_irqdesc__218_331_irq_sysfs_init2:\09\09\09"
module asm ".long\09irq_sysfs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpumask = type { [4 x i64] }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type opaque
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.41, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.42, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.42 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
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
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, void (%struct.irq_desc*)*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.msi_msg = type opaque
%struct.kobj_attribute = type { %struct.attribute, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.43, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.43 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }

@__setup_str_irq_affinity_setup = internal constant [13 x i8] c"irqaffinity=\00", section ".init.rodata", align 1
@__setup_irq_affinity_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_irq_affinity_setup, i32 0, i32 0), i32 (i8*)* @irq_affinity_setup, i32 0 }, section ".init.setup", align 8
@nr_irqs = dso_local local_unnamed_addr global i32 64, align 4
@__UNIQUE_ID___addressable_irq_sysfs_init219 = internal global i8* bitcast (i32 ()* @irq_sysfs_init to i8*), section ".discard.addressable", align 8
@irq_desc_tree = internal global %struct.xarray { %struct.spinlock zeroinitializer, i32 3264, i8* null }, align 8
@sparse_irq_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sparse_irq_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sparse_irq_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str = private unnamed_addr constant [51 x i8] c"\016NR_IRQS: %d, nr_irqs: %d, preallocated irqs: %d\0A\00", align 1
@allocated_irqs = internal global [130 x i64] zeroinitializer, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@irq_kobj_base = internal unnamed_addr global %struct.kobject* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\014Failed to add kobject for irq %d\0A\00", align 1
@alloc_desc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"&desc->request_mutex\00", align 1
@irq_kobj_type = internal global %struct.kobj_type { void (%struct.kobject*)* @irq_kobj_release, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @irq_groups, i32 0, i32 0), %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@no_irq_chip = external dso_local global %struct.irq_chip, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@irq_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @irq_group, %struct.attribute_group* null], align 8
@irq_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([8 x %struct.attribute*], [8 x %struct.attribute*]* @irq_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@irq_attrs = internal global [8 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @per_cpu_count_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @chip_name_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @hwirq_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @type_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @wakeup_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @name_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @actions_attr, i32 0, i32 0), %struct.attribute* null], align 8
@per_cpu_count_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @per_cpu_count_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@chip_name_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @chip_name_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@hwirq_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @hwirq_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@type_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @type_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@wakeup_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @wakeup_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@name_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @name_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@actions_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @actions_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"per_cpu_count\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"chip_name\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"hwirq\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"actions\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@__irq_regs = external dso_local global %struct.pt_regs*, section ".data..percpu", align 8
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_irq_sysfs_init219 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_irq_affinity_setup to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @irq_affinity_setup(i8* noundef %str) #0 section ".init.text" {
entry:
  call fastcc void @cpulist_parse(i8* noundef %str) #12
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  call fastcc void @cpumask_set_cpu(i32 noundef %1) #12
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @irq_sysfs_init() #0 section ".init.text" {
entry:
  call void @irq_lock_sparse() #12
  %0 = load %struct.kobject*, %struct.kobject** @kernel_kobj, align 8
  %call = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.kobject* noundef %0) #13
  store %struct.kobject* %call, %struct.kobject** @irq_kobj_base, align 8
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.irq_desc* @irq_to_desc(i32 noundef 0) #12
  %1 = load i32, i32* @nr_irqs, align 4
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.inc
  %irq.016 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %desc.015 = phi %struct.irq_desc* [ %call5, %for.inc ], [ %call1, %if.end ]
  %tobool2.not = icmp eq %struct.irq_desc* %desc.015, null
  br i1 %tobool2.not, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  call fastcc void @irq_sysfs_add(i32 noundef %irq.016, %struct.irq_desc* noundef nonnull %desc.015) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %inc = add nuw nsw i32 %irq.016, 1
  %call5 = call %struct.irq_desc* @irq_to_desc(i32 noundef %inc) #12
  %2 = load i32, i32* @nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.end ], [ 0, %for.inc ]
  call void @irq_unlock_sparse() #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_desc* @irq_to_desc(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %conv = zext i32 %irq to i64
  %call = call i8* @radix_tree_lookup(%struct.xarray* noundef nonnull @irq_desc_tree, i64 noundef %conv) #13
  %0 = bitcast i8* %call to %struct.irq_desc*
  ret %struct.irq_desc* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @radix_tree_lookup(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_lock_sparse() local_unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @sparse_irq_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_unlock_sparse() local_unnamed_addr #1 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @sparse_irq_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @early_irq_init() local_unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @init_irq_default_affinity() #14
  %call = call i32 @arch_probe_nr_irqs() #13
  %0 = load i32, i32* @nr_irqs, align 4
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i32 noundef %0, i32 noundef %call) #15
  %1 = load i32, i32* @nr_irqs, align 4
  %cmp = icmp sgt i32 %1, 8260
  br i1 %cmp, label %if.then, label %if.end18, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdesc.c\22; .popsection; .long 14472b - 14470b; .short 533; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !9
  store i32 8260, i32* @nr_irqs, align 4
  br label %if.end18

if.end18:                                         ; preds = %entry, %if.then
  %2 = phi i32 [ %1, %entry ], [ 8260, %if.then ]
  %cmp20 = icmp sgt i32 %call, 8260
  br i1 %cmp20, label %if.then34, label %if.end35, !prof !8

if.then34:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdesc.c\22; .popsection; .long 14472b - 14470b; .short 536; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !10
  %.pre = load i32, i32* @nr_irqs, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end18
  %3 = phi i32 [ %.pre, %if.then34 ], [ %2, %if.end18 ]
  %spec.select = phi i32 [ 8260, %if.then34 ], [ %call, %if.end18 ]
  %cmp47 = icmp sgt i32 %spec.select, %3
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end35
  store i32 %spec.select, i32* @nr_irqs, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end35
  %cmp5172 = icmp sgt i32 %spec.select, 0
  br i1 %cmp5172, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end50
  %wide.trip.count = zext i32 %spec.select to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %4 = trunc i64 %indvars.iv to i32
  %call53 = call fastcc %struct.irq_desc* @alloc_desc(i32 noundef %4, i32 noundef 0, %struct.cpumask* noundef null, %struct.module* noundef null) #12
  call fastcc void @set_bit(i64 noundef %indvars.iv, i64* noundef getelementptr inbounds ([130 x i64], [130 x i64]* @allocated_irqs, i64 0, i64 0)) #12
  call fastcc void @irq_insert_desc(i32 noundef %4, %struct.irq_desc* noundef %call53) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end50
  %call55 = call i32 @arch_early_irq_init() #13
  ret i32 %call55
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_irq_default_affinity() unnamed_addr #0 section ".init.text" {
entry:
  %call2 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0)) #12
  br i1 %call2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  call fastcc void @cpumask_setall() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_probe_nr_irqs() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_desc* @alloc_desc(i32 noundef %irq, i32 noundef %flags, %struct.cpumask* noundef %affinity, %struct.module* noundef %owner) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kzalloc_node() #12
  %0 = bitcast i8* %call to %struct.irq_desc*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @__alloc_percpu(i64 noundef 4, i64 noundef 4) #13
  %kstat_irqs = getelementptr inbounds i8, i8* %call, i64 152
  %1 = bitcast i8* %kstat_irqs to i8**
  store i8* %call1, i8** %1, align 8
  %tobool3.not = icmp eq i8* %call1, null
  br i1 %tobool3.not, label %err_desc, label %if.end5

if.end5:                                          ; preds = %if.end
  call fastcc void @alloc_masks(%struct.irq_desc* noundef nonnull %0) #12
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 220
  %2 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i32*
  store i32 0, i32* %2, align 4
  %request_mutex = getelementptr inbounds i8, i8* %call, i64 384
  %3 = bitcast i8* %request_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_desc.__key) #13
  call fastcc void @desc_set_defaults(i32 noundef %irq, %struct.irq_desc* noundef nonnull %0, %struct.cpumask* noundef %affinity, %struct.module* noundef %owner) #12
  %irq_data = getelementptr inbounds i8, i8* %call, i64 96
  %4 = bitcast i8* %irq_data to %struct.irq_data*
  call fastcc void @irqd_set(%struct.irq_data* noundef %4, i32 noundef %flags) #12
  %kobj = getelementptr inbounds i8, i8* %call, i64 320
  %5 = bitcast i8* %kobj to %struct.kobject*
  call void @kobject_init(%struct.kobject* noundef %5, %struct.kobj_type* noundef nonnull @irq_kobj_type) #13
  br label %cleanup

err_desc:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %err_desc, %if.end5
  %retval.0 = phi %struct.irq_desc* [ null, %err_desc ], [ %0, %if.end5 ], [ null, %entry ]
  ret %struct.irq_desc* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_insert_desc(i32 noundef %irq, %struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %conv = zext i32 %irq to i64
  %0 = bitcast %struct.irq_desc* %desc to i8*
  %call = call i32 @radix_tree_insert(%struct.xarray* noundef nonnull @irq_desc_tree, i64 noundef %conv, i8* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_early_irq_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @handle_irq_desc(%struct.irq_desc* noundef %desc) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.irq_desc* %desc, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @preempt_count() #12
  call fastcc void @generic_handle_irq_desc(%struct.irq_desc* noundef nonnull %desc) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.3* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @generic_handle_irq_desc(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %handle_irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 3
  %0 = load void (%struct.irq_desc*)*, void (%struct.irq_desc*)** %handle_irq, align 32
  call void %0(%struct.irq_desc* noundef %desc) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_handle_irq(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %call1 = call i32 @handle_irq_desc(%struct.irq_desc* noundef %call) #12
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_handle_domain_irq(%struct.irq_domain* noundef %domain, i32 noundef %hwirq) local_unnamed_addr #1 {
entry:
  %conv = zext i32 %hwirq to i64
  %call = call fastcc %struct.irq_desc* @irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %conv) #12
  %call1 = call i32 @handle_irq_desc(%struct.irq_desc* noundef %call) #12
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_desc* @irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq, i32* noundef null) #13
  ret %struct.irq_desc* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @handle_domain_irq(%struct.irq_domain* noundef %domain, i32 noundef %hwirq, %struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.pt_regs* @set_irq_regs(%struct.pt_regs* noundef %regs) #12
  call void @irq_enter() #13
  %conv = zext i32 %hwirq to i64
  %call1 = call fastcc %struct.irq_desc* @irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %conv) #12
  %tobool.not = icmp eq %struct.irq_desc* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call5 = call i32 @handle_irq_desc(%struct.irq_desc* noundef nonnull %call1) #12
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %entry ]
  call void @irq_exit() #13
  %call6 = call fastcc %struct.pt_regs* @set_irq_regs(%struct.pt_regs* noundef %call) #12
  ret i32 %ret.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pt_regs* @set_irq_regs(%struct.pt_regs* noundef %new_regs) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call, ptrtoint (%struct.pt_regs** @__irq_regs to i64)
  %0 = inttoptr i64 %add to %struct.pt_regs**
  %1 = load %struct.pt_regs*, %struct.pt_regs** %0, align 8
  store %struct.pt_regs* %new_regs, %struct.pt_regs** %0, align 8
  ret %struct.pt_regs* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_exit() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @handle_domain_nmi(%struct.irq_domain* noundef %domain, i32 noundef %hwirq, %struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.pt_regs* @set_irq_regs(%struct.pt_regs* noundef %regs) #12
  %call1 = call fastcc i32 @preempt_count() #12
  %0 = and i32 %call1, 15728640
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdesc.c\22; .popsection; .long 14472b - 14470b; .short 730; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv18 = zext i32 %hwirq to i64
  %call19 = call fastcc %struct.irq_desc* @irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %conv18) #12
  %tobool20.not = icmp eq %struct.irq_desc* %call19, null
  br i1 %tobool20.not, label %if.end30, label %if.then28, !prof !8

if.then28:                                        ; preds = %if.end
  %call29 = call i32 @handle_irq_desc(%struct.irq_desc* noundef nonnull %call19) #12
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then28
  %ret.0 = phi i32 [ 0, %if.then28 ], [ -22, %if.end ]
  %call31 = call fastcc %struct.pt_regs* @set_irq_regs(%struct.pt_regs* noundef %call) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_free_descs(i32 noundef %from, i32 noundef %cnt) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @nr_irqs, align 4
  %cmp.not = icmp ule i32 %0, %from
  %add = add i32 %cnt, %from
  %cmp1 = icmp ugt i32 %add, %0
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @sparse_irq_lock) #13
  %cmp212.not = icmp eq i32 %cnt, 0
  br i1 %cmp212.not, label %if.else11.i, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.013 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %add3 = add i32 %i.013, %from
  call fastcc void @free_desc(i32 noundef %add3) #12
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %if.else11.i, label %for.body

if.else11.i:                                      ; preds = %for.body, %if.end
  call void @__bitmap_clear(i64* noundef getelementptr inbounds ([130 x i64], [130 x i64]* @allocated_irqs, i64 0, i64 0), i32 noundef %from, i32 noundef %cnt) #13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @sparse_irq_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else11.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_desc(i32 noundef %irq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  call void @unregister_irq_proc(i32 noundef %irq, %struct.irq_desc* noundef %call) #13
  call fastcc void @irq_sysfs_del(%struct.irq_desc* noundef %call) #12
  call fastcc void @delete_irq_desc(i32 noundef %irq) #12
  %rcu = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 24
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @delayed_free_desc) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__irq_alloc_descs(i32 noundef %irq, i32 noundef %from, i32 noundef %cnt, i32 noundef %node, %struct.module* noundef %owner, %struct.irq_affinity_desc* noundef %affinity) local_unnamed_addr #1 section ".ref.text" {
entry:
  %tobool.not = icmp eq i32 %cnt, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i32 %irq, -1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %cmp2 = icmp ugt i32 %from, %irq
  br i1 %cmp2, label %cleanup, label %if.end5

if.else:                                          ; preds = %if.end
  %call = call i32 @arch_dynirq_lower_bound(i32 noundef %from) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.else
  %from.addr.0 = phi i32 [ %call, %if.else ], [ %irq, %if.then1 ]
  call void @mutex_lock(%struct.mutex* noundef nonnull @sparse_irq_lock) #13
  %conv = zext i32 %from.addr.0 to i64
  %call6 = call fastcc i64 @bitmap_find_next_zero_area(i64 noundef %conv, i32 noundef %cnt) #12
  %conv7 = trunc i64 %call6 to i32
  %cmp.not = xor i1 %cmp, true
  %cmp10.not = icmp eq i32 %conv7, %irq
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp10.not
  br i1 %or.cond, label %if.end13, label %unlock

if.end13:                                         ; preds = %if.end5
  %add = add i32 %conv7, %cnt
  %0 = load i32, i32* @nr_irqs, align 4
  %cmp14 = icmp ugt i32 %add, %0
  br i1 %cmp14, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end13
  %call18 = call fastcc i32 @irq_expand_nr_irqs(i32 noundef %add) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %unlock

if.end22:                                         ; preds = %if.then16, %if.end13
  %call23 = call fastcc i32 @alloc_descs(i32 noundef %conv7, i32 noundef %cnt, i32 noundef %node, %struct.irq_affinity_desc* noundef %affinity, %struct.module* noundef %owner) #12
  br label %unlock

unlock:                                           ; preds = %if.end5, %if.then16, %if.end22
  %ret.0 = phi i32 [ %call18, %if.then16 ], [ %call23, %if.end22 ], [ -17, %if.end5 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @sparse_irq_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %entry, %unlock
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry ], [ -22, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_dynirq_lower_bound(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @bitmap_find_next_zero_area(i64 noundef %start, i32 noundef %nr) unnamed_addr #1 {
entry:
  %call = call i64 @bitmap_find_next_zero_area_off(i64* noundef getelementptr inbounds ([130 x i64], [130 x i64]* @allocated_irqs, i64 0, i64 0), i64 noundef 8260, i64 noundef %start, i32 noundef %nr, i64 noundef 0, i64 noundef 0) #13
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i32 @irq_expand_nr_irqs(i32 noundef %nr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i32 %nr, 8260
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i32 %nr, i32* @nr_irqs, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_descs(i32 noundef %start, i32 noundef %cnt, i32 noundef %node, %struct.irq_affinity_desc* noundef %affinity, %struct.module* noundef %owner) unnamed_addr #1 {
entry:
  %tobool.not = icmp ne %struct.irq_affinity_desc* %affinity, null
  %cmp73 = icmp ne i32 %cnt, 0
  %or.cond = and i1 %tobool.not, %cmp73
  br i1 %or.cond, label %for.body, label %if.end2

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %if.end2, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %i.074 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %idxprom = sext i32 %i.074 to i64
  %mask = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %affinity, i64 %idxprom, i32 0
  %call = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %mask) #12
  %inc = add nuw i32 %i.074, 1
  br i1 %call, label %cleanup33, label %for.cond

if.end2:                                          ; preds = %for.cond, %entry
  %cmp475.not = icmp eq i32 %cnt, 0
  br i1 %cmp475.not, label %if.else11.i, label %for.body5

for.body5:                                        ; preds = %if.end2, %for.inc23
  %i.177 = phi i32 [ %inc24, %for.inc23 ], [ 0, %if.end2 ]
  %affinity.addr.076 = phi %struct.irq_affinity_desc* [ %affinity.addr.1, %for.inc23 ], [ %affinity, %if.end2 ]
  %tobool7.not = icmp eq %struct.irq_affinity_desc* %affinity.addr.076, null
  br i1 %tobool7.not, label %if.end14, label %if.then8

if.then8:                                         ; preds = %for.body5
  %is_managed = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %affinity.addr.076, i64 0, i32 1
  %bf.load = load i8, i8* %is_managed, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool9.not = icmp eq i8 %bf.clear, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 10485760
  %mask12 = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %affinity.addr.076, i64 0, i32 0
  call fastcc void @cpumask_first(%struct.cpumask* noundef %mask12) #12
  %incdec.ptr = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %affinity.addr.076, i64 1
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %for.body5
  %affinity.addr.1 = phi %struct.irq_affinity_desc* [ %incdec.ptr, %if.then8 ], [ null, %for.body5 ]
  %mask6.0 = phi %struct.cpumask* [ %mask12, %if.then8 ], [ null, %for.body5 ]
  %flags.1 = phi i32 [ %spec.select, %if.then8 ], [ 0, %for.body5 ]
  %add = add i32 %i.177, %start
  %call15 = call fastcc %struct.irq_desc* @alloc_desc(i32 noundef %add, i32 noundef %flags.1, %struct.cpumask* noundef %mask6.0, %struct.module* noundef %owner) #12
  %tobool16.not = icmp eq %struct.irq_desc* %call15, null
  br i1 %tobool16.not, label %for.cond26.preheader, label %for.inc23

for.cond26.preheader:                             ; preds = %if.end14
  %i.278 = add i32 %i.177, -1
  %cmp2779 = icmp sgt i32 %i.278, -1
  br i1 %cmp2779, label %for.body28, label %cleanup33

for.inc23:                                        ; preds = %if.end14
  call fastcc void @irq_insert_desc(i32 noundef %add, %struct.irq_desc* noundef nonnull %call15) #12
  call fastcc void @irq_sysfs_add(i32 noundef %add, %struct.irq_desc* noundef nonnull %call15) #12
  %inc24 = add nuw i32 %i.177, 1
  %exitcond83.not = icmp eq i32 %inc24, %cnt
  br i1 %exitcond83.not, label %if.else11.i, label %for.body5

if.else11.i:                                      ; preds = %for.inc23, %if.end2
  call void @__bitmap_set(i64* noundef getelementptr inbounds ([130 x i64], [130 x i64]* @allocated_irqs, i64 0, i64 0), i32 noundef %start, i32 noundef %cnt) #13
  br label %cleanup33

for.body28:                                       ; preds = %for.cond26.preheader, %for.body28
  %i.280 = phi i32 [ %i.2, %for.body28 ], [ %i.278, %for.cond26.preheader ]
  %add29 = add i32 %i.280, %start
  call fastcc void @free_desc(i32 noundef %add29) #12
  %i.2 = add nsw i32 %i.280, -1
  %cmp27 = icmp sgt i32 %i.280, 0
  br i1 %cmp27, label %for.body28, label %cleanup33

cleanup33:                                        ; preds = %for.body, %for.body28, %for.cond26.preheader, %if.else11.i
  %retval.0 = phi i32 [ %start, %if.else11.i ], [ -12, %for.cond26.preheader ], [ -12, %for.body28 ], [ -22, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_get_next_irq(i32 noundef %offset) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @nr_irqs, align 4
  %conv = sext i32 %0 to i64
  %conv1 = zext i32 %offset to i64
  %call = call fastcc i64 @find_next_bit(i64 noundef %conv, i64 noundef %conv1) #12
  %conv2 = trunc i64 %call to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64 noundef %size, i64 noundef %offset) unnamed_addr #1 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef getelementptr inbounds ([130 x i64], [130 x i64]* @allocated_irqs, i64 0, i64 0), i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #13
  ret i64 %call12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_desc* @__irq_get_desc_lock(i32 noundef %irq, i64* nocapture noundef writeonly %flags, i1 noundef %bus, i32 noundef %check) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %check, 1
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end13, label %if.then2

if.then2:                                         ; preds = %if.then
  %and3 = and i32 %check, 2
  %tobool4.not = icmp eq i32 %and3, 0
  %call10 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #12
  br i1 %tobool4.not, label %land.lhs.true9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  br i1 %call10, label %if.end13, label %cleanup

land.lhs.true9:                                   ; preds = %if.then2
  br i1 %call10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %land.lhs.true9, %if.then
  br i1 %bus, label %if.then15, label %do.body

if.then15:                                        ; preds = %if.end13
  call fastcc void @chip_bus_lock(%struct.irq_desc* noundef nonnull %call) #12
  br label %do.body

do.body:                                          ; preds = %if.end13, %if.then15
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call17 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  store i64 %call17, i64* %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body, %land.lhs.true9, %land.lhs.true
  %retval.0 = phi %struct.irq_desc* [ null, %land.lhs.true ], [ null, %land.lhs.true9 ], [ %call, %do.body ], [ null, %entry ]
  ret %struct.irq_desc* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 131072
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chip_bus_lock(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_bus_lock = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 15
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_bus_lock, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__irq_put_desc_unlock(%struct.irq_desc* noundef %desc, i64 noundef %flags, i1 noundef %bus) local_unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) #12
  br i1 %bus, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_bus_sync_unlock = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 16
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_bus_sync_unlock, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_percpu_devid_partition(i32 noundef %irq, %struct.cpumask* noundef %affinity) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 16
  %0 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  %tobool1.not = icmp eq %struct.cpumask* %0, null
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i8* @kzalloc() #12
  %1 = bitcast %struct.cpumask** %percpu_enabled to i8**
  store i8* %call4, i8** %1, align 32
  %tobool7.not = icmp eq i8* %call4, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end3
  %tobool10.not = icmp eq %struct.cpumask* %affinity, null
  %spec.select = select i1 %tobool10.not, %struct.cpumask* @__cpu_possible_mask, %struct.cpumask* %affinity
  %2 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 17
  store %struct.cpumask* %spec.select, %struct.cpumask** %2, align 8
  call fastcc void @irq_set_percpu_devid_flags(i32 noundef %irq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry ], [ -22, %if.end ], [ -12, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #13
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_percpu_devid_flags(i32 noundef %irq) unnamed_addr #1 {
entry:
  call fastcc void @irq_set_status_flags(i32 noundef %irq) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_percpu_devid(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call i32 @irq_set_percpu_devid_partition(i32 noundef %irq, %struct.cpumask* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_get_percpu_devid_partition(i32 noundef %irq, %struct.cpumask* noundef %affinity) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 16
  %0 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  %tobool1.not = icmp eq %struct.cpumask* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq %struct.cpumask* %affinity, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %percpu_affinity = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 17
  %1 = load %struct.cpumask*, %struct.cpumask** %percpu_affinity, align 8
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %affinity, %struct.cpumask* noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %entry ], [ 0, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kstat_incr_irq_this_cpu(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  call fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %call) #12
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #4 {
entry:
  call fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #12
  %tot_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 9
  %0 = load i32, i32* %tot_count, align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* %tot_count, align 64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstat_irqs_cpu(i32 noundef %irq, i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 2
  %0 = load i32*, i32** %kstat_irqs, align 8
  %tobool1.not = icmp eq i32* %0, null
  br i1 %tobool1.not, label %cond.end, label %do.body

do.body:                                          ; preds = %land.lhs.true
  %1 = ptrtoint i32* %0 to i64
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %do.body
  %cond = phi i32 [ %4, %do.body ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstat_irqs_usr(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #13
  %call = call fastcc i32 @kstat_irqs(i32 noundef %irq) #12
  call fastcc void @rcu_read_unlock() #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstat_irqs(i32 noundef %irq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 2
  %0 = load i32*, i32** %kstat_irqs, align 8
  %tobool1.not = icmp eq i32* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #12
  br i1 %call2, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call fastcc i1 @irq_settings_is_per_cpu(%struct.irq_desc* noundef nonnull %call) #12
  br i1 %call3, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = call fastcc i1 @irq_is_nmi(%struct.irq_desc* noundef nonnull %call) #12
  br i1 %call5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %tot_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 9
  %1 = load i32, i32* %tot_count, align 64
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %call935 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp36 = icmp ult i32 %call935, %2
  br i1 %cmp36, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %3 = ptrtoint i32* %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call938 = phi i32 [ %call935, %for.body.lr.ph ], [ %call9, %for.body ]
  %sum.037 = phi i32 [ 0, %for.body.lr.ph ], [ %add16, %for.body ]
  %idxprom = sext i32 %call938 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to i32*
  %6 = load i32, i32* %5, align 4
  %add16 = add i32 %6, %sum.037
  %call9 = call i32 @cpumask_next(i32 noundef %call938, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call9, %2
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end8, %entry, %lor.lhs.false, %if.then6
  %retval.0 = phi i32 [ %1, %if.then6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end8 ], [ %add16, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpulist_parse(i8* noundef %buf) unnamed_addr #1 {
entry:
  %call = call i32 @bitmap_parselist(i8* noundef %buf, i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0, i32 0, i64 0), i32 noundef 256) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0, i32 0, i64 0)) #12
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #19, !srcloc !16
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(i8* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_create_and_add(i8* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_sysfs_add(i32 noundef %irq, %struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @irq_kobj_base, align 8
  %tobool.not = icmp eq %struct.kobject* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 25
  %call = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj, %struct.kobject* noundef nonnull %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %irq) #13
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.then
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 noundef %irq) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then, %do.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_setall() unnamed_addr #1 {
entry:
  call fastcc void @bitmap_fill() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef %src) #12
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #13
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_fill() unnamed_addr #1 {
entry:
  %call = call i8* @memset(i8* noundef bitcast ([1 x %struct.cpumask]* @irq_default_affinity to i8*), i32 noundef 255, i64 noundef 32) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #13
  ret i8* %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @alloc_masks(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %affinity = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 3
  call fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %affinity) #12
  %effective_affinity = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 4
  call fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %effective_affinity) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @desc_set_defaults(i32 noundef %irq, %struct.irq_desc* noundef %desc, %struct.cpumask* noundef %affinity, %struct.module* noundef %owner) unnamed_addr #1 {
entry:
  %irq_common_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0
  %handler_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 1
  store i8* null, i8** %handler_data, align 8
  %msi_desc = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 2
  store %struct.msi_desc* null, %struct.msi_desc** %msi_desc, align 16
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %common = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 3
  store %struct.irq_common_data* %irq_common_data, %struct.irq_common_data** %common, align 16
  %irq4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  store i32 %irq, i32* %irq4, align 4
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  store %struct.irq_chip* @no_irq_chip, %struct.irq_chip** %chip, align 8
  %chip_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 7
  store i8* null, i8** %chip_data, align 16
  call fastcc void @irq_settings_clr_and_set(%struct.irq_desc* noundef %desc) #12
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 65536) #12
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 131072) #12
  %handle_irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 3
  store void (%struct.irq_desc*)* @handle_bad_irq, void (%struct.irq_desc*)** %handle_irq, align 32
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  store i32 1, i32* %depth, align 8
  %irq_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 10
  store i32 0, i32* %irq_count, align 4
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 12
  store i32 0, i32* %irqs_unhandled, align 16
  %tot_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 9
  store i32 0, i32* %tot_count, align 64
  %name = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 29
  store i8* null, i8** %name, align 16
  %owner9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 28
  store %struct.module* %owner, %struct.module** %owner9, align 8
  %call1 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %0
  br i1 %cmp2, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call3 = phi i32 [ %call1, %do.body.lr.ph ], [ %call, %do.body ]
  %1 = load i32*, i32** %kstat_irqs, align 8
  %2 = ptrtoint i32* %1 to i64
  %idxprom = sext i32 %call3 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to i32*
  store i32 0, i32* %4, align 4
  %call = call i32 @cpumask_next(i32 noundef %call3, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  call fastcc void @desc_smp_init(%struct.irq_desc* noundef %desc, %struct.cpumask* noundef %affinity) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %mask) unnamed_addr #9 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, %mask
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %mask) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_clr_and_set(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #9 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and1 = and i32 %0, -2096912
  store i32 %and1, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(%struct.irq_desc* noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @desc_smp_init(%struct.irq_desc* noundef %desc, %struct.cpumask* noundef %affinity) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.cpumask* %affinity, null
  %spec.store.select = select i1 %tobool.not, %struct.cpumask* getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0), %struct.cpumask* %affinity
  %arraydecay = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 3, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %spec.store.select) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @irq_kobj_release(%struct.kobject* noundef %kobj) #1 {
entry:
  %add.ptr5 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %add.ptr = bitcast %struct.kobject* %add.ptr5 to i8*
  %kstat_irqs = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -3, i32 2
  %0 = bitcast %struct.kobject** %kstat_irqs to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #13
  call void @kfree(i8* noundef %add.ptr) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @per_cpu_count_show(%struct.kobject* nocapture noundef readonly %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %add.ptr24 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %0 = bitcast %struct.kobject* %add.ptr24 to %struct.irq_desc*
  %call25 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp26 = icmp ult i32 %call25, %1
  br i1 %cmp26, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %call1.peel = call fastcc i32 @irq_desc_kstat_cpu(%struct.irq_desc* noundef %0, i32 noundef %call25) #12
  %call3.peel = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call1.peel) #13
  %conv.peel = sext i32 %call3.peel to i64
  %call.peel = call i32 @cpumask_next(i32 noundef %call25, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.peel = icmp ult i32 %call.peel, %2
  br i1 %cmp.peel, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.preheader, %for.body
  %call29 = phi i32 [ %call, %for.body ], [ %call.peel, %for.body.preheader ]
  %ret.027 = phi i64 [ %add, %for.body ], [ %conv.peel, %for.body.preheader ]
  %call1 = call fastcc i32 @irq_desc_kstat_cpu(%struct.irq_desc* noundef %0, i32 noundef %call29) #12
  %add.ptr2 = getelementptr i8, i8* %buf, i64 %ret.027
  %sub = sub i64 4096, %ret.027
  %call3 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %add.ptr2, i64 noundef %sub, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call1) #13
  %conv = sext i32 %call3 to i64
  %add = add i64 %ret.027, %conv
  %call = call i32 @cpumask_next(i32 noundef %call29, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !17

for.end:                                          ; preds = %for.body, %for.body.preheader, %entry
  %ret.0.lcssa = phi i64 [ 0, %entry ], [ %conv.peel, %for.body.preheader ], [ %add, %for.body ]
  %add.ptr4 = getelementptr i8, i8* %buf, i64 %ret.0.lcssa
  %sub5 = sub i64 4096, %ret.0.lcssa
  %call6 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %add.ptr4, i64 noundef %sub5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #13
  %conv7 = sext i32 %call6 to i64
  %add8 = add i64 %ret.0.lcssa, %conv7
  ret i64 %add8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_kstat_cpu(%struct.irq_desc* nocapture noundef readonly %desc, i32 noundef %cpu) unnamed_addr #6 {
entry:
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 2
  %0 = load i32*, i32** %kstat_irqs, align 8
  %tobool.not = icmp eq i32* %0, null
  br i1 %tobool.not, label %cond.end, label %do.body

do.body:                                          ; preds = %entry
  %1 = ptrtoint i32* %0 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %do.body
  %cond = phi i32 [ %4, %do.body ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @chip_name_show(%struct.kobject* noundef %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %add.ptr16 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %0 = bitcast %struct.kobject* %add.ptr16 to %struct.irq_desc*
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #12
  %irq_data = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -4, i32 3
  %chip = getelementptr inbounds %struct.kset*, %struct.kset** %irq_data, i64 3
  %1 = bitcast %struct.kset** %chip to %struct.irq_chip**
  %2 = load %struct.irq_chip*, %struct.irq_chip** %1, align 8
  %tobool.not = icmp eq %struct.irq_chip* %2, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %2, i64 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %tobool3.not = icmp eq i8* %3, null
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %3) #13
  %conv = sext i32 %call to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ret.0 = phi i64 [ %conv, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !22
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @hwirq_show(%struct.kobject* noundef %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %add.ptr9 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %0 = bitcast %struct.kobject* %add.ptr9 to %struct.irq_desc*
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #12
  %irq_data = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -4, i32 3
  %domain = getelementptr inbounds %struct.kset*, %struct.kset** %irq_data, i64 4
  %1 = bitcast %struct.kset** %domain to %struct.irq_domain**
  %2 = load %struct.irq_domain*, %struct.irq_domain** %1, align 32
  %tobool.not = icmp eq %struct.irq_domain* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %hwirq = getelementptr inbounds %struct.kset*, %struct.kset** %irq_data, i64 1
  %3 = bitcast %struct.kset** %hwirq to i64*
  %4 = load i64, i64* %3, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %4) #13
  %conv = sext i32 %call to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %conv, %if.then ], [ 0, %entry ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @type_show(%struct.kobject* noundef %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %add.ptr8 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %0 = bitcast %struct.kobject* %add.ptr8 to %struct.irq_desc*
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #12
  %irq_data = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -4, i32 3
  %1 = bitcast %struct.kset** %irq_data to %struct.irq_data*
  %call = call fastcc i1 @irqd_is_level_type(%struct.irq_data* noundef %1) #12
  %cond = select i1 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef %cond) #13
  %conv = sext i32 %call1 to i64
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_level_type(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #6 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 8192
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wakeup_show(%struct.kobject* noundef %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %add.ptr8 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %0 = bitcast %struct.kobject* %add.ptr8 to %struct.irq_desc*
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #12
  %irq_data = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -4, i32 3
  %1 = bitcast %struct.kset** %irq_data to %struct.irq_data*
  %call = call fastcc i1 @irqd_is_wakeup_set(%struct.irq_data* noundef %1) #12
  %cond = select i1 %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef %cond) #13
  %conv = sext i32 %call1 to i64
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_wakeup_set(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #6 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 16384
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @name_show(%struct.kobject* noundef %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %add.ptr9 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %0 = bitcast %struct.kobject* %add.ptr9 to %struct.irq_desc*
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #12
  %name = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 1, i32 5
  %1 = bitcast %struct.kernfs_node** %name to i8**
  %2 = load i8*, i8** %1, align 16
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %2) #13
  %conv = sext i32 %call to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %conv, %if.then ], [ 0, %entry ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @actions_show(%struct.kobject* noundef %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %add.ptr26 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -5
  %0 = bitcast %struct.kobject* %add.ptr26 to %struct.irq_desc*
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #12
  %action1 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -3, i32 4
  %1 = bitcast %struct.kobj_type** %action1 to %struct.irqaction**
  %action.027 = load %struct.irqaction*, %struct.irqaction** %1, align 8
  %cmp.not28 = icmp eq %struct.irqaction* %action.027, null
  br i1 %cmp.not28, label %for.end.thread, label %for.body.preheader

for.end.thread:                                   ; preds = %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  br label %if.end

for.body.preheader:                               ; preds = %entry
  %name.peel = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.027, i64 0, i32 11
  %2 = load i8*, i8** %name.peel, align 16
  %call.peel = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* noundef %2) #13
  %conv.peel = sext i32 %call.peel to i64
  %next.peel = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.027, i64 0, i32 3
  %action.0.peel = load %struct.irqaction*, %struct.irqaction** %next.peel, align 8
  %cmp.not.peel = icmp eq %struct.irqaction* %action.0.peel, null
  br i1 %cmp.not.peel, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %action.031 = phi %struct.irqaction* [ %action.0, %for.body ], [ %action.0.peel, %for.body.preheader ]
  %ret.029 = phi i64 [ %add, %for.body ], [ %conv.peel, %for.body.preheader ]
  %add.ptr2 = getelementptr i8, i8* %buf, i64 %ret.029
  %sub = sub i64 4096, %ret.029
  %name = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.031, i64 0, i32 11
  %3 = load i8*, i8** %name, align 16
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %add.ptr2, i64 noundef %sub, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3) #13
  %conv = sext i32 %call to i64
  %add = add i64 %ret.029, %conv
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.031, i64 0, i32 3
  %action.0 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %cmp.not = icmp eq %struct.irqaction* %action.0, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.body, %for.body.preheader
  %ret.0.lcssa = phi i64 [ %conv.peel, %for.body.preheader ], [ %add, %for.body ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  %tobool.not = icmp eq i64 %ret.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %add.ptr4 = getelementptr i8, i8* %buf, i64 %ret.0.lcssa
  %sub5 = sub i64 4096, %ret.0.lcssa
  %call6 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %add.ptr4, i64 noundef %sub5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #13
  %conv7 = sext i32 %call6 to i64
  %add8 = add i64 %ret.0.lcssa, %conv7
  br label %if.end

if.end:                                           ; preds = %for.end.thread, %if.then, %for.end
  %ret.1 = phi i64 [ %add8, %if.then ], [ 0, %for.end ], [ 0, %for.end.thread ]
  ret i64 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(%struct.xarray* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_irq_proc(i32 noundef, %struct.irq_desc* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_sysfs_del(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @irq_kobj_base, align 8
  %tobool.not = icmp eq %struct.kobject* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 25
  call void @kobject_del(%struct.kobject* noundef %kobj) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @delete_irq_desc(i32 noundef %irq) unnamed_addr #1 {
entry:
  %conv = zext i32 %irq to i64
  %call = call i8* @radix_tree_delete(%struct.xarray* noundef nonnull @irq_desc_tree, i64 noundef %conv) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @delayed_free_desc(%struct.callback_head* noundef %rhp) #1 {
entry:
  %kobj = getelementptr %struct.callback_head, %struct.callback_head* %rhp, i64 1
  %0 = bitcast %struct.callback_head* %kobj to %struct.kobject*
  call void @kobject_put(%struct.kobject* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @radix_tree_delete(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @bitmap_find_next_zero_area_off(i64* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #12
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !27
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !28
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_status_flags(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 0, i64 noundef 202240) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 2
  %0 = load i32*, i32** %kstat_irqs, align 8
  %1 = ptrtoint i32* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %add7 = add i32 %3, 1
  store i32 %add7, i32* %2, align 4
  %call21 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add22 = add i64 %call21, ptrtoint (%struct.kernel_stat* @kstat to i64)
  %4 = inttoptr i64 %add22 to i64*
  %5 = load i64, i64* %4, align 8
  %add23 = add i64 %5, 1
  store i64 %add23, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_per_cpu(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_is_nmi(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #6 {
entry:
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 8192
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  call void @rcu_read_unlock_strict() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { cold nobuiltin "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #19 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152443877}
!10 = !{i64 2152445525}
!11 = !{i64 1233089}
!12 = !{i64 2152453810}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149406823}
!15 = !{i64 2149432666}
!16 = !{i64 2148994969, i64 2148995016, i64 2148995022, i64 2148995059, i64 2148995077, i64 2148996004, i64 2148996052, i64 2148996100, i64 2148996163, i64 2148996212, i64 2148995155, i64 2148995180, i64 2148995206, i64 2148995212, i64 2148995249, i64 2148995255, i64 2148995305, i64 2148995351, i64 2148995384}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.peeled.count", i32 1}
!19 = !{i64 2149411116}
!20 = !{i64 2149435969}
!21 = !{i64 2148966947, i64 2148966994, i64 2148967000, i64 2148967037, i64 2148967055, i64 2148968396, i64 2148968444, i64 2148968492, i64 2148968555, i64 2148968604, i64 2148967133, i64 2148967158, i64 2148967184, i64 2148967190, i64 2148968062, i64 2148968102, i64 2148968120, i64 2148968152, i64 2148968180, i64 2148968234, i64 2148968254, i64 2148968351, i64 2148967213, i64 2148967227, i64 2148967233, i64 2148967283, i64 2148967329, i64 2148967362}
!22 = !{i64 2147936549, i64 2147936582, i64 2147936635, i64 2147936694, i64 2147936728, i64 2147936783, i64 2147936812, i64 2147936832}
!23 = !{i64 2149221335}
!24 = !{i64 2148957491, i64 2148957538, i64 2148957544, i64 2148957581, i64 2148957599, i64 2148958939, i64 2148958987, i64 2148959035, i64 2148959098, i64 2148959147, i64 2148957677, i64 2148957702, i64 2148957728, i64 2148957734, i64 2148958605, i64 2148958645, i64 2148958663, i64 2148958695, i64 2148958723, i64 2148958777, i64 2148958797, i64 2148958894, i64 2148957757, i64 2148957771, i64 2148957777, i64 2148957827, i64 2148957873, i64 2148957906}
!25 = distinct !{!25, !18}
!26 = !{i64 2147905706, i64 2147906217, i64 2147906247, i64 2147906273, i64 2147906305, i64 2147906334}
!27 = !{i64 2148972650, i64 2148972697, i64 2148972703, i64 2148972740, i64 2148972758, i64 2148974069, i64 2148974117, i64 2148974165, i64 2148974228, i64 2148974277, i64 2148972836, i64 2148972861, i64 2148972887, i64 2148972893, i64 2148973735, i64 2148973775, i64 2148973793, i64 2148973825, i64 2148973853, i64 2148973907, i64 2148973927, i64 2148974024, i64 2148972916, i64 2148972930, i64 2148972936, i64 2148972986, i64 2148973032, i64 2148973065}
!28 = !{i64 2148974829, i64 2148974876, i64 2148974882, i64 2148974919, i64 2148974937, i64 2148975880, i64 2148975928, i64 2148975976, i64 2148976039, i64 2148976088, i64 2148975015, i64 2148975040, i64 2148975066, i64 2148975072, i64 2148975109, i64 2148975115, i64 2148975165, i64 2148975211, i64 2148975244}
!29 = !{i64 2148978663, i64 2148978710, i64 2148978716, i64 2148978753, i64 2148978771, i64 2148980082, i64 2148980130, i64 2148980178, i64 2148980241, i64 2148980290, i64 2148978849, i64 2148978874, i64 2148978900, i64 2148978906, i64 2148979748, i64 2148979788, i64 2148979806, i64 2148979838, i64 2148979866, i64 2148979920, i64 2148979940, i64 2148980037, i64 2148978929, i64 2148978943, i64 2148978949, i64 2148978999, i64 2148979045, i64 2148979078}
!30 = !{i64 2149947373}
!31 = !{i64 2149947590}
