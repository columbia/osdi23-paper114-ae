; ModuleID = 'arch/arm64/kernel/proton-pack.c'
source_filename = "arch/arm64/kernel/proton-pack.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.midr_range = type { i32, i32, i32 }
%struct.bp_hardening_data = type { i32, void ()* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spectre_v4_param = type { i8*, i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.undef_hook = type { %struct.list_head, i32, i32, i64, i64, i32 (%struct.pt_regs*, i32)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pt_regs = type { %union.anon.46, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.46 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_attribute = type { %struct.attribute, {}*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.arm64_cpu_capabilities = type { i8*, i16, i16, {}*, void (%struct.arm64_cpu_capabilities*)*, %union.anon.43, %struct.arm64_cpu_capabilities* }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { %struct.midr_range, %struct.arm64_midr_revidr* }
%struct.arm64_midr_revidr = type { i32, i32 }
%struct.alt_instr = type { i32, i32, i16, i8, i8 }

@.str = private unnamed_addr constant [41 x i8] c"Mitigation: __user pointer sanitization\0A\00", align 1
@__setup_str_parse_spectre_v2_param = internal constant [13 x i8] c"nospectre_v2\00", section ".init.rodata", align 1
@__setup_parse_spectre_v2_param = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_parse_spectre_v2_param, i32 0, i32 0), i32 (i8*)* @parse_spectre_v2_param, i32 1 }, section ".init.setup", align 8
@spectre_v2_state = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Mitigation: Branch predictor hardening\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Vulnerable\0A\00", align 1
@has_spectre_v3a.spectre_v3a_unsafe_list = internal constant [3 x %struct.midr_range] [%struct.midr_range { i32 1091555440, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555456, i32 0, i32 15728655 }, %struct.midr_range zeroinitializer], align 4
@bp_hardening_data = dso_local global %struct.bp_hardening_data zeroinitializer, section ".data..percpu..read_mostly", align 8
@__setup_str_parse_spectre_v4_param = internal constant [5 x i8] c"ssbd\00", section ".init.rodata", align 1
@__setup_parse_spectre_v4_param = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__setup_str_parse_spectre_v4_param, i32 0, i32 0), i32 (i8*)* @parse_spectre_v4_param, i32 1 }, section ".init.setup", align 8
@spectre_v4_state = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Mitigation: Speculative Store Bypass disabled via prctl\0A\00", align 1
@arm64_ssbd_callback_required = dso_local global i64 0, section ".data..percpu..read_mostly", align 8
@__nospectre_v2 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@spectre_v2_get_cpu_hw_mitigation_state.spectre_v2_safe_list = internal constant [9 x %struct.midr_range] [%struct.midr_range { i32 1091555392, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555376, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555408, i32 0, i32 15728655 }, %struct.midr_range { i32 1108283392, i32 0, i32 15728655 }, %struct.midr_range { i32 1208995856, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970320, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970352, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970384, i32 0, i32 15728655 }, %struct.midr_range zeroinitializer], align 4
@spectre_v2_mitigations_off.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"\016spectre-v2 mitigation disabled by command line option\0A\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global [2 x i32], align 4
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@spectre_v4_params = internal unnamed_addr constant [3 x %struct.spectre_v4_param] [%struct.spectre_v4_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct.spectre_v4_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 2 }, %struct.spectre_v4_param { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 0 }], align 8
@__spectre_v4_policy = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"force-on\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"force-off\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@spectre_v4_get_cpu_hw_mitigation_state.spectre_v4_safe_list = internal constant [7 x %struct.midr_range] [%struct.midr_range { i32 1091555392, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555376, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555408, i32 0, i32 15728655 }, %struct.midr_range { i32 1108283392, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970352, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970384, i32 0, i32 15728655 }, %struct.midr_range zeroinitializer], align 4
@spectre_v4_mitigations_off.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"\016spectre-v4 mitigation disabled by command-line option\0A\00", align 1
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@spectre_v4_enable_hw_mitigation.undef_hook_registered = internal unnamed_addr global i1 false, align 1
@spectre_v4_enable_hw_mitigation.hook_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@ssbs_emulation_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 -257, i32 -721207233, i64 0, i64 0, i32 (%struct.pt_regs*, i32)* @ssbs_emulation_handler }, align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_parse_spectre_v2_param to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_parse_spectre_v4_param to i8*)], section "llvm.metadata"
@switch.table.spectre_v4_get_cpu_fw_mitigation_state = private unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 1, i32 0], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @cpu_show_spectre_v1(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @parse_spectre_v2_param(i8* nocapture noundef readnone %str) #2 section ".init.text" {
entry:
  store i1 true, i1* @__nospectre_v2, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @cpu_show_spectre_v2(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @spectre_v2_state, align 4
  %switch.selectcmp = icmp eq i32 %0, 1
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %switch.selectcmp9 = icmp eq i32 %0, 0
  %switch.select10 = select i1 %switch.selectcmp9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %switch.select
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef %switch.select10) #15
  %retval.0 = sext i32 %call5 to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @has_spectre_v2(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %scope) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %scope, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/proton-pack.c\22; .popsection; .long 14472b - 14470b; .short 164; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @spectre_v2_get_cpu_hw_mitigation_state() #17
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %return, label %if.end18

if.end18:                                         ; preds = %if.end
  %call19 = call fastcc i32 @spectre_v2_get_cpu_fw_mitigation_state() #17
  %cmp20 = icmp ne i32 %call19, 0
  br label %return

return:                                           ; preds = %if.end18, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ %cmp20, %if.end18 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @spectre_v2_get_cpu_hw_mitigation_state() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !10
  %1 = and i64 %0, 1080863910568919040
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @read_cpuid_id() #18
  %call2 = call fastcc i1 @is_midr_in_range_list(i32 noundef %call1, %struct.midr_range* noundef getelementptr inbounds ([9 x %struct.midr_range], [9 x %struct.midr_range]* @spectre_v2_get_cpu_hw_mitigation_state.spectre_v2_safe_list, i64 0, i64 0)) #17
  %. = select i1 %call2, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @spectre_v2_get_cpu_fw_mitigation_state() unnamed_addr #0 {
entry:
  %call = call i32 @arm_smccc_1_1_get_conduit() #15
  switch i32 %call, label %do.body28 [
    i32 2, label %do.body
    i32 1, label %do.body5
  ]

do.body:                                          ; preds = %entry
  %0 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147483649, i32 -2147450880) #16, !srcloc !11
  %asmresult = extractvalue { i64, i64, i64, i64 } %0, 0
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  %1 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147483649, i32 -2147450880) #16, !srcloc !12
  %asmresult14 = extractvalue { i64, i64, i64, i64 } %1, 0
  br label %sw.epilog

