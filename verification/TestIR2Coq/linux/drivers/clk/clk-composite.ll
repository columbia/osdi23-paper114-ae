; ModuleID = 'drivers/clk/clk-composite.c'
source_filename = "drivers/clk/clk-composite.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
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
%struct.irq_domain = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque

@.str = private unnamed_addr constant [39 x i8] c"%s: missing round_rate op is required\0A\00", align 1
@__func__.__clk_hw_register_composite = private unnamed_addr constant [28 x i8] c"__clk_hw_register_composite\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"\013clk: clk_composite_determine_rate function called, but no mux or rate callback set!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"devm_clk_hw_release_composite\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, i8** noundef %parent_names, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.clk_hw* @__clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, i8** noundef %parent_names, %struct.clk_parent_data* noundef null, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) #8
  ret %struct.clk_hw* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_hw* @__clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, i8** noundef %parent_names, %struct.clk_parent_data* noundef %pdata, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) unnamed_addr #0 {
entry:
  %init = alloca %struct.clk_init_data, align 8
  %0 = bitcast %struct.clk_init_data* %init to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %1 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 1
  %2 = bitcast %struct.clk_ops** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 40, i1 false)
  %call = call fastcc i8* @kzalloc() #8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #8
  %3 = bitcast i8* %call1 to %struct.clk_hw*
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 0
  store i8* %name, i8** %name2, align 8
  %flags3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 6
  store i64 %flags, i64* %flags3, align 8
  %tobool4.not = icmp eq i8** %parent_names, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %parent_names6 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 2
  store i8** %parent_names, i8*** %parent_names6, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %parent_data = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 3
  store %struct.clk_parent_data* %pdata, %struct.clk_parent_data** %parent_data, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %conv = trunc i32 %num_parents to i8
  %num_parents8 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 5
  store i8 %conv, i8* %num_parents8, align 8
  %hw9 = bitcast i8* %call to %struct.clk_hw*
  %ops = getelementptr inbounds i8, i8* %call, i64 24
  %tobool10 = icmp ne %struct.clk_hw* %mux_hw, null
  %tobool11 = icmp ne %struct.clk_ops* %mux_ops, null
  %or.cond = and i1 %tobool10, %tobool11
  br i1 %or.cond, label %if.then12, label %if.end28

if.then12:                                        ; preds = %if.end7
  %get_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %mux_ops, i64 0, i32 14
  %4 = load i8 (%struct.clk_hw*)*, i8 (%struct.clk_hw*)** %get_parent, align 8
  %tobool13.not = icmp eq i8 (%struct.clk_hw*)* %4, null
  br i1 %tobool13.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.then12
  %mux_hw17 = getelementptr inbounds i8, i8* %call, i64 224
  %5 = bitcast i8* %mux_hw17 to %struct.clk_hw**
  store %struct.clk_hw* %mux_hw, %struct.clk_hw** %5, align 8
  %mux_ops18 = getelementptr inbounds i8, i8* %call, i64 248
  %6 = bitcast i8* %mux_ops18 to %struct.clk_ops**
  store %struct.clk_ops* %mux_ops, %struct.clk_ops** %6, align 8
  %get_parent19 = getelementptr inbounds i8, i8* %call, i64 136
  %7 = bitcast i8* %get_parent19 to i8 (%struct.clk_hw*)**
  store i8 (%struct.clk_hw*)* @clk_composite_get_parent, i8 (%struct.clk_hw*)** %7, align 8
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %mux_ops, i64 0, i32 13
  %8 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %tobool20.not = icmp eq i32 (%struct.clk_hw*, i8)* %8, null
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end16
  %set_parent22 = getelementptr inbounds i8, i8* %call, i64 128
  %9 = bitcast i8* %set_parent22 to i32 (%struct.clk_hw*, i8)**
  store i32 (%struct.clk_hw*, i8)* @clk_composite_set_parent, i32 (%struct.clk_hw*, i8)** %9, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16
  %determine_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %mux_ops, i64 0, i32 12
  %10 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8
  %tobool24.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %10, null
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end23
  %determine_rate26 = getelementptr inbounds i8, i8* %call, i64 120
  %11 = bitcast i8* %determine_rate26 to i32 (%struct.clk_hw*, %struct.clk_rate_request*)**
  store i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_composite_determine_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %11, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.then25, %if.end7
  %tobool29 = icmp ne %struct.clk_hw* %rate_hw, null
  %tobool31 = icmp ne %struct.clk_ops* %rate_ops, null
  %or.cond148 = and i1 %tobool29, %tobool31
  br i1 %or.cond148, label %if.then32, label %if.end80

