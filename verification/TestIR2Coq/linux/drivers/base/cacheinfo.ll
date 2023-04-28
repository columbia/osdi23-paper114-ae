; ModuleID = 'drivers/base/cacheinfo.c'
source_filename = "drivers/base/cacheinfo.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_cacheinfo__174_675_cacheinfo_sysfs_init6:\09\09\09"
module asm ".long\09cacheinfo_sysfs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpu_cacheinfo = type { %struct.cacheinfo*, i32, i32, i8 }
%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.cpumask, i32, i8*, i8, i8* }
%struct.cpumask = type { [4 x i64] }
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
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
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
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.cache_type_info = type { i8*, [2 x i8*], i8* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }

@ci_cpu_cacheinfo = internal global %struct.cpu_cacheinfo zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__UNIQUE_ID___addressable_cacheinfo_sysfs_init175 = internal global i8* bitcast (i32 ()* @cacheinfo_sysfs_init to i8*), section ".discard.addressable", align 8
@coherency_max_size = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"base/cacheinfo:online\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\014cacheinfo: Unable to detect cache hierarchy for CPU %d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@of_root = external dso_local local_unnamed_addr global %struct.device_node*, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"\013cacheinfo: No cpu device for CPU %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013cacheinfo: Failed to find cpu%d device node\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cache-unified\00", align 1
@cache_type_info = internal unnamed_addr constant [3 x %struct.cache_type_info] [%struct.cache_type_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)], i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.cache_type_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0)], i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.cache_type_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0)], i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0) }], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"cache-line-size\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"cache-block-size\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cache-sets\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"i-cache-size\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"i-cache-line-size\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"i-cache-block-size\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"i-cache-sets\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"d-cache-size\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"d-cache-line-size\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"d-cache-block-size\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"d-cache-sets\00", align 1
@ci_cache_dev = internal global %struct.device* null, section ".data..percpu", align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"index%1u\00", align 1
@ci_index_dev = internal global %struct.device** null, section ".data..percpu", align 8
@cache_dev_map = internal global %struct.cpumask zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@cache_default_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @cache_default_group, %struct.attribute_group* null], align 8
@cache_private_groups = internal global [3 x %struct.attribute_group*] [%struct.attribute_group* @cache_default_group, %struct.attribute_group* null, %struct.attribute_group* null], align 8
@cache_default_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @cache_default_attrs_is_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([13 x %struct.attribute*], [13 x %struct.attribute*]* @cache_default_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@cache_default_attrs = internal global [13 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_level, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_map, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_list, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_coherency_line_size, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ways_of_associativity, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_number_of_sets, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_size, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_allocation_policy, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_write_policy, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_physical_line_partition, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_level = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @level_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_shared_cpu_map = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @shared_cpu_map_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_shared_cpu_list = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @shared_cpu_list_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_coherency_line_size = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @coherency_line_size_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_ways_of_associativity = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @ways_of_associativity_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_number_of_sets = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @number_of_sets_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @size_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_write_policy = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @write_policy_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_allocation_policy = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @allocation_policy_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_physical_line_partition = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @physical_line_partition_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Unified\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"shared_cpu_map\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"shared_cpu_list\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"coherency_line_size\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"ways_of_associativity\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"number_of_sets\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%uK\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"write_policy\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"WriteThrough\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"WriteBack\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"allocation_policy\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ReadWriteAllocate\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"ReadAllocate\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"WriteAllocate\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"physical_line_partition\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_cacheinfo_sysfs_init175 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %1 = inttoptr i64 %add to %struct.cpu_cacheinfo*
  ret %struct.cpu_cacheinfo* %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @cache_setup_acpi(i32 noundef %cpu) local_unnamed_addr #2 {
entry:
  ret i32 -524
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @init_cache_level(i32 noundef %cpu) local_unnamed_addr #2 {
entry:
  ret i32 -2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @populate_cache_leaves(i32 noundef %cpu) local_unnamed_addr #2 {
entry:
  ret i32 -2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local %struct.attribute_group* @cache_get_priv_group(%struct.cacheinfo* noundef %this_leaf) local_unnamed_addr #2 {
entry:
  ret %struct.attribute_group* null
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @cacheinfo_sysfs_init() #3 section ".init.text" {
entry:
  %call = call fastcc i32 @cpuhp_setup_state() #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #2 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 191, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @cacheinfo_cpu_online, i32 (i32)* noundef nonnull @cacheinfo_cpu_pre_down, i1 noundef false) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cacheinfo_cpu_online(i32 noundef %cpu) #2 {
entry:
  %call = call fastcc i32 @detect_cache_attributes(i32 noundef %cpu) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cache_add_dev(i32 noundef %cpu) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @free_cache_attributes(i32 noundef %cpu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call1, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cacheinfo_cpu_pre_down(i32 noundef %cpu) #2 {
entry:
  %call = call fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %cpu) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @free_cache_attributes(i32 noundef %cpu) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @detect_cache_attributes(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %call = call i32 @init_cache_level(i32 noundef %cpu) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %cleanup

do.body:                                          ; preds = %entry
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %1 = inttoptr i64 %add to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %1, i64 0, i32 2
  %2 = load i32, i32* %num_leaves, align 4
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %cleanup, label %do.body3

do.body3:                                         ; preds = %do.body
  %conv = zext i32 %2 to i64
  %call14 = call fastcc i8* @kcalloc(i64 noundef %conv, i64 noundef 96) #10
  %3 = load i64, i64* %arrayidx, align 8
  %add24 = add i64 %3, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %4 = inttoptr i64 %add24 to i8**
  store i8* %call14, i8** %4, align 8
  %5 = load i64, i64* %arrayidx, align 8
  %add34 = add i64 %5, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %6 = inttoptr i64 %add34 to %struct.cpu_cacheinfo*
  %info_list35 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %6, i64 0, i32 0
  %7 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list35, align 8
  %cmp = icmp eq %struct.cacheinfo* %7, null
  br i1 %cmp, label %cleanup, label %if.end38

if.end38:                                         ; preds = %do.body3
  %call39 = call i32 @populate_cache_leaves(i32 noundef %cpu) #10
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %free_ci

if.end42:                                         ; preds = %if.end38
  %call43 = call fastcc i32 @cache_shared_cpu_map_setup(i32 noundef %cpu) #10
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup, label %do.end48

do.end48:                                         ; preds = %if.end42
  %call50 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 noundef %cpu) #12
  br label %free_ci

free_ci:                                          ; preds = %if.end38, %do.end48
  %ret.0 = phi i32 [ %call39, %if.end38 ], [ %call43, %do.end48 ]
  call fastcc void @free_cache_attributes(i32 noundef %cpu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.body3, %entry, %do.body, %free_ci
  %retval.0 = phi i32 [ %ret.0, %free_ci ], [ -2, %do.body ], [ -2, %entry ], [ -12, %do.body3 ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cache_add_dev(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %cpu) #10
  %call1 = call fastcc i32 @cpu_cache_sysfs_init(i32 noundef %cpu) #10
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %do.body, !prof !7

do.body:                                          ; preds = %entry
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.device** @ci_cache_dev to i64)
  %1 = inttoptr i64 %add to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  %add1378 = add i64 %0, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %3 = inttoptr i64 %add1378 to %struct.cpu_cacheinfo*
  %num_leaves79 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %3, i64 0, i32 2
  %4 = load i32, i32* %num_leaves79, align 4
  %cmp1480.not = icmp eq i32 %4, 0
  br i1 %cmp1480.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.body
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %5 = phi i64 [ %0, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %6 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  %add.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %6, i64 %indvars.iv
  %disable_sysfs = getelementptr %struct.cacheinfo, %struct.cacheinfo* %6, i64 %indvars.iv, i32 11
  %7 = load i8, i8* %disable_sysfs, align 8, !range !8
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.end18, label %for.inc

if.end18:                                         ; preds = %for.body
  %type = getelementptr %struct.cacheinfo, %struct.cacheinfo* %6, i64 %indvars.iv, i32 1
  %8 = load i32, i32* %type, align 4
  %cmp19 = icmp eq i32 %8, 0
  br i1 %cmp19, label %for.end, label %if.end22

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc %struct.attribute_group** @cache_get_attribute_groups(%struct.cacheinfo* noundef %add.ptr) #10
  %9 = bitcast %struct.cacheinfo* %add.ptr to i8*
  %10 = trunc i64 %indvars.iv to i32
  %call24 = call %struct.device* (%struct.device*, i8*, %struct.attribute_group**, i8*, ...) @cpu_device_create(%struct.device* noundef %2, i8* noundef %9, %struct.attribute_group** noundef %call23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 noundef %10) #11
  %11 = bitcast %struct.device* %call24 to i8*
  %call25 = call fastcc i1 @IS_ERR(i8* noundef %11) #10
  br i1 %call25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  %12 = bitcast %struct.device* %call24 to i8*
  %call27 = call fastcc i64 @PTR_ERR(i8* noundef %12) #10
  %conv28 = trunc i64 %call27 to i32
  call fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %13 = load i64, i64* %arrayidx, align 8
  %add39 = add i64 %13, ptrtoint (%struct.device*** @ci_index_dev to i64)
  %14 = inttoptr i64 %add39 to %struct.device***
  %15 = load %struct.device**, %struct.device*** %14, align 8
  %arrayidx41 = getelementptr %struct.device*, %struct.device** %15, i64 %indvars.iv
  store %struct.device* %call24, %struct.device** %arrayidx41, align 8
  %.pre = load i64, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end29
  %16 = phi i64 [ %5, %for.body ], [ %.pre, %if.end29 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add13 = add i64 %16, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %17 = inttoptr i64 %add13 to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %17, i64 0, i32 2
  %18 = load i32, i32* %num_leaves, align 4
  %19 = zext i32 %18 to i64
  %cmp14 = icmp ult i64 %indvars.iv.next, %19
  br i1 %cmp14, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end18, %do.body
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @cache_dev_map) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then26, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %conv28, %if.then26 ], [ %call1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_cache_attributes(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %1 = inttoptr i64 %add to %struct.cpu_cacheinfo*
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %1, i64 0, i32 0
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  %tobool.not = icmp eq %struct.cacheinfo* %2, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @cache_shared_cpu_map_remove(i32 noundef %cpu) #10
  %3 = load i64, i64* %arrayidx, align 8
  %add10 = add i64 %3, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %4 = inttoptr i64 %add10 to i8**
  %5 = load i8*, i8** %4, align 8
  call void @kfree(i8* noundef %5) #11
  %6 = load i64, i64* %arrayidx, align 8
  %add20 = add i64 %6, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %7 = inttoptr i64 %add20 to %struct.cpu_cacheinfo*
  %info_list21 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %7, i64 0, i32 0
  store %struct.cacheinfo* null, %struct.cacheinfo** %info_list21, align 8
  %8 = load i64, i64* %arrayidx, align 8
  %add30 = add i64 %8, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %9 = inttoptr i64 %add30 to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %9, i64 0, i32 2
  store i32 0, i32* %num_leaves, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n, i64 noundef %size) unnamed_addr #2 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cache_shared_cpu_map_setup(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %cpu) #10
  %cpu_map_populated = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 3
  %0 = load i8, i8* %cpu_map_populated, align 8, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup39

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @of_have_populated_dt() #10
  br i1 %call1, label %if.end4, label %for.cond.preheader

if.end4:                                          ; preds = %if.end
  %call3 = call fastcc i32 @cache_setup_of_node(i32 noundef %cpu) #10
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %cleanup39

for.cond.preheader:                               ; preds = %if.end, %if.end4
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add78 = add i64 %1, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %2 = inttoptr i64 %add78 to %struct.cpu_cacheinfo*
  %num_leaves79 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %2, i64 0, i32 2
  %3 = load i32, i32* %num_leaves79, align 4
  %cmp80.not = icmp eq i32 %3, 0
  br i1 %cmp80.not, label %cleanup39, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup35
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup35 ]
  %4 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  %add.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %4, i64 %indvars.iv
  %shared_cpu_map = getelementptr %struct.cacheinfo, %struct.cacheinfo* %4, i64 %indvars.iv, i32 8
  %call9 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %shared_cpu_map) #10
  br i1 %call9, label %if.end11, label %cleanup35

if.end11:                                         ; preds = %for.body
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %shared_cpu_map) #10
  %call1475 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #13
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1576 = icmp ult i32 %call1475, %5
  br i1 %cmp1576, label %for.body16, label %for.end

for.body16:                                       ; preds = %if.end11, %cleanup
  %6 = phi i32 [ %8, %cleanup ], [ %5, %if.end11 ]
  %call1477 = phi i32 [ %call14, %cleanup ], [ %call1475, %if.end11 ]
  %cmp18 = icmp eq i32 %call1477, %cpu
  br i1 %cmp18, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body16
  %call17 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %call1477) #10
  %info_list19 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call17, i64 0, i32 0
  %7 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list19, align 8
  %tobool20.not = icmp eq %struct.cacheinfo* %7, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false
  %add.ptr25 = getelementptr %struct.cacheinfo, %struct.cacheinfo* %7, i64 %indvars.iv
  %call26 = call fastcc i1 @cache_leaves_are_shared(%struct.cacheinfo* noundef %add.ptr, %struct.cacheinfo* noundef %add.ptr25) #10
  br i1 %call26, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end22
  %shared_cpu_map28 = getelementptr %struct.cacheinfo, %struct.cacheinfo* %7, i64 %indvars.iv, i32 8
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %shared_cpu_map28) #10
  call fastcc void @cpumask_set_cpu(i32 noundef %call1477, %struct.cpumask* noundef %shared_cpu_map) #10
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then27, %for.body16, %lor.lhs.false
  %8 = phi i32 [ %6, %if.end22 ], [ %.pre, %if.then27 ], [ %6, %for.body16 ], [ %6, %lor.lhs.false ]
  %call14 = call i32 @cpumask_next(i32 noundef %call1477, %struct.cpumask* noundef nonnull @__cpu_online_mask) #13
  %cmp15 = icmp ult i32 %call14, %8
  br i1 %cmp15, label %for.body16, label %for.end

