; ModuleID = 'kernel/irq/handle.c'
source_filename = "kernel/irq/handle.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.seq_file = type opaque
%struct.msi_msg = type opaque
%struct.irq_domain = type opaque
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.module = type opaque

@__handle_irq_event_percpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [39 x i8] c"irq %u handler %pS enabled interrupts\0A\00", align 1
@print_irq_desc.ratelimit = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 5, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.print_irq_desc = private unnamed_addr constant [15 x i8] c"print_irq_desc\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"irq %d, desc: %p, depth: %d, count: %d, unhandled: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"->handle_irq():  %p, %pS\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"->irq_data.chip(): %p, %pS\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"->action(): %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"->action->handler(): %p, %pS\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%14s set\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"IRQ_LEVEL\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"IRQ_PER_CPU\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"IRQ_NOPROBE\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"IRQ_NOREQUEST\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"IRQ_NOTHREAD\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"IRQ_NOAUTOEN\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"IRQS_AUTODETECT\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"IRQS_REPLAY\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"IRQS_WAITING\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"IRQS_PENDING\00", align 1
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@irq_err_count = external dso_local local_unnamed_addr global i64, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.18 = private unnamed_addr constant [78 x i8] c"\014IRQ %d device %s returned IRQ_WAKE_THREAD but no thread function available.\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_bad_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #11
  call fastcc void @print_irq_desc(i32 noundef %call, %struct.irq_desc* noundef %desc) #11
  call fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #11
  call fastcc void @ack_bad_irq() #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_get_irq(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #2 {
entry:
  %irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %irq, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_irq_desc(i32 noundef %irq, %struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @print_irq_desc.ratelimit, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.print_irq_desc, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end122, label %do.end

do.end:                                           ; preds = %entry
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  %0 = load i32, i32* %depth, align 8
  %irq_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 10
  %1 = load i32, i32* %irq_count, align 4
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 12
  %2 = load i32, i32* %irqs_unhandled, align 16
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 noundef %irq, %struct.irq_desc* noundef %desc, i32 noundef %0, i32 noundef %1, i32 noundef %2) #13
  %handle_irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 3
  %handle_irq5 = bitcast {}** %handle_irq to void (%struct.irq_desc*)**
  %3 = load void (%struct.irq_desc*)*, void (%struct.irq_desc*)** %handle_irq5, align 32
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), void (%struct.irq_desc*)* noundef %3, void (%struct.irq_desc*)* noundef %3) #13
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %4 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %struct.irq_chip* noundef %4, %struct.irq_chip* noundef %4) #13
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %5 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.irqaction* noundef %5) #13
  %6 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool20.not = icmp eq %struct.irqaction* %6, null
  br i1 %tobool20.not, label %if.end29, label %do.end23

do.end23:                                         ; preds = %do.end
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %6, i64 0, i32 0
  %7 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 (i32, i8*)* noundef %7, i32 (i32, i8*)* noundef %7) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %do.end
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %8 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %8, 256
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end29
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #13
  %.pre = load i32, i32* %status_use_accessors, align 16
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end29
  %9 = phi i32 [ %.pre, %do.end33 ], [ %8, %if.end29 ]
  %and38 = and i32 %9, 512
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end36
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #13
  %.pre144 = load i32, i32* %status_use_accessors, align 16
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.end36
  %10 = phi i32 [ %.pre144, %do.end42 ], [ %9, %if.end36 ]
  %and47 = and i32 %10, 1024
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %if.end45
  %call53 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #13
  %.pre145 = load i32, i32* %status_use_accessors, align 16
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end45
  %11 = phi i32 [ %.pre145, %do.end51 ], [ %10, %if.end45 ]
  %and56 = and i32 %11, 2048
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end54
  %call62 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #13
  %.pre146 = load i32, i32* %status_use_accessors, align 16
  br label %if.end63

if.end63:                                         ; preds = %do.end60, %if.end54
  %12 = phi i32 [ %.pre146, %do.end60 ], [ %11, %if.end54 ]
  %and65 = and i32 %12, 65536
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end72, label %do.end69

do.end69:                                         ; preds = %if.end63
  %call71 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #13
  %.pre147 = load i32, i32* %status_use_accessors, align 16
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end63
  %13 = phi i32 [ %.pre147, %do.end69 ], [ %12, %if.end63 ]
  %and74 = and i32 %13, 4096
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end81, label %do.end78

do.end78:                                         ; preds = %if.end72
  %call80 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #13
  br label %if.end81

if.end81:                                         ; preds = %do.end78, %if.end72
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %14 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and82 = and i32 %14, 1
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end89, label %do.end86

do.end86:                                         ; preds = %if.end81
  %call88 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #13
  %.pre148 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.end86, %if.end81
  %15 = phi i32 [ %.pre148, %do.end86 ], [ %14, %if.end81 ]
  %and91 = and i32 %15, 64
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end98, label %do.end95

