; ModuleID = 'lib/genalloc.c'
source_filename = "lib/genalloc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)*, i8*, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.gen_pool_chunk = type { %struct.list_head, %struct.atomic64_t, i64, i8*, i64, i64, [0 x i64] }
%struct.atomic64_t = type { i64 }
%struct.genpool_data_align = type { i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
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
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}

@.str = private unnamed_addr constant [22 x i8] c"devm_gen_pool_release\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.gen_pool* @gen_pool_create(i32 noundef %min_alloc_order, i32 %nid) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #8
  %cmp.not = icmp eq i8* %call.i.i.i, null
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call.i.i.i to i32*
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %chunks = getelementptr inbounds i8, i8* %call.i.i.i, i64 8
  %1 = bitcast i8* %chunks to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %1) #9
  %min_alloc_order3 = getelementptr inbounds i8, i8* %call.i.i.i, i64 24
  %2 = bitcast i8* %min_alloc_order3 to i32*
  store i32 %min_alloc_order, i32* %2, align 8
  %algo = getelementptr inbounds i8, i8* %call.i.i.i, i64 32
  %3 = bitcast i8* %algo to i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)**
  store i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* @gen_pool_first_fit, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)** %3, align 8
  %data = getelementptr inbounds i8, i8* %call.i.i.i, i64 40
  %4 = bitcast i8* %data to i8**
  store i8* null, i8** %4, align 8
  %name = getelementptr inbounds i8, i8* %call.i.i.i, i64 48
  %5 = bitcast i8* %name to i8**
  store i8* null, i8** %5, align 8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  %6 = bitcast i8* %call.i.i.i to %struct.gen_pool*
  ret %struct.gen_pool* %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_first_fit(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i8* nocapture readnone %data, %struct.gen_pool* nocapture readnone %pool, i64 %start_addr) #0 {