if.then32:                                        ; preds = %if.end28
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %rate_ops, i64 0, i32 10
  %12 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8
  %tobool33.not = icmp eq i64 (%struct.clk_hw*, i64)* %12, null
  br i1 %tobool33.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.then32
  %recalc_rate37 = getelementptr inbounds i8, i8* %call, i64 104
  %13 = bitcast i8* %recalc_rate37 to i64 (%struct.clk_hw*, i64)**
  store i64 (%struct.clk_hw*, i64)* @clk_composite_recalc_rate, i64 (%struct.clk_hw*, i64)** %13, align 8
  %determine_rate38 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %rate_ops, i64 0, i32 12
  %14 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate38, align 8
  %tobool39.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %14, null
  br i1 %tobool39.not, label %if.else42, label %if.end47.thread

if.else42:                                        ; preds = %if.end36
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %rate_ops, i64 0, i32 11
  %15 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %tobool43.not = icmp eq i64 (%struct.clk_hw*, i64, i64*)* %15, null
  br i1 %tobool43.not, label %if.end47, label %if.end47.thread222

if.end47:                                         ; preds = %if.else42
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %rate_ops, i64 0, i32 15
  %16 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8
  %tobool48.not = icmp eq i32 (%struct.clk_hw*, i64, i64)* %16, null
  br i1 %tobool48.not, label %if.end77, label %do.end

if.end47.thread222:                               ; preds = %if.else42
  %round_rate45 = getelementptr inbounds i8, i8* %call, i64 112
  %17 = bitcast i8* %round_rate45 to i64 (%struct.clk_hw*, i64, i64*)**
  store i64 (%struct.clk_hw*, i64, i64*)* @clk_composite_round_rate, i64 (%struct.clk_hw*, i64, i64*)** %17, align 8
  %set_rate223 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %rate_ops, i64 0, i32 15
  %18 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate223, align 8
  %tobool48.not224 = icmp eq i32 (%struct.clk_hw*, i64, i64)* %18, null
  br i1 %tobool48.not224, label %if.end77, label %if.then54

if.end47.thread:                                  ; preds = %if.end36
  %determine_rate41 = getelementptr inbounds i8, i8* %call, i64 120
  %19 = bitcast i8* %determine_rate41 to i32 (%struct.clk_hw*, %struct.clk_rate_request*)**
  store i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_composite_determine_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %19, align 8
  %set_rate220 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %rate_ops, i64 0, i32 15
  %20 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate220, align 8
  %tobool48.not221 = icmp eq i32 (%struct.clk_hw*, i64, i64)* %20, null
  br i1 %tobool48.not221, label %if.end77, label %if.then54

if.then54:                                        ; preds = %if.end47.thread222, %if.end47.thread
  %set_rate55 = getelementptr inbounds i8, i8* %call, i64 144
  %21 = bitcast i8* %set_rate55 to i32 (%struct.clk_hw*, i64, i64)**
  store i32 (%struct.clk_hw*, i64, i64)* @clk_composite_set_rate, i32 (%struct.clk_hw*, i64, i64)** %21, align 8
  br label %if.end77

do.end:                                           ; preds = %if.end47
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__clk_hw_register_composite, i64 0, i64 0)) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk-composite.c\22; .popsection; .long 14472b - 14470b; .short 268; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !7
  br label %if.end77

if.end77:                                         ; preds = %if.end47.thread222, %if.end47.thread, %if.then54, %do.end, %if.end47
  %rate_hw78 = getelementptr inbounds i8, i8* %call, i64 232
  %22 = bitcast i8* %rate_hw78 to %struct.clk_hw**
  store %struct.clk_hw* %rate_hw, %struct.clk_hw** %22, align 8
  %rate_ops79 = getelementptr inbounds i8, i8* %call, i64 256
  %23 = bitcast i8* %rate_ops79 to %struct.clk_ops**
  store %struct.clk_ops* %rate_ops, %struct.clk_ops** %23, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %if.end28
  %or.cond150 = and i1 %or.cond, %tobool29
  %or.cond151 = and i1 %or.cond150, %tobool31
  br i1 %or.cond151, label %if.then88, label %if.end96