do.end95:                                         ; preds = %if.end89
  %call97 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #13
  %.pre149 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %if.end89
  %16 = phi i32 [ %.pre149, %do.end95 ], [ %15, %if.end89 ]
  %and100 = and i32 %16, 128
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end107, label %do.end104

do.end104:                                        ; preds = %if.end98
  %call106 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #13
  %.pre150 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %if.end107

if.end107:                                        ; preds = %do.end104, %if.end98
  %17 = phi i32 [ %.pre150, %do.end104 ], [ %16, %if.end98 ]
  %and109 = and i32 %17, 512
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.end122, label %do.end113

do.end113:                                        ; preds = %if.end107
  %call115 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #13
  br label %do.end122

do.end122:                                        ; preds = %do.end113, %if.end107, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #3 {
entry:
  call fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #11
  %tot_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 9
  %0 = load i32, i32* %tot_count, align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* %tot_count, align 64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @ack_bad_irq() unnamed_addr #4 {
entry:
  %0 = load i64, i64* @irq_err_count, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @irq_err_count, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @no_action(i32 noundef %cpl, i8* nocapture noundef readnone %dev_id) local_unnamed_addr #5 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__irq_wake_thread(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef %action) local_unnamed_addr #0 {
entry:
  %thread = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 5
  %0 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 9
  %call = call fastcc i1 @test_and_set_bit(i64 noundef 0, i64* noundef %thread_flags) #11
  br i1 %call, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %thread_mask = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 10
  %2 = load i64, i64* %thread_mask, align 8
  %threads_oneshot = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 20
  %3 = load i64, i64* %threads_oneshot, align 64
  %or = or i64 %3, %2
  store i64 %or, i64* %threads_oneshot, align 64
  %threads_active = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 21
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %threads_active) #12
  %4 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %call4 = call i32 @wake_up_process(%struct.task_struct* noundef %4) #12
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #12
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__handle_irq_event_percpu(%struct.irq_desc* noundef %desc, i32* nocapture noundef %flags) local_unnamed_addr #0 {
entry:
  %irq2 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %irq2, align 4
  %action3 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %action.0119 = load %struct.irqaction*, %struct.irqaction** %action3, align 8
  %tobool.not120 = icmp eq %struct.irqaction* %action.0119, null
  br i1 %tobool.not120, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %sw.epilog
  %action.0122 = phi %struct.irqaction* [ %action.0, %sw.epilog ], [ %action.0119, %entry ]
  %retval1.0121 = phi i32 [ %or88, %sw.epilog ], [ 0, %entry ]
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.0122, i64 0, i32 0
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.0122, i64 0, i32 1
  %2 = load i8*, i8** %dev_id, align 8
  %call6 = call i32 %1(i32 noundef %0, i8* noundef %2) #12
  %call8 = call fastcc i64 @arch_local_save_flags() #11
  %call18 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call8) #11
  %tobool19.not = icmp eq i32 %call18, 0
  %.b118 = load i1, i1* @__handle_irq_event_percpu.__already_done, align 1
  %lnot25 = xor i1 %.b118, true
  %3 = select i1 %tobool19.not, i1 %lnot25, i1 false
  br i1 %3, label %if.then30, label %if.end59, !prof !8

if.then30:                                        ; preds = %for.body
  store i1 true, i1* @__handle_irq_event_percpu.__already_done, align 1
  %4 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 (i32, i8*)* noundef %4) #12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/handle.c\22; .popsection; .long 14472b - 14470b; .short 160; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  br label %if.end59

if.end59:                                         ; preds = %if.then30, %for.body
  br i1 %tobool19.not, label %do.body70, label %if.end73

do.body70:                                        ; preds = %if.end59
  call fastcc void @arch_local_irq_disable() #11
  br label %if.end73

if.end73:                                         ; preds = %do.body70, %if.end59
  switch i32 %call6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb86
  ]

sw.bb:                                            ; preds = %if.end73
  %thread_fn = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.0122, i64 0, i32 4
  %5 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %tobool74.not = icmp eq i32 (i32, i8*)* %5, null
  br i1 %tobool74.not, label %if.then84, label %if.end85, !prof !8

if.then84:                                        ; preds = %sw.bb
  call fastcc void @warn_no_thread(i32 noundef %0, %struct.irqaction* noundef nonnull %action.0122) #11
  br label %sw.epilog

if.end85:                                         ; preds = %sw.bb
  call void @__irq_wake_thread(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef nonnull %action.0122) #11
  br label %sw.bb86