do.body28:                                        ; preds = %entry
  call void asm sideeffect "", "{x0},{x1},~{memory}"(i64 2147483649, i32 -2147450880) #16, !srcloc !13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body28, %do.body5, %do.body
  %res.sroa.0.0 = phi i64 [ -1, %do.body28 ], [ %asmresult14, %do.body5 ], [ %asmresult, %do.body ]
  %conv = trunc i64 %res.sroa.0.0 to i32
  %switch.selectcmp = icmp eq i32 %conv, 1
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 2
  %switch.selectcmp77 = icmp eq i32 %conv, 0
  %switch.select78 = select i1 %switch.selectcmp77, i32 1, i32 %switch.select
  ret i32 %switch.select78
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @arm64_get_spectre_v2_state() local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @spectre_v2_state, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @spectre_v2_enable_mitigation(%struct.arm64_cpu_capabilities* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @spectre_v2_get_cpu_hw_mitigation_state() #17
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %entry
  %call12 = call fastcc i32 @spectre_v2_enable_fw_mitigation() #17
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %entry
  %state.0 = phi i32 [ %call12, %if.then11 ], [ %call, %entry ]
  call fastcc void @update_mitigation_state(i32* noundef nonnull @spectre_v2_state, i32 noundef %state.0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @spectre_v2_enable_fw_mitigation() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @spectre_v2_get_cpu_fw_mitigation_state() #17
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @spectre_v2_mitigations_off() #17
  br i1 %call1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @arm_smccc_1_1_get_conduit() #15
  switch i32 %call4, label %cleanup [
    i32 2, label %sw.epilog
    i32 1, label %sw.bb5
  ]

sw.bb5:                                           ; preds = %if.end3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end3, %sw.bb5
  %cb.0 = phi void ()* [ @call_smc_arch_workaround_1, %sw.bb5 ], [ @call_hvc_arch_workaround_1, %if.end3 ]
  %call6 = call fastcc void ()* @spectre_v2_get_sw_mitigation_cb() #17
  %tobool.not = icmp eq void ()* %call6, null
  %cond = select i1 %tobool.not, void ()* %cb.0, void ()* %call6
  call fastcc void @install_bp_hardening_cb(void ()* noundef %cond) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %sw.epilog
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ %call, %entry ], [ 2, %if.end ], [ 2, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_mitigation_state(i32* noundef %oldp, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %oldp to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond21, %entry
  %1 = load volatile i32, i32* %oldp, align 4
  %cmp.not = icmp ult i32 %1, %new
  br i1 %cmp.not, label %if.end, label %do.end30

if.end:                                           ; preds = %do.body
  %call.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #15
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then8, label %do.cond21, !prof !14

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/proton-pack.c\22; .popsection; .long 14472b - 14470b; .short 47; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !15
  br label %do.end30

do.cond21:                                        ; preds = %if.end
  %call11.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %1, i32 noundef %new) #15
  %cmp28.not = icmp eq i32 %1, %call11.i
  br i1 %cmp28.not, label %do.end30, label %do.body

do.end30:                                         ; preds = %do.body, %do.cond21, %if.then8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @has_spectre_v3a(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %scope) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %scope, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/proton-pack.c\22; .popsection; .long 14472b - 14470b; .short 290; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @read_cpuid_id() #18
  %call15 = call fastcc i1 @is_midr_in_range_list(i32 noundef %call, %struct.midr_range* noundef getelementptr inbounds ([3 x %struct.midr_range], [3 x %struct.midr_range]* @has_spectre_v3a.spectre_v3a_unsafe_list, i64 0, i64 0)) #17
  ret i1 %call15
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @is_midr_in_range_list(i32 noundef %midr, %struct.midr_range* nocapture noundef readonly %ranges) unnamed_addr #4 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %ranges.addr.0 = phi %struct.midr_range* [ %ranges, %entry ], [ %incdec.ptr, %while.body ]
  %model = getelementptr inbounds %struct.midr_range, %struct.midr_range* %ranges.addr.0, i64 0, i32 0
  %0 = load i32, i32* %model, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr %struct.midr_range, %struct.midr_range* %ranges.addr.0, i64 1
  %call = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef %ranges.addr.0) #17
  br i1 %call, label %return, label %while.cond

return:                                           ; preds = %while.cond, %while.body
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_id() unnamed_addr #5 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !17
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @spectre_v3a_enable_mitigation(%struct.arm64_cpu_capabilities* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %call2 = call i1 @this_cpu_has_cap(i32 noundef 37) #15
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add = add i64 %call, ptrtoint (%struct.bp_hardening_data* @bp_hardening_data to i64)
  %0 = inttoptr i64 %add to %struct.bp_hardening_data*
  %slot = getelementptr inbounds %struct.bp_hardening_data, %struct.bp_hardening_data* %0, i64 0, i32 0
  %1 = load i32, i32* %slot, align 8
  %add3 = add i32 %1, 2
  store i32 %add3, i32* %slot, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #19, !srcloc !18
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @this_cpu_has_cap(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @parse_spectre_v4_param(i8* noundef %str) #7 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %cleanup10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %str, align 1
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %cleanup10, label %for.body

for.body:                                         ; preds = %lor.lhs.false, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %lor.lhs.false ]
  %str4 = getelementptr [3 x %struct.spectre_v4_param], [3 x %struct.spectre_v4_param]* @spectre_v4_params, i64 0, i64 %indvars.iv, i32 0
  %1 = load i8*, i8** %str4, align 8
  %call = call i64 @strlen(i8* noundef %1) #15
  %call6 = call i32 @strncmp(i8* noundef nonnull %str, i8* noundef %1, i64 noundef %call) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.inc

if.end9:                                          ; preds = %for.body
  %conv19.le = and i64 %indvars.iv, 4294967295
  %policy = getelementptr [3 x %struct.spectre_v4_param], [3 x %struct.spectre_v4_param]* @spectre_v4_params, i64 0, i64 %conv19.le, i32 1
  %2 = load i32, i32* %policy, align 8
  store i32 %2, i32* @__spectre_v4_policy, align 4
  br label %cleanup10

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %cleanup10, label %for.body

cleanup10:                                        ; preds = %for.inc, %if.end9, %entry, %lor.lhs.false
  %retval.2 = phi i32 [ 0, %if.end9 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -22, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @cpu_show_spec_store_bypass(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @spectre_v4_state, align 4
  %switch.selectcmp = icmp eq i32 %0, 1
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %switch.selectcmp9 = icmp eq i32 %0, 0
  %switch.select10 = select i1 %switch.selectcmp9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %switch.select
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef %switch.select10) #15
  %retval.0 = sext i32 %call5 to i64
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @arm64_get_spectre_v4_state() local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @spectre_v4_state, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @has_spectre_v4(%struct.arm64_cpu_capabilities* nocapture noundef readnone %cap, i32 noundef %scope) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %scope, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/proton-pack.c\22; .popsection; .long 14472b - 14470b; .short 472; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @spectre_v4_get_cpu_hw_mitigation_state() #17
  %cmp14 = icmp eq i32 %call, 2
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %call17 = call fastcc i32 @spectre_v4_get_cpu_fw_mitigation_state() #17
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %state.0 = phi i32 [ %call17, %if.then16 ], [ %call, %if.end ]
  %cmp19 = icmp ne i32 %state.0, 0
  ret i1 %cmp19
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @spectre_v4_get_cpu_hw_mitigation_state() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @read_cpuid_id() #18
  %call1 = call fastcc i1 @is_midr_in_range_list(i32 noundef %call, %struct.midr_range* noundef getelementptr inbounds ([7 x %struct.midr_range], [7 x %struct.midr_range]* @spectre_v4_get_cpu_hw_mitigation_state.spectre_v4_safe_list, i64 0, i64 0)) #17
  br i1 %call1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i1 @this_cpu_has_cap(i32 noundef 39) #15
  %. = select i1 %call2, i32 1, i32 2
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @spectre_v4_get_cpu_fw_mitigation_state() unnamed_addr #0 {
entry:
  %call = call i32 @arm_smccc_1_1_get_conduit() #15
  switch i32 %call, label %sw.epilog.thread [
    i32 2, label %do.body
    i32 1, label %do.body5
  ]

do.body:                                          ; preds = %entry
  %0 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147483649, i32 -2147450881) #16, !srcloc !20
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  %1 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147483649, i32 -2147450881) #16, !srcloc !21
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %entry
  call void asm sideeffect "", "{x0},{x1},~{memory}"(i64 2147483649, i32 -2147450881) #16, !srcloc !22
  br label %cleanup

sw.epilog:                                        ; preds = %do.body5, %do.body
  %.pn = phi { i64, i64, i64, i64 } [ %1, %do.body5 ], [ %0, %do.body ]
  %res.sroa.0.0 = extractvalue { i64, i64, i64, i64 } %.pn, 0
  %conv = trunc i64 %res.sroa.0.0 to i32
  %switch.tableidx = add i32 %conv, 2
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %cleanup

switch.lookup:                                    ; preds = %sw.epilog
  %3 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.spectre_v4_get_cpu_fw_mitigation_state, i64 0, i64 %3
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %sw.epilog, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 2, %sw.epilog ], [ 2, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @spectre_v4_patch_fw_mitigation_enable(%struct.alt_instr* nocapture noundef readnone %alt, i32* nocapture noundef readnone %origptr, i32* nocapture noundef writeonly %updptr, i32 noundef %nr_inst) local_unnamed_addr #7 section ".init.text" {
entry:
  %cmp.not = icmp eq i32 %nr_inst, 1
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/proton-pack.c\22; .popsection; .long 14472b - 14470b; .short 541; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !23
  unreachable

do.end5:                                          ; preds = %entry
  %call = call fastcc i1 @spectre_v4_mitigations_off() #17
  br i1 %call, label %if.end14, label %if.end7

if.end7:                                          ; preds = %do.end5
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #15
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %cpus_have_final_cap.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/include/asm/cpufeature.h\22; .popsection; .long 14472b - 14470b; .short 485; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !24
  unreachable

cpus_have_final_cap.exit:                         ; preds = %if.end7
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 39, i32 0)) #15
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br i1 %cmp1.i.i, label %if.end14, label %if.end10