if.then88:                                        ; preds = %if.end80
  %set_parent89 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %mux_ops, i64 0, i32 13
  %24 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent89, align 8
  %tobool90.not = icmp eq i32 (%struct.clk_hw*, i8)* %24, null
  br i1 %tobool90.not, label %if.end96, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then88
  %set_rate92 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %rate_ops, i64 0, i32 15
  %25 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate92, align 8
  %tobool93.not = icmp eq i32 (%struct.clk_hw*, i64, i64)* %25, null
  br i1 %tobool93.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %land.lhs.true91
  %set_rate_and_parent = getelementptr inbounds i8, i8* %call, i64 152
  %26 = bitcast i8* %set_rate_and_parent to i32 (%struct.clk_hw*, i64, i64, i8)**
  store i32 (%struct.clk_hw*, i64, i64, i8)* @clk_composite_set_rate_and_parent, i32 (%struct.clk_hw*, i64, i64, i8)** %26, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then88, %land.lhs.true91, %if.then94, %if.end80
  %tobool97 = icmp ne %struct.clk_hw* %gate_hw, null
  %tobool99 = icmp ne %struct.clk_ops* %gate_ops, null
  %or.cond152 = and i1 %tobool97, %tobool99
  br i1 %or.cond152, label %if.then100, label %if.end114

if.then100:                                       ; preds = %if.end96
  %is_enabled = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %gate_ops, i64 0, i32 6
  %27 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %is_enabled, align 8
  %tobool101.not = icmp eq i32 (%struct.clk_hw*)* %27, null
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %if.then100
  %enable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %gate_ops, i64 0, i32 4
  %28 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %enable, align 8
  %tobool103.not = icmp eq i32 (%struct.clk_hw*)* %28, null
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false102
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %gate_ops, i64 0, i32 5
  %29 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8
  %tobool105.not = icmp eq void (%struct.clk_hw*)* %29, null
  br i1 %tobool105.not, label %err, label %if.end108

if.end108:                                        ; preds = %lor.lhs.false104
  %gate_hw109 = getelementptr inbounds i8, i8* %call, i64 240
  %30 = bitcast i8* %gate_hw109 to %struct.clk_hw**
  store %struct.clk_hw* %gate_hw, %struct.clk_hw** %30, align 8
  %gate_ops110 = getelementptr inbounds i8, i8* %call, i64 264
  %31 = bitcast i8* %gate_ops110 to %struct.clk_ops**
  store %struct.clk_ops* %gate_ops, %struct.clk_ops** %31, align 8
  %is_enabled111 = getelementptr inbounds i8, i8* %call, i64 72
  %32 = bitcast i8* %is_enabled111 to i32 (%struct.clk_hw*)**
  store i32 (%struct.clk_hw*)* @clk_composite_is_enabled, i32 (%struct.clk_hw*)** %32, align 8
  %enable112 = getelementptr inbounds i8, i8* %call, i64 56
  %33 = bitcast i8* %enable112 to i32 (%struct.clk_hw*)**
  store i32 (%struct.clk_hw*)* @clk_composite_enable, i32 (%struct.clk_hw*)** %33, align 8
  %disable113 = getelementptr inbounds i8, i8* %call, i64 64
  %34 = bitcast i8* %disable113 to void (%struct.clk_hw*)**
  store void (%struct.clk_hw*)* @clk_composite_disable, void (%struct.clk_hw*)** %34, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.end108, %if.end96
  %ops115 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 1
  %35 = bitcast %struct.clk_ops** %ops115 to i8**
  store i8* %ops, i8** %35, align 8
  %init117 = getelementptr inbounds i8, i8* %call, i64 16
  %36 = bitcast i8* %init117 to %struct.clk_init_data**
  store %struct.clk_init_data* %init, %struct.clk_init_data** %36, align 8
  %call118 = call i32 @clk_hw_register(%struct.device* noundef %dev, %struct.clk_hw* noundef nonnull %hw9) #10
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end123, label %if.then120