for.end:                                          ; preds = %cleanup, %if.end11
  %coherency_line_size = getelementptr %struct.cacheinfo, %struct.cacheinfo* %4, i64 %indvars.iv, i32 3
  %9 = load i32, i32* %coherency_line_size, align 4
  %10 = load i32, i32* @coherency_max_size, align 4
  %cmp31 = icmp ugt i32 %9, %10
  br i1 %cmp31, label %if.then32, label %cleanup35

if.then32:                                        ; preds = %for.end
  store i32 %9, i32* @coherency_max_size, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %for.end, %if.then32, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i64, i64* %arrayidx, align 8
  %add = add i64 %11, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %12 = inttoptr i64 %add to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %12, i64 0, i32 2
  %13 = load i32, i32* %num_leaves, align 4
  %14 = zext i32 %13 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %14
  br i1 %cmp, label %for.body, label %cleanup39

cleanup39:                                        ; preds = %cleanup35, %for.cond.preheader, %if.end4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.end4 ], [ 0, %for.cond.preheader ], [ 0, %cleanup35 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) unnamed_addr #2 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #11
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
define internal fastcc i1 @of_have_populated_dt() unnamed_addr #0 {
entry:
  %0 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  %cmp = icmp ne %struct.device_node* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cache_setup_of_node(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #11
  %call1 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %cpu) #10
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call1, i64 0, i32 0
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  %fw_token = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %0, i64 0, i32 10
  %1 = load i8*, i8** %fw_token, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.device* %call, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %cpu) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 25
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool6.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool6.not, label %do.end10, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end5
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add73 = add i64 %3, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %4 = inttoptr i64 %add73 to %struct.cpu_cacheinfo*
  %num_leaves74 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %4, i64 0, i32 2
  %5 = load i32, i32* %num_leaves74, align 4
  %cmp75.not = icmp eq i32 %5, 0
  br i1 %cmp75.not, label %while.end, label %while.body

