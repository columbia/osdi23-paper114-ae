; ModuleID = 'drivers/base/swnode.c'
source_filename = "drivers/base/swnode.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_swnode__205_1173_software_node_init2:\09\09\09"
module asm ".long\09software_node_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.ida = type { %struct.xarray }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, {}*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.software_node = type { i8*, %struct.software_node*, %struct.property_entry* }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.43 }
%union.anon.43 = type { i8* }
%struct.swnode = type { %struct.kobject, %struct.fwnode_handle, %struct.software_node*, i32, %struct.ida, %struct.list_head, %struct.list_head, %struct.swnode*, i8 }
%struct.software_node_ref_args = type { %struct.software_node*, i32, [8 x i64] }

@swnode_kset = internal unnamed_addr global %struct.kset* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"software_node\00", align 1
@__UNIQUE_ID___addressable_software_node_init206 = internal global i8* bitcast (i32 ()* @software_node_init to i8*), section ".discard.addressable", align 8
@swnode_root_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@__exitcall_software_node_exit = internal global void ()* @software_node_exit, section ".exitcall.exit", align 8
@software_node_ops = internal constant { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* } { %struct.fwnode_handle* (%struct.fwnode_handle*)* @software_node_get, void (%struct.fwnode_handle*)* @software_node_put, i1 (%struct.fwnode_handle*)* null, i8* (%struct.fwnode_handle*, %struct.device*)* null, i1 (%struct.fwnode_handle*, i8*)* @software_node_property_present, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* @software_node_read_int_array, i32 (%struct.fwnode_handle*, i8*, i8**, i64)* @software_node_read_string_array, i8* (%struct.fwnode_handle*)* @software_node_get_name, i8* (%struct.fwnode_handle*)* @software_node_get_name_prefix, %struct.fwnode_handle* (%struct.fwnode_handle*)* @software_node_get_parent, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @software_node_get_next_child, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* @software_node_get_named_child_node, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @software_node_get_reference_args, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @software_node_graph_get_next_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @software_node_graph_get_remote_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @software_node_graph_get_port_parent, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* @software_node_graph_parse_endpoint, i32 (%struct.fwnode_handle*)* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"port@\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@software_node_type = internal global %struct.kobj_type { void (%struct.kobject*)* @software_node_release, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"node%d\00", align 1
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"software_nodes\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_software_node_init206 to i8*), i8* bitcast (void ()** @__exitcall_software_node_exit to i8*), i8* bitcast (void ()* @software_node_exit to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #12
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, bitcast ({ %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }* @software_node_ops to %struct.fwnode_operations*)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.software_node* @to_software_node(%struct.fwnode_handle* noundef readonly %fwnode) local_unnamed_addr #0 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr11 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %tobool.not12 = icmp ne %struct.fwnode_handle* %add.ptr11, null
  %0 = and i1 %tobool.not12, %call
  br i1 %0, label %cond.true2, label %cond.end4

cond.true2:                                       ; preds = %entry
  %node = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1
  %1 = bitcast %struct.fwnode_handle* %node to %struct.software_node**
  %2 = load %struct.software_node*, %struct.software_node** %1, align 8
  br label %cond.end4

cond.end4:                                        ; preds = %entry, %cond.true2
  %cond5 = phi %struct.software_node* [ %2, %cond.true2 ], [ null, %entry ]
  ret %struct.software_node* %cond5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @software_node_fwnode(%struct.software_node* noundef %node) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef %node) #12
  %tobool.not = icmp eq %struct.swnode* %call, null
  %fwnode = getelementptr inbounds %struct.swnode, %struct.swnode* %call, i64 0, i32 1
  %cond = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef readnone %node) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.software_node* %node, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.kset*, %struct.kset** @swnode_kset, align 8
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %1 = load i8**, i8*** bitcast (%struct.kset** @swnode_kset to i8***), align 8
  %.pn36 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn36 to i8**
  %cmp.not37 = icmp eq i8** %1, %2
  br i1 %cmp.not37, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %if.end12
  %.pn38 = phi i8* [ %.pn, %if.end12 ], [ %.pn36, %if.end ]
  %node9 = getelementptr i8, i8* %.pn38, i64 120
  %3 = bitcast i8* %node9 to %struct.software_node**
  %4 = load %struct.software_node*, %struct.software_node** %3, align 8
  %cmp10 = icmp eq %struct.software_node* %4, %node
  br i1 %cmp10, label %for.end.split.loop.exit, label %if.end12

if.end12:                                         ; preds = %for.body
  %5 = bitcast i8* %.pn38 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to i8**
  %cmp.not = icmp eq i8** %1, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end.split.loop.exit:                          ; preds = %for.body
  %k.0.in.le = getelementptr i8, i8* %.pn38, i64 -8
  %7 = bitcast i8* %k.0.in.le to %struct.swnode*
  br label %for.end

for.end:                                          ; preds = %if.end12, %if.end, %for.end.split.loop.exit
  %swnode.1 = phi %struct.swnode* [ %7, %for.end.split.loop.exit ], [ null, %if.end ], [ null, %if.end12 ]
  %rlock.i32 = getelementptr inbounds i8*, i8** %1, i64 2
  %8 = bitcast i8** %rlock.i32 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi %struct.swnode* [ %swnode.1, %for.end ], [ null, %entry ]
  ret %struct.swnode* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.property_entry* @property_entries_dup(%struct.property_entry* noundef %properties) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.property_entry* %properties, null
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %n.0 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %idxprom = sext i32 %n.0 to i64
  %name = getelementptr %struct.property_entry, %struct.property_entry* %properties, i64 %idxprom, i32 0
  %0 = load i8*, i8** %name, align 8
  %tobool1.not = icmp eq i8* %0, null
  %inc = add i32 %n.0, 1
  br i1 %tobool1.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %conv = sext i32 %inc to i64
  %call = call fastcc i8* @kcalloc(i64 noundef %conv) #12
  %1 = bitcast i8* %call to %struct.property_entry*
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %cleanup.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end
  %cmp49 = icmp sgt i32 %n.0, 0
  br i1 %cmp49, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx8 = getelementptr %struct.property_entry, %struct.property_entry* %1, i64 %indvars.iv
  %arrayidx10 = getelementptr %struct.property_entry, %struct.property_entry* %properties, i64 %indvars.iv
  %call11 = call fastcc i32 @property_entry_copy_data(%struct.property_entry* noundef %arrayidx8, %struct.property_entry* noundef %arrayidx10) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %while.cond14.preheader

while.cond14.preheader:                           ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32
  %cmp1552.not = icmp eq i32 %2, 0
  br i1 %cmp1552.not, label %while.end20, label %while.body17

while.body17:                                     ; preds = %while.cond14.preheader, %while.body17
  %dec53.in = phi i32 [ %dec53, %while.body17 ], [ %2, %while.cond14.preheader ]
  %dec53 = add nsw i32 %dec53.in, -1
  %idxprom1847 = zext i32 %dec53 to i64
  %arrayidx19 = getelementptr %struct.property_entry, %struct.property_entry* %1, i64 %idxprom1847
  call fastcc void @property_entry_free_data(%struct.property_entry* noundef %arrayidx19) #12
  %cmp15 = icmp sgt i32 %dec53.in, 1
  br i1 %cmp15, label %while.body17, label %while.end20

while.end20:                                      ; preds = %while.body17, %while.cond14.preheader
  call void @kfree(i8* noundef nonnull %call) #13
  %conv21 = sext i32 %call11 to i64
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup.sink.split:                               ; preds = %while.end, %while.end20
  %conv21.sink = phi i64 [ %conv21, %while.end20 ], [ -12, %while.end ]
  %call22 = call fastcc i8* @ERR_PTR(i64 noundef %conv21.sink) #12
  %3 = bitcast i8* %call22 to %struct.property_entry*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %cleanup.sink.split, %for.cond.preheader, %entry
  %retval.0 = phi %struct.property_entry* [ null, %entry ], [ %1, %for.cond.preheader ], [ %3, %cleanup.sink.split ], [ %1, %for.inc ]
  ret %struct.property_entry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #12
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @property_entry_copy_data(%struct.property_entry* noundef %dst, %struct.property_entry* noundef %src) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @property_get_pointer(%struct.property_entry* noundef %src) #12
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %src, i64 0, i32 2
  %0 = load i8, i8* %is_inline, align 8, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %src, i64 0, i32 1
  %1 = load i64, i64* %length, align 8
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.property_entry, %struct.property_entry* %src, i64 0, i32 3
  br label %if.end6

if.end.thread:                                    ; preds = %entry
  %type74 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %src, i64 0, i32 3
  %2 = load i32, i32* %type74, align 4
  %cmp75 = icmp eq i32 %2, 5
  br i1 %cmp75, label %cleanup, label %if.end.thread.if.end6_crit_edge

if.end.thread.if.end6_crit_edge:                  ; preds = %if.end.thread
  %length7.phi.trans.insert = getelementptr inbounds %struct.property_entry, %struct.property_entry* %src, i64 0, i32 1
  %.pre = load i64, i64* %length7.phi.trans.insert, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end.thread.if.end6_crit_edge, %if.end
  %3 = phi i64 [ %.pre, %if.end.thread.if.end6_crit_edge ], [ %1, %if.end ]
  %type76 = phi i32* [ %type74, %if.end.thread.if.end6_crit_edge ], [ %type, %if.end ]
  %length7 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %src, i64 0, i32 1
  %cmp8 = icmp ult i64 %3, 9
  br i1 %cmp8, label %if.then9, label %if.end9.i