if.then120:                                       ; preds = %if.end114
  %conv121 = sext i32 %call118 to i64
  br label %err

if.end123:                                        ; preds = %if.end114
  %mux_hw124 = getelementptr inbounds i8, i8* %call, i64 224
  %37 = bitcast i8* %mux_hw124 to %struct.clk_hw**
  %38 = load %struct.clk_hw*, %struct.clk_hw** %37, align 8
  %tobool125.not = icmp eq %struct.clk_hw* %38, null
  br i1 %tobool125.not, label %if.end129, label %if.then126

if.then126:                                       ; preds = %if.end123
  %clk = getelementptr inbounds i8, i8* %call, i64 8
  %39 = bitcast i8* %clk to %struct.clk**
  %40 = load %struct.clk*, %struct.clk** %39, align 8
  %clk128 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %38, i64 0, i32 1
  store %struct.clk* %40, %struct.clk** %clk128, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end123
  %rate_hw130 = getelementptr inbounds i8, i8* %call, i64 232
  %41 = bitcast i8* %rate_hw130 to %struct.clk_hw**
  %42 = load %struct.clk_hw*, %struct.clk_hw** %41, align 8
  %tobool131.not = icmp eq %struct.clk_hw* %42, null
  br i1 %tobool131.not, label %if.end136, label %if.then132

if.then132:                                       ; preds = %if.end129
  %clk133 = getelementptr inbounds i8, i8* %call, i64 8
  %43 = bitcast i8* %clk133 to %struct.clk**
  %44 = load %struct.clk*, %struct.clk** %43, align 8
  %clk135 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %42, i64 0, i32 1
  store %struct.clk* %44, %struct.clk** %clk135, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %if.end129
  %gate_hw137 = getelementptr inbounds i8, i8* %call, i64 240
  %45 = bitcast i8* %gate_hw137 to %struct.clk_hw**
  %46 = load %struct.clk_hw*, %struct.clk_hw** %45, align 8
  %tobool138.not = icmp eq %struct.clk_hw* %46, null
  br i1 %tobool138.not, label %cleanup, label %if.then139

if.then139:                                       ; preds = %if.end136
  %clk140 = getelementptr inbounds i8, i8* %call, i64 8
  %47 = bitcast i8* %clk140 to %struct.clk**
  %48 = load %struct.clk*, %struct.clk** %47, align 8
  %clk142 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %46, i64 0, i32 1
  store %struct.clk* %48, %struct.clk** %clk142, align 8
  br label %cleanup