do.end10:                                         ; preds = %if.end5
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 noundef %cpu) #12
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %if.end27.while.body_crit_edge
  %6 = phi %struct.cacheinfo* [ %.pre, %if.end27.while.body_crit_edge ], [ %0, %while.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end27.while.body_crit_edge ], [ 0, %while.cond.preheader ]
  %np.077 = phi %struct.device_node* [ %np.190, %if.end27.while.body_crit_edge ], [ %2, %while.cond.preheader ]
  %add.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %6, i64 %indvars.iv
  %level = getelementptr %struct.cacheinfo, %struct.cacheinfo* %6, i64 %indvars.iv, i32 2
  %7 = load i32, i32* %level, align 8
  %cmp20.not = icmp eq i32 %7, 1
  br i1 %cmp20.not, label %if.end27, label %if.end24

if.end24:                                         ; preds = %while.body
  %call22 = call %struct.device_node* @of_find_next_cache_node(%struct.device_node* noundef nonnull %np.077) #11
  %tobool25.not = icmp eq %struct.device_node* %call22, null
  br i1 %tobool25.not, label %if.end24.while.end.loopexit_crit_edge, label %if.end27

if.end24.while.end.loopexit_crit_edge:            ; preds = %if.end24
  %.pre82.pre = load i64, i64* %arrayidx, align 8
  %.pre86 = add i64 %.pre82.pre, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  br label %while.end.loopexit