entry:
  %call = call fastcc i64 @bitmap_find_next_zero_area(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef 0) #9
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @gen_pool_add_owner(%struct.gen_pool* noundef %pool, i64 noundef %virt, i64 noundef %phys, i64 noundef %size, i32 noundef %nid, i8* noundef %owner) local_unnamed_addr #0 {
entry:
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 2
  %0 = load i32, i32* %min_alloc_order, align 8
  %sh_prom = zext i32 %0 to i64
  %shr = lshr i64 %size, %sh_prom
  %sub = add i64 %shr, 63
  %1 = lshr i64 %sub, 3
  %mul = and i64 %1, 2305843009213693944
  %add1 = add nuw nsw i64 %mul, 56
  %call = call i8* @vzalloc_node(i64 noundef %add1, i32 noundef %nid) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %phys_addr = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %phys_addr to i64*
  store i64 %phys, i64* %2, align 8
  %start_addr = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %start_addr to i64*
  store i64 %virt, i64* %3, align 8
  %add3 = add i64 %virt, -1
  %sub4 = add i64 %add3, %size
  %end_addr = getelementptr inbounds i8, i8* %call, i64 48
  %4 = bitcast i8* %end_addr to i64*
  store i64 %sub4, i64* %4, align 8
  %owner5 = getelementptr inbounds i8, i8* %call, i64 32
  %5 = bitcast i8* %owner5 to i8**
  store i8* %owner, i8** %5, align 8
  %avail = getelementptr inbounds i8, i8* %call, i64 16
  %counter.i.i = bitcast i8* %avail to i64*
  store volatile i64 %size, i64* %counter.i.i, align 8
  %rlock.i = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #8
  %next_chunk = bitcast i8* %call to %struct.list_head*
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  call fastcc void @list_add_rcu(%struct.list_head* noundef nonnull %next_chunk, %struct.list_head* noundef %chunks) #9
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @vzalloc_node(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_virt_to_phys(%struct.gen_pool* noundef %pool, i64 noundef %addr) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #8
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %chunk.0.in.in34 = getelementptr %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %chunk.0.in35 = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in34, align 8
  %cmp.not36 = icmp eq %struct.list_head* %chunk.0.in35, %chunks
  br i1 %cmp.not36, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %chunk.0.in37 = phi %struct.list_head* [ %chunk.0.in, %for.inc ], [ %chunk.0.in35, %entry ]
  %start_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in37, i64 2, i32 1
  %0 = bitcast %struct.list_head** %start_addr to i64*
  %1 = load i64, i64* %0, align 8
  %cmp6.not = icmp ugt i64 %1, %addr
  br i1 %cmp6.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %end_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in37, i64 3
  %2 = bitcast %struct.list_head* %end_addr to i64*
  %3 = load i64, i64* %2, align 8
  %cmp7.not = icmp ult i64 %3, %addr
  br i1 %cmp7.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %phys_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in37, i64 1, i32 1
  %4 = bitcast %struct.list_head** %phys_addr to i64*
  %5 = load i64, i64* %4, align 8
  %sub = sub i64 %addr, %1
  %add = add i64 %sub, %5
  br label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %chunk.0.in.in = getelementptr %struct.list_head, %struct.list_head* %chunk.0.in37, i64 0, i32 0
  %chunk.0.in = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in, align 8
  %cmp.not = icmp eq %struct.list_head* %chunk.0.in, %chunks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %paddr.0 = phi i64 [ %add, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  call fastcc void @rcu_read_unlock() #9
  ret i64 %paddr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gen_pool_destroy(%struct.gen_pool* noundef %pool) local_unnamed_addr #0 {
entry:
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not36 = icmp eq %struct.list_head* %0, %chunks
  br i1 %cmp.not36, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 2
  %1 = load i32, i32* %min_alloc_order, align 8
  %sh_prom = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %do.end14
  %_chunk.037 = phi %struct.list_head* [ %0, %for.body.lr.ph ], [ %_next_chunk.038, %do.end14 ]
  %_next_chunk.038.in = getelementptr inbounds %struct.list_head, %struct.list_head* %_chunk.037, i64 0, i32 0
  %_next_chunk.038 = load %struct.list_head*, %struct.list_head** %_next_chunk.038.in, align 8
  %2 = bitcast %struct.list_head* %_chunk.037 to %struct.gen_pool_chunk*
  call fastcc void @list_del(%struct.list_head* noundef %_chunk.037) #9
  %call = call fastcc i64 @chunk_size(%struct.gen_pool_chunk* noundef %2) #9
  %shr = lshr i64 %call, %sh_prom
  %bits = getelementptr inbounds %struct.list_head, %struct.list_head* %_chunk.037, i64 3, i32 1
  %arraydecay = bitcast %struct.list_head** %bits to i64*
  %call3 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay, i64 noundef %shr, i64 noundef 0) #9
  %cmp5 = icmp ult i64 %call3, %shr
  br i1 %cmp5, label %do.body7, label %do.end14, !prof !7

do.body7:                                         ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/genalloc.c\22; .popsection; .long 14472b - 14470b; .short 255; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  unreachable

do.end14:                                         ; preds = %for.body
  %3 = bitcast %struct.list_head* %_chunk.037 to i8*
  call void @vfree(i8* noundef %3) #8
  %cmp.not = icmp eq %struct.list_head* %_next_chunk.038, %chunks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %do.end14, %entry
  %name = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 5
  %4 = load i8*, i8** %name, align 8
  call void @kfree_const(i8* noundef %4) #8
  %5 = bitcast %struct.gen_pool* %pool to i8*
  call void @kfree(i8* noundef %5) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #9
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @chunk_size(%struct.gen_pool_chunk* nocapture noundef readonly %chunk) unnamed_addr #4 {
entry:
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %chunk, i64 0, i32 5
  %0 = load i64, i64* %end_addr, align 8
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %chunk, i64 0, i32 4
  %1 = load i64, i64* %start_addr, align 8
  %sub = add i64 %0, 1
  %add = sub i64 %sub, %1
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #8
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_alloc_algo_owner(%struct.gen_pool* noundef %pool, i64 noundef %size, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* nocapture noundef readonly %algo, i8* noundef %data, i8** noundef writeonly %owner) local_unnamed_addr #0 {
entry:
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 2
  %0 = load i32, i32* %min_alloc_order, align 8
  %tobool.not = icmp eq i8** %owner, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %owner, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq i64 %size, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add i64 %size, -1
  %sub = add i64 %add, %shl
  %shr = lshr i64 %sub, %sh_prom
  call fastcc void @__rcu_read_lock() #8
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %chunk.0.in.in124 = getelementptr %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %chunk.0.in125 = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in124, align 8
  %cmp9.not127 = icmp eq %struct.list_head* %chunk.0.in125, %chunks
  br i1 %cmp9.not127, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end2
  %conv = trunc i64 %shr to i32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %chunk.0.in128 = phi %struct.list_head* [ %chunk.0.in125, %for.body.lr.ph ], [ %chunk.0.in, %for.inc ]
  %avail = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in128, i64 1
  %counter.i.i = bitcast %struct.list_head* %avail to i64*
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %cmp10 = icmp ult i64 %1, %size
  br i1 %cmp10, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  %chunk.0129 = bitcast %struct.list_head* %chunk.0.in128 to %struct.gen_pool_chunk*
  %call13 = call fastcc i64 @chunk_size(%struct.gen_pool_chunk* noundef %chunk.0129) #9
  %shr15 = lshr i64 %call13, %sh_prom
  %arraydecay = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in128, i64 3, i32 1
  %2 = bitcast %struct.list_head** %arraydecay to i64*
  %start_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in128, i64 2, i32 1
  %3 = bitcast %struct.list_head** %start_addr to i64*
  br label %retry

retry:                                            ; preds = %if.then25, %if.end12
  %start_bit.0 = phi i64 [ 0, %if.end12 ], [ %call16, %if.then25 ]
  %4 = load i64, i64* %3, align 8
  %call16 = call i64 %algo(i64* noundef %2, i64 noundef %shr15, i64 noundef %start_bit.0, i32 noundef %conv, i8* noundef %data, %struct.gen_pool* noundef %pool, i64 noundef %4) #8
  %cmp17.not = icmp ult i64 %call16, %shr15
  br i1 %cmp17.not, label %if.end20, label %for.inc

if.end20:                                         ; preds = %retry
  %call23 = call fastcc i64 @bitmap_set_ll(i64* noundef %2, i64 noundef %call16, i64 noundef %shr) #9
  %tobool24.not = icmp eq i64 %call23, 0
  br i1 %tobool24.not, label %if.end45, label %if.then25

if.then25:                                        ; preds = %if.end20
  %sub28 = sub i64 %shr, %call23
  %call29 = call fastcc i64 @bitmap_clear_ll(i64* noundef %2, i64 noundef %call16, i64 noundef %sub28) #9
  %tobool31.not = icmp eq i64 %call29, 0
  br i1 %tobool31.not, label %retry, label %do.body36, !prof !9

do.body36:                                        ; preds = %if.then25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/genalloc.c\22; .popsection; .long 14472b - 14470b; .short 312; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  unreachable

if.end45:                                         ; preds = %if.end20
  %5 = bitcast %struct.list_head** %start_addr to i64*
  %6 = bitcast %struct.list_head* %avail to %struct.atomic64_t*
  %7 = load i64, i64* %5, align 8
  %shl48 = shl i64 %call16, %sh_prom
  %add49 = add i64 %7, %shl48
  %shl51 = shl i64 %shr, %sh_prom
  call fastcc void @__ll_sc_atomic64_sub(i64 noundef %shl51, %struct.atomic64_t* noundef %6) #8
  br i1 %tobool.not, label %for.end, label %if.then54

if.then54:                                        ; preds = %if.end45
  %owner55 = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in128, i64 2
  %8 = bitcast %struct.list_head* %owner55 to i8**
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %owner, align 8
  br label %for.end

for.inc:                                          ; preds = %retry, %for.body
  %chunk.0.in.in = getelementptr %struct.list_head, %struct.list_head* %chunk.0.in128, i64 0, i32 0
  %chunk.0.in = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in, align 8
  %cmp9.not = icmp eq %struct.list_head* %chunk.0.in, %chunks
  br i1 %cmp9.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end2, %if.end45, %if.then54
  %addr.0 = phi i64 [ %add49, %if.then54 ], [ %add49, %if.end45 ], [ 0, %if.end2 ], [ 0, %for.inc ]
  call fastcc void @rcu_read_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i64 [ %addr.0, %for.end ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @bitmap_set_ll(i64* noundef %map, i64 noundef %start, i64 noundef %nr) unnamed_addr #0 {
entry:
  %div = lshr i64 %start, 6
  %add.ptr = getelementptr i64, i64* %map, i64 %div
  %add = add i64 %start, %nr
  %0 = and i64 %start, 63
  %conv = sub nuw nsw i64 64, %0
  %shl = shl nsw i64 -1, %0
  %cmp.not38 = icmp ugt i64 %conv, %nr
  br i1 %cmp.not38, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %mask_to_set.042 = phi i64 [ -1, %if.end ], [ %shl, %entry ]
  %bits_to_set.041 = phi i64 [ 64, %if.end ], [ %conv, %entry ]
  %p.040 = phi i64* [ %incdec.ptr, %if.end ], [ %add.ptr, %entry ]
  %nr.addr.039 = phi i64 [ %sub4, %if.end ], [ %nr, %entry ]
  %call = call fastcc i32 @set_bits_ll(i64* noundef %p.040, i64 noundef %mask_to_set.042) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %while.body
  %sub4 = sub i64 %nr.addr.039, %bits_to_set.041
  %incdec.ptr = getelementptr i64, i64* %p.040, i64 1
  %cmp.not = icmp ult i64 %sub4, 64
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %nr.addr.0.lcssa = phi i64 [ %nr, %entry ], [ %sub4, %if.end ]
  %p.0.lcssa = phi i64* [ %add.ptr, %entry ], [ %incdec.ptr, %if.end ]
  %mask_to_set.0.lcssa = phi i64 [ %shl, %entry ], [ -1, %if.end ]
  %tobool5.not = icmp eq i64 %nr.addr.0.lcssa, 0
  br i1 %tobool5.not, label %if.end14, label %if.then6

if.then6:                                         ; preds = %while.end
  %sub7 = sub i64 0, %add
  %and8 = and i64 %sub7, 63
  %shr = lshr i64 -1, %and8
  %and9 = and i64 %mask_to_set.0.lcssa, %shr
  %call10 = call fastcc i32 @set_bits_ll(i64* noundef %p.0.lcssa, i64 noundef %and9) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.then6, %while.end
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.then6, %if.end14
  %retval.0 = phi i64 [ 0, %if.end14 ], [ %nr.addr.0.lcssa, %if.then6 ], [ %nr.addr.039, %while.body ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @bitmap_clear_ll(i64* noundef %map, i64 noundef %start, i64 noundef %nr) unnamed_addr #0 {
entry:
  %div = lshr i64 %start, 6
  %add.ptr = getelementptr i64, i64* %map, i64 %div
  %add = add i64 %start, %nr
  %0 = and i64 %start, 63
  %conv = sub nuw nsw i64 64, %0
  %shl = shl nsw i64 -1, %0
  %cmp.not38 = icmp ugt i64 %conv, %nr
  br i1 %cmp.not38, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %mask_to_clear.042 = phi i64 [ -1, %if.end ], [ %shl, %entry ]
  %bits_to_clear.041 = phi i64 [ 64, %if.end ], [ %conv, %entry ]
  %p.040 = phi i64* [ %incdec.ptr, %if.end ], [ %add.ptr, %entry ]
  %nr.addr.039 = phi i64 [ %sub4, %if.end ], [ %nr, %entry ]
  %call = call fastcc i32 @clear_bits_ll(i64* noundef %p.040, i64 noundef %mask_to_clear.042) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %while.body
  %sub4 = sub i64 %nr.addr.039, %bits_to_clear.041
  %incdec.ptr = getelementptr i64, i64* %p.040, i64 1
  %cmp.not = icmp ult i64 %sub4, 64
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %nr.addr.0.lcssa = phi i64 [ %nr, %entry ], [ %sub4, %if.end ]
  %p.0.lcssa = phi i64* [ %add.ptr, %entry ], [ %incdec.ptr, %if.end ]
  %mask_to_clear.0.lcssa = phi i64 [ %shl, %entry ], [ -1, %if.end ]
  %tobool5.not = icmp eq i64 %nr.addr.0.lcssa, 0
  br i1 %tobool5.not, label %if.end14, label %if.then6

if.then6:                                         ; preds = %while.end
  %sub7 = sub i64 0, %add
  %and8 = and i64 %sub7, 63
  %shr = lshr i64 -1, %and8
  %and9 = and i64 %mask_to_clear.0.lcssa, %shr
  %call10 = call fastcc i32 @clear_bits_ll(i64* noundef %p.0.lcssa, i64 noundef %and9) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.then6, %while.end
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.then6, %if.end14
  %retval.0 = phi i64 [ 0, %if.end14 ], [ %nr.addr.0.lcssa, %if.then6 ], [ %nr.addr.039, %while.body ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @gen_pool_dma_alloc(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma) local_unnamed_addr #0 {
entry:
  %algo = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 3
  %0 = load i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)*, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)** %algo, align 8
  %data = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 4
  %1 = load i8*, i8** %data, align 8
  %call = call i8* @gen_pool_dma_alloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %0, i8* noundef %1) #9
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @gen_pool_dma_alloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef writeonly %dma, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* nocapture noundef readonly %algo, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.gen_pool* %pool, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @gen_pool_alloc_algo(%struct.gen_pool* noundef nonnull %pool, i64 noundef %size, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %algo, i8* noundef %data) #9
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq i64* %dma, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = call i64 @gen_pool_virt_to_phys(%struct.gen_pool* noundef nonnull %pool, i64 noundef %call) #9
  store i64 %call6, i64* %dma, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %0 = inttoptr i64 %call to i8*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i8* [ %0, %if.end7 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @gen_pool_alloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* nocapture noundef readonly %algo, i8* noundef %data) unnamed_addr #0 {
entry:
  %call = call i64 @gen_pool_alloc_algo_owner(%struct.gen_pool* noundef %pool, i64 noundef %size, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %algo, i8* noundef %data, i8** noundef null) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @gen_pool_dma_alloc_align(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i32 noundef %align) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.genpool_data_align, align 4
  %0 = bitcast %struct.genpool_data_align* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %align1 = getelementptr inbounds %struct.genpool_data_align, %struct.genpool_data_align* %data, i64 0, i32 0
  store i32 %align, i32* %align1, align 4
  %call = call i8* @gen_pool_dma_alloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef nonnull @gen_pool_first_fit_align, i8* noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_first_fit_align(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i8* nocapture noundef readonly %data, %struct.gen_pool* nocapture noundef readonly %pool, i64 noundef %start_addr) #0 {
entry:
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 2
  %0 = load i32, i32* %min_alloc_order, align 8
  %align = bitcast i8* %data to i32*
  %1 = load i32, i32* %align, align 4
  %conv = sext i32 %1 to i64
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %shl
  %shr = lshr i64 %sub, %sh_prom
  %sub2 = add i64 %shr, -1
  %sub4 = add i32 %1, -1
  %conv5 = sext i32 %sub4 to i64
  %and = and i64 %conv5, %start_addr
  %shr7 = lshr i64 %and, %sh_prom
  %call = call i64 @bitmap_find_next_zero_area_off(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef %sub2, i64 noundef %shr7) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @gen_pool_dma_zalloc(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma) local_unnamed_addr #0 {
entry:
  %algo = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 3
  %0 = load i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)*, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)** %algo, align 8
  %data = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 4
  %1 = load i8*, i8** %data, align 8
  %call = call i8* @gen_pool_dma_zalloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %0, i8* noundef %1) #9
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @gen_pool_dma_zalloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* nocapture noundef readonly %algo, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = call i8* @gen_pool_dma_alloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %algo, i8* noundef %data) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef %size) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @gen_pool_dma_zalloc_align(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i32 noundef %align) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.genpool_data_align, align 4
  %0 = bitcast %struct.genpool_data_align* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %align1 = getelementptr inbounds %struct.genpool_data_align, %struct.genpool_data_align* %data, i64 0, i32 0
  store i32 %align, i32* %align1, align 4
  %call = call i8* @gen_pool_dma_zalloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64* noundef %dma, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef nonnull @gen_pool_first_fit_align, i8* noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gen_pool_free_owner(%struct.gen_pool* noundef %pool, i64 noundef %addr, i64 noundef %size, i8** noundef writeonly %owner) local_unnamed_addr #0 {