err:                                              ; preds = %if.then100, %lor.lhs.false102, %lor.lhs.false104, %if.then32, %if.then12, %if.then120
  %conv121.sink = phi i64 [ %conv121, %if.then120 ], [ -22, %if.then12 ], [ -22, %if.then32 ], [ -22, %lor.lhs.false104 ], [ -22, %lor.lhs.false102 ], [ -22, %if.then100 ]
  %call122 = call fastcc i8* @ERR_PTR(i64 noundef %conv121.sink) #8
  %hw.0 = bitcast i8* %call122 to %struct.clk_hw*
  call void @kfree(i8* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.then139, %err, %if.then
  %retval.0 = phi %struct.clk_hw* [ %hw.0, %err ], [ %3, %if.then ], [ %hw9, %if.then139 ], [ %hw9, %if.end136 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @clk_hw_register_composite_pdata(%struct.device* noundef %dev, i8* noundef %name, %struct.clk_parent_data* noundef %parent_data, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.clk_hw* @__clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, i8** noundef null, %struct.clk_parent_data* noundef %parent_data, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) #8
  ret %struct.clk_hw* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_register_composite(%struct.device* noundef %dev, i8* noundef %name, i8** noundef %parent_names, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, i8** noundef %parent_names, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) #8
  %0 = bitcast %struct.clk_hw* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #8
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.clk_hw* %call to %struct.clk*
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %call, i64 0, i32 1
  %2 = load %struct.clk*, %struct.clk** %clk, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.clk* [ %1, %if.then ], [ %2, %if.end ]
  ret %struct.clk* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_register_composite_pdata(%struct.device* noundef %dev, i8* noundef %name, %struct.clk_parent_data* noundef %parent_data, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @clk_hw_register_composite_pdata(%struct.device* noundef %dev, i8* noundef %name, %struct.clk_parent_data* noundef %parent_data, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) #8
  %0 = bitcast %struct.clk_hw* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #8
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.clk_hw* %call to %struct.clk*
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %call, i64 0, i32 1
  %2 = load %struct.clk*, %struct.clk** %clk, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.clk* [ %1, %if.then ], [ %2, %if.end ]
  ret %struct.clk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_unregister_composite(%struct.clk* noundef %clk) local_unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef %clk) #10
  %tobool.not = icmp eq %struct.clk_hw* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.clk_hw* %call to i8*
  call void @clk_unregister(%struct.clk* noundef %clk) #10
  call void @kfree(i8* noundef nonnull %0) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(%struct.clk* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_hw_unregister_composite(%struct.clk_hw* noundef %hw) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to i8*
  call void @clk_hw_unregister(%struct.clk_hw* noundef %hw) #10
  call void @kfree(i8* noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @devm_clk_hw_register_composite_pdata(%struct.device* noundef %dev, i8* noundef %name, %struct.clk_parent_data* noundef %parent_data, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.clk_hw* @__devm_clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, %struct.clk_parent_data* noundef %parent_data, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) #8
  ret %struct.clk_hw* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_hw* @__devm_clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, %struct.clk_parent_data* noundef %pdata, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_clk_hw_release_composite, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #10
  %0 = bitcast i8* %call to %struct.clk_hw**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #8
  %1 = bitcast i8* %call1 to %struct.clk_hw*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.clk_hw* @__clk_hw_register_composite(%struct.device* noundef %dev, i8* noundef %name, i8** noundef null, %struct.clk_parent_data* noundef %pdata, i32 noundef %num_parents, %struct.clk_hw* noundef %mux_hw, %struct.clk_ops* noundef %mux_ops, %struct.clk_hw* noundef %rate_hw, %struct.clk_ops* noundef %rate_ops, %struct.clk_hw* noundef %gate_hw, %struct.clk_ops* noundef %gate_ops, i64 noundef %flags) #8
  %2 = bitcast %struct.clk_hw* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #8
  br i1 %call3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  store %struct.clk_hw* %call2, %struct.clk_hw** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %if.then
  %retval.0 = phi %struct.clk_hw* [ %1, %if.then ], [ %call2, %if.else ], [ %call2, %if.then4 ]
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #10
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #2 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8 @clk_composite_get_parent(%struct.clk_hw* nocapture noundef readonly %hw) #0 {
entry:
  %mux_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 1
  %0 = bitcast %struct.clk** %mux_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %mux_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 1
  %2 = bitcast %struct.clk** %mux_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %get_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 14
  %4 = load i8 (%struct.clk_hw*)*, i8 (%struct.clk_hw*)** %get_parent, align 8
  %call = call i8 %4(%struct.clk_hw* noundef %3) #10
  ret i8 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_composite_set_parent(%struct.clk_hw* nocapture noundef readonly %hw, i8 noundef %index) #0 {
entry:
  %mux_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 1
  %0 = bitcast %struct.clk** %mux_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %mux_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 1
  %2 = bitcast %struct.clk** %mux_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 13
  %4 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %call = call i32 %4(%struct.clk_hw* noundef %3, i8 noundef %index) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_composite_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* noundef %req) #0 {
entry:
  %parent_rate = alloca i64, align 8
  %rate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 2
  %0 = bitcast %struct.clk_init_data** %rate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %mux_ops2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 1
  %2 = bitcast %struct.clk** %mux_ops2 to %struct.clk_ops**
  %3 = load %struct.clk_ops*, %struct.clk_ops** %2, align 8
  %rate_hw3 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 2
  %4 = bitcast %struct.clk_init_data** %rate_hw3 to %struct.clk_hw**
  %5 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %mux_hw4 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 1
  %6 = bitcast %struct.clk** %mux_hw4 to %struct.clk_hw**
  %7 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %8 = bitcast i64* %parent_rate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9
  store i64 0, i64* %parent_rate, align 8, !annotation !8
  %tobool = icmp ne %struct.clk_hw* %5, null
  %tobool5 = icmp ne %struct.clk_ops* %1, null
  %or.cond = select i1 %tobool, i1 %tobool5, i1 false
  br i1 %or.cond, label %land.lhs.true6, label %if.else68

land.lhs.true6:                                   ; preds = %entry
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 11
  %9 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %tobool7 = icmp ne i64 (%struct.clk_hw*, i64, i64*)* %9, null
  %tobool9 = icmp ne %struct.clk_hw* %7, null
  %or.cond96 = select i1 %tobool7, i1 %tobool9, i1 false
  %tobool11 = icmp ne %struct.clk_ops* %3, null
  %or.cond97 = select i1 %or.cond96, i1 %tobool11, i1 false
  br i1 %or.cond97, label %land.lhs.true12, label %land.lhs.true63

land.lhs.true12:                                  ; preds = %land.lhs.true6
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %3, i64 0, i32 13
  %10 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %tobool13.not = icmp eq i32 (%struct.clk_hw*, i8)* %10, null
  br i1 %tobool13.not, label %land.lhs.true63, label %if.then

if.then:                                          ; preds = %land.lhs.true12
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  store %struct.clk_hw* null, %struct.clk_hw** %best_parent_hw, align 8
  %call = call i64 @clk_hw_get_flags(%struct.clk_hw* noundef %hw) #10
  %and = and i64 %call, 128
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %if.then15

for.cond.preheader:                               ; preds = %if.then
  %call26181 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* noundef nonnull %7) #10
  %cmp27182.not = icmp eq i32 %call26181, 0
  br i1 %cmp27182.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rate35 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  %best_parent_rate54 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  br label %for.body

if.then15:                                        ; preds = %if.then
  %call16 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef nonnull %7) #10
  store %struct.clk_hw* %call16, %struct.clk_hw** %best_parent_hw, align 8
  %call18 = call i64 @clk_hw_get_rate(%struct.clk_hw* noundef %call16) #10
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  store i64 %call18, i64* %best_parent_rate, align 8
  %11 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %rate20 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  %12 = load i64, i64* %rate20, align 8
  %call22 = call i64 %11(%struct.clk_hw* noundef nonnull %5, i64 noundef %12, i64* noundef %best_parent_rate) #10
  %cmp = icmp slt i64 %call22, 0
  br i1 %cmp, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then15
  %conv = trunc i64 %call22 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then15
  store i64 %call22, i64* %rate20, align 8
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %best_rate_diff.0184 = phi i64 [ -1, %for.body.lr.ph ], [ %best_rate_diff.2, %for.inc ]
  %best_rate.0183 = phi i64 [ 0, %for.body.lr.ph ], [ %best_rate.2, %for.inc ]
  %call29 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* noundef nonnull %7, i32 noundef %i.0185) #10
  %tobool30.not = icmp eq %struct.clk_hw* %call29, null
  br i1 %tobool30.not, label %for.inc, label %if.end32