if.end27:                                         ; preds = %while.body, %if.end24
  %np.190 = phi %struct.device_node* [ %call22, %if.end24 ], [ %np.077, %while.body ]
  call fastcc void @cache_of_set_props(%struct.cacheinfo* noundef %add.ptr, %struct.device_node* noundef nonnull %np.190) #10
  %fw_token28 = getelementptr %struct.cacheinfo, %struct.cacheinfo* %6, i64 %indvars.iv, i32 10
  %8 = bitcast i8** %fw_token28 to %struct.device_node**
  store %struct.device_node* %np.190, %struct.device_node** %8, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i64, i64* %arrayidx, align 8
  %add = add i64 %9, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %10 = inttoptr i64 %add to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %10, i64 0, i32 2
  %11 = load i32, i32* %num_leaves, align 4
  %12 = zext i32 %11 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %12
  br i1 %cmp, label %if.end27.while.body_crit_edge, label %while.end.loopexit

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  %.pre = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  br label %while.body

while.end.loopexit:                               ; preds = %if.end27, %if.end24.while.end.loopexit_crit_edge
  %add.lcssa.sink = phi i64 [ %.pre86, %if.end24.while.end.loopexit_crit_edge ], [ %add, %if.end27 ]
  %index.0.lcssa.ph.in = phi i64 [ %indvars.iv, %if.end24.while.end.loopexit_crit_edge ], [ %indvars.iv.next, %if.end27 ]
  %13 = inttoptr i64 %add.lcssa.sink to %struct.cpu_cacheinfo*
  %index.0.lcssa.ph = trunc i64 %index.0.lcssa.ph.in to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %.pre-phi = phi %struct.cpu_cacheinfo* [ %13, %while.end.loopexit ], [ %4, %while.cond.preheader ]
  %index.0.lcssa = phi i32 [ %index.0.lcssa.ph, %while.end.loopexit ], [ 0, %while.cond.preheader ]
  %num_leaves39 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %.pre-phi, i64 0, i32 2
  %14 = load i32, i32* %num_leaves39, align 4
  %cmp40.not = icmp eq i32 %index.0.lcssa, %14
  %. = select i1 %cmp40.not, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry, %do.end10, %do.end
  %retval.0 = phi i32 [ -2, %do.end10 ], [ -19, %do.end ], [ 0, %entry ], [ %., %while.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty(%struct.cpumask* noundef %srcp) unnamed_addr #2 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #2 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @cache_leaves_are_shared(%struct.cacheinfo* nocapture noundef readonly %this_leaf, %struct.cacheinfo* nocapture noundef readonly %sib_leaf) unnamed_addr #0 {
entry:
  %fw_token = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %sib_leaf, i64 0, i32 10
  %0 = load i8*, i8** %fw_token, align 8
  %fw_token1 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 10
  %1 = load i8*, i8** %fw_token1, align 8
  %cmp = icmp eq i8* %0, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_next_cache_node(%struct.device_node* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cache_of_set_props(%struct.cacheinfo* noundef %this_leaf, %struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 1
  %0 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @cache_node_is_unified(%struct.device_node* noundef %np) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 4, i32* %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call fastcc void @cache_size(%struct.cacheinfo* noundef %this_leaf, %struct.device_node* noundef %np) #10
  call fastcc void @cache_get_line_size(%struct.cacheinfo* noundef %this_leaf, %struct.device_node* noundef %np) #10
  call fastcc void @cache_nr_sets(%struct.cacheinfo* noundef %this_leaf, %struct.device_node* noundef %np) #10
  call fastcc void @cache_associativity(%struct.cacheinfo* noundef %this_leaf) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cache_node_is_unified(%struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cache_size(%struct.cacheinfo* noundef %this_leaf, %struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 1
  %0 = load i32, i32* %type, align 4
  %call = call fastcc i32 @get_cacheinfo_idx(i32 noundef %0) #10
  %idxprom = sext i32 %call to i64
  %size_prop = getelementptr [3 x %struct.cache_type_info], [3 x %struct.cache_type_info]* @cache_type_info, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %size_prop, align 8
  %size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 7
  %call1 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %1, i32* noundef %size) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cache_get_line_size(%struct.cacheinfo* nocapture noundef %this_leaf, %struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %line_size = alloca i32, align 4
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 1
  %0 = load i32, i32* %type, align 4
  %call = call fastcc i32 @get_cacheinfo_idx(i32 noundef %0) #10
  %1 = bitcast i32* %line_size to i8*
  %idxprom = sext i32 %call to i64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  store i32 0, i32* %line_size, align 4, !annotation !9
  %arrayidx2 = getelementptr [3 x %struct.cache_type_info], [3 x %struct.cache_type_info]* @cache_type_info, i64 0, i64 %idxprom, i32 1, i64 0
  %2 = load i8*, i8** %arrayidx2, align 8
  %call3 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %2, i32* noundef nonnull %line_size) #10
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.inc, %entry
  %3 = load i32, i32* %line_size, align 4
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 3
  store i32 %3, i32* %coherency_line_size, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  br label %for.end

for.inc:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  store i32 0, i32* %line_size, align 4, !annotation !9
  %arrayidx2.1 = getelementptr [3 x %struct.cache_type_info], [3 x %struct.cache_type_info]* @cache_type_info, i64 0, i64 %idxprom, i32 1, i64 1
  %4 = load i8*, i8** %arrayidx2.1, align 8
  %call3.1 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %4, i32* noundef nonnull %line_size) #10
  %tobool.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool.not.1, label %cleanup, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %cleanup
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cache_nr_sets(%struct.cacheinfo* noundef %this_leaf, %struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 1
  %0 = load i32, i32* %type, align 4
  %call = call fastcc i32 @get_cacheinfo_idx(i32 noundef %0) #10
  %idxprom = sext i32 %call to i64
  %nr_sets_prop = getelementptr [3 x %struct.cache_type_info], [3 x %struct.cache_type_info]* @cache_type_info, i64 0, i64 %idxprom, i32 2
  %1 = load i8*, i8** %nr_sets_prop, align 8
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 4
  %call1 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %1, i32* noundef %number_of_sets) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @cache_associativity(%struct.cacheinfo* nocapture noundef %this_leaf) unnamed_addr #8 {
entry:
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 3
  %0 = load i32, i32* %coherency_line_size, align 4
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 4
  %1 = load i32, i32* %number_of_sets, align 8
  %size1 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 7
  %2 = load i32, i32* %size1, align 4
  %3 = icmp ugt i32 %1, 1
  %cmp4 = icmp ne i32 %2, 0
  %or.cond8 = select i1 %3, i1 %cmp4, i1 false
  %cmp6 = icmp ne i32 %0, 0
  %or.cond9 = select i1 %or.cond8, i1 %cmp6, i1 false
  br i1 %or.cond9, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %div = udiv i32 %2, %1
  %div7 = udiv i32 %div, %0
  %ways_of_associativity = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 5
  store i32 %div7, i32* %ways_of_associativity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np) unnamed_addr #2 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* noundef null) #11
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @get_cacheinfo_idx(i32 noundef %type) unnamed_addr #9 {
entry:
  %cmp = icmp eq i32 %type, 4
  %.type = select i1 %cmp, i32 0, i32 %type
  ret i32 %.type
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values) unnamed_addr #2 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #11
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef %src) #10
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #2 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #11
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #2 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpu_cache_sysfs_init(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #11
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %1 = inttoptr i64 %add to %struct.cpu_cacheinfo*
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %1, i64 0, i32 0
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  %cmp = icmp eq %struct.cacheinfo* %2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.device* (%struct.device*, i8*, %struct.attribute_group**, i8*, ...) @cpu_device_create(%struct.device* noundef %call, i8* noundef null, %struct.attribute_group** noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #11
  %3 = load i64, i64* %arrayidx, align 8
  %add12 = add i64 %3, ptrtoint (%struct.device** @ci_cache_dev to i64)
  %4 = inttoptr i64 %add12 to %struct.device**
  store %struct.device* %call2, %struct.device** %4, align 8
  %5 = load i64, i64* %arrayidx, align 8
  %add22 = add i64 %5, ptrtoint (%struct.device** @ci_cache_dev to i64)
  %6 = inttoptr i64 %add22 to i8**
  %7 = load i8*, i8** %6, align 8
  %call23 = call fastcc i1 @IS_ERR(i8* noundef %7) #10
  br i1 %call23, label %do.body25, label %do.body37

do.body25:                                        ; preds = %if.end
  %call35 = call fastcc i64 @PTR_ERR(i8* noundef %7) #10
  %conv = trunc i64 %call35 to i32
  br label %cleanup

do.body37:                                        ; preds = %if.end
  %add46 = add i64 %5, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %8 = inttoptr i64 %add46 to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %8, i64 0, i32 2
  %9 = load i32, i32* %num_leaves, align 4
  %conv47 = zext i32 %9 to i64
  %call48 = call fastcc i8* @kcalloc(i64 noundef %conv47, i64 noundef 8) #10
  %10 = load i64, i64* %arrayidx, align 8
  %add58 = add i64 %10, ptrtoint (%struct.device*** @ci_index_dev to i64)
  %11 = inttoptr i64 %add58 to i8**
  store i8* %call48, i8** %11, align 8
  %12 = load i64, i64* %arrayidx, align 8
  %add68 = add i64 %12, ptrtoint (%struct.device*** @ci_index_dev to i64)
  %13 = inttoptr i64 %add68 to %struct.device***
  %14 = load %struct.device**, %struct.device*** %13, align 8
  %cmp69 = icmp eq %struct.device** %14, null
  br i1 %cmp69, label %err_out, label %cleanup, !prof !7

err_out:                                          ; preds = %do.body37
  call fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body37, %entry, %err_out, %do.body25
  %retval.0 = phi i32 [ %conv, %do.body25 ], [ -12, %err_out ], [ -2, %entry ], [ 0, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.attribute_group** @cache_get_attribute_groups(%struct.cacheinfo* noundef %this_leaf) unnamed_addr #2 {
entry:
  %call = call %struct.attribute_group* @cache_get_priv_group(%struct.cacheinfo* noundef %this_leaf) #10
  %tobool.not = icmp eq %struct.attribute_group* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.attribute_group*, %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cache_private_groups, i64 0, i64 1), align 8
  %tobool1.not = icmp eq %struct.attribute_group* %0, null
  br i1 %tobool1.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  store %struct.attribute_group* %call, %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cache_private_groups, i64 0, i64 1), align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi %struct.attribute_group** [ getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @cache_default_groups, i64 0, i64 0), %entry ], [ getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cache_private_groups, i64 0, i64 0), %if.then2 ], [ getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cache_private_groups, i64 0, i64 0), %if.end ]
  ret %struct.attribute_group** %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @cpu_device_create(%struct.device* noundef, i8* noundef, %struct.attribute_group** noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #9 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #9 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.device*** @ci_index_dev to i64)
  %1 = inttoptr i64 %add to %struct.device***
  %2 = load %struct.device**, %struct.device*** %1, align 8
  %tobool.not = icmp eq %struct.device** %2, null
  br i1 %tobool.not, label %do.body47, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %add1192 = add i64 %0, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %3 = inttoptr i64 %add1192 to %struct.cpu_cacheinfo*
  %num_leaves93 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %3, i64 0, i32 2
  %4 = load i32, i32* %num_leaves93, align 4
  %cmp94.not = icmp eq i32 %4, 0
  br i1 %cmp94.not, label %do.body26, label %do.body12

do.body12:                                        ; preds = %for.cond.preheader, %for.inc
  %5 = phi i64 [ %9, %for.inc ], [ %0, %for.cond.preheader ]
  %i.095 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %add21 = add i64 %5, ptrtoint (%struct.device*** @ci_index_dev to i64)
  %6 = inttoptr i64 %add21 to %struct.device***
  %7 = load %struct.device**, %struct.device*** %6, align 8
  %idxprom22 = sext i32 %i.095 to i64
  %arrayidx23 = getelementptr %struct.device*, %struct.device** %7, i64 %idxprom22
  %8 = load %struct.device*, %struct.device** %arrayidx23, align 8
  %tobool24.not = icmp eq %struct.device* %8, null
  br i1 %tobool24.not, label %for.inc, label %if.end

if.end:                                           ; preds = %do.body12
  call void @device_unregister(%struct.device* noundef nonnull %8) #11
  %.pre = load i64, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.body12, %if.end
  %9 = phi i64 [ %5, %do.body12 ], [ %.pre, %if.end ]
  %inc = add nuw i32 %i.095, 1
  %add11 = add i64 %9, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %10 = inttoptr i64 %add11 to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %10, i64 0, i32 2
  %11 = load i32, i32* %num_leaves, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %do.body12, label %do.body26.loopexit

do.body26.loopexit:                               ; preds = %for.inc
  %.pre98 = add i64 %9, ptrtoint (%struct.device*** @ci_index_dev to i64)
  br label %do.body26

do.body26:                                        ; preds = %do.body26.loopexit, %for.cond.preheader
  %add35.pre-phi = phi i64 [ %.pre98, %do.body26.loopexit ], [ %add, %for.cond.preheader ]
  %12 = inttoptr i64 %add35.pre-phi to i8**
  %13 = load i8*, i8** %12, align 8
  call void @kfree(i8* noundef %13) #11
  %14 = load i64, i64* %arrayidx, align 8
  %add45 = add i64 %14, ptrtoint (%struct.device*** @ci_index_dev to i64)
  %15 = inttoptr i64 %add45 to %struct.device***
  store %struct.device** null, %struct.device*** %15, align 8
  %.pre97 = load i64, i64* %arrayidx, align 8
  br label %do.body47

do.body47:                                        ; preds = %entry, %do.body26
  %16 = phi i64 [ %0, %entry ], [ %.pre97, %do.body26 ]
  %add56 = add i64 %16, ptrtoint (%struct.device** @ci_cache_dev to i64)
  %17 = inttoptr i64 %add56 to %struct.device**
  %18 = load %struct.device*, %struct.device** %17, align 8
  call void @device_unregister(%struct.device* noundef %18) #11
  %19 = load i64, i64* %arrayidx, align 8
  %add66 = add i64 %19, ptrtoint (%struct.device** @ci_cache_dev to i64)
  %20 = inttoptr i64 %add66 to %struct.device**
  store %struct.device* null, %struct.device** %20, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i16 @cache_default_attrs_is_visible(%struct.kobject* noundef readonly %kobj, %struct.attribute* noundef readonly %attr, i32 noundef %unused) #2 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #10
  %call1 = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %call) #10
  %shared_cpu_map = getelementptr inbounds i8, i8* %call1, i64 32
  %0 = bitcast i8* %shared_cpu_map to %struct.cpumask*
  %mode2 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 1
  %1 = load i16, i16* %mode2, align 8
  %cmp = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i64 0, i32 0)
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %attributes = getelementptr inbounds i8, i8* %call1, i64 64
  %2 = bitcast i8* %attributes to i32*
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 16
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end75, label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i64 0, i32 0)
  br i1 %cmp3, label %land.lhs.true5, label %if.end8

