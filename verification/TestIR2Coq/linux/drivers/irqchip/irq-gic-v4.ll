; ModuleID = 'drivers/irqchip/irq-gic-v4.c'
source_filename = "drivers/irqchip/irq-gic-v4.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
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
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.46 }
%struct.msi_msg = type { %union.anon.43, %union.anon.44, %union.anon.45 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { %union.anon.48, %struct.anon.49, %union.anon.50 }
%union.anon.48 = type { i32 }
%struct.anon.49 = type { i16, i16, i32 }
%union.anon.50 = type { i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.module = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%union.anon.55 = type { %struct.its_vlpi_map* }
%struct.its_vlpi_map = type { %struct.its_vm*, %struct.its_vpe*, i32, i8, i8 }
%struct.its_vm = type { %struct.fwnode_handle*, %struct.irq_domain*, %struct.page*, %struct.its_vpe**, i32, i64, i64*, i32, [16 x i32] }
%struct.its_vpe = type { %struct.page*, %struct.its_vm*, %struct.atomic_t, i32, i64, i8, i8, %union.anon.51, %struct.raw_spinlock, i16, i16, i8 }
%union.anon.51 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.fwnode_handle*, %struct.irq_domain*, [16 x %struct.anon.54], %struct.atomic_t }
%struct.anon.54 = type { i8, i8, i8 }
%struct.anon.52 = type { i32, i8 }
%struct.its_cmd_info = type { i32, %union.anon.55 }
%struct.anon.56 = type { i8, i8 }
%struct.anon.57 = type { i8, i8 }

@.str = private unnamed_addr constant [10 x i8] c"GICv4-vpe\00", align 1
@gic_domain = internal unnamed_addr global %struct.irq_domain* null, align 8
@vpe_domain_ops = internal unnamed_addr global %struct.irq_domain_ops* null, align 8
@__const.its_commit_vpe.info = private unnamed_addr constant { i32, [4 x i8], %union.anon.55 } { i32 6, [4 x i8] zeroinitializer, %union.anon.55 zeroinitializer }, align 8
@__const.its_invall_vpe.info = private unnamed_addr constant { i32, [4 x i8], %union.anon.55 } { i32 7, [4 x i8] zeroinitializer, %union.anon.55 zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"\016ITS: Enabling GICv4 support\0A\00", align 1
@sgi_domain_ops = internal unnamed_addr global %struct.irq_domain_ops* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"\013ITS: No GICv4 VPE domain allocated\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"GICv4-sgi-%d\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @gic_cpuif_has_vsgi() local_unnamed_addr #0 {
entry:
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef 1573888) #7
  %0 = and i64 %call, 251658240
  %cmp = icmp ugt i64 %0, 33554432
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @read_sanitised_ftr_reg(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_alloc_vcpu_irqs(%struct.its_vm* noundef %vm) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #9
  %call2 = call fastcc %struct.fwnode_handle* @irq_domain_alloc_named_id_fwnode(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %call1) #9
  %fwnode = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 0
  store %struct.fwnode_handle* %call2, %struct.fwnode_handle** %fwnode, align 8
  %tobool.not = icmp eq %struct.fwnode_handle* %call2, null
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.irq_domain*, %struct.irq_domain** @gic_domain, align 8
  %nr_vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 4
  %3 = load i32, i32* %nr_vpes, align 8
  %4 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** @vpe_domain_ops, align 8
  %5 = bitcast %struct.its_vm* %vm to i8*
  %call5 = call %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* noundef %2, i32 noundef 0, i32 noundef %3, %struct.fwnode_handle* noundef nonnull %call2, %struct.irq_domain_ops* noundef %4, i8* noundef %5) #7
  %domain = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 1
  store %struct.irq_domain* %call5, %struct.irq_domain** %domain, align 8
  %tobool7.not = icmp eq %struct.irq_domain* %call5, null
  br i1 %tobool7.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %6 = load i32, i32* %nr_vpes, align 8
  %cmp84 = icmp sgt i32 %6, 0
  br i1 %cmp84, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %arrayidx = getelementptr %struct.its_vpe*, %struct.its_vpe** %7, i64 %indvars.iv
  %8 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx, align 8
  %its_vm = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %8, i64 0, i32 1
  store %struct.its_vm* %vm, %struct.its_vm** %its_vm, align 8
  %9 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %arrayidx13 = getelementptr %struct.its_vpe*, %struct.its_vpe** %9, i64 %indvars.iv
  %10 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx13, align 8
  %11 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %10, i64 0, i32 7
  %12 = bitcast %union.anon.51* %11 to %struct.anon.52*
  %idai = getelementptr inbounds %struct.anon.52, %struct.anon.52* %12, i64 0, i32 1
  store i8 1, i8* %idai, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = load i32, i32* %nr_vpes, align 8
  %14 = sext i32 %13 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %14
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %15 = phi %struct.irq_domain* [ %call5, %for.cond.preheader ], [ %.pre, %for.end.loopexit ]
  %.lcssa = phi i32 [ %6, %for.cond.preheader ], [ %13, %for.end.loopexit ]
  %call16 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef %15, i32 noundef -1, i32 noundef %.lcssa, i32 noundef -1, i8* noundef %5, i1 noundef false, %struct.irq_affinity_desc* noundef null) #7
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %err, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.end
  %16 = load i32, i32* %nr_vpes, align 8
  %cmp2286 = icmp sgt i32 %16, 0
  br i1 %cmp2286, label %for.body23.lr.ph, label %cleanup47