if.then9:                                         ; preds = %if.end6
  %4 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 4
  %5 = bitcast %union.anon.43* %4 to i8*
  %is_inline10 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 2
  store i8 1, i8* %is_inline10, align 8
  br label %if.end17

if.end9.i:                                        ; preds = %if.end6
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %3, i32 noundef 3264) #13
  %tobool13.not = icmp eq i8* %call10.i, null
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end9.i
  %pointer16 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 4, i32 0
  store i8* %call10.i, i8** %pointer16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then9
  %dst_ptr.0 = phi i8* [ %5, %if.then9 ], [ %call10.i, %if.end15 ]
  %6 = load i32, i32* %type76, align 4
  %cmp19 = icmp eq i32 %6, 4
  %7 = load i64, i64* %length7, align 8
  br i1 %cmp19, label %if.then20, label %if.else30

if.then20:                                        ; preds = %if.end17
  %div = lshr i64 %7, 3
  %8 = bitcast i8* %dst_ptr.0 to i8**
  %9 = bitcast i8* %call to i8**
  %call22 = call fastcc i1 @property_copy_string_array(i8** noundef %8, i8** noundef %9, i64 noundef %div) #12
  br i1 %call22, label %if.end33, label %if.then23

if.then23:                                        ; preds = %if.then20
  %is_inline24 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 2
  %10 = load i8, i8* %is_inline24, align 8, !range !7
  %tobool25.not = icmp eq i8 %10, 0
  br i1 %tobool25.not, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.then23
  %pointer27 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 4, i32 0
  %11 = load i8*, i8** %pointer27, align 8
  call void @kfree(i8* noundef %11) #13
  br label %cleanup

if.else30:                                        ; preds = %if.end17
  %call32 = call i8* @memcpy(i8* noundef %dst_ptr.0, i8* noundef %call, i64 noundef %7) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %if.else30
  %12 = load i64, i64* %length7, align 8
  %length35 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 1
  store i64 %12, i64* %length35, align 8
  %13 = load i32, i32* %type76, align 4
  %type37 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 3
  store i32 %13, i32* %type37, align 4
  %name = getelementptr inbounds %struct.property_entry, %struct.property_entry* %src, i64 0, i32 0
  %14 = load i8*, i8** %name, align 8
  %call38 = call noalias i8* @kstrdup(i8* noundef %14, i32 noundef 3264) #13
  %name39 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %dst, i64 0, i32 0
  store i8* %call38, i8** %name39, align 8
  %tobool41.not = icmp eq i8* %call38, null
  br i1 %tobool41.not, label %if.then42, label %cleanup

if.then42:                                        ; preds = %if.end33
  call fastcc void @property_entry_free_data(%struct.property_entry* noundef %dst) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.thread, %if.end33, %if.then23, %if.then26, %if.end9.i, %land.lhs.true, %if.then42
  %retval.0 = phi i32 [ -12, %if.then42 ], [ -61, %land.lhs.true ], [ -12, %if.end9.i ], [ -12, %if.then26 ], [ -12, %if.then23 ], [ 0, %if.end33 ], [ -22, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @property_entry_free_data(%struct.property_entry* noundef readonly %p) unnamed_addr #3 {
entry:
  %type = getelementptr inbounds %struct.property_entry, %struct.property_entry* %p, i64 0, i32 3
  %0 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @property_get_pointer(%struct.property_entry* noundef %p) #12
  %1 = bitcast i8* %call to i8**
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %p, i64 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp114.not = icmp ult i64 %2, 8
  br i1 %cmp114.not, label %if.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %div = lshr i64 %2, 3
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.015 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8*, i8** %1, i64 %i.015
  %3 = load i8*, i8** %arrayidx, align 8
  call void @kfree(i8* noundef %3) #13
  %inc = add nuw nsw i64 %i.015, 1
  %exitcond.not = icmp eq i64 %inc, %div
  br i1 %exitcond.not, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %if.then, %entry
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %p, i64 0, i32 2
  %4 = load i8, i8* %is_inline, align 8, !range !7
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %pointer = getelementptr inbounds %struct.property_entry, %struct.property_entry* %p, i64 0, i32 4, i32 0
  %5 = load i8*, i8** %pointer, align 8
  call void @kfree(i8* noundef %5) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %name = getelementptr inbounds %struct.property_entry, %struct.property_entry* %p, i64 0, i32 0
  %6 = load i8*, i8** %name, align 8
  call void @kfree(i8* noundef %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @property_entries_free(%struct.property_entry* noundef %properties) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.property_entry* %properties, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %name7 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %properties, i64 0, i32 0
  %0 = load i8*, i8** %name7, align 8
  %tobool1.not8 = icmp eq i8* %0, null
  br i1 %tobool1.not8, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %p.09 = phi %struct.property_entry* [ %incdec.ptr, %for.body ], [ %properties, %for.cond.preheader ]
  call fastcc void @property_entry_free_data(%struct.property_entry* noundef %p.09) #12
  %incdec.ptr = getelementptr %struct.property_entry, %struct.property_entry* %p.09, i64 1
  %name = getelementptr inbounds %struct.property_entry, %struct.property_entry* %incdec.ptr, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool1.not = icmp eq i8* %1, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %2 = bitcast %struct.property_entry* %properties to i8*
  call void @kfree(i8* noundef nonnull %2) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.software_node* @software_node_find_by_name(%struct.software_node* noundef readnone %parent, i8* noundef %name) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.kset*, %struct.kset** @swnode_kset, align 8
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %1 = load i8**, i8*** bitcast (%struct.kset** @swnode_kset to i8***), align 8
  %.pn52 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn52 to i8**
  %cmp.not54 = icmp eq i8** %1, %2
  %3 = bitcast i8** %1 to %struct.kset*
  br i1 %cmp.not54, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %if.end20, %if.end
  %4 = phi %struct.kset* [ %3, %if.end ], [ %11, %if.end20 ]
  %rlock.i4649 = getelementptr inbounds %struct.kset, %struct.kset* %4, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i4649) #13
  br label %cleanup

for.body:                                         ; preds = %if.end, %if.end20
  %5 = phi %struct.kset* [ %11, %if.end20 ], [ %3, %if.end ]
  %6 = phi %struct.kset* [ %12, %if.end20 ], [ %3, %if.end ]
  %.pn55 = phi i8* [ %.pn, %if.end20 ], [ %.pn52, %if.end ]
  %node = getelementptr i8, i8* %.pn55, i64 120
  %7 = bitcast i8* %node to %struct.software_node**
  %8 = load %struct.software_node*, %struct.software_node** %7, align 8
  %parent9 = getelementptr inbounds %struct.software_node, %struct.software_node* %8, i64 0, i32 1
  %9 = load %struct.software_node*, %struct.software_node** %parent9, align 8
  %cmp10 = icmp eq %struct.software_node* %9, %parent
  br i1 %cmp10, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.body
  %name12 = getelementptr inbounds %struct.software_node, %struct.software_node* %8, i64 0, i32 0
  %10 = load i8*, i8** %name12, align 8
  %tobool13.not = icmp eq i8* %10, null
  br i1 %tobool13.not, label %if.end20, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true
  %call = call i32 @strcmp(i8* noundef nonnull %name, i8* noundef nonnull %10) #13
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %for.end, label %land.lhs.true14.if.end20_crit_edge

land.lhs.true14.if.end20_crit_edge:               ; preds = %land.lhs.true14
  %.pre = load %struct.kset*, %struct.kset** @swnode_kset, align 8
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true14.if.end20_crit_edge, %land.lhs.true, %for.body
  %11 = phi %struct.kset* [ %.pre, %land.lhs.true14.if.end20_crit_edge ], [ %5, %land.lhs.true ], [ %5, %for.body ]
  %12 = phi %struct.kset* [ %.pre, %land.lhs.true14.if.end20_crit_edge ], [ %6, %land.lhs.true ], [ %6, %for.body ]
  %13 = bitcast i8* %.pn55 to i8**
  %.pn = load i8*, i8** %13, align 8
  %14 = bitcast i8* %.pn to %struct.list_head*
  %list2 = getelementptr inbounds %struct.kset, %struct.kset* %12, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list2, %14
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end:                                          ; preds = %land.lhs.true14
  %k.0.in.le = getelementptr i8, i8* %.pn55, i64 -8
  %kobj = bitcast i8* %k.0.in.le to %struct.kobject*
  %call19 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #13
  %15 = load %struct.kset*, %struct.kset** @swnode_kset, align 8
  %rlock.i46 = getelementptr inbounds %struct.kset, %struct.kset* %15, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i46) #13
  %tobool30.not = icmp eq i8* %k.0.in.le, null
  br i1 %tobool30.not, label %cleanup, label %cond.true

cond.true:                                        ; preds = %for.end
  %16 = bitcast i8* %node to %struct.software_node**
  %17 = load %struct.software_node*, %struct.software_node** %16, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %cond.true, %for.end, %entry
  %retval.0 = phi %struct.software_node* [ null, %entry ], [ %17, %cond.true ], [ null, %for.end ], [ null, %for.end.thread ]
  ret %struct.software_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @software_node_register_nodes(%struct.software_node* noundef %nodes) local_unnamed_addr #3 {