land.lhs.true5:                                   ; preds = %if.end
  %type = getelementptr inbounds i8, i8* %call1, i64 4
  %5 = bitcast i8* %type to i32*
  %6 = load i32, i32* %5, align 4
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.end75, label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_level, i64 0, i32 0)
  br i1 %cmp9, label %land.lhs.true11, label %if.end14

land.lhs.true11:                                  ; preds = %if.end8
  %level = getelementptr inbounds i8, i8* %call1, i64 8
  %7 = bitcast i8* %level to i32*
  %8 = load i32, i32* %7, align 8
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end75, label %cleanup

if.end14:                                         ; preds = %if.end8
  %cmp15 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_map, i64 0, i32 0)
  br i1 %cmp15, label %land.lhs.true17, label %if.end20

land.lhs.true17:                                  ; preds = %if.end14
  %call18 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %0) #10
  br i1 %call18, label %if.end75, label %cleanup

if.end20:                                         ; preds = %if.end14
  %cmp21 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_list, i64 0, i32 0)
  br i1 %cmp21, label %land.lhs.true23, label %if.end26

land.lhs.true23:                                  ; preds = %if.end20
  %call24 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %0) #10
  br i1 %call24, label %if.end75, label %cleanup

if.end26:                                         ; preds = %if.end20
  %cmp27 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_coherency_line_size, i64 0, i32 0)
  br i1 %cmp27, label %land.lhs.true29, label %if.end32

