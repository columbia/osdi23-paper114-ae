; ModuleID = 'drivers/power/supply/power_supply_sysfs.c'
source_filename = "drivers/power/supply/power_supply_sysfs.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_dir }
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
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type opaque
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.42, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.25, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.6 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.16 }
%struct.anon.16 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.24, i32, [12 x i8] }
%union.anon.24 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.25 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.26, %union.anon.40, %struct.atomic_t, [8 x i8] }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.40 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.41, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.41 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.42 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.power_supply_attr = type { i8*, [31 x i8], %struct.device_attribute, i8**, i32 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, {}*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%union.power_supply_propval = type { i8* }
%struct.power_supply_desc = type { i8*, i32, i32*, i64, i32*, i64, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32)*, void (%struct.power_supply*)*, void (%struct.power_supply*)*, i8, i32 }
%struct.power_supply = type { %struct.power_supply_desc*, i8**, i64, i8**, i64, %struct.device_node*, i8*, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.workqueue_struct = type opaque

@power_supply_attr_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @power_supply_attr_group, %struct.attribute_group* null], align 8
@power_supply_attrs = internal global [75 x %struct.power_supply_attr] [%struct.power_supply_attr { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), [31 x i8] c"STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @POWER_SUPPLY_STATUS_TEXT, i32 0, i32 0), i32 5 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), [31 x i8] c"CHARGE_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 0, i32 0), i32 8 }, %struct.power_supply_attr { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), [31 x i8] c"HEALTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @POWER_SUPPLY_HEALTH_TEXT, i32 0, i32 0), i32 14 }, %struct.power_supply_attr { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), [31 x i8] c"PRESENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), [31 x i8] c"ONLINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), [31 x i8] c"AUTHENTIC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), [31 x i8] c"TECHNOLOGY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @POWER_SUPPLY_TECHNOLOGY_TEXT, i32 0, i32 0), i32 7 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), [31 x i8] c"CYCLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), [31 x i8] c"VOLTAGE_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), [31 x i8] c"VOLTAGE_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), [31 x i8] c"VOLTAGE_MAX_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), [31 x i8] c"VOLTAGE_MIN_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), [31 x i8] c"VOLTAGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), [31 x i8] c"VOLTAGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), [31 x i8] c"VOLTAGE_OCV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), [31 x i8] c"VOLTAGE_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), [31 x i8] c"CURRENT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), [31 x i8] c"CURRENT_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), [31 x i8] c"CURRENT_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), [31 x i8] c"CURRENT_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), [31 x i8] c"POWER_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), [31 x i8] c"POWER_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), [31 x i8] c"CHARGE_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), [31 x i8] c"CHARGE_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), [31 x i8] c"CHARGE_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), [31 x i8] c"CHARGE_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), [31 x i8] c"CHARGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), [31 x i8] c"CHARGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), [31 x i8] c"CHARGE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_CURRENT\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_VOLTAGE\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_LIMIT\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), [31 x i8] c"INPUT_CURRENT_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), [31 x i8] c"INPUT_VOLTAGE_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), [31 x i8] c"INPUT_POWER_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), [31 x i8] c"ENERGY_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), [31 x i8] c"ENERGY_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), [31 x i8] c"ENERGY_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), [31 x i8] c"ENERGY_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), [31 x i8] c"ENERGY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), [31 x i8] c"ENERGY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), [31 x i8] c"CAPACITY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), [31 x i8] c"CAPACITY_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), [31 x i8] c"CAPACITY_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), [31 x i8] c"CAPACITY_ERROR_MARGIN\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), [31 x i8] c"CAPACITY_LEVEL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, i32 0, i32 0), i32 6 }, %struct.power_supply_attr { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), [31 x i8] c"TEMP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), [31 x i8] c"TEMP_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), [31 x i8] c"TEMP_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), [31 x i8] c"TEMP_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), [31 x i8] c"TEMP_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), [31 x i8] c"TEMP_AMBIENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), [31 x i8] c"TEMP_AMBIENT_ALERT_MIN\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), [31 x i8] c"TEMP_AMBIENT_ALERT_MAX\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), [31 x i8] c"TIME_TO_EMPTY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), [31 x i8] c"TIME_TO_EMPTY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), [31 x i8] c"TIME_TO_FULL_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), [31 x i8] c"TIME_TO_FULL_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), [31 x i8] c"TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @POWER_SUPPLY_TYPE_TEXT, i32 0, i32 0), i32 13 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), [31 x i8] c"USB_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), [31 x i8] c"SCOPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @POWER_SUPPLY_SCOPE_TEXT, i32 0, i32 0), i32 3 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), [31 x i8] c"PRECHARGE_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), [31 x i8] c"CHARGE_TERM_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), [31 x i8] c"CALIBRATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), [31 x i8] c"MANUFACTURE_YEAR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), [31 x i8] c"MANUFACTURE_MONTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), [31 x i8] c"MANUFACTURE_DAY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), [31 x i8] c"MODEL_NAME\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), [31 x i8] c"MANUFACTURER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), [31 x i8] c"SERIAL_NUMBER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }], align 8
@.str = private unnamed_addr constant [73 x i8] c"\014%s: Property %d skipped because it is missing from power_supply_attrs\0A\00", align 1
@__func__.power_supply_init_attrs = private unnamed_addr constant [24 x i8] c"power_supply_init_attrs\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_err_%d\00", align 1
@__power_supply_attrs = internal global [76 x %struct.attribute*] zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"POWER_SUPPLY_NAME=%s\00", align 1
@power_supply_attr_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @power_supply_attr_is_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([76 x %struct.attribute*], [76 x %struct.attribute*]* @__power_supply_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@POWER_SUPPLY_STATUS_TEXT = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0)], align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"CHARGE_TYPE\00", align 1
@POWER_SUPPLY_CHARGE_TYPE_TEXT = internal constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0)], align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"HEALTH\00", align 1
@POWER_SUPPLY_HEALTH_TEXT = internal constant [14 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0)], align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"PRESENT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"AUTHENTIC\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"TECHNOLOGY\00", align 1
@POWER_SUPPLY_TECHNOLOGY_TEXT = internal constant [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0)], align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"CYCLE_COUNT\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MAX\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MIN\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MAX_DESIGN\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MIN_DESIGN\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"VOLTAGE_NOW\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"VOLTAGE_AVG\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"VOLTAGE_OCV\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"VOLTAGE_BOOT\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"CURRENT_MAX\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"CURRENT_NOW\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"CURRENT_AVG\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"CURRENT_BOOT\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"POWER_NOW\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"POWER_AVG\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"CHARGE_FULL_DESIGN\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"CHARGE_EMPTY_DESIGN\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"CHARGE_FULL\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"CHARGE_EMPTY\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"CHARGE_NOW\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"CHARGE_AVG\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"CHARGE_COUNTER\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_CURRENT\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_VOLTAGE\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"CHARGE_CONTROL_LIMIT\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"INPUT_CURRENT_LIMIT\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"INPUT_VOLTAGE_LIMIT\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"INPUT_POWER_LIMIT\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"ENERGY_FULL_DESIGN\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"ENERGY_EMPTY_DESIGN\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ENERGY_FULL\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ENERGY_EMPTY\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"ENERGY_NOW\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"ENERGY_AVG\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"CAPACITY\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MIN\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MAX\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"CAPACITY_ERROR_MARGIN\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"CAPACITY_LEVEL\00", align 1
@POWER_SUPPLY_CAPACITY_LEVEL_TEXT = internal constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0)], align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"TEMP_MAX\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"TEMP_MIN\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MIN\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MAX\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"TEMP_AMBIENT\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MIN\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MAX\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_NOW\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_AVG\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_NOW\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_AVG\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@POWER_SUPPLY_TYPE_TEXT = internal constant [13 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0)], align 8
@.str.67 = private unnamed_addr constant [9 x i8] c"USB_TYPE\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"SCOPE\00", align 1
@POWER_SUPPLY_SCOPE_TEXT = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0)], align 8
@.str.69 = private unnamed_addr constant [18 x i8] c"PRECHARGE_CURRENT\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"CHARGE_TERM_CURRENT\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"CALIBRATE\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"MANUFACTURE_YEAR\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"MANUFACTURE_MONTH\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"MANUFACTURE_DAY\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"MODEL_NAME\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"SERIAL_NUMBER\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Charging\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Not charging\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"Trickle\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"Adaptive\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"Long Life\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"Good\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Overheat\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"Dead\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"Over voltage\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"Unspecified failure\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Cold\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"Watchdog timer expire\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"Safety timer expire\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Over current\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"Calibration required\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"Warm\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"Cool\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"Hot\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"NiMH\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"Li-ion\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"Li-poly\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"LiFe\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"NiCd\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"LiMn\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"UPS\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"Mains\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"USB_DCP\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"USB_CDP\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"USB_ACA\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"USB_C\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"USB_PD\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"USB_PD_DRP\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"BrickID\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"Wireless\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@power_supply_show_property._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.power_supply_show_property = private unnamed_addr constant [27 x i8] c"power_supply_show_property\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"driver failed to report `%s' property: %zd\0A\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@POWER_SUPPLY_USB_TYPE_TEXT = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0)], align 8
@.str.131 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.132 = private unnamed_addr constant [45 x i8] c"driver reporting unsupported connected type\0A\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"CDP\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"ACA\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"PD_DRP\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"PD_PPS\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"POWER_SUPPLY_%s=%s\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @power_supply_init_attrs(%struct.device_type* nocapture noundef writeonly %dev_type) local_unnamed_addr #0 {
entry:
  %groups = getelementptr inbounds %struct.device_type, %struct.device_type* %dev_type, i64 0, i32 1
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @power_supply_attr_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %prop_name = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %indvars.iv, i32 0
  %0 = load i8*, i8** %prop_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i32
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.power_supply_init_attrs, i64 0, i64 0), i32 noundef %1) #7
  %arraydecay = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %indvars.iv, i32 1, i64 0
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %1) #8
  br label %if.end