for.body23.lr.ph:                                 ; preds = %for.cond20.preheader
  %vpes24 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 3
  br label %for.body23

for.cond20:                                       ; preds = %for.body23
  %17 = load i32, i32* %nr_vpes, align 8
  %18 = sext i32 %17 to i64
  %cmp22 = icmp slt i64 %indvars.iv.next91, %18
  br i1 %cmp22, label %for.body23, label %cleanup47

for.body23:                                       ; preds = %for.body23.lr.ph, %for.cond20
  %indvars.iv90 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next91, %for.cond20 ]
  %19 = trunc i64 %indvars.iv90 to i32
  %add = add i32 %call16, %19
  %20 = load %struct.its_vpe**, %struct.its_vpe*** %vpes24, align 8
  %arrayidx26 = getelementptr %struct.its_vpe*, %struct.its_vpe** %20, i64 %indvars.iv90
  %21 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx26, align 8
  %irq = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %21, i64 0, i32 3
  store i32 %add, i32* %irq, align 4
  %22 = load %struct.its_vpe**, %struct.its_vpe*** %vpes24, align 8
  %arrayidx29 = getelementptr %struct.its_vpe*, %struct.its_vpe** %22, i64 %indvars.iv90
  %23 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx29, align 8
  %call30 = call fastcc i32 @its_alloc_vcpu_sgis(%struct.its_vpe* noundef %23, i32 noundef %19) #9
  %tobool31.not = icmp eq i32 %call30, 0
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br i1 %tobool31.not, label %for.cond20, label %err

err:                                              ; preds = %for.body23, %for.end, %if.end, %entry
  %domain37 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 1
  %24 = load %struct.irq_domain*, %struct.irq_domain** %domain37, align 8
  %tobool38.not = icmp eq %struct.irq_domain* %24, null
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %err
  call void @irq_domain_remove(%struct.irq_domain* noundef nonnull %24) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %err
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool43.not = icmp eq %struct.fwnode_handle* %25, null
  br i1 %tobool43.not, label %cleanup47, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @irq_domain_free_fwnode(%struct.fwnode_handle* noundef nonnull %25) #7
  br label %cleanup47

cleanup47:                                        ; preds = %for.cond20, %for.cond20.preheader, %if.end41, %if.then44
  %retval.0 = phi i32 [ -12, %if.then44 ], [ -12, %if.end41 ], [ 0, %for.cond20.preheader ], [ 0, %for.cond20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fwnode_handle* @irq_domain_alloc_named_id_fwnode(i8* noundef %name, i32 noundef %id) unnamed_addr #0 {
entry:
  %call = call %struct.fwnode_handle* @__irq_domain_alloc_fwnode(i32 noundef 2, i32 noundef %id, i8* noundef %name, i64* noundef null) #7
  ret %struct.fwnode_handle* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* noundef, i32 noundef, i32 noundef, %struct.fwnode_handle* noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i1 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_alloc_vcpu_sgis(%struct.its_vpe* noundef %vpe, i32 noundef %idx) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @has_v4_1_sgi() #9
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #9
  %call3 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call2) #7
  %tobool.not = icmp eq i8* %call3, null
  br i1 %tobool.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc %struct.fwnode_handle* @irq_domain_alloc_named_id_fwnode(i8* noundef nonnull %call3, i32 noundef %idx) #9
  %fwnode = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7, i32 0, i32 0
  store %struct.fwnode_handle* %call6, %struct.fwnode_handle** %fwnode, align 8
  %tobool8.not = icmp eq %struct.fwnode_handle* %call6, null
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end5
  call void @kfree(i8* noundef nonnull %call3) #7
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %3 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** @sgi_domain_ops, align 8
  %4 = bitcast %struct.its_vpe* %vpe to i8*
  %call12 = call fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef %2, %struct.irq_domain_ops* noundef %3, i8* noundef %4) #9
  %sgi_domain = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7, i32 0, i32 1
  store %struct.irq_domain* %call12, %struct.irq_domain** %sgi_domain, align 8
  %tobool14.not = icmp eq %struct.irq_domain* %call12, null
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end10
  %call18 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef nonnull %call12, i32 noundef -1, i32 noundef 16, i32 noundef -1, i8* noundef %4, i1 noundef false, %struct.irq_affinity_desc* noundef null) #7
  %cmp = icmp slt i32 %call18, 1
  br i1 %cmp, label %err, label %cleanup

