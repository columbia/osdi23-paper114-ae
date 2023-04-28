; ModuleID = 'drivers/base/platform-msi.c'
source_filename = "drivers/base/platform-msi.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kmem_cache = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.42 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.cpumask = type { [4 x i64] }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.msi_domain_info = type { i32, %struct.msi_domain_ops*, %struct.irq_chip*, i8*, void (%struct.irq_desc*)*, i8*, i8*, i8* }
%struct.msi_domain_ops = type { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, void (%struct.msi_alloc_info*, i32)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)*, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)*, void (%struct.irq_domain*, %struct.device*)* }
%struct.msi_alloc_info = type { %struct.msi_desc*, i64, i64, [2 x %union.anon.51] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.46 }
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
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type opaque
%struct.irq_affinity_notify = type opaque
%struct.proc_dir_entry = type opaque
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.platform_msi_priv_data = type { %struct.device*, i8*, %struct.attribute_group**, %struct.msi_alloc_info, void (%struct.msi_desc*, %struct.msi_msg*)*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Incompatible msi_domain, giving up\0A\00", align 1
@platform_msi_devid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @platform_msi_create_irq_domain(%struct.fwnode_handle* noundef %fwnode, %struct.msi_domain_info* noundef %info, %struct.irq_domain* noundef %parent) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @platform_msi_update_dom_ops(%struct.msi_domain_info* noundef %info) #8
  %.pre = load i32, i32* %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and2 = and i32 %1, 2
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @platform_msi_update_chip_ops(%struct.msi_domain_info* noundef %info) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %call = call %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle* noundef %fwnode, %struct.msi_domain_info* noundef %info, %struct.irq_domain* noundef %parent) #9
  %tobool6.not = icmp eq %struct.irq_domain* %call, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @irq_domain_update_bus_token(%struct.irq_domain* noundef nonnull %call, i32 noundef 4) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  ret %struct.irq_domain* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @platform_msi_update_dom_ops(%struct.msi_domain_info* nocapture noundef readonly %info) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 1
  %0 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %tobool.not = icmp eq %struct.msi_domain_ops* %0, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !7

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/platform-msi.c\22; .popsection; .long 14472b - 14470b; .short 78; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  unreachable

do.end10:                                         ; preds = %entry
  %msi_init = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 1
  %1 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)** %msi_init, align 8
  %cmp = icmp eq i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)* %1, null
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end10
  store i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)* @platform_msi_init, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)** %msi_init, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end10
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 6
  %2 = load void (%struct.msi_alloc_info*, %struct.msi_desc*)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)** %set_desc, align 8
  %cmp15 = icmp eq void (%struct.msi_alloc_info*, %struct.msi_desc*)* %2, null
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  store void (%struct.msi_alloc_info*, %struct.msi_desc*)* @platform_msi_set_desc, void (%struct.msi_alloc_info*, %struct.msi_desc*)** %set_desc, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @platform_msi_update_chip_ops(%struct.msi_domain_info* nocapture noundef %info) unnamed_addr #0 {
entry:
  %chip1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 2
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip1, align 8
  %tobool.not = icmp eq %struct.irq_chip* %0, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !7

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/platform-msi.c\22; .popsection; .long 14472b - 14470b; .short 100; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  unreachable

do.end10:                                         ; preds = %entry
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 7
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  %tobool11.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end10
  store void (%struct.irq_data*)* @irq_chip_mask_parent, void (%struct.irq_data*)** %irq_mask, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end10
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 9
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  %tobool15.not = icmp eq void (%struct.irq_data*)* %2, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  store void (%struct.irq_data*)* @irq_chip_unmask_parent, void (%struct.irq_data*)** %irq_unmask, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 10
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool19.not = icmp eq void (%struct.irq_data*)* %3, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  store void (%struct.irq_data*)* @irq_chip_eoi_parent, void (%struct.irq_data*)** %irq_eoi, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 11
  %4 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  %tobool23.not = icmp eq i32 (%struct.irq_data*, %struct.cpumask*, i1)* %4, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  store i32 (%struct.irq_data*, %struct.cpumask*, i1)* @msi_domain_set_affinity, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22
  %irq_write_msi_msg = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 27
  %5 = load void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)** %irq_write_msi_msg, align 8
  %tobool27.not = icmp eq void (%struct.irq_data*, %struct.msi_msg*)* %5, null
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end26
  store void (%struct.irq_data*, %struct.msi_msg*)* @platform_msi_write_msg, void (%struct.irq_data*, %struct.msi_msg*)** %irq_write_msi_msg, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 0
  %6 = load i32, i32* %flags, align 8
  %and = and i32 %6, 64
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end62, label %land.rhs