if.else:                                          ; preds = %for.body
  %arraydecay8 = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %indvars.iv, i32 1, i64 0
  call fastcc void @str_to_lower(i8* noundef %arraydecay8) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %dev_attr = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %indvars.iv, i32 2
  %arraydecay14 = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %indvars.iv, i32 1, i64 0
  %attr15 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr, i64 0, i32 0
  %name = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr, i64 0, i32 0, i32 0
  store i8* %arraydecay14, i8** %name, align 8
  %show = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %indvars.iv, i32 2, i32 1
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_supply_show_property, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show, align 8
  %store = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %indvars.iv, i32 2, i32 2
  store i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @power_supply_store_property, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %store, align 8
  %arrayidx18 = getelementptr [76 x %struct.attribute*], [76 x %struct.attribute*]* @__power_supply_attrs, i64 0, i64 %indvars.iv
  store %struct.attribute* %attr15, %struct.attribute** %arrayidx18, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 75
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @str_to_lower(i8* nocapture noundef %str) unnamed_addr #4 {
entry:
  %0 = load i8, i8* %str, align 1
  %tobool.not4 = icmp eq i8 %0, 0
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi i8 [ %2, %while.body ], [ %0, %entry ]
  %str.addr.05 = phi i8* [ %incdec.ptr, %while.body ], [ %str, %entry ]
  %call = call fastcc i8 @__tolower(i8 noundef %1) #9
  store i8 %call, i8* %str.addr.05, align 1
  %incdec.ptr = getelementptr i8, i8* %str.addr.05, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @power_supply_show_property(%struct.device* noundef %dev, %struct.device_attribute* noundef %attr, i8* noundef %buf) #0 {