land.lhs.true29:                                  ; preds = %if.end26
  %coherency_line_size = getelementptr inbounds i8, i8* %call1, i64 12
  %9 = bitcast i8* %coherency_line_size to i32*
  %10 = load i32, i32* %9, align 4
  %tobool30.not = icmp eq i32 %10, 0
  br i1 %tobool30.not, label %if.end75, label %cleanup

if.end32:                                         ; preds = %if.end26
  %cmp33 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ways_of_associativity, i64 0, i32 0)
  br i1 %cmp33, label %land.lhs.true35, label %if.end38

land.lhs.true35:                                  ; preds = %if.end32
  %size = getelementptr inbounds i8, i8* %call1, i64 28
  %11 = bitcast i8* %size to i32*
  %12 = load i32, i32* %11, align 4
  %tobool36.not = icmp eq i32 %12, 0
  br i1 %tobool36.not, label %if.end75, label %cleanup

if.end38:                                         ; preds = %if.end32
  %cmp39 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_number_of_sets, i64 0, i32 0)
  br i1 %cmp39, label %land.lhs.true41, label %if.end44

land.lhs.true41:                                  ; preds = %if.end38
  %number_of_sets = getelementptr inbounds i8, i8* %call1, i64 16
  %13 = bitcast i8* %number_of_sets to i32*
  %14 = load i32, i32* %13, align 8
  %tobool42.not = icmp eq i32 %14, 0
  br i1 %tobool42.not, label %if.end75, label %cleanup

