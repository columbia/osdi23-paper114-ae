; ModuleID = 'drivers/base/transport_class.c'
source_filename = "drivers/base/transport_class.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.transport_class = type { %struct.class, i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type opaque
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.42, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.42 = type { %struct.rb_node, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.transport_container = type { %struct.attribute_container, %struct.attribute_group* }
%struct.attribute_container = type { %struct.list_head, %struct.klist, %struct.class*, %struct.attribute_group*, %struct.device_attribute**, i32 (%struct.attribute_container*, %struct.device*)*, i64 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.anon_transport_class = type { %struct.transport_class, %struct.attribute_container }

@transport_class_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @transport_class_register(%struct.transport_class* noundef %tclass) local_unnamed_addr #0 {
entry:
  %class = getelementptr inbounds %struct.transport_class, %struct.transport_class* %tclass, i64 0, i32 0
  %call = call i32 @__class_register(%struct.class* noundef %class, %struct.lock_class_key* noundef nonnull @transport_class_register.__key) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(%struct.class* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @transport_class_unregister(%struct.transport_class* noundef %tclass) local_unnamed_addr #0 {
entry:
  %class = getelementptr inbounds %struct.transport_class, %struct.transport_class* %tclass, i64 0, i32 0
  call void @class_unregister(%struct.class* noundef %class) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(%struct.class* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @anon_transport_class_register(%struct.anon_transport_class* noundef %atc) local_unnamed_addr #0 {
entry:
  %class = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %atc, i64 0, i32 0, i32 0
  %container = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %atc, i64 0, i32 1
  %class1 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %atc, i64 0, i32 1, i32 2
  store %struct.class* %class, %struct.class** %class1, align 8
  call fastcc void @attribute_container_set_no_classdevs(%struct.attribute_container* noundef %container) #5
  %call = call i32 @attribute_container_register(%struct.attribute_container* noundef %container) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %setup = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %atc, i64 0, i32 0, i32 1
  store i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @anon_transport_dummy_function, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %setup, align 8
  %remove = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %atc, i64 0, i32 0, i32 3
  store i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @anon_transport_dummy_function, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @attribute_container_set_no_classdevs(%struct.attribute_container* nocapture noundef %atc) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %atc, i64 0, i32 6
  %0 = load i64, i64* %flags, align 8
  %or = or i64 %0, 1
  store i64 %or, i64* %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_register(%struct.attribute_container* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @anon_transport_dummy_function(%struct.transport_container* nocapture noundef readnone %tc, %struct.device* nocapture noundef readnone %dev, %struct.device* nocapture noundef readnone %cdev) #3 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @anon_transport_class_unregister(%struct.anon_transport_class* noundef %atc) local_unnamed_addr #0 {
entry:
  %container = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %atc, i64 0, i32 1
  %call = call i32 @attribute_container_unregister(%struct.attribute_container* noundef %container) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body, !prof !7

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/transport_class.c\22; .popsection; .long 14472b - 14470b; .short 116; .short 0; .popsection; 14471: brk 0x800", ""() #6, !srcloc !8
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_unregister(%struct.attribute_container* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @transport_setup_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @attribute_container_add_device(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef nonnull @transport_setup_classdev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_add_device(%struct.device* noundef, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @transport_setup_classdev(%struct.attribute_container* noundef %cont, %struct.device* noundef %dev, %struct.device* noundef %classdev) #0 {
entry:
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 2
  %0 = bitcast %struct.class** %class to %struct.transport_class**
  %1 = load %struct.transport_class*, %struct.transport_class** %0, align 8
  %setup = getelementptr inbounds %struct.transport_class, %struct.transport_class* %1, i64 0, i32 1
  %2 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %setup, align 8
  %tobool.not = icmp eq i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.attribute_container* %cont to %struct.transport_container*
  %call = call i32 %2(%struct.transport_container* noundef %3, %struct.device* noundef %dev, %struct.device* noundef %classdev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @transport_add_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call i32 @attribute_container_device_trigger_safe(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef nonnull @transport_add_class_device, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef nonnull @transport_remove_classdev) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_device_trigger_safe(%struct.device* noundef, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @transport_add_class_device(%struct.attribute_container* nocapture noundef readonly %cont, %struct.device* nocapture noundef readnone %dev, %struct.device* noundef %classdev) #0 {
entry:
  %call = call i32 @attribute_container_add_class_device(%struct.device* noundef %classdev) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %statistics = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 1
  %0 = bitcast %struct.attribute_container* %statistics to %struct.attribute_group**
  %1 = load %struct.attribute_group*, %struct.attribute_group** %0, align 8
  %tobool1.not = icmp eq %struct.attribute_group* %1, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %kobj = getelementptr inbounds %struct.device, %struct.device* %classdev, i64 0, i32 0
  %call3 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %error.0 = phi i32 [ %call, %entry ], [ %call3, %if.then ], [ 0, %land.lhs.true ]
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @transport_remove_classdev(%struct.attribute_container* noundef %cont, %struct.device* noundef %dev, %struct.device* noundef %classdev) #0 {
entry:
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 2
  %0 = bitcast %struct.class** %class to %struct.transport_class**
  %1 = load %struct.transport_class*, %struct.transport_class** %0, align 8
  %remove = getelementptr inbounds %struct.transport_class, %struct.transport_class* %1, i64 0, i32 3
  %2 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove, align 8
  %tobool.not = icmp eq i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %2, null
  br i1 %tobool.not, label %if.then9, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.attribute_container* %cont to %struct.transport_container*
  %call = call i32 %2(%struct.transport_container* noundef %3, %struct.device* noundef %dev, %struct.device* noundef %classdev) #4
  %.pr = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove, align 8
  %cmp.not = icmp eq i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %.pr, @anon_transport_dummy_function
  br i1 %cmp.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %entry, %if.end
  %statistics = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 1
  %4 = bitcast %struct.attribute_container* %statistics to %struct.attribute_group**
  %5 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %tobool10.not = icmp eq %struct.attribute_group* %5, null
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then9
  %kobj = getelementptr inbounds %struct.device, %struct.device* %classdev, i64 0, i32 0
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull %5) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  call void @attribute_container_class_device_del(%struct.device* noundef %classdev) #4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @transport_configure_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @attribute_container_device_trigger(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef nonnull @transport_configure) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_device_trigger(%struct.device* noundef, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @transport_configure(%struct.attribute_container* noundef %cont, %struct.device* noundef %dev, %struct.device* noundef %cdev) #0 {
entry:
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 2
  %0 = bitcast %struct.class** %class to %struct.transport_class**
  %1 = load %struct.transport_class*, %struct.transport_class** %0, align 8
  %configure = getelementptr inbounds %struct.transport_class, %struct.transport_class* %1, i64 0, i32 2
  %2 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %configure, align 8
  %tobool.not = icmp eq i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.attribute_container* %cont to %struct.transport_container*
  %call = call i32 %2(%struct.transport_container* noundef %3, %struct.device* noundef %dev, %struct.device* noundef %cdev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @transport_remove_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @attribute_container_device_trigger(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef nonnull @transport_remove_classdev) #4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @transport_destroy_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @attribute_container_remove_device(%struct.device* noundef %dev, void (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef nonnull @transport_destroy_classdev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_remove_device(%struct.device* noundef, void (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @transport_destroy_classdev(%struct.attribute_container* nocapture noundef readonly %cont, %struct.device* nocapture noundef readnone %dev, %struct.device* noundef %classdev) #0 {
entry:
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 2
  %0 = bitcast %struct.class** %class to %struct.transport_class**
  %1 = load %struct.transport_class*, %struct.transport_class** %0, align 8
  %remove = getelementptr inbounds %struct.transport_class, %struct.transport_class* %1, i64 0, i32 3
  %2 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove, align 8
  %cmp.not = icmp eq i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %2, @anon_transport_dummy_function
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @put_device(%struct.device* noundef %classdev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_add_class_device(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_class_device_del(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2151396760}