if.end32:                                         ; preds = %for.body
  %call33 = call i64 @clk_hw_get_rate(%struct.clk_hw* noundef nonnull %call29) #10
  store i64 %call33, i64* %parent_rate, align 8
  %13 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %14 = load i64, i64* %rate35, align 8
  %call36 = call i64 %13(%struct.clk_hw* noundef nonnull %5, i64 noundef %14, i64* noundef nonnull %parent_rate) #10
  %cmp37 = icmp slt i64 %call36, 0
  br i1 %cmp37, label %for.inc, label %if.end40

if.end40:                                         ; preds = %if.end32
  %15 = load i64, i64* %rate35, align 8
  %sub = sub i64 %15, %call36
  %16 = call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %tobool46.not = icmp eq i64 %sub, 0
  br i1 %tobool46.not, label %if.end55.thread178, label %lor.lhs.false

if.end55.thread178:                               ; preds = %if.end40
  store %struct.clk_hw* %call29, %struct.clk_hw** %best_parent_hw, align 8
  %17 = load i64, i64* %parent_rate, align 8
  store i64 %17, i64* %best_parent_rate54, align 8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end40
  %18 = load %struct.clk_hw*, %struct.clk_hw** %best_parent_hw, align 8
  %tobool48.not = icmp eq %struct.clk_hw* %18, null
  %cmp50 = icmp ugt i64 %best_rate_diff.0184, %16
  %or.cond175 = select i1 %tobool48.not, i1 true, i1 %cmp50
  br i1 %or.cond175, label %if.end55, label %for.inc