entry:
  %name28 = getelementptr inbounds %struct.software_node, %struct.software_node* %nodes, i64 0, i32 0
  %0 = load i8*, i8** %name28, align 8
  %tobool.not29 = icmp eq i8* %0, null
  br i1 %tobool.not29, label %cleanup12, label %for.body

for.cond:                                         ; preds = %if.end
  %inc = shl nsw i64 %idxprom31, 32
  %sext = add i64 %inc, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr %struct.software_node, %struct.software_node* %nodes, i64 %idxprom
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %arrayidx, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %cleanup12, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %arrayidx32 = phi %struct.software_node* [ %arrayidx, %for.cond ], [ %nodes, %entry ]
  %idxprom31 = phi i64 [ %idxprom, %for.cond ], [ 0, %entry ]
  %parent3 = getelementptr %struct.software_node, %struct.software_node* %nodes, i64 %idxprom31, i32 1
  %2 = load %struct.software_node*, %struct.software_node** %parent3, align 8
  %tobool4.not = icmp eq %struct.software_node* %2, null
  br i1 %tobool4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call = call fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef nonnull %2) #12
  %tobool5.not = icmp eq %struct.swnode* %call, null
  br i1 %tobool5.not, label %err_unregister_nodes, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call8 = call i32 @software_node_register(%struct.software_node* noundef %arrayidx32) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond, label %err_unregister_nodes

err_unregister_nodes:                             ; preds = %land.lhs.true, %if.end
  %ret.0.ph = phi i32 [ %call8, %if.end ], [ -22, %land.lhs.true ]
  call void @software_node_unregister_nodes(%struct.software_node* noundef %nodes) #12
  br label %cleanup12

cleanup12:                                        ; preds = %for.cond, %entry, %err_unregister_nodes
  %retval.0 = phi i32 [ %ret.0.ph, %err_unregister_nodes ], [ 0, %entry ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @software_node_register(%struct.software_node* noundef %node) local_unnamed_addr #3 {
entry:
  %parent1 = getelementptr inbounds %struct.software_node, %struct.software_node* %node, i64 0, i32 1
  %0 = load %struct.software_node*, %struct.software_node** %parent1, align 8
  %call = call fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef %0) #12
  %call2 = call fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef %node) #12
  %tobool.not = icmp eq %struct.swnode* %call2, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.software_node*, %struct.software_node** %parent1, align 8
  %tobool4 = icmp eq %struct.software_node* %1, null
  %tobool5 = icmp ne %struct.swnode* %call, null
  %or.cond = select i1 %tobool4, i1 true, i1 %tobool5
  br i1 %or.cond, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc %struct.fwnode_handle* @swnode_register(%struct.software_node* noundef %node, %struct.swnode* noundef %call, i32 noundef 0) #12
  %2 = bitcast %struct.fwnode_handle* %call8 to i8*
  %call9 = call fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -17, %entry ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @software_node_unregister_nodes(%struct.software_node* noundef %nodes) local_unnamed_addr #3 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %idxprom = zext i32 %i.0 to i64
  %name = getelementptr %struct.software_node, %struct.software_node* %nodes, i64 %idxprom, i32 0
  %0 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %0, null
  %inc = add i32 %i.0, 1
  br i1 %tobool.not, label %while.cond1.preheader, label %while.cond

while.cond1.preheader:                            ; preds = %while.cond
  %tobool2.not13 = icmp eq i32 %i.0, 0
  br i1 %tobool2.not13, label %while.end6, label %while.body3.preheader

while.body3.preheader:                            ; preds = %while.cond1.preheader
  %idxprom.le = zext i32 %i.0 to i64
  br label %while.body3

while.body3:                                      ; preds = %while.body3.preheader, %while.body3
  %indvars.iv = phi i64 [ %1, %while.body3 ], [ %idxprom.le, %while.body3.preheader ]
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx5 = getelementptr %struct.software_node, %struct.software_node* %nodes, i64 %1
  call void @software_node_unregister(%struct.software_node* noundef %arrayidx5) #12
  %tobool2.not.wide = icmp eq i64 %1, 0
  br i1 %tobool2.not.wide, label %while.end6, label %while.body3

while.end6:                                       ; preds = %while.body3, %while.cond1.preheader
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @software_node_unregister(%struct.software_node* noundef %node) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef %node) #12
  %tobool.not = icmp eq %struct.swnode* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fwnode = getelementptr inbounds %struct.swnode, %struct.swnode* %call, i64 0, i32 1
  call void @fwnode_remove_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @software_node_register_node_group(%struct.software_node** noundef %node_group) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.software_node** %node_group, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load %struct.software_node*, %struct.software_node** %node_group, align 8
  %tobool1.not16 = icmp eq %struct.software_node* %0, null
  br i1 %tobool1.not16, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %idxprom = zext i32 %inc to i64
  %arrayidx = getelementptr %struct.software_node*, %struct.software_node** %node_group, i64 %idxprom
  %1 = load %struct.software_node*, %struct.software_node** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.software_node* %1, null
  br i1 %tobool1.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %2 = phi %struct.software_node* [ %1, %for.cond ], [ %0, %for.cond.preheader ]
  %i.017 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call = call i32 @software_node_register(%struct.software_node* noundef nonnull %2) #12
  %tobool4.not = icmp eq i32 %call, 0
  %inc = add i32 %i.017, 1
  br i1 %tobool4.not, label %for.cond, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @software_node_unregister_node_group(%struct.software_node** noundef nonnull %node_group) #12
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %entry, %if.then5
  %retval.0 = phi i32 [ %call, %if.then5 ], [ 0, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @software_node_unregister_node_group(%struct.software_node** noundef readonly %node_group) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.software_node** %node_group, null
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %i.0 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %idxprom = zext i32 %i.0 to i64
  %arrayidx = getelementptr %struct.software_node*, %struct.software_node** %node_group, i64 %idxprom
  %0 = load %struct.software_node*, %struct.software_node** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.software_node* %0, null
  %inc = add i32 %i.0, 1
  br i1 %tobool1.not, label %while.cond2.preheader, label %while.cond

while.cond2.preheader:                            ; preds = %while.cond
  %tobool3.not15 = icmp eq i32 %i.0, 0
  br i1 %tobool3.not15, label %cleanup, label %while.body4.preheader

while.body4.preheader:                            ; preds = %while.cond2.preheader
  %idxprom.le = zext i32 %i.0 to i64
  br label %while.body4

while.body4:                                      ; preds = %while.body4.preheader, %while.body4
  %indvars.iv = phi i64 [ %1, %while.body4 ], [ %idxprom.le, %while.body4.preheader ]
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx6 = getelementptr %struct.software_node*, %struct.software_node** %node_group, i64 %1
  %2 = load %struct.software_node*, %struct.software_node** %arrayidx6, align 8
  call void @software_node_unregister(%struct.software_node* noundef %2) #12
  %tobool3.not.wide = icmp eq i64 %1, 0
  br i1 %tobool3.not.wide, label %cleanup, label %while.body4

cleanup:                                          ; preds = %while.body4, %while.cond2.preheader, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @IS_ERR(i8* noundef %ptr) #12
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %ptr) #12
  %conv = trunc i64 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fwnode_handle* @swnode_register(%struct.software_node* noundef %node, %struct.swnode* noundef %parent, i32 noundef %allocated) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 208) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  %0 = bitcast i8* %call1 to %struct.fwnode_handle*
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.swnode* %parent, null
  %child_ids = getelementptr inbounds %struct.swnode, %struct.swnode* %parent, i64 0, i32 4
  %cond = select i1 %tobool2.not, %struct.ida* @swnode_root_ids, %struct.ida* %child_ids
  %call3 = call i32 @ida_alloc_range(%struct.ida* noundef %cond, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #13
  %conv = sext i32 %call3 to i64
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #12
  %1 = bitcast i8* %call5 to %struct.fwnode_handle*
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %id = getelementptr inbounds i8, i8* %call, i64 136
  %2 = bitcast i8* %id to i32*
  store i32 %call3, i32* %2, align 8
  %node7 = getelementptr inbounds i8, i8* %call, i64 128
  %3 = bitcast i8* %node7 to %struct.software_node**
  store %struct.software_node* %node, %struct.software_node** %3, align 8
  %parent8 = getelementptr inbounds i8, i8* %call, i64 192
  %4 = bitcast i8* %parent8 to %struct.swnode**
  store %struct.swnode* %parent, %struct.swnode** %4, align 8
  %5 = load %struct.kset*, %struct.kset** @swnode_kset, align 8
  %kobj = bitcast i8* %call to %struct.kobject*
  %kset = getelementptr inbounds i8, i8* %call, i64 32
  %6 = bitcast i8* %kset to %struct.kset**
  store %struct.kset* %5, %struct.kset** %6, align 8
  %fwnode = getelementptr inbounds i8, i8* %call, i64 64
  %7 = bitcast i8* %fwnode to %struct.fwnode_handle*
  call fastcc void @fwnode_init(%struct.fwnode_handle* noundef %7) #12
  %child_ids9 = getelementptr inbounds i8, i8* %call, i64 144
  %8 = bitcast i8* %child_ids9 to %struct.ida*
  call fastcc void @ida_init(%struct.ida* noundef %8) #12
  %entry10 = getelementptr inbounds i8, i8* %call, i64 160
  %9 = bitcast i8* %entry10 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %9) #12
  %children = getelementptr inbounds i8, i8* %call, i64 176
  %10 = bitcast i8* %children to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %10) #12
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %node, i64 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %tobool11.not = icmp eq i8* %11, null
  %kobj25 = getelementptr %struct.swnode, %struct.swnode* %parent, i64 0, i32 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end6
  %call21 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* noundef nonnull %kobj, %struct.kobj_type* noundef nonnull @software_node_type, %struct.kobject* noundef %kobj25, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %11) #13
  br label %if.end31

