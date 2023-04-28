; ModuleID = 'drivers/clk/clk-bulk.c'
source_filename = "drivers/clk/clk-bulk.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.clk_bulk_data = type { i8*, %struct.clk* }
%struct.clk = type opaque
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

@.str = private unnamed_addr constant [34 x i8] c"\013Failed to prepare clk '%s': %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\013Failed to enable clk '%s': %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to get clk '%s': %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\013%pOF: Failed to get clk index: %d ret: %d\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_bulk_put(i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef %clks) local_unnamed_addr #0 {
entry:
  %dec8 = add i32 %num_clks, -1
  %cmp9 = icmp sgt i32 %dec8, -1
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %dec10 = phi i32 [ %dec, %while.body ], [ %dec8, %entry ]
  %idxprom7 = zext i32 %dec10 to i64
  %clk = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %idxprom7, i32 1
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  call void @clk_put(%struct.clk* noundef %0) #6
  store %struct.clk* null, %struct.clk** %clk, align 8
  %dec = add nsw i32 %dec10, -1
  %cmp = icmp sgt i32 %dec10, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_bulk_get(%struct.device* noundef %dev, i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef %clks) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__clk_bulk_get(%struct.device* noundef %dev, i32 noundef %num_clks, %struct.clk_bulk_data* noundef %clks, i1 noundef false) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__clk_bulk_get(%struct.device* noundef %dev, i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef %clks, i1 noundef %optional) unnamed_addr #0 {
entry:
  %cmp62 = icmp sgt i32 %num_clks, 0
  br i1 %cmp62, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num_clks to i64
  %min.iters.check = icmp eq i32 %num_clks, 1
  br i1 %min.iters.check, label %for.body.preheader82, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967294
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %induction79 = or i64 %index, 1
  %0 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %index, i32 1
  %1 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %induction79, i32 1
  store %struct.clk* null, %struct.clk** %0, align 8
  store %struct.clk* null, %struct.clk** %1, align 8
  %index.next = add nuw i64 %index, 2
  %2 = icmp eq i64 %index.next, %n.vec
  br i1 %2, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond1.preheader, label %for.body.preheader82

for.body.preheader82:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body, %middle.block
  br i1 %cmp62, label %for.body3.preheader, label %cleanup

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %wide.trip.count73 = zext i32 %num_clks to i64
  br label %for.body3

for.body:                                         ; preds = %for.body.preheader82, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader82 ]
  %clk = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv, i32 1
  store %struct.clk* null, %struct.clk** %clk, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body, !llvm.loop !9

for.body3:                                        ; preds = %for.body3.preheader, %for.inc32
  %indvars.iv70 = phi i64 [ 0, %for.body3.preheader ], [ %indvars.iv.next71, %for.inc32 ]
  %id = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv70, i32 0
  %3 = load i8*, i8** %id, align 8
  %call = call %struct.clk* @clk_get(%struct.device* noundef %dev, i8* noundef %3) #6
  %clk8 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv70, i32 1
  store %struct.clk* %call, %struct.clk** %clk8, align 8
  %4 = bitcast %struct.clk* %call to i8*
  %call12 = call fastcc i1 @IS_ERR(i8* noundef %4) #7
  br i1 %call12, label %if.then, label %for.inc32

if.then:                                          ; preds = %for.body3
  %call16 = call fastcc i64 @PTR_ERR(i8* noundef %4) #7
  %conv = trunc i64 %call16 to i32
  store %struct.clk* null, %struct.clk** %clk8, align 8
  %cmp20 = icmp eq i32 %conv, -2
  %5 = and i1 %cmp20, %optional
  br i1 %5, label %for.inc32, label %if.end

if.end:                                           ; preds = %if.then
  %conv.le = trunc i64 %call16 to i32
  %6 = trunc i64 %indvars.iv70 to i32
  %cmp24.not = icmp eq i32 %conv.le, -517
  br i1 %cmp24.not, label %err, label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i8*, i8** %id, align 8
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %7, i32 noundef %conv.le) #8
  br label %err