entry:
  %value = alloca %union.power_supply_propval, align 8
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #9
  %call1 = call fastcc %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* noundef %attr) #9
  %call2 = call fastcc i32 @dev_attr_psp(%struct.device_attribute* noundef %attr) #9
  %0 = bitcast %union.power_supply_propval* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = bitcast %union.power_supply_propval* %value to i64*, !annotation !7
  store i64 0, i64* %1, align 8, !annotation !7
  %cmp = icmp eq i32 %call2, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 1
  %3 = load i32, i32* %type, align 8
  %intval = bitcast %union.power_supply_propval* %value to i32*
  store i32 %3, i32* %intval, align 8
  br label %if.end25

if.else:                                          ; preds = %entry
  %4 = bitcast i8* %call to %struct.power_supply*
  %call3 = call i32 @power_supply_get_property(%struct.power_supply* noundef %4, i32 noundef %call2, %union.power_supply_propval* noundef nonnull %value) #8
  %conv = sext i32 %call3 to i64
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end25

if.then6:                                         ; preds = %if.else
  switch i32 %call3, label %do.body [
    i32 -61, label %cleanup
    i32 -11, label %cleanup
    i32 -19, label %cleanup
  ]

do.body:                                          ; preds = %if.then6
  %call16 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @power_supply_show_property._rs, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.power_supply_show_property, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %do.body
  %name = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.127, i64 0, i64 0), i8* noundef %5, i64 noundef %conv) #7
  br label %cleanup