if.end10:                                         ; preds = %cpus_have_final_cap.exit
  %call11 = call fastcc i1 @spectre_v4_mitigations_dynamic() #17
  br i1 %call11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %call13 = call i32 @aarch64_insn_gen_nop() #15
  store i32 %call13, i32* %updptr, align 4
  br label %if.end14

if.end14:                                         ; preds = %cpus_have_final_cap.exit, %do.end5, %if.then12, %if.end10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @spectre_v4_mitigations_off() unnamed_addr #0 {
entry:
  %call = call i1 @cpu_mitigations_off() #15
  %0 = load i32, i32* @__spectre_v4_policy, align 4
  %cmp = icmp eq i32 %0, 2
  %1 = select i1 %call, i1 true, i1 %cmp
  br i1 %1, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %.b20 = load i1, i1* @spectre_v4_mitigations_off.__already_done, align 1
  br i1 %.b20, label %if.end16, label %if.then6, !prof !8

if.then6:                                         ; preds = %if.then
  store i1 true, i1* @spectre_v4_mitigations_off.__already_done, align 1
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0)) #20
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.then6, %entry
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @spectre_v4_mitigations_dynamic() unnamed_addr #0 {
entry:
  %call = call fastcc i1 @spectre_v4_mitigations_off() #17
  %0 = load i32, i32* @__spectre_v4_policy, align 4
  %cmp = icmp eq i32 %0, 0
  %not.call = xor i1 %call, true
  %1 = select i1 %not.call, i1 %cmp, i1 false
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch64_insn_gen_nop() local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @spectre_v4_patch_fw_mitigation_conduit(%struct.alt_instr* nocapture noundef readnone %alt, i32* nocapture noundef readnone %origptr, i32* nocapture noundef writeonly %updptr, i32 noundef %nr_inst) local_unnamed_addr #7 section ".init.text" {
entry:
  %cmp.not = icmp eq i32 %nr_inst, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/proton-pack.c\22; .popsection; .long 14472b - 14470b; .short 563; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !25
  unreachable