entry:
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 2
  %0 = load i32, i32* %min_alloc_order, align 8
  %tobool.not = icmp eq i8** %owner, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %owner, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add i64 %size, -1
  %sub = add i64 %add, %shl
  %shr = lshr i64 %sub, %sh_prom
  call fastcc void @__rcu_read_lock() #8
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %chunk.0.in.in111 = getelementptr %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %chunk.0.in112 = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in111, align 8
  %cmp.not113 = icmp eq %struct.list_head* %chunk.0.in112, %chunks
  br i1 %cmp.not113, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %chunk.0.in114 = phi %struct.list_head* [ %chunk.0.in, %for.inc ], [ %chunk.0.in112, %if.end ]
  %start_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in114, i64 2, i32 1
  %1 = bitcast %struct.list_head** %start_addr to i64*
  %2 = load i64, i64* %1, align 8
  %cmp7.not = icmp ugt i64 %2, %addr
  br i1 %cmp7.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %end_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in114, i64 3
  %3 = bitcast %struct.list_head* %end_addr to i64*
  %4 = load i64, i64* %3, align 8
  %cmp8.not = icmp ult i64 %4, %addr
  br i1 %cmp8.not, label %for.inc, label %do.body10

do.body10:                                        ; preds = %land.lhs.true
  %sub12 = add i64 %add, %addr
  %cmp14 = icmp ugt i64 %sub12, %4
  br i1 %cmp14, label %do.body18, label %do.end26, !prof !7