if.else:                                          ; preds = %if.end6
  %12 = load i32, i32* %2, align 8
  %call30 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* noundef nonnull %kobj, %struct.kobj_type* noundef nonnull @software_node_type, %struct.kobject* noundef %kobj25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 noundef %12) #13
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then12
  %ret.0 = phi i32 [ %call21, %if.then12 ], [ %call30, %if.else ]
  %tobool32.not = icmp eq i32 %ret.0, 0
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @kobject_put(%struct.kobject* noundef nonnull %kobj) #13
  %conv35 = sext i32 %ret.0 to i64
  %call36 = call fastcc i8* @ERR_PTR(i64 noundef %conv35) #12
  %13 = bitcast i8* %call36 to %struct.fwnode_handle*
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %14 = getelementptr inbounds i8, i8* %call, i64 200
  %15 = trunc i32 %allocated to i8
  %bf.load = load i8, i8* %14, align 8
  %bf.value = and i8 %15, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %14, align 8
  br i1 %tobool2.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end37
  %children42 = getelementptr inbounds %struct.swnode, %struct.swnode* %parent, i64 0, i32 6
  call fastcc void @list_add_tail(%struct.list_head* noundef %9, %struct.list_head* noundef %children42) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37
  %call45 = call i32 @kobject_uevent(%struct.kobject* noundef nonnull %kobj, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then33, %if.then4, %if.then
  %retval.0 = phi %struct.fwnode_handle* [ %1, %if.then4 ], [ %13, %if.then33 ], [ %7, %if.end43 ], [ %0, %if.then ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fwnode_remove_software_node(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr7 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %tobool.not8 = icmp ne %struct.fwnode_handle* %add.ptr7, null
  %0 = and i1 %tobool.not8, %call
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %kobj = bitcast %struct.fwnode_handle* %add.ptr7 to %struct.kobject*
  call void @kobject_put(%struct.kobject* noundef nonnull %kobj) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry* noundef %properties, %struct.fwnode_handle* noundef %parent) local_unnamed_addr #3 {
entry:
  %0 = bitcast %struct.fwnode_handle* %parent to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %0) #12
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i1 @is_software_node(%struct.fwnode_handle* noundef %parent) #12
  %add.ptr43 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %parent, i64 -1
  %1 = bitcast %struct.fwnode_handle* %add.ptr43 to %struct.swnode*
  %cond = select i1 %call2, %struct.swnode* %1, %struct.swnode* null
  %tobool = icmp eq %struct.fwnode_handle* %parent, null
  %tobool4 = icmp ne %struct.swnode* %cond, null
  %or.cond = or i1 %tobool, %tobool4
  br i1 %or.cond, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -22) #12
  %2 = bitcast i8* %call6 to %struct.fwnode_handle*
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc %struct.software_node* @software_node_alloc(%struct.property_entry* noundef %properties) #12
  %3 = bitcast %struct.software_node* %call8 to i8*
  %call9 = call fastcc i1 @IS_ERR(i8* noundef %3) #12
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %4 = bitcast %struct.software_node* %call8 to %struct.fwnode_handle*
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  br i1 %tobool4, label %cond.true14, label %cond.end17

cond.true14:                                      ; preds = %if.end12
  %node15 = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 2
  %5 = load %struct.software_node*, %struct.software_node** %node15, align 8
  br label %cond.end17

cond.end17:                                       ; preds = %if.end12, %cond.true14
  %cond18 = phi %struct.software_node* [ %5, %cond.true14 ], [ null, %if.end12 ]
  %parent19 = getelementptr inbounds %struct.software_node, %struct.software_node* %call8, i64 0, i32 1
  store %struct.software_node* %cond18, %struct.software_node** %parent19, align 8
  %call20 = call fastcc %struct.fwnode_handle* @swnode_register(%struct.software_node* noundef %call8, %struct.swnode* noundef %cond, i32 noundef 1) #12
  %6 = bitcast %struct.fwnode_handle* %call20 to i8*
  %call21 = call fastcc i1 @IS_ERR(i8* noundef %6) #12
  br i1 %call21, label %if.then22, label %cleanup