if.end44:                                         ; preds = %if.end38
  %cmp45 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_size, i64 0, i32 0)
  br i1 %cmp45, label %land.lhs.true47, label %if.end51

land.lhs.true47:                                  ; preds = %if.end44
  %size48 = getelementptr inbounds i8, i8* %call1, i64 28
  %15 = bitcast i8* %size48 to i32*
  %16 = load i32, i32* %15, align 4
  %tobool49.not = icmp eq i32 %16, 0
  br i1 %tobool49.not, label %if.end75, label %cleanup

if.end51:                                         ; preds = %if.end44
  %cmp52 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_write_policy, i64 0, i32 0)
  br i1 %cmp52, label %land.lhs.true54, label %if.end60

land.lhs.true54:                                  ; preds = %if.end51
  %attributes55 = getelementptr inbounds i8, i8* %call1, i64 64
  %17 = bitcast i8* %attributes55 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 3
  %tobool58.not = icmp eq i32 %19, 0
  br i1 %tobool58.not, label %if.end75, label %cleanup

if.end60:                                         ; preds = %if.end51
  %cmp61 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_allocation_policy, i64 0, i32 0)
  br i1 %cmp61, label %land.lhs.true63, label %if.end69

land.lhs.true63:                                  ; preds = %if.end60
  %attributes64 = getelementptr inbounds i8, i8* %call1, i64 64
  %20 = bitcast i8* %attributes64 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 12
  %tobool67.not = icmp eq i32 %22, 0
  br i1 %tobool67.not, label %if.end75, label %cleanup

if.end69:                                         ; preds = %if.end60
  %cmp70 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_physical_line_partition, i64 0, i32 0)
  br i1 %cmp70, label %land.lhs.true72, label %if.end75

land.lhs.true72:                                  ; preds = %if.end69
  %physical_line_partition = getelementptr inbounds i8, i8* %call1, i64 24
  %23 = bitcast i8* %physical_line_partition to i32*
  %24 = load i32, i32* %23, align 8
  %tobool73.not = icmp eq i32 %24, 0
  br i1 %tobool73.not, label %if.end75, label %cleanup

if.end75:                                         ; preds = %land.lhs.true5, %land.lhs.true, %land.lhs.true17, %land.lhs.true11, %land.lhs.true29, %land.lhs.true23, %land.lhs.true41, %land.lhs.true35, %land.lhs.true54, %land.lhs.true47, %land.lhs.true63, %land.lhs.true72, %if.end69
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true72, %land.lhs.true63, %land.lhs.true54, %land.lhs.true47, %land.lhs.true41, %land.lhs.true35, %land.lhs.true29, %land.lhs.true23, %land.lhs.true17, %land.lhs.true11, %land.lhs.true5, %land.lhs.true, %if.end75
  %retval.0 = phi i16 [ 0, %if.end75 ], [ %1, %land.lhs.true ], [ %1, %land.lhs.true5 ], [ %1, %land.lhs.true11 ], [ %1, %land.lhs.true17 ], [ %1, %land.lhs.true23 ], [ %1, %land.lhs.true29 ], [ %1, %land.lhs.true35 ], [ %1, %land.lhs.true41 ], [ %1, %land.lhs.true47 ], [ %1, %land.lhs.true54 ], [ %1, %land.lhs.true63 ], [ %1, %land.lhs.true72 ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef readnone %kobj) unnamed_addr #9 {
entry:
  %0 = bitcast %struct.kobject* %kobj to %struct.device*
  ret %struct.device* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_get_drvdata(%struct.device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  %0 = load i8*, i8** %driver_data, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @id_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %id = bitcast i8* %call to i32*
  %0 = load i32, i32* %id, align 8
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %0) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @type_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %type = getelementptr inbounds i8, i8* %call, i64 4
  %0 = bitcast i8* %type to i32*
  %1 = load i32, i32* %0, align 4
  switch i32 %1, label %cleanup [
    i32 2, label %sw.epilog
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1
  %output.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %entry ]
  %call3 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %output.0) #11
  %conv = sext i32 %call3 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i64 [ %conv, %sw.epilog ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @level_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %level = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %level to i32*
  %1 = load i32, i32* %0, align 8
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @shared_cpu_map_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %shared_cpu_map = getelementptr inbounds i8, i8* %call, i64 32
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 noundef %0, i8* noundef %shared_cpu_map) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @shared_cpu_list_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %shared_cpu_map = getelementptr inbounds i8, i8* %call, i64 32
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 noundef %0, i8* noundef %shared_cpu_map) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @coherency_line_size_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %coherency_line_size = getelementptr inbounds i8, i8* %call, i64 12
  %0 = bitcast i8* %coherency_line_size to i32*
  %1 = load i32, i32* %0, align 4
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ways_of_associativity_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %ways_of_associativity = getelementptr inbounds i8, i8* %call, i64 20
  %0 = bitcast i8* %ways_of_associativity to i32*
  %1 = load i32, i32* %0, align 4
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @number_of_sets_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %number_of_sets = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %number_of_sets to i32*
  %1 = load i32, i32* %0, align 8
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @size_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %size = getelementptr inbounds i8, i8* %call, i64 28
  %0 = bitcast i8* %size to i32*
  %1 = load i32, i32* %0, align 4
  %shr = lshr i32 %1, 10
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 noundef %shr) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @write_policy_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %attributes = getelementptr inbounds i8, i8* %call, i64 64
  %0 = bitcast i8* %attributes to i32*
  %1 = load i32, i32* %0, align 8
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end7.sink.split