land.rhs:                                         ; preds = %if.end30
  %flags32 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 35
  %7 = load i64, i64* %flags32, align 8
  %and33 = and i64 %7, 128
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.then49, label %if.end62, !prof !7

if.then49:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/platform-msi.c\22; .popsection; .long 14472b - 14470b; .short 112; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  %8 = load i32, i32* %flags, align 8
  %and61 = and i32 %8, -65
  store i32 %and61, i32* %flags, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end30, %land.rhs, %if.then49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle* noundef, %struct.msi_domain_info* noundef, %struct.irq_domain* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_msi_domain_alloc_irqs(%struct.device* noundef %dev, i32 noundef %nvec, void (%struct.msi_desc*, %struct.msi_msg*)* noundef %write_msi_msg) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* noundef %dev, i32 noundef %nvec, void (%struct.msi_desc*, %struct.msi_msg*)* noundef %write_msi_msg) #8
  %0 = bitcast %struct.platform_msi_priv_data* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #8
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #8
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @platform_msi_alloc_descs(%struct.device* noundef %dev, i32 noundef %nvec, %struct.platform_msi_priv_data* noundef %call) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %out_free_priv_data

if.end5:                                          ; preds = %if.end
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 13
  %1 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8
  %call6 = call i32 @msi_domain_alloc_irqs(%struct.irq_domain* noundef %1, %struct.device* noundef %dev, i32 noundef %nvec) #9
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %out_free_desc

if.end9:                                          ; preds = %if.end5
  %call10 = call %struct.attribute_group** @msi_populate_sysfs(%struct.device* noundef %dev) #9
  %msi_irq_groups = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %call, i64 0, i32 2
  store %struct.attribute_group** %call10, %struct.attribute_group*** %msi_irq_groups, align 8
  %2 = bitcast %struct.attribute_group** %call10 to i8*
  %call12 = call fastcc i1 @IS_ERR(i8* noundef %2) #8
  br i1 %call12, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end9
  %call15 = call fastcc i64 @PTR_ERR(i8* noundef %2) #8
  %conv16 = trunc i64 %call15 to i32
  %3 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8
  call void @msi_domain_free_irqs(%struct.irq_domain* noundef %3, %struct.device* noundef %dev) #9
  br label %out_free_desc

out_free_desc:                                    ; preds = %if.end5, %if.then13
  %err.0 = phi i32 [ %call6, %if.end5 ], [ %conv16, %if.then13 ]
  call fastcc void @platform_msi_free_descs(%struct.device* noundef %dev, i32 noundef 0, i32 noundef %nvec) #8
  br label %out_free_priv_data

out_free_priv_data:                               ; preds = %if.end, %out_free_desc
  %err.1 = phi i32 [ %call3, %if.end ], [ %err.0, %out_free_desc ]
  call fastcc void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %out_free_priv_data, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %err.1, %out_free_priv_data ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* noundef %dev, i32 noundef %nvec, void (%struct.msi_desc*, %struct.msi_msg*)* noundef %write_msi_msg) unnamed_addr #0 {