if.then22:                                        ; preds = %cond.end17
  call fastcc void @software_node_free(%struct.software_node* noundef %call8) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end17, %if.then22, %if.then10, %if.then5
  %retval.0 = phi %struct.fwnode_handle* [ %4, %if.then10 ], [ %2, %if.then5 ], [ %call20, %if.then22 ], [ %call20, %cond.end17 ], [ %parent, %entry ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #1 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.software_node* @software_node_alloc(%struct.property_entry* noundef %properties) unnamed_addr #3 {
entry:
  %call = call %struct.property_entry* @property_entries_dup(%struct.property_entry* noundef %properties) #12
  %0 = bitcast %struct.property_entry* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #12
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i8* @kzalloc(i64 noundef 24) #12
  %tobool.not = icmp eq i8* %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @property_entries_free(%struct.property_entry* noundef %call) #12
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %properties7 = getelementptr inbounds i8, i8* %call3, i64 16
  %1 = bitcast i8* %properties7 to %struct.property_entry**
  store %struct.property_entry* %call, %struct.property_entry** %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then4
  %retval.0.in = phi i8* [ %call3, %if.end6 ], [ %call5, %if.then4 ], [ %0, %entry ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.software_node*
  ret %struct.software_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @software_node_free(%struct.software_node* noundef %node) unnamed_addr #3 {
entry:
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %node, i64 0, i32 2
  %0 = load %struct.property_entry*, %struct.property_entry** %properties, align 8
  call void @property_entries_free(%struct.property_entry* noundef %0) #12
  %1 = bitcast %struct.software_node* %node to i8*
  call void @kfree(i8* noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_add_software_node(%struct.device* noundef %dev, %struct.software_node* noundef %node) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.swnode* @dev_to_swnode(%struct.device* noundef %dev) #12
  %tobool.not = icmp eq %struct.swnode* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef %node) #12
  %tobool2.not = icmp eq %struct.swnode* %call1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %call1, i64 0, i32 0
  %call4 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #13
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call5 = call i32 @software_node_register(%struct.software_node* noundef %node) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.else
  %call9 = call fastcc %struct.swnode* @software_node_to_swnode(%struct.software_node* noundef %node) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.then3
  %swnode.0 = phi %struct.swnode* [ %call1, %if.then3 ], [ %call9, %if.end8 ]
  %fwnode = getelementptr inbounds %struct.swnode, %struct.swnode* %swnode.0, i64 0, i32 1
  call void @set_secondary_fwnode(%struct.device* noundef %dev, %struct.fwnode_handle* noundef %fwnode) #13
  %call11 = call fastcc i32 @device_is_registered(%struct.device* noundef %dev) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @software_node_notify(%struct.device* noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then13, %if.else, %entry
  %retval.0 = phi i32 [ -16, %entry ], [ %call5, %if.else ], [ 0, %if.then13 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.swnode* @dev_to_swnode(%struct.device* noundef %dev) unnamed_addr #3 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #13
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i1 @is_software_node(%struct.fwnode_handle* noundef nonnull %call) #12
  br i1 %call1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %secondary = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %call, i64 0, i32 0
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %secondary, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %fwnode.0 = phi %struct.fwnode_handle* [ %call, %if.end ], [ %0, %if.then2 ]
  %call4 = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode.0) #12
  %add.ptr13 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode.0, i64 -1
  %1 = bitcast %struct.fwnode_handle* %add.ptr13 to %struct.swnode*
  %cond = select i1 %call4, %struct.swnode* %1, %struct.swnode* null
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi %struct.swnode* [ %cond, %if.end3 ], [ null, %entry ]
  ret %struct.swnode* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_secondary_fwnode(%struct.device* noundef, %struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @device_is_registered(%struct.device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %state_in_sysfs = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @software_node_notify(%struct.device* noundef %dev) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.swnode* @dev_to_swnode(%struct.device* noundef %dev) #12
  %tobool.not = icmp eq %struct.swnode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %kobj1 = getelementptr inbounds %struct.swnode, %struct.swnode* %call, i64 0, i32 0
  %call2 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call8 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #12
  %call9 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj1, %struct.kobject* noundef %kobj, i8* noundef %call8) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end5
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call15 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13, %if.then11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_remove_software_node(%struct.device* noundef %dev) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.swnode* @dev_to_swnode(%struct.device* noundef %dev) #12
  %tobool.not = icmp eq %struct.swnode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @device_is_registered(%struct.device* noundef %dev) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @software_node_notify_remove(%struct.device* noundef %dev) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @set_secondary_fwnode(%struct.device* noundef %dev, %struct.fwnode_handle* noundef null) #13
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %call, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @software_node_notify_remove(%struct.device* noundef %dev) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.swnode* @dev_to_swnode(%struct.device* noundef %dev) #12
  %tobool.not = icmp eq %struct.swnode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %call, i64 0, i32 0
  %call1 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #12
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef %call1) #13
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #13
  call void @kobject_put(%struct.kobject* noundef %kobj) #13
  %managed = getelementptr inbounds %struct.swnode, %struct.swnode* %call, i64 0, i32 8
  %bf.load = load i8, i8* %managed, align 8
  %0 = and i8 %bf.load, 2
  %tobool4.not = icmp eq i8 %0, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @set_secondary_fwnode(%struct.device* noundef %dev, %struct.fwnode_handle* noundef null) #13
  call void @kobject_put(%struct.kobject* noundef %kobj) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_create_managed_software_node(%struct.device* noundef %dev, %struct.property_entry* noundef %properties, %struct.software_node* noundef %parent) local_unnamed_addr #3 {
entry:
  %call = call %struct.fwnode_handle* @software_node_fwnode(%struct.software_node* noundef %parent) #12
  %tobool = icmp eq %struct.software_node* %parent, null
  %tobool1 = icmp ne %struct.fwnode_handle* %call, null
  %or.cond = select i1 %tobool, i1 true, i1 %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry* noundef %properties, %struct.fwnode_handle* noundef %call) #12
  %0 = bitcast %struct.fwnode_handle* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %0) #12
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %0) #12
  %conv = trunc i64 %call5 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i1 @is_software_node(%struct.fwnode_handle* noundef %call2) #12
  %add.ptr27 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %call2, i64 -1
  %1 = bitcast %struct.fwnode_handle* %add.ptr27 to %struct.swnode*
  %cond = select i1 %call7, %struct.swnode* %1, %struct.swnode* null
  %managed = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 8
  %bf.load = load i8, i8* %managed, align 8
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %managed, align 8
  call void @set_secondary_fwnode(%struct.device* noundef %dev, %struct.fwnode_handle* noundef %call2) #13
  %call10 = call fastcc i32 @device_is_registered(%struct.device* noundef %dev) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end6
  call void @software_node_notify(%struct.device* noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then12, %entry, %if.then4
  %retval.0 = phi i32 [ %conv, %if.then4 ], [ -22, %entry ], [ 0, %if.then12 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @software_node_init() #5 section ".init.text" {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @kernel_kobj, align 8
  %call = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.kset_uevent_ops* noundef null, %struct.kobject* noundef %0) #13
  store %struct.kset* %call, %struct.kset** @swnode_kset, align 8
  %tobool.not = icmp eq %struct.kset* %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal void @software_node_exit() #5 section ".exit.text" {
entry:
  call void @ida_destroy(%struct.ida* noundef nonnull @swnode_root_ids) #13
  %0 = load %struct.kset*, %struct.kset** @swnode_kset, align 8
  call void @kset_unregister(%struct.kset* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(%struct.ida* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(%struct.kset* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #3 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 32)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @property_get_pointer(%struct.property_entry* noundef readonly %prop) unnamed_addr #0 {
entry:
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %prop, i64 0, i32 1
  %0 = load i64, i64* %length, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %prop, i64 0, i32 2
  %1 = load i8, i8* %is_inline, align 8, !range !7
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %2 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %prop, i64 0, i32 4
  %3 = bitcast %union.anon.43* %2 to i8*
  br label %return

cond.false:                                       ; preds = %if.end
  %pointer = getelementptr inbounds %struct.property_entry, %struct.property_entry* %prop, i64 0, i32 4, i32 0
  %4 = load i8*, i8** %pointer, align 8
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %3, %cond.true ], [ %4, %cond.false ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @property_copy_string_array(i8** nocapture noundef %dst_ptr, i8** nocapture noundef readonly %src_ptr, i64 noundef %nval) unnamed_addr #3 {
entry:
  %cmp29.not = icmp eq i64 %nval, 0
  br i1 %cmp29.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %conv32 = phi i64 [ %conv, %for.inc ], [ 0, %entry ]
  %i.030 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr i8*, i8** %src_ptr, i64 %conv32
  %0 = load i8*, i8** %arrayidx, align 8
  %call = call noalias i8* @kstrdup(i8* noundef %0, i32 noundef 3264) #13
  %arrayidx3 = getelementptr i8*, i8** %dst_ptr, i64 %conv32
  store i8* %call, i8** %arrayidx3, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool8.not = icmp eq i8* %1, null
  br i1 %tobool8.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true
  %dec34 = add i32 %i.030, -1
  %cmp935 = icmp sgt i32 %dec34, -1
  br i1 %cmp935, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %dec36 = phi i32 [ %dec, %while.body ], [ %dec34, %while.cond.preheader ]
  %idxprom1124 = zext i32 %dec36 to i64
  %arrayidx12 = getelementptr i8*, i8** %dst_ptr, i64 %idxprom1124
  %2 = load i8*, i8** %arrayidx12, align 8
  call void @kfree(i8* noundef %2) #13
  %dec = add nsw i32 %dec36, -1
  %cmp9 = icmp sgt i32 %dec36, 0
  br i1 %cmp9, label %while.body, label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add i32 %i.030, 1
  %conv = sext i32 %inc to i64
  %cmp = icmp ult i64 %conv, %nval
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %while.body, %entry, %while.cond.preheader
  %cmp27 = phi i1 [ false, %while.cond.preheader ], [ true, %entry ], [ false, %while.body ], [ true, %for.inc ]
  ret i1 %cmp27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @software_node_get(%struct.fwnode_handle* noundef %fwnode) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr9 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr9 to %struct.swnode*
  %cond = select i1 %call, %struct.swnode* %0, %struct.swnode* null
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 0
  %call2 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #13
  %fwnode3 = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 1
  ret %struct.fwnode_handle* %fwnode3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @software_node_put(%struct.fwnode_handle* noundef %fwnode) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr6 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr6 to %struct.swnode*
  %cond = select i1 %call, %struct.swnode* %0, %struct.swnode* null
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @software_node_property_present(%struct.fwnode_handle* noundef readonly %fwnode, i8* noundef %propname) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr8 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr8 to %struct.swnode*
  %cond = select i1 %call, %struct.swnode* %0, %struct.swnode* null
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 2
  %1 = load %struct.software_node*, %struct.software_node** %node, align 8
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %1, i64 0, i32 2
  %2 = load %struct.property_entry*, %struct.property_entry** %properties, align 8
  %call2 = call fastcc %struct.property_entry* @property_entry_get(%struct.property_entry* noundef %2, i8* noundef %propname) #12
  %tobool = icmp ne %struct.property_entry* %call2, null
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @software_node_read_int_array(%struct.fwnode_handle* noundef readonly %fwnode, i8* noundef %propname, i32 noundef %elem_size, i8* noundef %val, i64 noundef %nval) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr7 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr7 to %struct.swnode*
  %cond = select i1 %call, %struct.swnode* %0, %struct.swnode* null
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 2
  %1 = load %struct.software_node*, %struct.software_node** %node, align 8
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %1, i64 0, i32 2
  %2 = load %struct.property_entry*, %struct.property_entry** %properties, align 8
  %call2 = call fastcc i32 @property_entry_read_int_array(%struct.property_entry* noundef %2, i8* noundef %propname, i32 noundef %elem_size, i8* noundef %val, i64 noundef %nval) #12
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @software_node_read_string_array(%struct.fwnode_handle* noundef readonly %fwnode, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr7 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr7 to %struct.swnode*
  %cond = select i1 %call, %struct.swnode* %0, %struct.swnode* null
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 2
  %1 = load %struct.software_node*, %struct.software_node** %node, align 8
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %1, i64 0, i32 2
  %2 = load %struct.property_entry*, %struct.property_entry** %properties, align 8
  %call2 = call fastcc i32 @property_entry_read_string_array(%struct.property_entry* noundef %2, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) #12
  ret i32 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i8* @software_node_get_name(%struct.fwnode_handle* noundef readonly %fwnode) #0 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr8 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %tobool.not9 = icmp ne %struct.fwnode_handle* %add.ptr8, null
  %0 = and i1 %tobool.not9, %call
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %kobj = bitcast %struct.fwnode_handle* %add.ptr8 to %struct.kobject*
  %call2 = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %kobj) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call2, %if.end ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @software_node_get_name_prefix(%struct.fwnode_handle* noundef %fwnode) #3 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* noundef %fwnode) #13
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call112 = call i1 @is_software_node(%struct.fwnode_handle* noundef nonnull %call) #12
  br i1 %call112, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %parent.013 = phi %struct.fwnode_handle* [ %call2, %while.body ], [ %call, %while.cond.preheader ]
  %call2 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef %parent.013) #13
  %call1 = call i1 @is_software_node(%struct.fwnode_handle* noundef %call2) #12
  br i1 %call1, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %parent.0.lcssa = phi %struct.fwnode_handle* [ %call, %while.cond.preheader ], [ %call2, %while.body ]
  %call3 = call i8* @fwnode_get_name_prefix(%struct.fwnode_handle* noundef %parent.0.lcssa) #13
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %parent.0.lcssa) #13
  %tobool4.not = icmp eq i8* %call3, null
  %. = select i1 %tobool4.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %call3
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i8* [ %., %while.end ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @software_node_get_parent(%struct.fwnode_handle* noundef readonly %fwnode) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr12 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %tobool.not13 = icmp ne %struct.fwnode_handle* %add.ptr12, null
  %0 = and i1 %tobool.not13, %call
  br i1 %0, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parent = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 2
  %1 = bitcast %struct.fwnode_handle* %parent to %struct.swnode**
  %2 = load %struct.swnode*, %struct.swnode** %1, align 8
  %tobool2.not = icmp eq %struct.swnode* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %fwnode4 = getelementptr inbounds %struct.swnode, %struct.swnode* %2, i64 0, i32 1
  %call5 = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef %fwnode4) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.fwnode_handle* [ %call5, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @software_node_get_next_child(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef %child) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr64 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %call4 = call i1 @is_software_node(%struct.fwnode_handle* noundef %child) #12
  %add.ptr1163 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %child, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr1163 to %struct.swnode*
  %cond14 = select i1 %call4, %struct.swnode* %0, %struct.swnode* null
  %tobool.not65 = icmp ne %struct.fwnode_handle* %add.ptr64, null
  %1 = and i1 %tobool.not65, %call
  br i1 %1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %children = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1, i32 4, i32 1
  %2 = bitcast %struct.list_head** %children to %struct.list_head*
  %call15 = call fastcc i32 @list_empty(%struct.list_head* noundef %2) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %if.then

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %tobool18.not = icmp eq %struct.swnode* %cond14, null
  br i1 %tobool18.not, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false17
  %entry19 = getelementptr inbounds %struct.swnode, %struct.swnode* %cond14, i64 0, i32 5
  %call21 = call fastcc i32 @list_is_last(%struct.list_head* noundef %entry19, %struct.list_head* noundef %2) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then24, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %child) #13
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.swnode, %struct.swnode* %cond14, i64 0, i32 5, i32 0
  br label %if.end40

if.end40:                                         ; preds = %lor.lhs.false17, %if.then24
  %.pn.in.in = phi %struct.list_head** [ %next, %if.then24 ], [ %children, %lor.lhs.false17 ]
  %.pn.in = bitcast %struct.list_head** %.pn.in.in to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %child) #13
  %fwnode41 = getelementptr i8, i8* %.pn, i64 -96
  %3 = bitcast i8* %fwnode41 to %struct.fwnode_handle*
  %call42 = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then
  %retval.0 = phi %struct.fwnode_handle* [ null, %if.then ], [ %call42, %if.end40 ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @software_node_get_named_child_node(%struct.fwnode_handle* noundef %fwnode, i8* noundef %childname) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr44 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %tobool.not45 = icmp ne %struct.fwnode_handle* %add.ptr44, null
  %0 = and i1 %tobool.not45, %call
  br i1 %0, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %children = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1, i32 4, i32 1
  %1 = bitcast %struct.list_head** %children to %struct.list_head*
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %1) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast %struct.list_head** %children to i8**
  %.pn47 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn47 to %struct.list_head**
  %cmp.not48 = icmp eq %struct.list_head** %children, %3
  br i1 %cmp.not48, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn49 = phi i8* [ %.pn, %for.inc ], [ %.pn47, %if.end ]
  %child.0.in = getelementptr i8, i8* %.pn49, i64 -160
  %kobj = bitcast i8* %child.0.in to %struct.kobject*
  %call13 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #12
  %call14 = call i32 @strcmp(i8* noundef %childname, i8* noundef %call13) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  %kobj.le = bitcast i8* %child.0.in to %struct.kobject*
  %call18 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj.le) #13
  %fwnode19 = getelementptr i8, i8* %.pn49, i64 -96
  %4 = bitcast i8* %fwnode19 to %struct.fwnode_handle*
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %5 = bitcast i8* %.pn49 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head**
  %cmp.not = icmp eq %struct.list_head** %children, %6
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %lor.lhs.false, %if.then16
  %retval.0 = phi %struct.fwnode_handle* [ %4, %if.then16 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.inc ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @software_node_get_reference_args(%struct.fwnode_handle* noundef readonly %fwnode, i8* noundef %propname, i8* noundef %nargs_prop, i32 noundef %nargs, i32 noundef %index, %struct.fwnode_reference_args* nocapture noundef writeonly %args) #3 {
entry:
  %nargs_prop_val = alloca i32, align 4
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr79 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast i32* %nargs_prop_val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %nargs_prop_val, align 4, !annotation !9
  %tobool.not80 = icmp ne %struct.fwnode_handle* %add.ptr79, null
  %1 = and i1 %tobool.not80, %call
  br i1 %1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %node = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1
  %2 = bitcast %struct.fwnode_handle* %node to %struct.software_node**
  %3 = load %struct.software_node*, %struct.software_node** %2, align 8
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %3, i64 0, i32 2
  %4 = load %struct.property_entry*, %struct.property_entry** %properties, align 8
  %call2 = call fastcc %struct.property_entry* @property_entry_get(%struct.property_entry* noundef %4, i8* noundef %propname) #12
  %tobool3.not = icmp eq %struct.property_entry* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call2, i64 0, i32 3
  %5 = load i32, i32* %type, align 4
  %cmp.not = icmp eq i32 %5, 5
  br i1 %cmp.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end5
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call2, i64 0, i32 2
  %6 = load i8, i8* %is_inline, align 8, !range !7
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end7
  %conv = zext i32 %index to i64
  %mul = mul nuw nsw i64 %conv, 80
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call2, i64 0, i32 1
  %7 = load i64, i64* %length, align 8
  %cmp11.not = icmp ult i64 %mul, %7
  br i1 %cmp11.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end10
  %pointer = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call2, i64 0, i32 4, i32 0
  %8 = bitcast i8** %pointer to %struct.software_node_ref_args**
  %9 = load %struct.software_node_ref_args*, %struct.software_node_ref_args** %8, align 8
  %node15 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 0
  %10 = load %struct.software_node*, %struct.software_node** %node15, align 8
  %call16 = call %struct.fwnode_handle* @software_node_fwnode(%struct.software_node* noundef %10) #12
  %tobool17.not = icmp eq %struct.fwnode_handle* %call16, null
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end14
  %tobool20.not = icmp eq i8* %nargs_prop, null
  br i1 %tobool20.not, label %if.end28, label %if.then21

if.then21:                                        ; preds = %if.end19
  %11 = load %struct.software_node*, %struct.software_node** %2, align 8
  %properties23 = getelementptr inbounds %struct.software_node, %struct.software_node* %11, i64 0, i32 2
  %12 = load %struct.property_entry*, %struct.property_entry** %properties23, align 8
  %call24 = call fastcc i32 @property_entry_read_int_array(%struct.property_entry* noundef %12, i8* noundef nonnull %nargs_prop, i32 noundef 4, i8* noundef nonnull %0, i64 noundef 1) #12
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.then21
  %13 = load i32, i32* %nargs_prop_val, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end19
  %nargs.addr.0 = phi i32 [ %13, %if.end27 ], [ %nargs, %if.end19 ]
  %cmp29 = icmp ugt i32 %nargs.addr.0, 8
  br i1 %cmp29, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end28
  %call33 = call %struct.fwnode_handle* @software_node_get(%struct.fwnode_handle* noundef nonnull %call16) #12
  %fwnode34 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 0
  store %struct.fwnode_handle* %call33, %struct.fwnode_handle** %fwnode34, align 8
  %nargs35 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 1
  store i32 %nargs.addr.0, i32* %nargs35, align 8
  %cmp3681.not = icmp eq i32 %nargs.addr.0, 0
  br i1 %cmp3681.not, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end32
  %arrayidx40 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 0
  %14 = load i64, i64* %arrayidx40, align 8
  %arrayidx43 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 0
  store i64 %14, i64* %arrayidx43, align 8
  %exitcond.not = icmp eq i32 %nargs.addr.0, 1
  br i1 %exitcond.not, label %cleanup, label %for.body.1

for.body.1:                                       ; preds = %for.body
  %arrayidx40.1 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 1
  %15 = load i64, i64* %arrayidx40.1, align 8
  %arrayidx43.1 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 1
  store i64 %15, i64* %arrayidx43.1, align 8
  %exitcond.not.1 = icmp eq i32 %nargs.addr.0, 2
  br i1 %exitcond.not.1, label %cleanup, label %for.body.2

for.body.2:                                       ; preds = %for.body.1
  %arrayidx40.2 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 2
  %16 = load i64, i64* %arrayidx40.2, align 8
  %arrayidx43.2 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 2
  store i64 %16, i64* %arrayidx43.2, align 8
  %exitcond.not.2 = icmp eq i32 %nargs.addr.0, 3
  br i1 %exitcond.not.2, label %cleanup, label %for.body.3

for.body.3:                                       ; preds = %for.body.2
  %arrayidx40.3 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 3
  %17 = load i64, i64* %arrayidx40.3, align 8
  %arrayidx43.3 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 3
  store i64 %17, i64* %arrayidx43.3, align 8
  %exitcond.not.3 = icmp eq i32 %nargs.addr.0, 4
  br i1 %exitcond.not.3, label %cleanup, label %for.body.4

for.body.4:                                       ; preds = %for.body.3
  %arrayidx40.4 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 4
  %18 = load i64, i64* %arrayidx40.4, align 8
  %arrayidx43.4 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 4
  store i64 %18, i64* %arrayidx43.4, align 8
  %exitcond.not.4 = icmp eq i32 %nargs.addr.0, 5
  br i1 %exitcond.not.4, label %cleanup, label %for.body.5

for.body.5:                                       ; preds = %for.body.4
  %arrayidx40.5 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 5
  %19 = load i64, i64* %arrayidx40.5, align 8
  %arrayidx43.5 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 5
  store i64 %19, i64* %arrayidx43.5, align 8
  %exitcond.not.5 = icmp eq i32 %nargs.addr.0, 6
  br i1 %exitcond.not.5, label %cleanup, label %for.body.6

for.body.6:                                       ; preds = %for.body.5
  %arrayidx40.6 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 6
  %20 = load i64, i64* %arrayidx40.6, align 8
  %arrayidx43.6 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 6
  store i64 %20, i64* %arrayidx43.6, align 8
  %exitcond.not.6 = icmp eq i32 %nargs.addr.0, 7
  br i1 %exitcond.not.6, label %cleanup, label %for.body.7

for.body.7:                                       ; preds = %for.body.6
  %arrayidx40.7 = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %9, i64 %conv, i32 2, i64 7
  %21 = load i64, i64* %arrayidx40.7, align 8
  %arrayidx43.7 = getelementptr %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i64 0, i32 2, i64 7
  store i64 %21, i64* %arrayidx43.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.body.1, %for.body.2, %for.body.3, %for.body.4, %for.body.5, %for.body.6, %for.body.7, %if.end32, %if.end28, %if.then21, %if.end14, %if.end10, %if.end7, %if.end5, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -2, %if.end ], [ -22, %if.end5 ], [ -22, %if.end7 ], [ -2, %if.end10 ], [ -2, %if.end14 ], [ %call24, %if.then21 ], [ -22, %if.end28 ], [ 0, %if.end32 ], [ 0, %for.body.7 ], [ 0, %for.body.6 ], [ 0, %for.body.5 ], [ 0, %for.body.4 ], [ 0, %for.body.3 ], [ 0, %for.body.2 ], [ 0, %for.body.1 ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @software_node_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef %endpoint) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr41 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %tobool.not42 = icmp ne %struct.fwnode_handle* %add.ptr41, null
  %0 = and i1 %tobool.not42, %call
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.fwnode_handle* %endpoint, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call %struct.fwnode_handle* @software_node_get_parent(%struct.fwnode_handle* noundef nonnull %endpoint) #12
  %call5 = call %struct.fwnode_handle* @software_node_get_parent(%struct.fwnode_handle* noundef %call4) #12
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call6 = call %struct.fwnode_handle* @software_node_get_named_child_node(%struct.fwnode_handle* noundef %fwnode, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #12
  %tobool7.not = icmp eq %struct.fwnode_handle* %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.else
  %call10 = call %struct.fwnode_handle* @software_node_get(%struct.fwnode_handle* noundef %fwnode) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else
  %parent.0 = phi %struct.fwnode_handle* [ %call6, %if.else ], [ %call10, %if.then8 ]
  %call12 = call fastcc %struct.fwnode_handle* @swnode_graph_find_next_port(%struct.fwnode_handle* noundef %parent.0, %struct.fwnode_handle* noundef null) #12
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then3
  %parent.1 = phi %struct.fwnode_handle* [ %call5, %if.then3 ], [ %parent.0, %if.end11 ]
  %port.0 = phi %struct.fwnode_handle* [ %call4, %if.then3 ], [ %call12, %if.end11 ]
  %tobool14.not45 = icmp eq %struct.fwnode_handle* %port.0, null
  br i1 %tobool14.not45, label %for.end, label %for.body

for.body:                                         ; preds = %if.end13, %for.inc
  %port.147 = phi %struct.fwnode_handle* [ %call19, %for.inc ], [ %port.0, %if.end13 ]
  %endpoint.addr.046 = phi %struct.fwnode_handle* [ null, %for.inc ], [ %endpoint, %if.end13 ]
  %call15 = call %struct.fwnode_handle* @software_node_get_next_child(%struct.fwnode_handle* noundef nonnull %port.147, %struct.fwnode_handle* noundef %endpoint.addr.046) #12
  %tobool16.not = icmp eq %struct.fwnode_handle* %call15, null
  br i1 %tobool16.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef nonnull %port.147) #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %call19 = call fastcc %struct.fwnode_handle* @swnode_graph_find_next_port(%struct.fwnode_handle* noundef %parent.1, %struct.fwnode_handle* noundef nonnull %port.147) #12
  %tobool14.not = icmp eq %struct.fwnode_handle* %call19, null
  br i1 %tobool14.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end13, %if.then17
  %endpoint.addr.1 = phi %struct.fwnode_handle* [ %call15, %if.then17 ], [ %endpoint, %if.end13 ], [ null, %for.inc ]
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %parent.1) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi %struct.fwnode_handle* [ %endpoint.addr.1, %for.end ], [ null, %entry ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @software_node_graph_get_remote_endpoint(%struct.fwnode_handle* noundef readonly %fwnode) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr23 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %tobool.not24 = icmp ne %struct.fwnode_handle* %add.ptr23, null
  %0 = and i1 %tobool.not24, %call
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %node = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1
  %1 = bitcast %struct.fwnode_handle* %node to %struct.software_node**
  %2 = load %struct.software_node*, %struct.software_node** %1, align 8
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %2, i64 0, i32 2
  %3 = load %struct.property_entry*, %struct.property_entry** %properties, align 8
  %call2 = call fastcc %struct.property_entry* @property_entry_get(%struct.property_entry* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #12
  %tobool3.not = icmp eq %struct.property_entry* %call2, null
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call2, i64 0, i32 3
  %4 = load i32, i32* %type, align 4
  %cmp.not = icmp eq i32 %4, 5
  br i1 %cmp.not, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call2, i64 0, i32 2
  %5 = load i8, i8* %is_inline, align 8, !range !7
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %pointer = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call2, i64 0, i32 4, i32 0
  %6 = bitcast i8** %pointer to %struct.software_node_ref_args**
  %7 = load %struct.software_node_ref_args*, %struct.software_node_ref_args** %6, align 8
  %node8 = getelementptr inbounds %struct.software_node_ref_args, %struct.software_node_ref_args* %7, i64 0, i32 0
  %8 = load %struct.software_node*, %struct.software_node** %node8, align 8
  %call9 = call %struct.fwnode_handle* @software_node_fwnode(%struct.software_node* noundef %8) #12
  %call10 = call %struct.fwnode_handle* @software_node_get(%struct.fwnode_handle* noundef %call9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %lor.lhs.false4, %entry, %if.end7
  %retval.0 = phi %struct.fwnode_handle* [ %call10, %if.end7 ], [ null, %entry ], [ null, %lor.lhs.false4 ], [ null, %lor.lhs.false ], [ null, %if.end ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.fwnode_handle* @software_node_graph_get_port_parent(%struct.fwnode_handle* noundef readonly %fwnode) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr21 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr21 to %struct.swnode*
  %cond = select i1 %call, %struct.swnode* %0, %struct.swnode* null
  %parent = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 7
  %1 = load %struct.swnode*, %struct.swnode** %parent, align 8
  %tobool.not = icmp eq %struct.swnode* %1, null
  br i1 %tobool.not, label %cond.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %1, i64 0, i32 2
  %2 = load %struct.software_node*, %struct.software_node** %node, align 8
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %2, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %cond.true6

if.end:                                           ; preds = %land.lhs.true
  %parent4 = getelementptr inbounds %struct.swnode, %struct.swnode* %1, i64 0, i32 7
  %4 = load %struct.swnode*, %struct.swnode** %parent4, align 8
  %tobool5.not = icmp eq %struct.swnode* %4, null
  br i1 %tobool5.not, label %cond.end10, label %cond.true6

cond.true6:                                       ; preds = %land.lhs.true, %if.end
  %swnode.027 = phi %struct.swnode* [ %4, %if.end ], [ %1, %land.lhs.true ]
  %fwnode7 = getelementptr inbounds %struct.swnode, %struct.swnode* %swnode.027, i64 0, i32 1
  %call8 = call %struct.fwnode_handle* @software_node_get(%struct.fwnode_handle* noundef %fwnode7) #12
  br label %cond.end10

cond.end10:                                       ; preds = %entry, %if.end, %cond.true6
  %cond11 = phi %struct.fwnode_handle* [ %call8, %cond.true6 ], [ null, %if.end ], [ null, %entry ]
  ret %struct.fwnode_handle* %cond11
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @software_node_graph_parse_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_endpoint* noundef %endpoint) #3 {
entry:
  %call = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr28 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr28 to %struct.swnode*
  %cond = select i1 %call, %struct.swnode* %0, %struct.swnode* null
  %parent = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 7
  %1 = load %struct.swnode*, %struct.swnode** %parent, align 8
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %1, i64 0, i32 2
  %2 = load %struct.software_node*, %struct.software_node** %node, align 8
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %2, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call2 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #13
  %call3 = call i64 @strlen(i8* noundef %3) #13
  %cmp.not = icmp ult i64 %call2, %call3
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call4 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #13
  %call5 = call i32 @strncmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef %call4) #13
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call6 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #13
  %add.ptr7 = getelementptr i8, i8* %3, i64 %call6
  %port = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %endpoint, i64 0, i32 0
  %call8 = call fastcc i32 @kstrtou32(i8* noundef %add.ptr7, i32* noundef %port) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 3
  %4 = load i32, i32* %id, align 8
  %id12 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %endpoint, i64 0, i32 1
  store i32 %4, i32* %id12, align 4
  %local_fwnode = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %endpoint, i64 0, i32 2
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %local_fwnode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.property_entry* @property_entry_get(%struct.property_entry* noundef readonly %prop, i8* noundef %name) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.property_entry* %prop, null
  br i1 %tobool.not, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %name111 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %prop, i64 0, i32 0
  %0 = load i8*, i8** %name111, align 8
  %tobool2.not12 = icmp eq i8* %0, null
  br i1 %tobool2.not12, label %return, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i8* [ %2, %for.inc ], [ %0, %for.cond.preheader ]
  %prop.addr.013 = phi %struct.property_entry* [ %incdec.ptr, %for.inc ], [ %prop, %for.cond.preheader ]
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef nonnull %1) #13
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.property_entry, %struct.property_entry* %prop.addr.013, i64 1
  %name1 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %tobool2.not = icmp eq i8* %2, null
  br i1 %tobool2.not, label %return, label %for.body

return:                                           ; preds = %for.body, %for.inc, %for.cond.preheader, %entry
  %retval.0 = phi %struct.property_entry* [ null, %entry ], [ null, %for.cond.preheader ], [ %prop.addr.013, %for.body ], [ null, %for.inc ]
  ret %struct.property_entry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @property_entry_read_int_array(%struct.property_entry* noundef %props, i8* noundef %name, i32 noundef %elem_size, i8* noundef %val, i64 noundef %nval) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i8* %val, null
  %conv = zext i32 %elem_size to i64
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @property_entry_count_elems_of_size(%struct.property_entry* noundef %props, i8* noundef %name, i64 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @is_power_of_2(i64 noundef %conv) #15
  %cmp = icmp ult i32 %elem_size, 9
  %0 = and i1 %cmp, %call2
  br i1 %0, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %mul = mul i64 %conv, %nval
  %call8 = call fastcc i8* @property_entry_find(%struct.property_entry* noundef %props, i8* noundef %name, i64 noundef %mul) #12
  %call9 = call fastcc i1 @IS_ERR(i8* noundef %call8) #12
  br i1 %call9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %call11 = call fastcc i64 @PTR_ERR(i8* noundef %call8) #12
  %conv12 = trunc i64 %call11 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = call i8* @memcpy(i8* noundef nonnull %val, i8* noundef %call8, i64 noundef %mul) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13, %if.then10, %if.then
  %retval.0 = phi i32 [ %conv12, %if.then10 ], [ 0, %if.end13 ], [ %call, %if.then ], [ -6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @property_entry_count_elems_of_size(%struct.property_entry* noundef %props, i8* noundef %propname, i64 noundef %length) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.property_entry* @property_entry_get(%struct.property_entry* noundef %props, i8* noundef %propname) #12
  %tobool.not = icmp eq %struct.property_entry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %length1 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call, i64 0, i32 1
  %0 = load i64, i64* %length1, align 8
  %div = udiv i64 %0, %length
  %conv = trunc i64 %div to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #7 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !10
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @property_entry_find(%struct.property_entry* noundef %props, i8* noundef %propname, i64 noundef %length) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.property_entry* @property_entry_get(%struct.property_entry* noundef %props, i8* noundef %propname) #12
  %tobool.not = icmp eq %struct.property_entry* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @property_get_pointer(%struct.property_entry* noundef nonnull %call) #12
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %length7 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %call, i64 0, i32 1
  %0 = load i64, i64* %length7, align 8
  %cmp = icmp ult i64 %0, %length
  br i1 %cmp, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end6, %if.end, %entry
  %.sink = phi i64 [ -22, %entry ], [ -61, %if.end ], [ -75, %if.end6 ]
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6
  %retval.0 = phi i8* [ %call2, %if.end6 ], [ %call9, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @property_entry_read_string_array(%struct.property_entry* noundef %props, i8* noundef %propname, i8** noundef %strings, i64 noundef %nval) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @property_entry_count_elems_of_size(%struct.property_entry* noundef %props, i8* noundef %propname, i64 noundef 8) #12
  %cmp = icmp slt i32 %call, 0
  %tobool.not = icmp eq i8** %strings, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  %conv34 = zext i32 %call to i64
  %cmp3 = icmp ugt i64 %conv34, %nval
  %cond = select i1 %cmp3, i64 %nval, i64 %conv34
  %sext = shl nuw nsw i64 %cond, 3
  %call7 = call fastcc i8* @property_entry_find(%struct.property_entry* noundef %props, i8* noundef %propname, i64 noundef %sext) #12
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %call7) #12
  br i1 %call8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end2
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %call7) #12
  %conv11 = trunc i64 %call10 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end2
  %conv5 = trunc i64 %cond to i32
  %0 = bitcast i8** %strings to i8*
  %call13 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %call7, i64 noundef %sext) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then9
  %retval.0 = phi i32 [ %conv11, %if.then9 ], [ %conv5, %if.end12 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #0 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fwnode_get_name_prefix(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @list_is_last(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef readnone %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fwnode_handle* @swnode_graph_find_next_port(%struct.fwnode_handle* noundef %parent, %struct.fwnode_handle* noundef %port) unnamed_addr #3 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %old.0 = phi %struct.fwnode_handle* [ %port, %entry ], [ %call, %while.body ]
  %call = call %struct.fwnode_handle* @software_node_get_next_child(%struct.fwnode_handle* noundef %parent, %struct.fwnode_handle* noundef %old.0) #12
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call i1 @is_software_node(%struct.fwnode_handle* noundef nonnull %call) #12
  %add.ptr13 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %call, i64 -1
  %0 = bitcast %struct.fwnode_handle* %add.ptr13 to %struct.swnode*
  %cond = select i1 %call1, %struct.swnode* %0, %struct.swnode* null
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %cond, i64 0, i32 2
  %1 = load %struct.software_node*, %struct.software_node** %node, align 8
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %1, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call3 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #13
  %call4 = call i32 @strncmp(i8* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef %call3) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %while.cond

cleanup:                                          ; preds = %while.cond, %while.body
  ret %struct.fwnode_handle* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtou32(i8* noundef %s, i32* noundef %res) unnamed_addr #3 {
entry:
  %call = call i32 @kstrtouint(i8* noundef %s, i32 noundef 10, i32* noundef %res) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #3 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #3 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #13
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @fwnode_init(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #9 {
entry:
  %ops1 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  store %struct.fwnode_operations* bitcast ({ %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }* @software_node_ops to %struct.fwnode_operations*), %struct.fwnode_operations** %ops1, align 8
  %consumers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %consumers) #12
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %suppliers) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ida_init(%struct.ida* nocapture noundef writeonly %ida) unnamed_addr #10 {
entry:
  %xa = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0
  call fastcc void @xa_init_flags(%struct.xarray* noundef %xa) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(%struct.kobject* noundef, %struct.kobj_type* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #10 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  store i32 33554437, i32* %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @software_node_release(%struct.kobject* noundef %kobj) #3 {
entry:
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 3
  %0 = bitcast %struct.kobject* %parent to %struct.swnode**
  %1 = load %struct.swnode*, %struct.swnode** %0, align 8
  %tobool.not = icmp eq %struct.swnode* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %child_ids = getelementptr inbounds %struct.swnode, %struct.swnode* %1, i64 0, i32 4
  %id = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 2, i32 1
  %2 = bitcast %struct.list_head* %id to i32*
  %3 = load i32, i32* %2, align 8
  call void @ida_free(%struct.ida* noundef %child_ids, i32 noundef %3) #13
  %entry2 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 2, i32 3
  %4 = bitcast %struct.kset** %entry2 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %4) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %id3 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 2, i32 1
  %5 = bitcast %struct.list_head* %id3 to i32*
  %6 = load i32, i32* %5, align 8
  call void @ida_free(%struct.ida* noundef nonnull @swnode_root_ids, i32 noundef %6) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %allocated = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 3, i32 1
  %7 = bitcast %struct.list_head* %allocated to i8*
  %bf.load = load i8, i8* %7, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool4.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %node = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 2
  %8 = bitcast %struct.kobject* %node to %struct.software_node**
  %9 = load %struct.software_node*, %struct.software_node** %8, align 8
  call fastcc void @software_node_free(%struct.software_node* noundef %9) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = bitcast %struct.kobject* %kobj to i8*
  %child_ids7 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 2, i32 1, i32 1
  %11 = bitcast %struct.list_head** %child_ids7 to %struct.ida*
  call void @ida_destroy(%struct.ida* noundef %11) #13
  call void @kfree(i8* noundef %10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kset* @kset_create_and_add(i8* noundef, %struct.kset_uevent_ops* noundef, %struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 0, i64 65}
!11 = !{i64 2149751180}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148098275, i64 2148098308, i64 2148098361, i64 2148098420, i64 2148098454, i64 2148098509, i64 2148098538, i64 2148098558}
!14 = !{i64 2149758461}
!15 = !{i64 2149705309}