do.end7:                                          ; preds = %entry
  %call = call i32 @arm_smccc_1_1_get_conduit() #15
  switch i32 %call, label %cleanup [
    i32 2, label %sw.epilog
    i32 1, label %sw.bb9
  ]

sw.bb9:                                           ; preds = %do.end7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %sw.bb9
  %insn.0 = phi i32 [ -738197501, %sw.bb9 ], [ -738197502, %do.end7 ]
  store i32 %insn.0, i32* %updptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %sw.epilog
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @spectre_v4_enable_mitigation(%struct.arm64_cpu_capabilities* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @spectre_v4_enable_hw_mitigation() #17
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %entry
  %call12 = call fastcc i32 @spectre_v4_enable_fw_mitigation() #17
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %entry
  %state.0 = phi i32 [ %call12, %if.then11 ], [ %call, %entry ]
  call fastcc void @update_mitigation_state(i32* noundef nonnull @spectre_v4_state, i32 noundef %state.0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @spectre_v4_enable_hw_mitigation() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @spectre_v4_get_cpu_hw_mitigation_state() #17
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i1 @this_cpu_has_cap(i32 noundef 39) #15
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @__raw_spin_lock() #17
  %.b22 = load i1, i1* @spectre_v4_enable_hw_mitigation.undef_hook_registered, align 1
  br i1 %.b22, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @register_undef_hook(%struct.undef_hook* noundef nonnull @ssbs_emulation_hook) #15
  store i1 true, i1* @spectre_v4_enable_hw_mitigation.undef_hook_registered, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  call fastcc void @__raw_spin_unlock() #17
  %call4 = call fastcc i1 @spectre_v4_mitigations_off() #17
  br i1 %call4, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end3
  %0 = call i64 asm sideeffect "mrs $0, sctlr_el1", "=r"() #16, !srcloc !26
  %or = or i64 %0, 17592186044416
  %cmp6.not = icmp eq i64 %or, %0
  br i1 %cmp6.not, label %if.end10, label %do.body8

do.body8:                                         ; preds = %do.body
  call void asm sideeffect "msr sctlr_el1, ${0:x}", "rZ"(i64 %or) #16, !srcloc !27
  br label %if.end10

if.end10:                                         ; preds = %do.body8, %do.body
  call void asm sideeffect ".inst (0xd500401f | ((3) << 16 | (1) << 5) | ((!!1) << 8))\0A\09", ""() #16, !srcloc !28
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void asm sideeffect ".inst (0xd500401f | ((3) << 16 | (1) << 5) | ((!!0) << 8))\0A\09", ""() #16, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end13, %if.end10
  %retval.0 = phi i32 [ 2, %if.end10 ], [ 1, %if.end13 ], [ 1, %lor.lhs.false ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @spectre_v4_enable_fw_mitigation() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @spectre_v4_get_cpu_fw_mitigation_state() #17
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @spectre_v4_mitigations_off() #17
  %call3 = call i32 @arm_smccc_1_1_get_conduit() #15
  br i1 %call1, label %if.then2, label %if.end44

if.then2:                                         ; preds = %if.end
  switch i32 %call3, label %do.body33 [
    i32 2, label %do.body
    i32 1, label %do.body10
  ]

do.body:                                          ; preds = %if.then2
  %0 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147516415, i32 0) #16, !srcloc !30
  br label %cleanup

do.body10:                                        ; preds = %if.then2
  %1 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147516415, i32 0) #16, !srcloc !31
  br label %cleanup

do.body33:                                        ; preds = %if.then2
  call void asm sideeffect "", "{x0},{x1},~{memory}"(i64 2147516415, i32 0) #16, !srcloc !32
  br label %cleanup

if.end44:                                         ; preds = %if.end
  switch i32 %call3, label %do.body96 [
    i32 2, label %do.body48
    i32 1, label %do.body72
  ]

do.body48:                                        ; preds = %if.end44
  %2 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147516415, i32 1) #16, !srcloc !33
  br label %sw.epilog107