sw.bb86:                                          ; preds = %if.end73, %if.end85
  %flags87 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.0122, i64 0, i32 8
  %6 = load i32, i32* %flags87, align 4
  %7 = load i32, i32* %flags, align 4
  %or = or i32 %7, %6
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end73, %sw.bb86, %if.then84
  %or88 = or i32 %call6, %retval1.0121
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.0122, i64 0, i32 3
  %action.0 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool.not = icmp eq %struct.irqaction* %action.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %sw.epilog, %entry
  %retval1.0.lcssa = phi i32 [ 0, %entry ], [ %or88, %sw.epilog ]
  ret i32 %retval1.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #14, !srcloc !10
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #14, !srcloc !11
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_no_thread(i32 noundef %irq, %struct.irqaction* noundef %action) unnamed_addr #0 {
entry:
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 9
  %call = call fastcc i1 @test_and_set_bit(i64 noundef 1, i64* noundef %thread_flags) #11
  br i1 %call, label %return, label %do.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 11
  %0 = load i8*, i8** %name, align 16
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i64 0, i64 0), i32 noundef %irq, i8* noundef %0) #13
  br label %return

return:                                           ; preds = %entry, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @handle_irq_event_percpu(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %flags = alloca i32, align 4
  %0 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %flags, align 4
  %call = call i32 @__handle_irq_event_percpu(%struct.irq_desc* noundef %desc, i32* noundef nonnull %flags) #11
  %irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %irq, align 4
  %2 = load i32, i32* %flags, align 4
  call void @add_interrupt_randomness(i32 noundef %1, i32 noundef %2) #12
  %call2 = call fastcc i1 @irq_settings_no_debug(%struct.irq_desc* noundef %desc) #11
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @note_interrupt(%struct.irq_desc* noundef %desc, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_interrupt_randomness(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_no_debug(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #2 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 2097152
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @note_interrupt(%struct.irq_desc* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @handle_irq_event(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, -513
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data) #11
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  %call = call i32 @handle_irq_event_percpu(%struct.irq_desc* noundef %desc) #11
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 262144
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clear(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -262145
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #3 {
entry:
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 2
  %0 = load i32*, i32** %kstat_irqs, align 8
  %1 = ptrtoint i32* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %add7 = add i32 %3, 1
  store i32 %add7, i32* %2, align 4
  %call21 = call fastcc i64 @__kern_my_cpu_offset() #11
  %add22 = add i64 %call21, ptrtoint (%struct.kernel_stat* @kstat to i64)
  %4 = inttoptr i64 %add22 to i64*
  %5 = load i64, i64* %4, align 8
  %add23 = add i64 %5, 1
  store i64 %add23, i64* %4, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !15
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !16
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #10 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !19

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly }

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
!9 = !{i64 2152357028}
!10 = !{i64 2148954857, i64 2148954904, i64 2148954910, i64 2148954947, i64 2148954965, i64 2148956276, i64 2148956324, i64 2148956372, i64 2148956435, i64 2148956484, i64 2148955043, i64 2148955068, i64 2148955094, i64 2148955100, i64 2148955942, i64 2148955982, i64 2148956000, i64 2148956032, i64 2148956060, i64 2148956114, i64 2148956134, i64 2148956231, i64 2148955123, i64 2148955137, i64 2148955143, i64 2148955193, i64 2148955239, i64 2148955272}
!11 = !{i64 2148957036, i64 2148957083, i64 2148957089, i64 2148957126, i64 2148957144, i64 2148958087, i64 2148958135, i64 2148958183, i64 2148958246, i64 2148958295, i64 2148957222, i64 2148957247, i64 2148957273, i64 2148957279, i64 2148957316, i64 2148957322, i64 2148957372, i64 2148957418, i64 2148957451}
!12 = !{i64 2148949154, i64 2148949201, i64 2148949207, i64 2148949244, i64 2148949262, i64 2148950603, i64 2148950651, i64 2148950699, i64 2148950762, i64 2148950811, i64 2148949340, i64 2148949365, i64 2148949391, i64 2148949397, i64 2148950269, i64 2148950309, i64 2148950327, i64 2148950359, i64 2148950387, i64 2148950441, i64 2148950461, i64 2148950558, i64 2148949420, i64 2148949434, i64 2148949440, i64 2148949490, i64 2148949536, i64 2148949569}
!13 = !{i64 2149411312}
!14 = !{i64 2149404031}
!15 = !{i64 2148977176, i64 2148977223, i64 2148977229, i64 2148977266, i64 2148977284, i64 2148978211, i64 2148978259, i64 2148978307, i64 2148978370, i64 2148978419, i64 2148977362, i64 2148977387, i64 2148977413, i64 2148977419, i64 2148977456, i64 2148977462, i64 2148977512, i64 2148977558, i64 2148977591}
!16 = !{i64 2147888759, i64 2147889411, i64 2147889441, i64 2147889472, i64 2147889504, i64 2147889539, i64 2147889564}
!17 = !{i64 2147818833, i64 2147819349, i64 2147819379, i64 2147819406, i64 2147819440, i64 2147819470}
!18 = !{i64 2149203542}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2147918756, i64 2147918789, i64 2147918842, i64 2147918901, i64 2147918935, i64 2147918990, i64 2147919019, i64 2147919039}