do.body18:                                        ; preds = %do.body10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/genalloc.c\22; .popsection; .long 14472b - 14470b; .short 505; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  unreachable

do.end26:                                         ; preds = %do.body10
  %sub28 = sub i64 %addr, %2
  %shr30 = lshr i64 %sub28, %sh_prom
  %bits = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in114, i64 3, i32 1
  %arraydecay = bitcast %struct.list_head** %bits to i64*
  %call = call fastcc i64 @bitmap_clear_ll(i64* noundef %arraydecay, i64 noundef %shr30, i64 noundef %shr) #9
  %tobool32.not = icmp eq i64 %call, 0
  br i1 %tobool32.not, label %do.end49, label %do.body41, !prof !9

do.body41:                                        ; preds = %do.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/genalloc.c\22; .popsection; .long 14472b - 14470b; .short 508; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !12
  unreachable

do.end49:                                         ; preds = %do.end26
  %shl51 = shl i64 %shr, %sh_prom
  %avail = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in114, i64 1
  %5 = bitcast %struct.list_head* %avail to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %shl51, %struct.atomic64_t* noundef %5) #8
  br i1 %tobool.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %do.end49
  %owner54 = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in114, i64 2
  %6 = bitcast %struct.list_head* %owner54 to i8**
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %owner, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.end49
  call fastcc void @rcu_read_unlock() #9
  ret void

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %chunk.0.in.in = getelementptr %struct.list_head, %struct.list_head* %chunk.0.in114, i64 0, i32 0
  %chunk.0.in = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in, align 8
  %cmp.not = icmp eq %struct.list_head* %chunk.0.in, %chunks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  call fastcc void @rcu_read_unlock() #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/genalloc.c\22; .popsection; .long 14472b - 14470b; .short 518; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !13
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gen_pool_for_each_chunk(%struct.gen_pool* noundef %pool, void (%struct.gen_pool*, %struct.gen_pool_chunk*, i8*)* nocapture noundef readonly %func, i8* noundef %data) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #8
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %chunk.0.in.in25 = getelementptr %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %chunk.0.in26 = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in25, align 8
  %cmp.not27 = icmp eq %struct.list_head* %chunk.0.in26, %chunks
  br i1 %cmp.not27, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %chunk.0.in28 = phi %struct.list_head* [ %chunk.0.in, %for.body ], [ %chunk.0.in26, %entry ]
  %chunk.0 = bitcast %struct.list_head* %chunk.0.in28 to %struct.gen_pool_chunk*
  call void %func(%struct.gen_pool* noundef %pool, %struct.gen_pool_chunk* noundef %chunk.0, i8* noundef %data) #8
  %chunk.0.in.in = getelementptr %struct.list_head, %struct.list_head* %chunk.0.in28, i64 0, i32 0
  %chunk.0.in = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in, align 8
  %cmp.not = icmp eq %struct.list_head* %chunk.0.in, %chunks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @rcu_read_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @gen_pool_has_addr(%struct.gen_pool* noundef %pool, i64 noundef %start, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %add = add i64 %start, -1
  %sub = add i64 %add, %size
  call fastcc void @__rcu_read_lock() #8
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %chunk.0.in.in35 = getelementptr %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %chunk.0.in36 = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in35, align 8
  %cmp.not37 = icmp eq %struct.list_head* %chunk.0.in36, %chunks
  br i1 %cmp.not37, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %chunk.0.in38 = phi %struct.list_head* [ %chunk.0.in, %for.inc ], [ %chunk.0.in36, %entry ]
  %start_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in38, i64 2, i32 1
  %0 = bitcast %struct.list_head** %start_addr to i64*
  %1 = load i64, i64* %0, align 8
  %cmp6.not = icmp ugt i64 %1, %start
  br i1 %cmp6.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %end_addr = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in38, i64 3
  %2 = bitcast %struct.list_head* %end_addr to i64*
  %3 = load i64, i64* %2, align 8
  %cmp7.not = icmp ult i64 %3, %start
  %cmp9.not = icmp ugt i64 %sub, %3
  %or.cond = or i1 %cmp7.not, %cmp9.not
  br i1 %or.cond, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %chunk.0.in.in = getelementptr %struct.list_head, %struct.list_head* %chunk.0.in38, i64 0, i32 0
  %chunk.0.in = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in, align 8
  %cmp.not = icmp eq %struct.list_head* %chunk.0.in, %chunks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %land.lhs.true, %entry
  %cmp.not.lcssa = phi i1 [ false, %entry ], [ true, %land.lhs.true ], [ false, %for.inc ]
  call fastcc void @rcu_read_unlock() #9
  ret i1 %cmp.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_avail(%struct.gen_pool* noundef %pool) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #8
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %chunk.0.in.in27 = getelementptr %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %chunk.0.in28 = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in27, align 8
  %cmp.not29 = icmp eq %struct.list_head* %chunk.0.in28, %chunks
  br i1 %cmp.not29, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %chunk.0.in31 = phi %struct.list_head* [ %chunk.0.in, %for.body ], [ %chunk.0.in28, %entry ]
  %avail.030 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %avail6 = getelementptr inbounds %struct.list_head, %struct.list_head* %chunk.0.in31, i64 1
  %counter.i.i = bitcast %struct.list_head* %avail6 to i64*
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %add = add i64 %0, %avail.030
  %chunk.0.in.in = getelementptr %struct.list_head, %struct.list_head* %chunk.0.in31, i64 0, i32 0
  %chunk.0.in = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in, align 8
  %cmp.not = icmp eq %struct.list_head* %chunk.0.in, %chunks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %avail.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call fastcc void @rcu_read_unlock() #9
  ret i64 %avail.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_size(%struct.gen_pool* noundef %pool) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #8
  %chunks = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 1
  %chunk.0.in.in26 = getelementptr %struct.list_head, %struct.list_head* %chunks, i64 0, i32 0
  %chunk.0.in27 = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in26, align 8
  %cmp.not28 = icmp eq %struct.list_head* %chunk.0.in27, %chunks
  br i1 %cmp.not28, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %chunk.0.in30 = phi %struct.list_head* [ %chunk.0.in, %for.body ], [ %chunk.0.in27, %entry ]
  %size.029 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %chunk.0 = bitcast %struct.list_head* %chunk.0.in30 to %struct.gen_pool_chunk*
  %call = call fastcc i64 @chunk_size(%struct.gen_pool_chunk* noundef %chunk.0) #9
  %add = add i64 %call, %size.029
  %chunk.0.in.in = getelementptr %struct.list_head, %struct.list_head* %chunk.0.in30, i64 0, i32 0
  %chunk.0.in = load volatile %struct.list_head*, %struct.list_head** %chunk.0.in.in, align 8
  %cmp.not = icmp eq %struct.list_head* %chunk.0.in, %chunks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %size.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call fastcc void @rcu_read_unlock() #9
  ret i64 %size.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gen_pool_set_algo(%struct.gen_pool* nocapture noundef writeonly %pool, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %algo, i8* noundef %data) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #8
  %tobool.not = icmp eq i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* %algo, null
  %spec.select = select i1 %tobool.not, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* @gen_pool_first_fit, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* %algo
  %algo1 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 3
  store i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* %spec.select, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)** %algo1, align 8
  %data4 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 4
  store i8* %data, i8** %data4, align 8
  call fastcc void @rcu_read_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @bitmap_find_next_zero_area(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef %align_mask) unnamed_addr #0 {