do.body72:                                        ; preds = %if.end44
  %3 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},{x1},~{memory}"(i64 2147516415, i32 1) #16, !srcloc !34
  br label %sw.epilog107

do.body96:                                        ; preds = %if.end44
  call void asm sideeffect "", "{x0},{x1},~{memory}"(i64 2147516415, i32 1) #16, !srcloc !35
  br label %sw.epilog107

sw.epilog107:                                     ; preds = %do.body96, %do.body72, %do.body48
  %call109 = call fastcc i1 @spectre_v4_mitigations_dynamic() #17
  br i1 %call109, label %if.then110, label %cleanup

if.then110:                                       ; preds = %sw.epilog107
  %call122 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call122, ptrtoint (i64* @arm64_ssbd_callback_required to i64)
  %4 = inttoptr i64 %add to i64*
  store i64 1, i64* %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog107, %if.then110, %do.body, %do.body10, %do.body33, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 2, %do.body33 ], [ 2, %do.body10 ], [ 2, %do.body ], [ 1, %if.then110 ], [ 1, %sw.epilog107 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @spectre_v4_enable_task_mitigation(%struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %tsk) #17
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %call2 = call fastcc i1 @spectre_v4_mitigations_off() #17
  br i1 %call2, label %if.end9, label %if.else

if.else:                                          ; preds = %entry
  %and = and i32 %0, 2097152
  %tobool.not = icmp ne i32 %and, 0
  %call3 = call fastcc i1 @spectre_v4_mitigations_dynamic() #17
  %call3.not = xor i1 %call3, true
  %brmerge = select i1 %call3.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br label %if.end9

if.end9:                                          ; preds = %if.else, %entry, %if.then5
  %ssbs.0.off0 = phi i1 [ %tobool7.not, %if.then5 ], [ false, %if.else ], [ true, %entry ]
  %add.ptr1 = getelementptr i8, i8* %call, i64 16048
  %1 = bitcast i8* %add.ptr1 to %struct.pt_regs*
  call fastcc void @__update_pstate_ssbs(%struct.pt_regs* noundef %1, i1 noundef %ssbs.0.off0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #3 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #8 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__update_pstate_ssbs(%struct.pt_regs* nocapture noundef %regs, i1 noundef %state) unnamed_addr #9 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 31
  %cmp = icmp eq i64 %and, 16
  %2 = select i1 %cmp, i64 8388608, i64 4096
  %neg = xor i64 %2, -1
  %and3 = and i64 %1, %neg
  %or = or i64 %2, %1
  %storemerge = select i1 %state, i64 %or, i64 %and3
  store i64 %storemerge, i64* %0, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @arch_prctl_spec_ctrl_set(%struct.task_struct* noundef %task, i64 noundef %which, i64 noundef %ctrl) local_unnamed_addr #0 {
entry:
  %cond = icmp eq i64 %which, 0
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @ssbd_prctl_set(%struct.task_struct* noundef %task, i64 noundef %ctrl) #17
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -19, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ssbd_prctl_set(%struct.task_struct* noundef %task, i64 noundef %ctrl) unnamed_addr #0 {
entry:
  %0 = add i64 %ctrl, -2
  %1 = call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 63)
  switch i64 %1, label %return [
    i64 0, label %sw.bb
    i64 3, label %sw.bb4
    i64 1, label %sw.bb8
    i64 7, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i1 @task_spec_ssb_force_disable(%struct.task_struct* noundef %task) #17
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %sw.bb
  %call1 = call fastcc i1 @spectre_v4_mitigations_on() #17
  br i1 %call1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  call fastcc void @ssbd_prctl_disable_mitigation(%struct.task_struct* noundef %task) #17
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = call fastcc i1 @spectre_v4_mitigations_off() #17
  br i1 %call5, label %return, label %if.end7

if.end7:                                          ; preds = %sw.bb4
  call fastcc void @task_set_spec_ssb_force_disable(%struct.task_struct* noundef %task) #17
  br label %sw.bb8

sw.bb8:                                           ; preds = %entry, %if.end7
  %call9 = call fastcc i1 @spectre_v4_mitigations_off() #17
  br i1 %call9, label %return, label %if.end11

if.end11:                                         ; preds = %sw.bb8
  call fastcc void @ssbd_prctl_enable_mitigation(%struct.task_struct* noundef %task) #17
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %call13 = call fastcc i1 @task_spec_ssb_force_disable(%struct.task_struct* noundef %task) #17
  br i1 %call13, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb12
  %call14 = call fastcc i1 @spectre_v4_mitigations_off() #17
  br i1 %call14, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %call16 = call fastcc i1 @spectre_v4_mitigations_on() #17
  br i1 %call16, label %return, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false15
  call fastcc void @ssbd_prctl_enable_mitigation(%struct.task_struct* noundef %task) #17
  call fastcc void @task_set_spec_ssb_noexec(%struct.task_struct* noundef %task) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end18, %if.end11, %if.end3
  call void @spectre_v4_enable_task_mitigation(%struct.task_struct* noundef %task) #17
  br label %return

return:                                           ; preds = %entry, %sw.bb12, %lor.lhs.false, %lor.lhs.false15, %sw.bb8, %sw.bb4, %if.end, %sw.bb, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %sw.bb ], [ -1, %if.end ], [ -1, %sw.bb4 ], [ -1, %sw.bb8 ], [ -1, %lor.lhs.false15 ], [ -1, %lor.lhs.false ], [ -1, %sw.bb12 ], [ -34, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @arch_prctl_spec_ctrl_get(%struct.task_struct* noundef %task, i64 noundef %which) local_unnamed_addr #0 {
entry:
  %cond = icmp eq i64 %which, 0
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @ssbd_prctl_get(%struct.task_struct* noundef %task) #17
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -19, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ssbd_prctl_get(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @spectre_v4_state, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %return
    i32 1, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  %call = call fastcc i1 @spectre_v4_mitigations_on() #17
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %sw.bb1
  %call2 = call fastcc i1 @spectre_v4_mitigations_dynamic() #17
  br i1 %call2, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end, %entry
  br label %return

sw.epilog:                                        ; preds = %if.end
  %call6 = call fastcc i1 @task_spec_ssb_force_disable(%struct.task_struct* noundef %task) #17
  br i1 %call6, label %return, label %if.end8

if.end8:                                          ; preds = %sw.epilog
  %call9 = call fastcc i1 @task_spec_ssb_noexec(%struct.task_struct* noundef %task) #17
  br i1 %call9, label %return, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call12 = call fastcc i1 @task_spec_ssb_disable(%struct.task_struct* noundef %task) #17
  %. = select i1 %call12, i32 5, i32 3
  br label %return

return:                                           ; preds = %if.end11, %if.end8, %sw.epilog, %sw.bb1, %entry, %sw.default
  %retval.0 = phi i32 [ 2, %sw.default ], [ %0, %entry ], [ 0, %sw.bb1 ], [ 9, %sw.epilog ], [ 17, %if.end8 ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @spectre_v2_mitigations_off() unnamed_addr #0 {
entry:
  %.b22 = load i1, i1* @__nospectre_v2, align 1
  br i1 %.b22, label %if.then, label %lor.end

lor.end:                                          ; preds = %entry
  %call = call i1 @cpu_mitigations_off() #15
  br i1 %call, label %if.then, label %if.end17

if.then:                                          ; preds = %entry, %lor.end
  %.b2123 = load i1, i1* @spectre_v2_mitigations_off.__already_done, align 1
  br i1 %.b2123, label %if.end17, label %if.then7, !prof !8

if.then7:                                         ; preds = %if.then
  store i1 true, i1* @spectre_v2_mitigations_off.__already_done, align 1
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0)) #20
  br label %if.end17

if.end17:                                         ; preds = %if.then, %if.then7, %lor.end
  %0 = phi i1 [ true, %if.then ], [ true, %if.then7 ], [ false, %lor.end ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @call_hvc_arch_workaround_1() #0 {
entry:
  %0 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},~{memory}"(i64 2147516416) #16, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @call_smc_arch_workaround_1() #0 {
entry:
  %0 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},~{memory}"(i64 2147516416) #16, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc void ()* @spectre_v2_get_sw_mitigation_cb() unnamed_addr #5 {
entry:
  %call = call fastcc i32 @read_cpuid_id() #18
  %and = and i32 %call, -15745040
  %0 = icmp eq i32 %and, 1359970304
  %1 = select i1 %0, void ()* @qcom_link_stack_sanitisation, void ()* null
  ret void ()* %1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @install_bp_hardening_cb(void ()* noundef %fn) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, ptrtoint (void ()** getelementptr inbounds (%struct.bp_hardening_data, %struct.bp_hardening_data* @bp_hardening_data, i64 0, i32 1) to i64)
  %0 = inttoptr i64 %add to void ()**
  store void ()* %fn, void ()** %0, align 8
  %call9 = call fastcc i1 @is_hyp_mode_available() #17
  br i1 %call9, label %if.end, label %do.end24

if.end:                                           ; preds = %entry
  %call21 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add22 = add i64 %call21, ptrtoint (%struct.bp_hardening_data* @bp_hardening_data to i64)
  %1 = inttoptr i64 %add22 to i32*
  store i32 1, i32* %1, align 4
  br label %do.end24

do.end24:                                         ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cpu_mitigations_off() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @qcom_link_stack_sanitisation() #0 {
entry:
  %0 = call i64 asm sideeffect "mov\09$0, x30\09\09\0A.rept\0916\09\09\0Abl\09. + 4\09\09\0A.endr\09\09\09\0Amov\09x30, $0\09\09\0A", "=&r"() #16, !srcloc !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_hyp_mode_available() unnamed_addr #3 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 0), align 4
  %cmp = icmp eq i32 %0, 3602
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 1), align 4
  %cmp1 = icmp eq i32 %1, 3602
  %2 = select i1 %cmp, i1 %cmp1, i1 false
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #16, !srcloc !39
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* nocapture noundef readonly %range) unnamed_addr #3 {
entry:
  %model = getelementptr inbounds %struct.midr_range, %struct.midr_range* %range, i64 0, i32 0
  %0 = load i32, i32* %model, align 4
  %rv_min = getelementptr inbounds %struct.midr_range, %struct.midr_range* %range, i64 0, i32 1
  %1 = load i32, i32* %rv_min, align 4
  %rv_max = getelementptr inbounds %struct.midr_range, %struct.midr_range* %range, i64 0, i32 2
  %2 = load i32, i32* %rv_max, align 4
  %call = call fastcc i1 @midr_is_cpu_model_range(i32 noundef %midr, i32 noundef %0, i32 noundef %1, i32 noundef %2) #17
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @midr_is_cpu_model_range(i32 noundef %midr, i32 noundef %model, i32 noundef %rv_min, i32 noundef %rv_max) unnamed_addr #12 {
entry:
  %and = and i32 %midr, -15728656
  %and1 = and i32 %midr, 15728655
  %cmp = icmp eq i32 %and, %model
  %cmp2.not = icmp uge i32 %and1, %rv_min
  %cmp3 = icmp ule i32 %and1, %rv_max
  %not.or.cond = and i1 %cmp, %cmp2.not
  %spec.select = and i1 %not.or.cond, %cmp3
  ret i1 %spec.select
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !40
  call fastcc void @do_raw_spin_lock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(%struct.undef_hook* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #17
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @spectre_v4_enable_hw_mitigation.hook_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @spectre_v4_enable_hw_mitigation.hook_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @spectre_v4_enable_hw_mitigation.hook_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #16, !srcloc !42
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @ssbs_emulation_handler(%struct.pt_regs* noundef %regs, i32 noundef %instr) #0 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and5 = and i64 %1, -4097
  %2 = shl i32 %instr, 4
  %3 = and i32 %2, 4096
  %4 = zext i32 %3 to i64
  %storemerge = or i64 %and5, %4
  store i64 %storemerge, i64* %0, align 8
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @spectre_v4_enable_hw_mitigation.hook_lock to i8*), i8 0) #16, !srcloc !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 25
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #12 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @task_spec_ssb_force_disable(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  %0 = load volatile i64, i64* %atomic_flags, align 8
  %1 = and i64 %0, 16
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @spectre_v4_mitigations_on() unnamed_addr #0 {
entry:
  %call = call fastcc i1 @spectre_v4_mitigations_off() #17
  %0 = load i32, i32* @__spectre_v4_policy, align 4
  %cmp = icmp eq i32 %0, 1
  %not.call = xor i1 %call, true
  %1 = select i1 %not.call, i1 %cmp, i1 false
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ssbd_prctl_disable_mitigation(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  call fastcc void @task_clear_spec_ssb_noexec(%struct.task_struct* noundef %task) #17
  call fastcc void @task_clear_spec_ssb_disable(%struct.task_struct* noundef %task) #17
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %task) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_set_spec_ssb_force_disable(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %atomic_flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ssbd_prctl_enable_mitigation(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  call fastcc void @task_clear_spec_ssb_noexec(%struct.task_struct* noundef %task) #17
  call fastcc void @task_set_spec_ssb_disable(%struct.task_struct* noundef %task) #17
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %task) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_set_spec_ssb_noexec(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  call fastcc void @set_bit(i64 noundef 7, i64* noundef %atomic_flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_clear_spec_ssb_noexec(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  call fastcc void @clear_bit(i64 noundef 7, i64* noundef %atomic_flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_clear_spec_ssb_disable(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %atomic_flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 25, i64* noundef %flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_set_spec_ssb_disable(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  call fastcc void @set_bit(i64 noundef 3, i64* noundef %atomic_flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 25, i64* noundef %flags) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @task_spec_ssb_noexec(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  %0 = load volatile i64, i64* %atomic_flags, align 8
  %1 = and i64 %0, 128
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @task_spec_ssb_disable(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  %0 = load volatile i64, i64* %atomic_flags, align 8
  %1 = and i64 %0, 8
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #19 = { nounwind readonly }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2151718072}
!10 = !{i64 2151705423, i64 2151705525, i64 2151705565, i64 2151705583, i64 2151705325, i64 2151705613, i64 2151705641, i64 2151705141, i64 2151705974}
!11 = !{i64 2151708894}
!12 = !{i64 2151712016}
!13 = !{i64 2151714055}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2151696606}
!16 = !{i64 2151738860}
!17 = !{i64 2148698287, i64 2148698389, i64 2148698429, i64 2148698447, i64 2148698189, i64 2148698477, i64 2148698505, i64 2148698005, i64 2148698838}
!18 = !{i64 2149155662, i64 2149155709, i64 2149155715, i64 2149155752, i64 2149155770, i64 2149156697, i64 2149156745, i64 2149156793, i64 2149156856, i64 2149156905, i64 2149155848, i64 2149155873, i64 2149155899, i64 2149155905, i64 2149155942, i64 2149155948, i64 2149155998, i64 2149156044, i64 2149156077}
!19 = !{i64 2151758902}
!20 = !{i64 2151749688}
!21 = !{i64 2151752810}
!22 = !{i64 2151754849}
!23 = !{i64 2151762741}
!24 = !{i64 2148944839}
!25 = !{i64 2151768488}
!26 = !{i64 2151760319}
!27 = !{i64 2151760489}
!28 = !{i64 2151760732, i64 2151760761}
!29 = !{i64 2151761149, i64 2151761178}
!30 = !{i64 2151770930}
!31 = !{i64 2151773118}
!32 = !{i64 2151774472}
!33 = !{i64 2151778160}
!34 = !{i64 2151780337}
!35 = !{i64 2151781683}
!36 = !{i64 2151732626}
!37 = !{i64 2151730244}
!38 = !{i64 5488, i64 5514, i64 5536, i64 5558, i64 5578}
!39 = !{i64 2148126579, i64 2148126612, i64 2148126664, i64 2148126723, i64 2148126757, i64 2148126812, i64 2148126841, i64 2148126861}
!40 = !{i64 2149773538}
!41 = !{i64 2149780819}
!42 = !{i64 2148133117, i64 2148133150, i64 2148133203, i64 2148133262, i64 2148133296, i64 2148133351, i64 2148133380, i64 2148133400}
!43 = !{i64 2149727667}
!44 = !{i64 2148116905, i64 2148117426, i64 2148117456, i64 2148117482, i64 2148117514, i64 2148117543}
!45 = !{i64 2148106335, i64 2148106846, i64 2148106876, i64 2148106902, i64 2148106934, i64 2148106963}