if.end25:                                         ; preds = %if.else, %if.then
  %text_values_len = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %call1, i64 0, i32 4
  %6 = load i32, i32* %text_values_len, align 8
  %cmp26 = icmp sgt i32 %6, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end41

land.lhs.true28:                                  ; preds = %if.end25
  %intval29 = bitcast %union.power_supply_propval* %value to i32*
  %7 = load i32, i32* %intval29, align 8
  %cmp31 = icmp slt i32 %7, %6
  %cmp35 = icmp sgt i32 %7, -1
  %or.cond54 = and i1 %cmp31, %cmp35
  br i1 %or.cond54, label %if.then37, label %if.end41

if.then37:                                        ; preds = %land.lhs.true28
  %text_values = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %call1, i64 0, i32 3
  %8 = load i8**, i8*** %text_values, align 8
  %idxprom79 = zext i32 %7 to i64
  %arrayidx = getelementptr i8*, i8** %8, i64 %idxprom79
  %9 = load i8*, i8** %arrayidx, align 8
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), i8* noundef %9) #8
  %conv40 = sext i32 %call39 to i64
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true28, %if.end25
  switch i32 %call2, label %sw.default [
    i32 64, label %sw.bb
    i32 72, label %sw.bb44
    i32 73, label %sw.bb44
    i32 74, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end41
  %desc42 = bitcast i8* %call to %struct.power_supply_desc**
  %10 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc42, align 8
  %call43 = call fastcc i64 @power_supply_show_usb_type(%struct.device* noundef %dev, %struct.power_supply_desc* noundef %10, %union.power_supply_propval* noundef nonnull %value, i8* noundef %buf) #9
  br label %cleanup

sw.bb44:                                          ; preds = %if.end41, %if.end41, %if.end41
  %strval = getelementptr inbounds %union.power_supply_propval, %union.power_supply_propval* %value, i64 0, i32 0
  %11 = load i8*, i8** %strval, align 8
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), i8* noundef %11) #8
  %conv46 = sext i32 %call45 to i64
  br label %cleanup