entry:
  %call = call i64 @bitmap_find_next_zero_area_off(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef %align_mask, i64 noundef 0) #8
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @bitmap_find_next_zero_area_off(i64* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_fixed_alloc(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i8* nocapture noundef readonly %data, %struct.gen_pool* nocapture noundef readonly %pool, i64 noundef %start_addr) local_unnamed_addr #0 {
entry:
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 2
  %0 = load i32, i32* %min_alloc_order, align 8
  %offset = bitcast i8* %data to i64*
  %1 = load i64, i64* %offset, align 8
  %sh_prom = zext i32 %0 to i64
  %shr = lshr i64 %1, %sh_prom
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %1, %sub
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/genalloc.c\22; .popsection; .long 14472b - 14470b; .short 706; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !14
  br label %cleanup

if.end19:                                         ; preds = %entry
  %add = add i64 %shr, %start
  %call = call fastcc i64 @bitmap_find_next_zero_area(i64* noundef %map, i64 noundef %size, i64 noundef %add, i32 noundef %nr, i64 noundef 0) #9
  %cmp.not = icmp eq i64 %call, %shr
  %spec.select = select i1 %cmp.not, i64 %call, i64 %size
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  %retval.0 = phi i64 [ %spec.select, %if.end19 ], [ %size, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_first_fit_order_align(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i8* nocapture noundef readnone %data, %struct.gen_pool* nocapture noundef readnone %pool, i64 noundef %start_addr) local_unnamed_addr #0 {
entry:
  %conv16 = zext i32 %nr to i64
  %call17 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv16) #11
  %sub20 = add i64 %call17, -1
  %call21 = call fastcc i64 @bitmap_find_next_zero_area(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef %sub20) #9
  ret i64 %call21
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #6 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #9
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @gen_pool_best_fit(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i8* nocapture noundef readnone %data, %struct.gen_pool* nocapture noundef readnone %pool, i64 noundef %start_addr) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @bitmap_find_next_zero_area(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef 0) #9
  %cmp43 = icmp ult i64 %call, %size
  br i1 %cmp43, label %while.body.lr.ph, label %cleanup13

while.body.lr.ph:                                 ; preds = %entry
  %add = add i64 %size, 1
  %conv = zext i32 %nr to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %index.046 = phi i64 [ %call, %while.body.lr.ph ], [ %call12, %cleanup ]
  %len.045 = phi i64 [ %add, %while.body.lr.ph ], [ %len.1, %cleanup ]
  %start_bit.044 = phi i64 [ %size, %while.body.lr.ph ], [ %start_bit.1, %cleanup ]
  %add1 = add i64 %index.046, %conv
  %call2 = call fastcc i64 @find_next_bit(i64* noundef %map, i64 noundef %size, i64 noundef %add1) #9
  %sub = sub i64 %call2, %index.046
  %cmp3 = icmp ult i64 %sub, %len.045
  br i1 %cmp3, label %if.then, label %cleanup

if.then:                                          ; preds = %while.body
  %cmp7 = icmp eq i64 %sub, %conv
  br i1 %cmp7, label %cleanup13, label %cleanup

cleanup:                                          ; preds = %while.body, %if.then
  %start_bit.1 = phi i64 [ %index.046, %if.then ], [ %start_bit.044, %while.body ]
  %len.1 = phi i64 [ %sub, %if.then ], [ %len.045, %while.body ]
  %add11 = add i64 %call2, 1
  %call12 = call fastcc i64 @bitmap_find_next_zero_area(i64* noundef %map, i64 noundef %size, i64 noundef %add11, i32 noundef %nr, i64 noundef 0) #9
  %cmp = icmp ult i64 %call12, %size
  br i1 %cmp, label %while.body, label %cleanup13

cleanup13:                                        ; preds = %cleanup, %if.then, %entry
  %retval.2 = phi i64 [ %size, %entry ], [ %index.046, %if.then ], [ %start_bit.1, %cleanup ]
  ret i64 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.gen_pool* @gen_pool_get(%struct.device* noundef %dev, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call i8* @devres_find(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_gen_pool_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_gen_pool_match, i8* noundef %name) #8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.gen_pool**
  %1 = load %struct.gen_pool*, %struct.gen_pool** %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.gen_pool* [ %1, %if.end ], [ null, %entry ]
  ret %struct.gen_pool* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @devres_find(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_gen_pool_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.gen_pool**
  %1 = load %struct.gen_pool*, %struct.gen_pool** %0, align 8
  call void @gen_pool_destroy(%struct.gen_pool* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devm_gen_pool_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* noundef %data) #0 {
entry:
  %0 = bitcast i8* %res to %struct.gen_pool**
  %tobool.not = icmp eq i8* %data, null
  %1 = load %struct.gen_pool*, %struct.gen_pool** %0, align 8
  %name = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %1, i64 0, i32 5
  %2 = load i8*, i8** %name, align 8
  %tobool1.not = icmp eq i8* %2, null
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %tobool1.not.mux = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %brmerge, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry
  %call = call i32 @strcmp(i8* noundef nonnull %2, i8* noundef nonnull %data) #8
  %tobool8.not = icmp eq i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0.shrunk = phi i1 [ %tobool8.not, %if.end6 ], [ %tobool1.not.mux, %entry ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.gen_pool* @devm_gen_pool_create(%struct.device* noundef %dev, i32 noundef %min_alloc_order, i32 noundef %nid, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call %struct.gen_pool* @gen_pool_get(%struct.device* noundef %dev, i8* noundef %name) #9
  %tobool.not = icmp eq %struct.gen_pool* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #9
  %0 = bitcast i8* %call1 to %struct.gen_pool*
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i8* %name, null
  br i1 %tobool2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @kstrdup_const(i8* noundef nonnull %name, i32 noundef 3264) #8
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then3
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -12) #9
  %1 = bitcast i8* %call7 to %struct.gen_pool*
  br label %cleanup

if.end9:                                          ; preds = %if.then3, %if.end
  %pool_name.0 = phi i8* [ %call4, %if.then3 ], [ null, %if.end ]
  %call10 = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_gen_pool_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)) #8
  %2 = bitcast i8* %call10 to %struct.gen_pool**
  %tobool11.not = icmp eq i8* %call10, null
  br i1 %tobool11.not, label %free_pool_name, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call %struct.gen_pool* @gen_pool_create(i32 noundef %min_alloc_order, i32 undef) #9
  %tobool15.not = icmp eq %struct.gen_pool* %call14, null
  br i1 %tobool15.not, label %free_devres, label %if.end17

if.end17:                                         ; preds = %if.end13
  store %struct.gen_pool* %call14, %struct.gen_pool** %2, align 8
  %name18 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %call14, i64 0, i32 5
  store i8* %pool_name.0, i8** %name18, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call10) #8
  br label %cleanup

free_devres:                                      ; preds = %if.end13
  call void @devres_free(i8* noundef nonnull %call10) #8
  br label %free_pool_name

free_pool_name:                                   ; preds = %if.end9, %free_devres
  call void @kfree_const(i8* noundef %pool_name.0) #8
  %call19 = call fastcc i8* @ERR_PTR(i64 noundef -12) #9
  %3 = bitcast i8* %call19 to %struct.gen_pool*
  br label %cleanup

cleanup:                                          ; preds = %free_pool_name, %if.end17, %if.then6, %if.then
  %retval.0 = phi %struct.gen_pool* [ %0, %if.then ], [ %call14, %if.end17 ], [ %3, %free_pool_name ], [ %1, %if.then6 ]
  ret %struct.gen_pool* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.gen_pool* @of_gen_pool_get(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %name = alloca i8*, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i8* null, i8** %name, align 8
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %np, i8* noundef %propname, i32 noundef %index) #8
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* noundef nonnull %call) #8
  %tobool2.not = icmp eq %struct.platform_device* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.then13