if.else:                                          ; preds = %entry
  %and3 = and i64 %conv, 2
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.else, %entry
  %.sink = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), %entry ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), %if.else ]
  %call6 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef %.sink) #11
  %phi.cast = sext i32 %call6 to i64
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else
  %n.0 = phi i64 [ 0, %if.else ], [ %phi.cast, %if.end7.sink.split ]
  ret i64 %n.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @allocation_policy_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %attributes = getelementptr inbounds i8, i8* %call, i64 64
  %0 = bitcast i8* %attributes to i32*
  %1 = load i32, i32* %0, align 8
  %conv = zext i32 %1 to i64
  %2 = and i64 %conv, 12
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %cleanup, label %if.end15

if.end15:                                         ; preds = %entry
  %and = and i64 %conv, 4
  %tobool.not.not = icmp eq i64 %and, 0
  %.not = icmp eq i64 %2, 12
  %.mux = select i1 %.not, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0)
  %.mux.mux = select i1 %tobool.not.not, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %.mux
  %call16 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %.mux.mux) #11
  %conv17 = sext i32 %call16 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15
  %retval.0 = phi i64 [ %conv17, %if.end15 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @physical_line_partition_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #2 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #10
  %physical_line_partition = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %physical_line_partition to i32*
  %1 = load i32, i32* %0, align 8
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cache_shared_cpu_map_remove(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add44 = add i64 %0, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %1 = inttoptr i64 %add44 to %struct.cpu_cacheinfo*
  %num_leaves45 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %1, i64 0, i32 2
  %2 = load i32, i32* %num_leaves45, align 4
  %cmp46.not = icmp eq i32 %2, 0
  br i1 %cmp46.not, label %for.end19, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %cpu) #10
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 0
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i64 [ %0, %for.body.lr.ph ], [ %10, %for.inc ]
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %11, %for.inc ]
  %5 = phi i32 [ %.pre, %for.body.lr.ph ], [ %12, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %6 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  %shared_cpu_map = getelementptr %struct.cacheinfo, %struct.cacheinfo* %6, i64 %indvars.iv, i32 8
  %call341 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %shared_cpu_map) #13
  %cmp442 = icmp ult i32 %call341, %5
  br i1 %cmp442, label %for.body5, label %for.inc

for.body5:                                        ; preds = %for.body, %cleanup
  %7 = phi i32 [ %9, %cleanup ], [ %4, %for.body ]
  %call343 = phi i32 [ %call3, %cleanup ], [ %call341, %for.body ]
  %cmp6 = icmp eq i32 %call343, %cpu
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body5
  %call7 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %call343) #10
  %info_list8 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call7, i64 0, i32 0
  %8 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list8, align 8
  %tobool.not = icmp eq %struct.cacheinfo* %8, null
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %shared_cpu_map14 = getelementptr %struct.cacheinfo, %struct.cacheinfo* %8, i64 %indvars.iv, i32 8
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %shared_cpu_map14) #10
  call fastcc void @cpumask_clear_cpu(i32 noundef %call343, %struct.cpumask* noundef %shared_cpu_map) #10
  %.pre49 = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body5, %if.end10
  %9 = phi i32 [ %7, %if.end ], [ %7, %for.body5 ], [ %.pre49, %if.end10 ]
  %call3 = call i32 @cpumask_next(i32 noundef %call343, %struct.cpumask* noundef %shared_cpu_map) #13
  %cmp4 = icmp ult i32 %call3, %9
  br i1 %cmp4, label %for.body5, label %for.inc.loopexit

for.inc.loopexit:                                 ; preds = %cleanup
  %.pre50 = load i64, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.loopexit, %for.body
  %10 = phi i64 [ %.pre50, %for.inc.loopexit ], [ %3, %for.body ]
  %11 = phi i32 [ %9, %for.inc.loopexit ], [ %4, %for.body ]
  %12 = phi i32 [ %9, %for.inc.loopexit ], [ %5, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add = add i64 %10, ptrtoint (%struct.cpu_cacheinfo* @ci_cpu_cacheinfo to i64)
  %13 = inttoptr i64 %add to %struct.cpu_cacheinfo*
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %13, i64 0, i32 2
  %14 = load i32, i32* %num_leaves, align 4
  %15 = zext i32 %14 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %15
  br i1 %cmp, label %for.body, label %for.end19

for.end19:                                        ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #2 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #2 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %conv = zext i32 %cpu to i64
  %call1 = call fastcc i1 @test_and_clear_bit(i64 noundef %conv) #10
  %conv2 = zext i1 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr) unnamed_addr #2 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @cache_dev_map, i64 0, i32 0, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #11
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !12
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 2147906127, i64 2147906638, i64 2147906668, i64 2147906694, i64 2147906726, i64 2147906755}
!11 = !{i64 2147916697, i64 2147917218, i64 2147917248, i64 2147917274, i64 2147917306, i64 2147917335}
!12 = !{i64 2147917550, i64 2147918212, i64 2147918242, i64 2147918273, i64 2147918305, i64 2147918340, i64 2147918365}