if.end55:                                         ; preds = %lor.lhs.false
  store %struct.clk_hw* %call29, %struct.clk_hw** %best_parent_hw, align 8
  %19 = load i64, i64* %parent_rate, align 8
  store i64 %19, i64* %best_parent_rate54, align 8
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.end55, %if.end32, %for.body
  %best_rate.2 = phi i64 [ %best_rate.0183, %if.end32 ], [ %call36, %if.end55 ], [ %best_rate.0183, %for.body ], [ %best_rate.0183, %lor.lhs.false ]
  %best_rate_diff.2 = phi i64 [ %best_rate_diff.0184, %if.end32 ], [ %16, %if.end55 ], [ %best_rate_diff.0184, %for.body ], [ %best_rate_diff.0184, %lor.lhs.false ]
  %inc = add nuw i32 %i.0185, 1
  %call26 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* noundef nonnull %7) #10
  %cmp27 = icmp ult i32 %inc, %call26
  br i1 %cmp27, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %best_rate.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %best_rate.2, %for.inc ]
  %rate59 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %best_rate.0.lcssa, i64* %rate59, align 8
  br label %cleanup

land.lhs.true63:                                  ; preds = %land.lhs.true6, %land.lhs.true12
  %determine_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 12
  %20 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8
  %tobool64.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %20, null
  br i1 %tobool64.not, label %if.else68, label %if.then65

if.then65:                                        ; preds = %land.lhs.true63
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef nonnull %5, %struct.clk_hw* noundef %hw) #8
  %21 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8
  %call67 = call i32 %21(%struct.clk_hw* noundef nonnull %5, %struct.clk_rate_request* noundef %req) #10
  br label %cleanup

if.else68:                                        ; preds = %entry, %land.lhs.true63
  %tobool69 = icmp ne %struct.clk_hw* %7, null
  %tobool71 = icmp ne %struct.clk_ops* %3, null
  %or.cond99 = select i1 %tobool69, i1 %tobool71, i1 false
  br i1 %or.cond99, label %land.lhs.true72, label %do.end81

land.lhs.true72:                                  ; preds = %if.else68
  %determine_rate73 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %3, i64 0, i32 12
  %22 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate73, align 8
  %tobool74.not = icmp eq i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %22, null
  br i1 %tobool74.not, label %do.end81, label %if.then75

if.then75:                                        ; preds = %land.lhs.true72
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef nonnull %7, %struct.clk_hw* noundef %hw) #8
  %23 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate73, align 8
  %call77 = call i32 %23(%struct.clk_hw* noundef nonnull %7, %struct.clk_rate_request* noundef %req) #10
  br label %cleanup

do.end81:                                         ; preds = %if.else68, %land.lhs.true72
  %call83 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end55.thread178, %do.end81, %if.then75, %if.then65, %for.end, %if.end, %if.then23
  %retval.0 = phi i32 [ %conv, %if.then23 ], [ 0, %if.end ], [ 0, %for.end ], [ %call67, %if.then65 ], [ %call77, %if.then75 ], [ -22, %do.end81 ], [ 0, %if.end55.thread178 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_composite_recalc_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %parent_rate) #0 {
entry:
  %rate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 2
  %0 = bitcast %struct.clk_init_data** %rate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %rate_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 2
  %2 = bitcast %struct.clk_init_data** %rate_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 10
  %4 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8
  %call = call i64 %4(%struct.clk_hw* noundef %3, i64 noundef %parent_rate) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_composite_round_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate, i64* noundef %prate) #0 {
entry:
  %rate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 2
  %0 = bitcast %struct.clk_init_data** %rate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %rate_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 2
  %2 = bitcast %struct.clk_init_data** %rate_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 11
  %4 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8
  %call = call i64 %4(%struct.clk_hw* noundef %3, i64 noundef %rate, i64* noundef %prate) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_composite_set_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate, i64 noundef %parent_rate) #0 {