for.inc32:                                        ; preds = %if.then, %for.body3
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %cleanup, label %for.body3

err:                                              ; preds = %if.end, %do.end
  call void @clk_bulk_put(i32 noundef %6, %struct.clk_bulk_data* noundef %clks) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc32, %entry, %for.cond1.preheader, %err
  %retval.0 = phi i32 [ %conv.le, %err ], [ 0, %for.cond1.preheader ], [ 0, %entry ], [ 0, %for.inc32 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_bulk_get_optional(%struct.device* noundef %dev, i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef %clks) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__clk_bulk_get(%struct.device* noundef %dev, i32 noundef %num_clks, %struct.clk_bulk_data* noundef %clks, i1 noundef true) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_bulk_put_all(i32 noundef %num_clks, %struct.clk_bulk_data* noundef %clks) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.clk_bulk_data* %clks to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #7
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @clk_bulk_put(i32 noundef %num_clks, %struct.clk_bulk_data* noundef %clks) #7
  call void @kfree(i8* noundef %0) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_bulk_get_all(%struct.device* noundef %dev, %struct.clk_bulk_data** nocapture noundef writeonly %clks) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.device_node* @dev_of_node(%struct.device* noundef %dev) #7
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @of_clk_bulk_get_all(%struct.device_node* noundef nonnull %call, %struct.clk_bulk_data** noundef %clks) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device_node* @dev_of_node(%struct.device* noundef readonly %dev) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.device_node* [ %0, %if.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_clk_bulk_get_all(%struct.device_node* noundef %np, %struct.clk_bulk_data** nocapture noundef writeonly %clks) unnamed_addr #0 {
entry:
  %call = call i32 @of_clk_get_parent_count(%struct.device_node* noundef %np) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @kmalloc_array(i64 noundef %conv) #7
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %0 = bitcast i8* %call1 to %struct.clk_bulk_data*
  %call5 = call fastcc i32 @of_clk_bulk_get(%struct.device_node* noundef %np, i32 noundef %call, %struct.clk_bulk_data* noundef nonnull %0) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @kfree(i8* noundef nonnull %call1) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %1 = bitcast %struct.clk_bulk_data** %clks to i8**
  store i8* %call1, i8** %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8, %if.then7
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call, %if.end8 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_bulk_unprepare(i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef readonly %clks) local_unnamed_addr #0 {
entry:
  %dec3 = add i32 %num_clks, -1
  %cmp4 = icmp sgt i32 %dec3, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %dec5 = phi i32 [ %dec, %while.body ], [ %dec3, %entry ]
  %idxprom2 = zext i32 %dec5 to i64
  %clk = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %idxprom2, i32 1
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  call void @clk_unprepare(%struct.clk* noundef %0) #6
  %dec = add nsw i32 %dec5, -1
  %cmp = icmp sgt i32 %dec5, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_bulk_prepare(i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef readonly %clks) local_unnamed_addr #0 {
entry:
  %cmp16 = icmp sgt i32 %num_clks, 0
  br i1 %cmp16, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num_clks to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %clk = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv, i32 1
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  %call = call i32 @clk_prepare(%struct.clk* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i32
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %id = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %idxprom.le, i32 0
  %2 = load i8*, i8** %id, align 8
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %2, i32 noundef %call) #8
  call void @clk_bulk_unprepare(i32 noundef %1, %struct.clk_bulk_data* noundef %clks) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_bulk_disable(i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef readonly %clks) local_unnamed_addr #0 {
entry:
  %dec3 = add i32 %num_clks, -1
  %cmp4 = icmp sgt i32 %dec3, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %dec5 = phi i32 [ %dec, %while.body ], [ %dec3, %entry ]
  %idxprom2 = zext i32 %dec5 to i64
  %clk = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %idxprom2, i32 1
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  call void @clk_disable(%struct.clk* noundef %0) #6
  %dec = add nsw i32 %dec5, -1
  %cmp = icmp sgt i32 %dec5, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_bulk_enable(i32 noundef %num_clks, %struct.clk_bulk_data* nocapture noundef readonly %clks) local_unnamed_addr #0 {
entry:
  %cmp16 = icmp sgt i32 %num_clks, 0
  br i1 %cmp16, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num_clks to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %clk = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv, i32 1
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  %call = call i32 @clk_enable(%struct.clk* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i32
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %id = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %idxprom.le, i32 0
  %2 = load i8*, i8** %id, align 8
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2, i32 noundef %call) #8
  call void @clk_bulk_disable(i32 noundef %1, %struct.clk_bulk_data* noundef %clks) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk* @clk_get(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(%struct.device_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 16)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !10

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_clk_bulk_get(%struct.device_node* noundef %np, i32 noundef %num_clks, %struct.clk_bulk_data* noundef %clks) unnamed_addr #0 {
entry:
  %cmp57 = icmp sgt i32 %num_clks, 0
  br i1 %cmp57, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num_clks to i64
  %min.iters.check = icmp eq i32 %num_clks, 1
  br i1 %min.iters.check, label %for.body.preheader80, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967294
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %induction76 = or i64 %index, 1
  %0 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %index, i32 0
  %1 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %induction76, i32 0
  store i8* null, i8** %0, align 8
  store i8* null, i8** %1, align 8
  %2 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %index, i32 1
  %3 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %induction76, i32 1
  store %struct.clk* null, %struct.clk** %2, align 8
  store %struct.clk* null, %struct.clk** %3, align 8
  %index.next = add nuw i64 %index, 2
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond3.preheader, label %for.body.preheader80

for.body.preheader80:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body, %middle.block
  br i1 %cmp57, label %for.body5.preheader, label %cleanup

for.body5.preheader:                              ; preds = %for.cond3.preheader
  %wide.trip.count67 = zext i32 %num_clks to i64
  br label %for.body5

for.body:                                         ; preds = %for.body.preheader80, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader80 ]
  %id = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv, i32 0
  store i8* null, i8** %id, align 8
  %clk = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv, i32 1
  store %struct.clk* null, %struct.clk** %clk, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !llvm.loop !12

for.body5:                                        ; preds = %for.body5.preheader, %for.inc25
  %indvars.iv64 = phi i64 [ 0, %for.body5.preheader ], [ %indvars.iv.next65, %for.inc25 ]
  %id8 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv64, i32 0
  %5 = trunc i64 %indvars.iv64 to i32
  call fastcc void @of_property_read_string_index(%struct.device_node* noundef %np, i32 noundef %5, i8** noundef %id8) #7
  %call9 = call %struct.clk* @of_clk_get(%struct.device_node* noundef %np, i32 noundef %5) #6
  %clk12 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %clks, i64 %indvars.iv64, i32 1
  store %struct.clk* %call9, %struct.clk** %clk12, align 8
  %6 = bitcast %struct.clk* %call9 to i8*
  %call16 = call fastcc i1 @IS_ERR(i8* noundef %6) #7
  br i1 %call16, label %if.then, label %for.inc25

if.then:                                          ; preds = %for.body5
  %7 = trunc i64 %indvars.iv64 to i32
  %8 = bitcast %struct.clk* %call9 to i8*
  %call20 = call fastcc i64 @PTR_ERR(i8* noundef %8) #7
  %conv = trunc i64 %call20 to i32
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* noundef %np, i32 noundef %7, i32 noundef %conv) #8
  store %struct.clk* null, %struct.clk** %clk12, align 8
  call void @clk_bulk_put(i32 noundef %7, %struct.clk_bulk_data* noundef %clks) #7
  br label %cleanup

for.inc25:                                        ; preds = %for.body5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %cleanup, label %for.body5

cleanup:                                          ; preds = %for.inc25, %entry, %for.cond3.preheader, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %for.cond3.preheader ], [ 0, %entry ], [ 0, %for.inc25 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_property_read_string_index(%struct.device_node* noundef %np, i32 noundef %index, i8** noundef %output) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_string_helper(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** noundef %output, i64 noundef 1, i32 noundef %index) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk* @of_clk_get(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(%struct.device_node* noundef, i8* noundef, i8** noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !8}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