sw.default:                                       ; preds = %if.end41
  %intval47 = bitcast %union.power_supply_propval* %value to i32*
  %12 = load i32, i32* %intval47, align 8
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i32 noundef %12) #8
  %conv49 = sext i32 %call48 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then6, %if.then6, %sw.bb, %sw.bb44, %sw.default, %do.body, %do.end, %if.then37
  %retval.0 = phi i64 [ %conv40, %if.then37 ], [ %conv, %do.end ], [ %conv, %do.body ], [ %conv, %if.then6 ], [ %conv49, %sw.default ], [ %conv46, %sw.bb44 ], [ %call43, %sw.bb ], [ %conv, %if.then6 ], [ %conv, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @power_supply_store_property(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* noundef %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %value = alloca %union.power_supply_propval, align 8
  %long_val = alloca i64, align 8
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #9
  %0 = bitcast i8* %call to %struct.power_supply*
  %call1 = call fastcc %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* noundef %attr) #9
  %call2 = call fastcc i32 @dev_attr_psp(%struct.device_attribute* noundef %attr) #9
  %1 = bitcast %union.power_supply_propval* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %2 = bitcast %union.power_supply_propval* %value to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %text_values_len = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %call1, i64 0, i32 4
  %3 = load i32, i32* %text_values_len, align 8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.end, label %if.then8

if.end:                                           ; preds = %entry
  %text_values = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %call1, i64 0, i32 3
  %4 = load i8**, i8*** %text_values, align 8
  %conv43 = zext i32 %3 to i64
  %call4 = call i32 @__sysfs_match_string(i8** noundef %4, i64 noundef %conv43, i8* noundef %buf) #8
  %conv544 = zext i32 %call4 to i64
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %entry, %if.end
  %5 = bitcast i64* %long_val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  store i64 0, i64* %long_val, align 8, !annotation !7
  %call9 = call fastcc i32 @kstrtol(i8* noundef %buf, i64* noundef nonnull %long_val) #9
  %conv10 = sext i32 %call9 to i64
  %cmp11 = icmp slt i32 %call9, 0
  %6 = load i64, i64* %long_val, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  br i1 %cmp11, label %cleanup23, label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end
  %ret.2 = phi i64 [ %6, %if.then8 ], [ %conv544, %if.end ]
  %conv16 = trunc i64 %ret.2 to i32
  %intval = bitcast %union.power_supply_propval* %value to i32*
  store i32 %conv16, i32* %intval, align 8
  %call17 = call i32 @power_supply_set_property(%struct.power_supply* noundef %0, i32 noundef %call2, %union.power_supply_propval* noundef nonnull %value) #8
  %cmp19 = icmp slt i32 %call17, 0
  %conv18 = sext i32 %call17 to i64
  %spec.select = select i1 %cmp19, i64 %conv18, i64 %count
  br label %cleanup23

cleanup23:                                        ; preds = %if.end15, %if.then8
  %retval.1 = phi i64 [ %conv10, %if.then8 ], [ %spec.select, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  ret i64 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_uevent(%struct.device* noundef %dev, %struct.kobj_uevent_env* noundef %env) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %0 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %tobool1.not = icmp eq %struct.power_supply_desc* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call3 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @get_zeroed_page(i32 noundef 3264) #8
  %2 = inttoptr i64 %call7 to i8*
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @add_prop_uevent(%struct.device* noundef %dev, %struct.kobj_uevent_env* noundef %env, i32 noundef 63, i8* noundef nonnull %2) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %out

for.cond.preheader:                               ; preds = %if.end10
  %3 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %num_properties49 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %3, i64 0, i32 5
  %4 = load i64, i64* %num_properties49, align 8
  %cmp50.not = icmp eq i64 %4, 0
  br i1 %cmp50.not, label %out, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = shl nsw i64 %conv52, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %5 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %5, i64 0, i32 5
  %6 = load i64, i64* %num_properties, align 8
  %cmp = icmp ugt i64 %6, %conv
  br i1 %cmp, label %for.body, label %out

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %7 = phi %struct.power_supply_desc* [ %5, %for.cond ], [ %3, %for.cond.preheader ]
  %conv52 = phi i64 [ %conv, %for.cond ], [ 0, %for.cond.preheader ]
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %7, i64 0, i32 4
  %8 = load i32*, i32** %properties, align 8
  %arrayidx = getelementptr i32, i32* %8, i64 %conv52
  %9 = load i32, i32* %arrayidx, align 4
  %call18 = call fastcc i32 @add_prop_uevent(%struct.device* noundef %dev, %struct.kobj_uevent_env* noundef %env, i32 noundef %9, i8* noundef nonnull %2) #9
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond, label %out

out:                                              ; preds = %for.body, %for.cond, %for.cond.preheader, %if.end10
  %ret.1 = phi i32 [ %call11, %if.end10 ], [ 0, %for.cond.preheader ], [ %call18, %for.body ], [ 0, %for.cond ]
  call void @free_pages(i64 noundef %call7, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %lor.lhs.false, %out
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call3, %if.end ], [ -12, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_get_drvdata(%struct.device* nocapture noundef readonly %dev) unnamed_addr #5 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  %0 = load i8*, i8** %driver_data, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_zeroed_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @add_prop_uevent(%struct.device* noundef %dev, %struct.kobj_uevent_env* noundef %env, i32 noundef %prop, i8* noundef %prop_buf) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %prop to i64
  %dev_attr1 = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom, i32 2
  %call = call i64 @power_supply_show_property(%struct.device* noundef %dev, %struct.device_attribute* noundef %dev_attr1, i8* noundef %prop_buf) #9
  %conv = trunc i64 %call to i32
  switch i32 %conv, label %if.end [
    i32 -19, label %cleanup
    i32 -61, label %cleanup
  ]

if.end:                                           ; preds = %entry
  %cmp5 = icmp slt i32 %conv, 0
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call i8* @strchr(i8* noundef %prop_buf, i32 noundef 10) #8
  %tobool.not = icmp eq i8* %call9, null
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  store i8 0, i8* %call9, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %prop_name = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom, i32 0
  %0 = load i8*, i8** %prop_name, align 8
  %call12 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i64 0, i64 0), i8* noundef %0, i8* noundef %prop_buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %entry, %if.end11
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ 0, %entry ], [ 0, %entry ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i16 @power_supply_attr_is_visible(%struct.kobject* noundef readonly %kobj, %struct.attribute* nocapture noundef readnone %attr, i32 noundef %attrno) #0 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #9
  %call1 = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %call) #9
  %0 = bitcast i8* %call1 to %struct.power_supply*
  %idxprom = sext i32 %attrno to i64
  %prop_name = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %prop_name, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %cleanup24, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %attrno, 63
  br i1 %cmp, label %cleanup24, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %desc = bitcast i8* %call1 to %struct.power_supply_desc**
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 5
  %3 = load i64, i64* %num_properties, align 8
  %cmp449.not = icmp eq i64 %3, 0
  br i1 %cmp449.not, label %cleanup24, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 4
  %4 = load i32*, i32** %properties, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = shl nsw i64 %conv51, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp4 = icmp ugt i64 %3, %conv
  br i1 %cmp4, label %for.body, label %cleanup24

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %conv51 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.cond ]
  %arrayidx8 = getelementptr i32, i32* %4, i64 %conv51
  %5 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %5, %attrno
  br i1 %cmp9, label %if.then11, label %for.cond