entry:
  %rate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 2
  %0 = bitcast %struct.clk_init_data** %rate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %rate_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 2
  %2 = bitcast %struct.clk_init_data** %rate_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 15
  %4 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8
  %call = call i32 %4(%struct.clk_hw* noundef %3, i64 noundef %rate, i64 noundef %parent_rate) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_composite_set_rate_and_parent(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate, i64 noundef %parent_rate, i8 noundef %index) #0 {
entry:
  %rate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 2
  %0 = bitcast %struct.clk_init_data** %rate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %mux_ops2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10, i32 1
  %2 = bitcast %struct.clk** %mux_ops2 to %struct.clk_ops**
  %3 = load %struct.clk_ops*, %struct.clk_ops** %2, align 8
  %rate_hw3 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 2
  %4 = bitcast %struct.clk_init_data** %rate_hw3 to %struct.clk_hw**
  %5 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %mux_hw4 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 9, i32 1
  %6 = bitcast %struct.clk** %mux_hw4 to %struct.clk_hw**
  %7 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %5, %struct.clk_hw* noundef %hw) #8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %7, %struct.clk_hw* noundef %hw) #8
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 10
  %8 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8
  %call = call i64 %8(%struct.clk_hw* noundef %5, i64 noundef %parent_rate) #10
  %cmp = icmp ugt i64 %call, %rate
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 15
  %9 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8
  %call5 = call i32 %9(%struct.clk_hw* noundef %5, i64 noundef %rate, i64 noundef %parent_rate) #10
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %3, i64 0, i32 13
  %10 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8
  %call6 = call i32 %10(%struct.clk_hw* noundef %7, i8 noundef %index) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %set_parent7 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %3, i64 0, i32 13
  %11 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent7, align 8
  %call8 = call i32 %11(%struct.clk_hw* noundef %7, i8 noundef %index) #10
  %set_rate9 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 15
  %12 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate9, align 8
  %call10 = call i32 %12(%struct.clk_hw* noundef %5, i64 noundef %rate, i64 noundef %parent_rate) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_composite_is_enabled(%struct.clk_hw* nocapture noundef readonly %hw) #0 {
entry:
  %gate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 11
  %0 = bitcast %struct.clk_hw* %gate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %gate_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10
  %2 = bitcast %struct.clk_hw* %gate_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %is_enabled = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 6
  %4 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %is_enabled, align 8
  %call = call i32 %4(%struct.clk_hw* noundef %3) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_composite_enable(%struct.clk_hw* nocapture noundef readonly %hw) #0 {
entry:
  %gate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 11
  %0 = bitcast %struct.clk_hw* %gate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %gate_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10
  %2 = bitcast %struct.clk_hw* %gate_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %enable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 4
  %4 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %enable, align 8
  %call = call i32 %4(%struct.clk_hw* noundef %3) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @clk_composite_disable(%struct.clk_hw* nocapture noundef readonly %hw) #0 {
entry:
  %gate_ops1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 11
  %0 = bitcast %struct.clk_hw* %gate_ops1 to %struct.clk_ops**
  %1 = load %struct.clk_ops*, %struct.clk_ops** %0, align 8
  %gate_hw2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 10
  %2 = bitcast %struct.clk_hw* %gate_hw2 to %struct.clk_hw**
  %3 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  call fastcc void @__clk_hw_set_clk(%struct.clk_hw* noundef %3, %struct.clk_hw* noundef %hw) #8
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %1, i64 0, i32 5
  %4 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8
  call void %4(%struct.clk_hw* noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(%struct.device* noundef, %struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__clk_hw_set_clk(%struct.clk_hw* nocapture noundef writeonly %dst, %struct.clk_hw* nocapture noundef readonly %src) unnamed_addr #5 {
entry:
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %src, i64 0, i32 1
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  %clk1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %dst, i64 0, i32 1
  store %struct.clk* %0, %struct.clk** %clk1, align 8
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %src, i64 0, i32 0
  %1 = load %struct.clk_core*, %struct.clk_core** %core, align 8
  %core2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %dst, i64 0, i32 0
  store %struct.clk_core* %1, %struct.clk_core** %core2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_clk_hw_release_composite(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.clk_hw**
  %1 = load %struct.clk_hw*, %struct.clk_hw** %0, align 8
  call void @clk_hw_unregister_composite(%struct.clk_hw* noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
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
!7 = !{i64 2151686248}
!8 = !{!"auto-init"}