if.then3:                                         ; preds = %if.end
  %call4 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef nonnull %call) #8
  %call5 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* noundef %call4) #8
  %call6 = call i32 @of_property_read_string(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** noundef nonnull %name) #8
  %1 = load i8*, i8** %name, align 8
  %tobool7.not = icmp eq i8* %1, null
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then3
  %name9 = getelementptr inbounds %struct.device_node, %struct.device_node* %call, i64 0, i32 0
  %2 = load i8*, i8** %name9, align 8
  store i8* %2, i8** %name, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.then8
  %3 = phi i8* [ %1, %if.then3 ], [ %2, %if.then8 ]
  %tobool12.not = icmp eq %struct.platform_device* %call5, null
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end, %if.end11
  %4 = phi i8* [ %3, %if.end11 ], [ null, %if.end ]
  %pdev.034 = phi %struct.platform_device* [ %call5, %if.end11 ], [ %call1, %if.end ]
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev.034, i64 0, i32 3
  %call14 = call %struct.gen_pool* @gen_pool_get(%struct.device* noundef %dev, i8* noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then13, %entry
  %retval.0 = phi %struct.gen_pool* [ null, %entry ], [ %call14, %if.then13 ], [ null, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.gen_pool* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(%struct.device_node* noundef, i8* noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #10, !srcloc !17
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  call void @rcu_read_unlock_strict() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @set_bits_ll(i64* noundef %addr, i64 noundef %mask_to_set) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %addr, align 8
  %1 = bitcast i64* %addr to i8*
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %nval.0 = phi i64 [ %0, %entry ], [ %call14.i, %if.end ]
  %and = and i64 %nval.0, %mask_to_set
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %do.body
  call fastcc void @cpu_relax() #9
  %or = or i64 %nval.0, %mask_to_set
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %nval.0, i64 noundef %or) #8
  %cmp.not = icmp eq i64 %call14.i, %nval.0
  br i1 %cmp.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -16, %do.body ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #10, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #10, !srcloc !23
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clear_bits_ll(i64* noundef %addr, i64 noundef %mask_to_clear) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %addr, align 8
  %1 = bitcast i64* %addr to i8*
  %neg = xor i64 %mask_to_clear, -1
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %nval.0 = phi i64 [ %0, %entry ], [ %call14.i, %if.end ]
  %and = and i64 %nval.0, %mask_to_clear
  %cmp.not = icmp eq i64 %and, %mask_to_clear
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %do.body
  call fastcc void @cpu_relax() #9
  %and1 = and i64 %nval.0, %neg
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %nval.0, i64 noundef %and1) #8
  %cmp3.not = icmp eq i64 %call14.i, %nval.0
  br i1 %cmp3.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -16, %do.body ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_sub(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Jr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #6 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #10, !range !26
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{i64 2152406050}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152445399}
!11 = !{i64 2152485464}
!12 = !{i64 2152486792}
!13 = !{i64 2152492091}
!14 = !{i64 2152646689}
!15 = !{i64 2149479681}
!16 = !{i64 2148007793, i64 2148007826, i64 2148007879, i64 2148007938, i64 2148007972, i64 2148008027, i64 2148008056, i64 2148008076}
!17 = !{i64 2150612620}
!18 = !{i64 2149486962}
!19 = !{i64 2149279192}
!20 = !{i64 2149945111}
!21 = !{i64 2149945328}
!22 = !{i64 1813677}
!23 = !{i64 2148022590, i64 2148022623, i64 2148022674, i64 2148022730, i64 2148022763, i64 2148022818, i64 2148022847, i64 2148022874}
!24 = !{i64 2147962289, i64 2147962803, i64 2147962833, i64 2147962859, i64 2147962891, i64 2147962920}
!25 = !{i64 2147948556, i64 2147949070, i64 2147949100, i64 2147949126, i64 2147949158, i64 2147949187}
!26 = !{i64 0, i64 65}