entry:
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 13
  %0 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8
  %tobool = icmp ne %struct.irq_domain* %0, null
  %tobool1 = icmp ne void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg, null
  %or.cond = and i1 %tobool1, %tobool
  %1 = add i32 %nvec, -1
  %2 = icmp ult i32 %1, 2048
  %3 = and i1 %2, %or.cond
  br i1 %3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_token = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 7
  %4 = load i32, i32* %bus_token, align 8
  %cmp6.not = icmp eq i32 %4, 4
  br i1 %cmp6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #11
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %call10 = call fastcc i32 @list_empty(%struct.list_head* noundef %msi_list) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %call13 = call fastcc i8* @ERR_PTR(i64 noundef -16) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = call fastcc i8* @kzalloc() #8
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %call18 = call fastcc i8* @ERR_PTR(i64 noundef -12) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @platform_msi_devid_ida, i32 noundef 0, i32 noundef 2097151, i32 noundef 3264) #9
  %devid = getelementptr inbounds i8, i8* %call15, i64 72
  %5 = bitcast i8* %devid to i32*
  store i32 %call20, i32* %5, align 8
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @kfree(i8* noundef nonnull %call15) #9
  %conv = sext i32 %call20 to i64
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %write_msg = getelementptr inbounds i8, i8* %call15, i64 64
  %6 = bitcast i8* %write_msg to void (%struct.msi_desc*, %struct.msi_msg*)**
  store void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg, void (%struct.msi_desc*, %struct.msi_msg*)** %6, align 8
  %dev27 = bitcast i8* %call15 to %struct.device**
  store %struct.device* %dev, %struct.device** %dev27, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23, %if.then17, %if.then12, %do.end, %if.then
  %retval.0.in = phi i8* [ %call, %if.then ], [ %call8, %do.end ], [ %call25, %if.then23 ], [ %call15, %if.end26 ], [ %call18, %if.then17 ], [ %call13, %if.then12 ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.platform_msi_priv_data*
  ret %struct.platform_msi_priv_data* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @platform_msi_alloc_descs(%struct.device* noundef %dev, i32 noundef %nvec, %struct.platform_msi_priv_data* noundef %data) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @platform_msi_alloc_descs_with_irq(%struct.device* noundef %dev, i32 noundef 0, i32 noundef %nvec, %struct.platform_msi_priv_data* noundef %data) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_alloc_irqs(%struct.irq_domain* noundef, %struct.device* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.attribute_group** @msi_populate_sysfs(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_domain_free_irqs(%struct.irq_domain* noundef, %struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @platform_msi_free_descs(%struct.device* noundef readonly %dev, i32 noundef %base, i32 noundef %nvec) unnamed_addr #0 {
entry:
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %0 = bitcast %struct.list_head* %msi_list to %struct.msi_desc**
  %1 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %list942 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %1, i64 0, i32 0
  %cmp.not43 = icmp eq %struct.list_head* %list942, %msi_list
  br i1 %cmp.not43, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %nvec, %base
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %list946 = phi %struct.list_head* [ %list942, %for.body.lr.ph ], [ %list9, %for.inc ]
  %desc.044 = phi %struct.msi_desc* [ %1, %for.body.lr.ph ], [ %tmp.045, %for.inc ]
  %tmp.045.in = bitcast %struct.msi_desc* %desc.044 to %struct.msi_desc**
  %tmp.045 = load %struct.msi_desc*, %struct.msi_desc** %tmp.045.in, align 8
  %msi_index = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.044, i64 0, i32 8, i32 0, i32 1, i32 2
  %2 = bitcast i32* %msi_index to i16*
  %3 = load i16, i16* %2, align 8
  %conv = zext i16 %3 to i32
  %cmp11.not = icmp sge i32 %conv, %base
  %cmp16 = icmp sgt i32 %add, %conv
  %or.cond = and i1 %cmp11.not, %cmp16
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call fastcc void @list_del(%struct.list_head* noundef %list946) #8
  call void @free_msi_entry(%struct.msi_desc* noundef %desc.044) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %list9 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %tmp.045, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list9, %msi_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* noundef %data) unnamed_addr #0 {
entry:
  %devid = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %data, i64 0, i32 5
  %0 = load i32, i32* %devid, align 8
  call void @ida_free(%struct.ida* noundef nonnull @platform_msi_devid_ida, i32 noundef %0) #9
  %1 = bitcast %struct.platform_msi_priv_data* %data to i8*
  call void @kfree(i8* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @platform_msi_domain_free_irqs(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %msi_list) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.list_head* %msi_list to %struct.msi_desc**
  %1 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %2 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %1, i64 0, i32 8
  %msi_priv_data = bitcast %union.anon.46* %2 to %struct.platform_msi_priv_data**
  %3 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %msi_priv_data, align 8
  %msi_irq_groups = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %3, i64 0, i32 2
  %4 = load %struct.attribute_group**, %struct.attribute_group*** %msi_irq_groups, align 8
  call void @msi_destroy_sysfs(%struct.device* noundef %dev, %struct.attribute_group** noundef %4) #9
  %5 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %msi_priv_data, align 8
  call fastcc void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 13
  %6 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8
  call void @msi_domain_free_irqs(%struct.irq_domain* noundef %6, %struct.device* noundef %dev) #9
  call fastcc void @platform_msi_free_descs(%struct.device* noundef %dev, i32 noundef 0, i32 noundef 2048) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_destroy_sysfs(%struct.device* noundef, %struct.attribute_group** noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @platform_msi_get_host_data(%struct.irq_domain* nocapture noundef readonly %domain) local_unnamed_addr #4 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.platform_msi_priv_data**
  %1 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %0, align 8
  %host_data1 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %1, i64 0, i32 1
  %2 = load i8*, i8** %host_data1, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @__platform_msi_create_device_domain(%struct.device* noundef %dev, i32 noundef %nvec, i1 noundef %is_tree, void (%struct.msi_desc*, %struct.msi_msg*)* noundef %write_msi_msg, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* noundef %dev, i32 noundef %nvec, void (%struct.msi_desc*, %struct.msi_msg*)* noundef %write_msi_msg) #8
  %0 = bitcast %struct.platform_msi_priv_data* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #8
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %host_data2 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %call, i64 0, i32 1
  store i8* %host_data, i8** %host_data2, align 8
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 13
  %1 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8
  %cond = select i1 %is_tree, i32 0, i32 %nvec
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call3 = call %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* noundef %1, i32 noundef 0, i32 noundef %cond, %struct.fwnode_handle* noundef %2, %struct.irq_domain_ops* noundef %ops, i8* noundef %0) #9
  %tobool4.not = icmp eq %struct.irq_domain* %call3, null
  br i1 %tobool4.not, label %free_priv, label %if.end6

if.end6:                                          ; preds = %if.end
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %call, i64 0, i32 3
  call fastcc void @platform_msi_set_proxy_dev(%struct.msi_alloc_info* noundef %arg) #8
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %call3, i64 0, i32 9
  %3 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %call8 = call i32 @msi_domain_prepare_irqs(%struct.irq_domain* noundef %3, %struct.device* noundef %dev, i32 noundef %nvec, %struct.msi_alloc_info* noundef %arg) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %free_domain

free_domain:                                      ; preds = %if.end6
  call void @irq_domain_remove(%struct.irq_domain* noundef nonnull %call3) #9
  br label %free_priv

free_priv:                                        ; preds = %if.end, %free_domain
  call fastcc void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %free_priv
  %retval.0 = phi %struct.irq_domain* [ null, %free_priv ], [ null, %entry ], [ %call3, %if.end6 ]
  ret %struct.irq_domain* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* noundef, i32 noundef, i32 noundef, %struct.fwnode_handle* noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @platform_msi_set_proxy_dev(%struct.msi_alloc_info* nocapture noundef %arg) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %arg, i64 0, i32 2
  %0 = load i64, i64* %flags, align 8
  %or = or i64 %0, 1
  store i64 %or, i64* %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_prepare_irqs(%struct.irq_domain* noundef, %struct.device* noundef, i32 noundef, %struct.msi_alloc_info* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(%struct.irq_domain* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @platform_msi_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nvec) local_unnamed_addr #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.platform_msi_priv_data**
  %1 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %0, align 8
  %dev = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %1, i64 0, i32 0
  %2 = load %struct.device*, %struct.device** %dev, align 8
  %next = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 15, i32 0
  %3 = bitcast %struct.list_head** %next to %struct.msi_desc**
  %4 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %list974 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %4, i64 0, i32 0
  %msi_list1175 = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 15
  %cmp.not76 = icmp eq %struct.list_head* %list974, %msi_list1175
  br i1 %cmp.not76, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %nvec, %virq
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %5 = phi %struct.device* [ %2, %for.body.lr.ph ], [ %8, %for.inc ]
  %list979 = phi %struct.list_head* [ %list974, %for.body.lr.ph ], [ %list9, %for.inc ]
  %desc.077 = phi %struct.msi_desc* [ %4, %for.body.lr.ph ], [ %tmp.078, %for.inc ]
  %tmp.078.in = bitcast %struct.msi_desc* %desc.077 to %struct.msi_desc**
  %tmp.078 = load %struct.msi_desc*, %struct.msi_desc** %tmp.078.in, align 8
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.077, i64 0, i32 1
  %6 = load i32, i32* %irq, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %nvec_used = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.077, i64 0, i32 2
  %7 = load i32, i32* %nvec_used, align 4
  %cmp12.not = icmp eq i32 %7, 1
  br i1 %cmp12.not, label %if.end31, label %if.then, !prof !11

if.then:                                          ; preds = %for.body, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/platform-msi.c\22; .popsection; .long 14472b - 14470b; .short 391; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !12
  br label %cleanup

if.end31:                                         ; preds = %lor.rhs
  %cmp33.not = icmp uge i32 %6, %virq
  %cmp36 = icmp ult i32 %6, %add
  %or.cond = and i1 %cmp33.not, %cmp36
  br i1 %or.cond, label %if.end39, label %for.inc

if.end39:                                         ; preds = %if.end31
  call void @irq_domain_free_irqs_common(%struct.irq_domain* noundef %domain, i32 noundef %6, i32 noundef 1) #9
  call fastcc void @list_del(%struct.list_head* noundef %list979) #8
  call void @free_msi_entry(%struct.msi_desc* noundef %desc.077) #9
  %.pre = load %struct.device*, %struct.device** %dev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %if.end39
  %8 = phi %struct.device* [ %5, %if.end31 ], [ %.pre, %if.end39 ]
  %list9 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %tmp.078, i64 0, i32 0
  %msi_list11 = getelementptr inbounds %struct.device, %struct.device* %8, i64 0, i32 15
  %cmp.not = icmp eq %struct.list_head* %list9, %msi_list11
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(%struct.irq_domain* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_msi_entry(%struct.msi_desc* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @platform_msi_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) local_unnamed_addr #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.platform_msi_priv_data**
  %1 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %0, align 8
  %dev = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %1, i64 0, i32 0
  %2 = load %struct.device*, %struct.device** %dev, align 8
  %call = call fastcc i32 @platform_msi_alloc_descs_with_irq(%struct.device* noundef %2, i32 noundef %virq, i32 noundef %nr_irqs, %struct.platform_msi_priv_data* noundef %1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %3 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %4 = load %struct.device*, %struct.device** %dev, align 8
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %1, i64 0, i32 3
  %call2 = call i32 @msi_domain_populate_irqs(%struct.irq_domain* noundef %3, %struct.device* noundef %4, i32 noundef %virq, i32 noundef %nr_irqs, %struct.msi_alloc_info* noundef %arg) #9
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @platform_msi_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call2, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @platform_msi_alloc_descs_with_irq(%struct.device* noundef %dev, i32 noundef %virq, i32 noundef %nvec, %struct.platform_msi_priv_data* noundef %data) unnamed_addr #0 {
entry:
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %msi_list) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15, i32 1
  %0 = bitcast %struct.list_head** %prev to %struct.msi_desc**
  %1 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %msi_index = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %1, i64 0, i32 8, i32 0, i32 1, i32 2
  %2 = bitcast i32* %msi_index to i16*
  %3 = load i16, i16* %2, align 8
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %base.0 = phi i32 [ 0, %entry ], [ %add, %if.then ]
  %cmp42 = icmp sgt i32 %nvec, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool12.not = icmp eq i32 %virq, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end6
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end6 ]
  %call3 = call %struct.msi_desc* @alloc_msi_entry(%struct.device* noundef %dev, i32 noundef 1, %struct.irq_affinity_desc* noundef null) #9
  %tobool4.not = icmp eq %struct.msi_desc* %call3, null
  br i1 %tobool4.not, label %for.end, label %if.end6

if.end6:                                          ; preds = %for.body
  %4 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %call3, i64 0, i32 8
  %msi_priv_data = bitcast %union.anon.46* %4 to %struct.platform_msi_priv_data**
  store %struct.platform_msi_priv_data* %data, %struct.platform_msi_priv_data** %msi_priv_data, align 8
  %add8 = add nuw i32 %i.043, %base.0
  %conv9 = trunc i32 %add8 to i16
  %msi_index11 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %call3, i64 0, i32 8, i32 0, i32 1, i32 2
  %5 = bitcast i32* %msi_index11 to i16*
  store i16 %conv9, i16* %5, align 8
  %add13 = add i32 %i.043, %virq
  %cond = select i1 %tobool12.not, i32 0, i32 %add13
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %call3, i64 0, i32 1
  store i32 %cond, i32* %irq, align 8
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %call3, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %msi_list) #8
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %nvec
  br i1 %exitcond.not, label %cleanup, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %i.0.lcssa = phi i32 [ 0, %if.end ], [ %i.043, %for.body ]
  %cmp15.not = icmp eq i32 %i.0.lcssa, %nvec
  br i1 %cmp15.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %for.end
  call fastcc void @platform_msi_free_descs(%struct.device* noundef %dev, i32 noundef %base.0, i32 noundef %nvec) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.end, %if.then17
  %retval.0 = phi i32 [ -12, %if.then17 ], [ 0, %for.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_populate_irqs(%struct.irq_domain* noundef, %struct.device* noundef, i32 noundef, i32 noundef, %struct.msi_alloc_info* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @platform_msi_init(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* nocapture noundef readonly %info, i32 noundef %virq, i64 noundef %hwirq, %struct.msi_alloc_info* nocapture noundef readnone %arg) #0 {
entry:
  %chip = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 2
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %chip_data = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 3
  %1 = load i8*, i8** %chip_data, align 8
  %call = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq, %struct.irq_chip* noundef %0, i8* noundef %1) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @platform_msi_set_desc(%struct.msi_alloc_info* nocapture noundef writeonly %arg, %struct.msi_desc* noundef %desc) #5 {
entry:
  %desc1 = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %arg, i64 0, i32 0
  store %struct.msi_desc* %desc, %struct.msi_desc** %desc1, align 8
  %call = call fastcc i64 @platform_msi_calc_hwirq(%struct.msi_desc* noundef %desc) #8
  %hwirq = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %arg, i64 0, i32 1
  store i64 %call, i64* %hwirq, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef, i32 noundef, i64 noundef, %struct.irq_chip* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @platform_msi_calc_hwirq(%struct.msi_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc, i64 0, i32 8
  %msi_priv_data = bitcast %union.anon.46* %0 to %struct.platform_msi_priv_data**
  %1 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %msi_priv_data, align 8
  %devid1 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %1, i64 0, i32 5
  %2 = load i32, i32* %devid1, align 8
  %shl = shl i32 %2, 11
  %msi_index = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc, i64 0, i32 8, i32 0, i32 1, i32 2
  %3 = bitcast i32* %msi_index to i16*
  %4 = load i16, i16* %3, align 8
  %conv = zext i16 %4 to i32
  %or = or i32 %shl, %conv
  %conv3 = zext i32 %or to i64
  ret i64 %conv3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(%struct.irq_data* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(%struct.irq_data* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(%struct.irq_data* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_set_affinity(%struct.irq_data* noundef, %struct.cpumask* noundef, i1 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @platform_msi_write_msg(%struct.irq_data* nocapture noundef readonly %data, %struct.msi_msg* noundef %msg) #0 {
entry:
  %call = call fastcc %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data* noundef %data) #8
  %0 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %call, i64 0, i32 8
  %msi_priv_data = bitcast %union.anon.46* %0 to %struct.platform_msi_priv_data**
  %1 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %msi_priv_data, align 8
  %write_msg = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %1, i64 0, i32 4
  %2 = load void (%struct.msi_desc*, %struct.msi_msg*)*, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msg, align 8
  call void %2(%struct.msi_desc* noundef %call, %struct.msi_msg* noundef %msg) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %msi_desc = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 2
  %1 = load %struct.msi_desc*, %struct.msi_desc** %msi_desc, align 8
  ret %struct.msi_desc* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #2 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #9
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.msi_desc* @alloc_msi_entry(%struct.device* noundef, i32 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
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

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2152249663}
!9 = !{i64 2152251077}
!10 = !{i64 2152252804}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152276789}