if.then11:                                        ; preds = %for.body
  %property_is_writeable = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 8
  %6 = load i32 (%struct.power_supply*, i32)*, i32 (%struct.power_supply*, i32)** %property_is_writeable, align 8
  %tobool13.not = icmp eq i32 (%struct.power_supply*, i32)* %6, null
  br i1 %tobool13.not, label %cleanup24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then11
  %call16 = call i32 %6(%struct.power_supply* noundef %0, i32 noundef %attrno) #8
  %cmp17 = icmp sgt i32 %call16, 0
  %spec.select = select i1 %cmp17, i16 420, i16 292
  br label %cleanup24

cleanup24:                                        ; preds = %for.cond, %for.cond.preheader, %if.then11, %land.lhs.true, %if.end, %entry
  %retval.2 = phi i16 [ 0, %entry ], [ 292, %if.end ], [ %spec.select, %land.lhs.true ], [ 292, %if.then11 ], [ 0, %for.cond.preheader ], [ 0, %for.cond ]
  ret i16 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef readnone %kobj) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.kobject* %kobj to %struct.device*
  ret %struct.device* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__tolower(i8 noundef %c) unnamed_addr #6 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 1
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, 32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* noundef readnone %attr) unnamed_addr #6 {
entry:
  %add.ptr = getelementptr %struct.device_attribute, %struct.device_attribute* %attr, i64 -2, i32 2
  %0 = bitcast i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %add.ptr to %struct.power_supply_attr*
  ret %struct.power_supply_attr* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dev_attr_psp(%struct.device_attribute* noundef %attr) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* noundef %attr) #9
  %sub.ptr.lhs.cast = ptrtoint %struct.power_supply_attr* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([75 x %struct.power_supply_attr]* @power_supply_attrs to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 88
  %conv = trunc i64 %sub.ptr.div to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(%struct.power_supply* noundef, i32 noundef, %union.power_supply_propval* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @power_supply_show_usb_type(%struct.device* noundef %dev, %struct.power_supply_desc* nocapture noundef readonly %desc, %union.power_supply_propval* nocapture noundef readonly %value, i8* noundef %buf) unnamed_addr #0 {
entry:
  %num_usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 3
  %0 = load i64, i64* %num_usb_types, align 8
  %cmp39.not = icmp eq i64 %0, 0
  br i1 %cmp39.not, label %do.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 2
  %intval = bitcast %union.power_supply_propval* %value to i32*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %conv43 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.body ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %match.0.off041 = phi i1 [ false, %for.body.lr.ph ], [ %.match.0.off041, %for.body ]
  %count.040 = phi i64 [ 0, %for.body.lr.ph ], [ %count.1, %for.body ]
  %1 = load i32*, i32** %usb_types, align 8
  %arrayidx = getelementptr i32, i32* %1, i64 %conv43
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %intval, align 8
  %cmp2 = icmp eq i32 %3, %2
  %add.ptr = getelementptr i8, i8* %buf, i64 %count.040
  %idxprom4 = zext i32 %2 to i64
  %arrayidx5 = getelementptr [10 x i8*], [10 x i8*]* @POWER_SUPPLY_USB_TYPE_TEXT, i64 0, i64 %idxprom4
  %4 = load i8*, i8** %arrayidx5, align 8
  %. = select i1 %cmp2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i64 0, i64 0)
  %.match.0.off041 = select i1 %cmp2, i1 true, i1 %match.0.off041
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr, i8* noundef %., i8* noundef %4) #8
  %conv6.pn = sext i32 %call to i64
  %count.1 = add i64 %count.040, %conv6.pn
  %inc = add i32 %i.042, 1
  %conv = sext i32 %inc to i64
  %5 = load i64, i64* %num_usb_types, align 8
  %cmp = icmp ugt i64 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  br i1 %.match.0.off041, label %if.end14, label %do.end

do.end:                                           ; preds = %entry, %for.end
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.132, i64 0, i64 0)) #7
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %tobool15.not = icmp eq i64 %count.1, 0
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end14
  %sub = add i64 %count.1, -1
  %arrayidx17 = getelementptr i8, i8* %buf, i64 %sub
  store i8 10, i8* %arrayidx17, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then16, %do.end
  %retval.0 = phi i64 [ -22, %do.end ], [ %count.1, %if.then16 ], [ 0, %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(i8** noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtol(i8* noundef %s, i64* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef 10, i64* noundef %res) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(%struct.power_supply* noundef, i32 noundef, %union.power_supply_propval* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

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