err:                                              ; preds = %if.end16, %if.end10, %if.end5, %if.end
  %name.0 = phi i8* [ null, %if.end16 ], [ null, %if.end10 ], [ %call3, %if.end5 ], [ null, %if.end ]
  %sgi_domain21 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7, i32 0, i32 1
  %5 = load %struct.irq_domain*, %struct.irq_domain** %sgi_domain21, align 8
  %tobool22.not = icmp eq %struct.irq_domain* %5, null
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %err
  call void @irq_domain_remove(%struct.irq_domain* noundef nonnull %5) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %err
  %fwnode26 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7, i32 0, i32 0
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode26, align 8
  %tobool27.not = icmp eq %struct.fwnode_handle* %6, null
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @irq_domain_free_fwnode(%struct.fwnode_handle* noundef nonnull %6) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  call void @kfree(i8* noundef %name.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry, %if.end30
  %retval.0 = phi i32 [ -12, %if.end30 ], [ 0, %entry ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(%struct.irq_domain* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_fwnode(%struct.fwnode_handle* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @its_free_vcpu_irqs(%struct.its_vm* nocapture noundef readonly %vm) local_unnamed_addr #0 {
entry:
  call fastcc void @its_free_sgi_irqs(%struct.its_vm* noundef %vm) #9
  %vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 3
  %0 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %1 = load %struct.its_vpe*, %struct.its_vpe** %0, align 8
  %irq = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %1, i64 0, i32 3
  %2 = load i32, i32* %irq, align 4
  %nr_vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 4
  %3 = load i32, i32* %nr_vpes, align 8
  call void @irq_domain_free_irqs(i32 noundef %2, i32 noundef %3) #7
  %domain = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 1
  %4 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  call void @irq_domain_remove(%struct.irq_domain* noundef %4) #7
  %fwnode = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 0
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  call void @irq_domain_free_fwnode(%struct.fwnode_handle* noundef %5) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_free_sgi_irqs(%struct.its_vm* nocapture noundef readonly %vm) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @has_v4_1_sgi() #9
  br i1 %call, label %for.cond.preheader, label %cleanup29

for.cond.preheader:                               ; preds = %entry
  %nr_vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 4
  %0 = load i32, i32* %nr_vpes, align 8
  %cmp44 = icmp sgt i32 %0, 0
  br i1 %cmp44, label %for.body.lr.ph, label %cleanup29

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup ]
  %1 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %arrayidx = getelementptr %struct.its_vpe*, %struct.its_vpe** %1, i64 %indvars.iv
  %2 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx, align 8
  %sgi_domain = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %2, i64 0, i32 7, i32 0, i32 1
  %3 = load %struct.irq_domain*, %struct.irq_domain** %sgi_domain, align 8
  %call1 = call fastcc i32 @irq_find_mapping(%struct.irq_domain* noundef %3) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then10, label %if.end21, !prof !8

if.then10:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v4.c\22; .popsection; .long 14472b - 14470b; .short 214; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  br label %cleanup

if.end21:                                         ; preds = %for.body
  call void @irq_domain_free_irqs(i32 noundef %call1, i32 noundef 16) #7
  %4 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %arrayidx24 = getelementptr %struct.its_vpe*, %struct.its_vpe** %4, i64 %indvars.iv
  %5 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx24, align 8
  %sgi_domain25 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %5, i64 0, i32 7, i32 0, i32 1
  %6 = load %struct.irq_domain*, %struct.irq_domain** %sgi_domain25, align 8
  call void @irq_domain_remove(%struct.irq_domain* noundef %6) #7
  %7 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %arrayidx28 = getelementptr %struct.its_vpe*, %struct.its_vpe** %7, i64 %indvars.iv
  %8 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx28, align 8
  %fwnode = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %8, i64 0, i32 7, i32 0, i32 0
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  call void @irq_domain_free_fwnode(%struct.fwnode_handle* noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, i32* %nr_vpes, align 8
  %11 = sext i32 %10 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp, label %for.body, label %cleanup29

cleanup29:                                        ; preds = %cleanup, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_make_vpe_non_resident(%struct.its_vpe* nocapture noundef %vpe, i1 noundef %db) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %irq = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 3
  %0 = load i32, i32* %irq, align 4
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %0) #7
  %1 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %cmd_type = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 0
  store i32 5, i32* %cmd_type, align 8
  %call10 = call fastcc i1 @has_v4_1() #9
  br i1 %call10, label %if.then11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br i1 %db, label %land.rhs.lr.ph, label %if.end19

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call1634 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #9
  br i1 %call1634, label %while.body, label %if.end19

if.then11:                                        ; preds = %entry
  %frombool = zext i1 %db to i8
  %2 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1
  %req_db = bitcast %union.anon.55* %2 to i8*
  store i8 %frombool, i8* %req_db, align 8
  br label %if.end19

while.body:                                       ; preds = %land.rhs.lr.ph, %while.body
  %3 = load i32, i32* %irq, align 4
  call void @enable_irq(i32 noundef %3) #7
  %call16 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #9
  br i1 %call16, label %while.body, label %if.end19

if.end19:                                         ; preds = %while.body, %land.rhs.lr.ph, %while.cond.preheader, %if.then11
  %call20 = call fastcc i32 @its_send_vpe_cmd(%struct.its_vpe* noundef %vpe, %struct.its_cmd_info* noundef nonnull %info) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %resident = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 5
  store i8 0, i8* %resident, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  %ready = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 6
  store i8 0, i8* %ready, align 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  ret i32 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @has_v4_1() unnamed_addr #3 {
entry:
  %0 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** @sgi_domain_ops, align 8
  %tobool = icmp ne %struct.irq_domain_ops* %0, null
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_disabled(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #3 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_send_vpe_cmd(%struct.its_vpe* nocapture noundef readonly %vpe, %struct.its_cmd_info* noundef %info) unnamed_addr #0 {
entry:
  %irq = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 3
  %0 = load i32, i32* %irq, align 4
  %1 = bitcast %struct.its_cmd_info* %info to i8*
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_make_vpe_resident(%struct.its_vpe* nocapture noundef %vpe, i1 noundef %g0en, i1 noundef %g1en) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %0 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %cmd_type = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 0
  store i32 4, i32* %cmd_type, align 8
  %call = call fastcc i1 @has_v4_1() #9
  br i1 %call, label %if.then11, label %if.else

if.then11:                                        ; preds = %entry
  %frombool1 = zext i1 %g1en to i8
  %frombool = zext i1 %g0en to i8
  %1 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1
  %2 = bitcast %union.anon.55* %1 to %struct.anon.56*
  %g0en13 = bitcast %union.anon.55* %1 to i8*
  store i8 %frombool, i8* %g0en13, align 8
  %g1en16 = getelementptr inbounds %struct.anon.56, %struct.anon.56* %2, i64 0, i32 1
  store i8 %frombool1, i8* %g1en16, align 1
  br label %if.end18

if.else:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 3
  %3 = load i32, i32* %irq, align 4
  call void @disable_irq_nosync(i32 noundef %3) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  %call19 = call fastcc i32 @its_send_vpe_cmd(%struct.its_vpe* noundef %vpe, %struct.its_cmd_info* noundef nonnull %info) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %resident = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 5
  store i8 1, i8* %resident, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_commit_vpe(%struct.its_vpe* nocapture noundef %vpe) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %0 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast ({ i32, [4 x i8], %union.anon.55 }* @__const.its_commit_vpe.info to i8*), i64 16, i1 false)
  %call = call fastcc i32 @its_send_vpe_cmd(%struct.its_vpe* noundef %vpe, %struct.its_cmd_info* noundef nonnull %info) #9
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %entry
  %ready = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 6
  store i8 1, i8* %ready, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_invall_vpe(%struct.its_vpe* nocapture noundef readonly %vpe) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %0 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast ({ i32, [4 x i8], %union.anon.55 }* @__const.its_invall_vpe.info to i8*), i64 16, i1 false)
  %call = call fastcc i32 @its_send_vpe_cmd(%struct.its_vpe* noundef %vpe, %struct.its_cmd_info* noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_map_vlpi(i32 noundef %irq, %struct.its_vlpi_map* noundef %map) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %0 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %map1 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1, i32 0
  %1 = bitcast %struct.its_cmd_info* %info to i64*
  store i64 0, i64* %1, align 8
  store %struct.its_vlpi_map* %map, %struct.its_vlpi_map** %map1, align 8
  call fastcc void @irq_set_status_flags(i32 noundef %irq) #9
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, i8* noundef nonnull %0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @irq_clear_status_flags(i32 noundef %irq) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_status_flags(i32 noundef %irq) unnamed_addr #0 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 0, i64 noundef 524288) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_vcpu_affinity(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_clear_status_flags(i32 noundef %irq) unnamed_addr #0 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 524288, i64 noundef 0) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_get_vlpi(i32 noundef %irq, %struct.its_vlpi_map* noundef %map) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %0 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = bitcast %struct.its_cmd_info* %info to i64*, !annotation !10
  store i64 0, i64* %1, align 8, !annotation !10
  %cmd_type = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 0
  store i32 1, i32* %cmd_type, align 8
  %map1 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1, i32 0
  store %struct.its_vlpi_map* %map, %struct.its_vlpi_map** %map1, align 8
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, i8* noundef nonnull %0) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_unmap_vlpi(i32 noundef %irq) local_unnamed_addr #0 {
entry:
  call fastcc void @irq_clear_status_flags(i32 noundef %irq) #9
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, i8* noundef null) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_prop_update_vlpi(i32 noundef %irq, i8 noundef %config, i1 noundef %inv) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %0 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %cmd_type = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 0
  %cond = select i1 %inv, i32 3, i32 2
  store i32 %cond, i32* %cmd_type, align 8
  %1 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1
  %config1 = bitcast %union.anon.55* %1 to i8*
  store i8 %config, i8* %config1, align 8
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, i8* noundef nonnull %0) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_prop_update_vsgi(i32 noundef %irq, i8 noundef %priority, i1 noundef %group) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  %frombool = zext i1 %group to i8
  %0 = bitcast %struct.its_cmd_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %cmd_type = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 0
  store i32 8, i32* %cmd_type, align 8
  %1 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1
  %2 = bitcast %union.anon.55* %1 to %struct.anon.57*
  %priority1 = bitcast %union.anon.55* %1 to i8*
  store i8 %priority, i8* %priority1, align 8
  %group2 = getelementptr inbounds %struct.anon.57, %struct.anon.57* %2, i64 0, i32 1
  store i8 %frombool, i8* %group2, align 1
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, i8* noundef nonnull %0) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_init_v4(%struct.irq_domain* noundef %domain, %struct.irq_domain_ops* noundef %vpe_ops, %struct.irq_domain_ops* noundef %sgi_ops) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.irq_domain* %domain, null
  br i1 %tobool.not, label %do.end2, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #11
  store %struct.irq_domain* %domain, %struct.irq_domain** @gic_domain, align 8
  store %struct.irq_domain_ops* %vpe_ops, %struct.irq_domain_ops** @vpe_domain_ops, align 8
  store %struct.irq_domain_ops* %sgi_ops, %struct.irq_domain_ops** @sgi_domain_ops, align 8
  br label %return

do.end2:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0)) #11
  br label %return

return:                                           ; preds = %do.end2, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %do.end2 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @__irq_domain_alloc_fwnode(i32 noundef, i32 noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @has_v4_1_sgi() unnamed_addr #0 {
entry:
  %call = call fastcc i1 @has_v4_1() #9
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call i1 @gic_cpuif_has_vsgi() #9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef %fwnode, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) unnamed_addr #0 {
entry:
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef 16, i64 noundef 16, i32 noundef 0, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #7
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef, i32 noundef, i64 noundef, i32 noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_find_mapping(%struct.irq_domain* noundef %domain) unnamed_addr #0 {
entry:
  %irq = alloca i32, align 4
  %0 = bitcast i32* %irq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %irq, align 4, !annotation !10
  %call = call %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef 0, i32* noundef nonnull %irq) #7
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  %1 = load i32, i32* %irq, align 4
  %retval.0 = select i1 %tobool.not, i32 0, i32 %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind readnone }
attributes #9 = { nobuiltin "no-builtins" }
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
!7 = !{i64 1287833}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152102529}
!10 = !{!"auto-init"}
