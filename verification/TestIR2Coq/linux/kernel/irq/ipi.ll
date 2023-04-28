; ModuleID = 'kernel/irq/ipi.c'
source_filename = "kernel/irq/ipi.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpumask = type { [4 x i64] }
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
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type opaque
%struct.irq_affinity_notify = type opaque
%struct.proc_dir_entry = type opaque
%struct.module = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.irq_affinity_desc = type opaque

@.str = private unnamed_addr constant [47 x i8] c"\014genirq/ipi: Reservation on a non IPI domain\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"\014genirq/ipi: Reservation is not in possible_cpu_mask\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\014genirq/ipi: Reservation for empty destination mask\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"\014genirq/ipi: Destination mask has holes\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\014genirq/ipi: Can't reserve IPI, failed to alloc descs\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\014genirq/ipi: Can't reserve IPI, failed to alloc hw irqs\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\014genirq/ipi: Trying to destroy a non IPI domain!\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_reserve_ipi(%struct.irq_domain* noundef %domain, %struct.cpumask* noundef %dest) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.irq_domain* %domain, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @irq_domain_is_ipi(%struct.irq_domain* noundef nonnull %domain) #7
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry, %lor.lhs.false
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)) #8
  br label %cleanup58

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %dest, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %cleanup58

if.end10:                                         ; preds = %if.end
  %call11 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %dest) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %cleanup58

if.end19:                                         ; preds = %if.end10
  %call20 = call fastcc i1 @irq_domain_is_ipi_single(%struct.irq_domain* noundef nonnull %domain) #7
  br i1 %call20, label %if.end35, label %if.else

if.else:                                          ; preds = %if.end19
  %call22 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %dest) #7
  %call23 = call fastcc i32 @cpumask_next_zero(i32 noundef %call22, %struct.cpumask* noundef %dest) #7
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call23, %0
  br i1 %cmp, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.else
  %call25 = call i32 @cpumask_next(i32 noundef %call23, %struct.cpumask* noundef %dest) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.else
  %next.0 = phi i32 [ %call25, %if.then24 ], [ %call23, %if.else ]
  %cmp27 = icmp ult i32 %next.0, %0
  br i1 %cmp27, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end26
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %cleanup58

if.end35:                                         ; preds = %if.end26, %if.end19
  %offset.0 = phi i32 [ 0, %if.end19 ], [ %call22, %if.end26 ]
  %nr_irqs.0 = phi i32 [ 1, %if.end19 ], [ %call11, %if.end26 ]
  %call36 = call i32 @irq_domain_alloc_descs(i32 noundef -1, i32 noundef %nr_irqs.0, i64 noundef 0, i32 noundef -1, %struct.irq_affinity_desc* noundef null) #10
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end35
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %cleanup58

if.end44:                                         ; preds = %if.end35
  %1 = bitcast %struct.cpumask* %dest to i8*
  %call45 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef nonnull %domain, i32 noundef %call36, i32 noundef %nr_irqs.0, i32 noundef -1, i8* noundef %1, i1 noundef true, %struct.irq_affinity_desc* noundef null) #10
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %do.end50, label %for.body

do.end50:                                         ; preds = %if.end44
  %call52 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0)) #8
  call void @irq_free_descs(i32 noundef %call45, i32 noundef %nr_irqs.0) #10
  br label %cleanup58

for.body:                                         ; preds = %if.end44, %for.body
  %i.095 = phi i32 [ %inc, %for.body ], [ 0, %if.end44 ]
  %add = add i32 %i.095, %call45
  %call55 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %add) #10
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call55, i64 0, i32 3
  %2 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %2, i64 0, i32 3, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %dest) #7
  %3 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %3, i64 0, i32 5
  store i32 %offset.0, i32* %ipi_offset, align 8
  call fastcc void @irq_set_status_flags(i32 noundef %add) #7
  %inc = add nuw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs.0
  br i1 %exitcond.not, label %cleanup58, label %for.body

cleanup58:                                        ; preds = %for.body, %do.end31, %do.end50, %do.end41, %do.end16, %do.end7, %do.end
  %retval.1 = phi i32 [ -12, %do.end41 ], [ -16, %do.end50 ], [ -22, %do.end31 ], [ -22, %do.end16 ], [ -22, %do.end7 ], [ -22, %do.end ], [ %call45, %for.body ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_domain_is_ipi(%struct.irq_domain* nocapture noundef readonly %domain) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 12
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_subset(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay, i64* noundef %arraydecay2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call4.i = call i32 @__bitmap_weight(i64* noundef %arraydecay, i32 noundef 256) #10
  ret i32 %call4.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_domain_is_ipi_single(%struct.irq_domain* nocapture noundef readonly %domain) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_next_zero(i32 noundef %n, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %add = add i32 %n, 1
  %conv = sext i32 %add to i64
  %call1 = call fastcc i64 @find_next_zero_bit(i64* noundef %arraydecay, i64 noundef %conv) #7
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_descs(i32 noundef, i32 noundef, i64 noundef, i32 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i1 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_status_flags(i32 noundef %irq) unnamed_addr #0 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 0, i64 noundef 8192) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_destroy_ipi(i32 noundef %irq, %struct.cpumask* noundef %dest) local_unnamed_addr #0 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %irq) #10
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %cleanup, label %cond.end

cond.end:                                         ; preds = %entry
  %call1 = call fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* noundef nonnull %call) #7
  %tobool2 = icmp ne i32 %irq, 0
  %tobool5 = icmp ne %struct.cpumask* %call1, null
  %or.cond69 = select i1 %tobool2, i1 %tobool5, i1 false
  br i1 %or.cond69, label %if.end, label %cleanup

if.end:                                           ; preds = %cond.end
  %domain6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain6, align 8
  %cmp = icmp eq %struct.irq_domain* %0, null
  br i1 %cmp, label %if.then14, label %if.end25, !prof !7

if.then14:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/ipi.c\22; .popsection; .long 14472b - 14470b; .short 126; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !8
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call26 = call fastcc i1 @irq_domain_is_ipi(%struct.irq_domain* noundef nonnull %0) #7
  br i1 %call26, label %if.end30, label %do.end

do.end:                                           ; preds = %if.end25
  %call29 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0)) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call32 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %dest, %struct.cpumask* noundef nonnull %call1) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then48, label %if.end60, !prof !7

if.then48:                                        ; preds = %if.end30
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/ipi.c\22; .popsection; .long 14472b - 14470b; .short 134; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %cleanup

if.end60:                                         ; preds = %if.end30
  %call61 = call fastcc i1 @irq_domain_is_ipi_per_cpu(%struct.irq_domain* noundef nonnull %0) #7
  br i1 %call61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.end60
  %call63 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %dest) #7
  %add = add i32 %call63, %irq
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 3
  %1 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %1, i64 0, i32 5
  %2 = load i32, i32* %ipi_offset, align 8
  %sub = sub i32 %add, %2
  %call64 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %dest) #7
  br label %if.end65

if.end65:                                         ; preds = %if.end60, %if.then62
  %nr_irqs.0 = phi i32 [ %call64, %if.then62 ], [ 1, %if.end60 ]
  %irq.addr.0 = phi i32 [ %sub, %if.then62 ], [ %irq, %if.end60 ]
  call void @irq_domain_free_irqs(i32 noundef %irq.addr.0, i32 noundef %nr_irqs.0) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then48, %if.then14, %cond.end, %if.end65, %do.end
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -22, %do.end ], [ -22, %cond.end ], [ -22, %if.then14 ], [ -22, %if.then48 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #1 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 3, i64 0
  ret %struct.cpumask* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_domain_is_ipi_per_cpu(%struct.irq_domain* nocapture noundef readonly %domain) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ipi_get_hwirq(i32 noundef %irq, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %irq) #10
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %cleanup, label %cond.end

cond.end:                                         ; preds = %entry
  %call1 = call fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* noundef nonnull %call) #7
  %tobool3 = icmp ne %struct.cpumask* %call1, null
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ugt i32 %0, %cpu
  %or.cond32 = select i1 %tobool3, i1 %cmp.not, i1 false
  br i1 %or.cond32, label %if.end, label %cleanup

if.end:                                           ; preds = %cond.end
  %call5 = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull %call1) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %1 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %call9 = call fastcc i1 @irq_domain_is_ipi_per_cpu(%struct.irq_domain* noundef %1) #7
  br i1 %call9, label %if.end12, label %cond.true14

if.end12:                                         ; preds = %if.end8
  %add = add i32 %cpu, %irq
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 3
  %2 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %2, i64 0, i32 5
  %3 = load i32, i32* %ipi_offset, align 8
  %sub = sub i32 %add, %3
  %call11 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %sub) #10
  %tobool13.not = icmp eq %struct.irq_data* %call11, null
  br i1 %tobool13.not, label %cleanup, label %cond.true14

cond.true14:                                      ; preds = %if.end8, %if.end12
  %data.040 = phi %struct.irq_data* [ %call11, %if.end12 ], [ %call, %if.end8 ]
  %call15 = call fastcc i64 @irqd_to_hwirq(%struct.irq_data* noundef nonnull %data.040) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.true14, %if.end12, %if.end, %cond.end
  %retval.0 = phi i64 [ -1, %cond.end ], [ -1, %if.end ], [ %call15, %cond.true14 ], [ -1, %if.end12 ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #5 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @irqd_to_hwirq(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #1 {
entry:
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__ipi_send_single(%struct.irq_desc* noundef %desc, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #7
  %call1 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %call) #7
  %ipi_send_single = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 31
  %0 = load void (%struct.irq_data*, i32)*, void (%struct.irq_data*, i32)** %ipi_send_single, align 8
  %tobool.not = icmp eq void (%struct.irq_data*, i32)* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ipi_send_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 32
  %1 = load void (%struct.irq_data*, %struct.cpumask*)*, void (%struct.irq_data*, %struct.cpumask*)** %ipi_send_mask, align 8
  %call2 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) #7
  call void %1(%struct.irq_data* noundef %call, %struct.cpumask* noundef nonnull %call2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %2 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %call3 = call fastcc i1 @irq_domain_is_ipi_per_cpu(%struct.irq_domain* noundef %2) #7
  br i1 %call3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 3
  %3 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %3, i64 0, i32 5
  %4 = load i32, i32* %ipi_offset, align 8
  %cmp.not = icmp eq i32 %4, %cpu
  br i1 %cmp.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %irq5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 1
  %5 = load i32, i32* %irq5, align 4
  %add = sub i32 %cpu, %4
  %sub = add i32 %add, %5
  %call8 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %sub) #10
  %.pre = load void (%struct.irq_data*, i32)*, void (%struct.irq_data*, i32)** %ipi_send_single, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %6 = phi void (%struct.irq_data*, i32)* [ %.pre, %if.then4 ], [ %0, %land.lhs.true ], [ %0, %if.end ]
  %data.0 = phi %struct.irq_data* [ %call8, %if.then4 ], [ %call, %land.lhs.true ], [ %call, %if.end ]
  call void %6(%struct.irq_data* noundef %data.0, i32 noundef %cpu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef readnone %desc) unnamed_addr #6 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  ret %struct.irq_data* %irq_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #1 {
entry:
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  ret %struct.irq_chip* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #6 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__ipi_send_mask(%struct.irq_desc* noundef %desc, %struct.cpumask* noundef %dest) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #7
  %call1 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %call) #7
  %ipi_send_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 32
  %0 = load void (%struct.irq_data*, %struct.cpumask*)*, void (%struct.irq_data*, %struct.cpumask*)** %ipi_send_mask, align 8
  %tobool.not = icmp eq void (%struct.irq_data*, %struct.cpumask*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %0(%struct.irq_data* noundef %call, %struct.cpumask* noundef %dest) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %1 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %call3 = call fastcc i1 @irq_domain_is_ipi_per_cpu(%struct.irq_domain* noundef %1) #7
  br i1 %call3, label %if.then4, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %if.end
  %call940 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %dest) #9
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1041 = icmp ult i32 %call940, %2
  br i1 %cmp1041, label %for.body11.lr.ph, label %cleanup

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %ipi_send_single12 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 31
  br label %for.body11

if.then4:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 1
  %3 = load i32, i32* %irq, align 4
  %call543 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %dest) #9
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp44 = icmp ult i32 %call543, %4
  br i1 %cmp44, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.then4
  %ipi_send_single = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call546 = phi i32 [ %call543, %for.body.lr.ph ], [ %call5, %for.body ]
  %data.045 = phi %struct.irq_data* [ %call, %for.body.lr.ph ], [ %call7, %for.body ]
  %add = add i32 %call546, %3
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.045, i64 0, i32 3
  %5 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %5, i64 0, i32 5
  %6 = load i32, i32* %ipi_offset, align 8
  %sub = sub i32 %add, %6
  %call7 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %sub) #10
  %7 = load void (%struct.irq_data*, i32)*, void (%struct.irq_data*, i32)** %ipi_send_single, align 8
  call void %7(%struct.irq_data* noundef %call7, i32 noundef %call546) #10
  %call5 = call i32 @cpumask_next(i32 noundef %call546, %struct.cpumask* noundef %dest) #9
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call5, %8
  br i1 %cmp, label %for.body, label %cleanup

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %call942 = phi i32 [ %call940, %for.body11.lr.ph ], [ %call9, %for.body11 ]
  %9 = load void (%struct.irq_data*, i32)*, void (%struct.irq_data*, i32)** %ipi_send_single12, align 8
  call void %9(%struct.irq_data* noundef %call, i32 noundef %call942) #10
  %call9 = call i32 @cpumask_next(i32 noundef %call942, %struct.cpumask* noundef %dest) #9
  %10 = load i32, i32* @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %10
  br i1 %cmp10, label %for.body11, label %cleanup

cleanup:                                          ; preds = %for.body11, %for.body, %for.cond8.preheader, %if.then4, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ipi_send_single(i32 noundef %virq, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %virq) #10
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cond.end6, label %cond.end

cond.end:                                         ; preds = %entry
  %call1 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef nonnull %call) #7
  %tobool2.not = icmp eq %struct.irq_data* %call1, null
  br i1 %tobool2.not, label %cond.end6, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %call4 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef nonnull %call1) #7
  br label %cond.end6

cond.end6:                                        ; preds = %entry, %cond.end, %cond.true3
  %cond42 = phi %struct.irq_data* [ %call1, %cond.true3 ], [ null, %cond.end ], [ null, %entry ]
  %cond7 = phi %struct.irq_chip* [ %call4, %cond.true3 ], [ null, %cond.end ], [ null, %entry ]
  %call8 = call fastcc i32 @ipi_send_verify(%struct.irq_chip* noundef %cond7, %struct.irq_data* noundef %cond42, %struct.cpumask* noundef null, i32 noundef %cpu) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end26, label %if.then, !prof !10

if.then:                                          ; preds = %cond.end6
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/ipi.c\22; .popsection; .long 14472b - 14470b; .short 313; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !11
  br label %cleanup

if.end26:                                         ; preds = %cond.end6
  %call27 = call i32 @__ipi_send_single(%struct.irq_desc* noundef %call, i32 noundef %cpu) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ipi_send_verify(%struct.irq_chip* noundef readonly %chip, %struct.irq_data* nocapture noundef readonly %data, %struct.cpumask* noundef %dest, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* noundef %data) #7
  %tobool = icmp ne %struct.irq_chip* %chip, null
  %tobool1 = icmp ne %struct.cpumask* %call, null
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ipi_send_single = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 31
  %0 = load void (%struct.irq_data*, i32)*, void (%struct.irq_data*, i32)** %ipi_send_single, align 8
  %tobool2.not = icmp eq void (%struct.irq_data*, i32)* %0, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %ipi_send_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 32
  %1 = load void (%struct.irq_data*, %struct.cpumask*)*, void (%struct.irq_data*, %struct.cpumask*)** %ipi_send_mask, align 8
  %tobool3.not = icmp ne void (%struct.irq_data*, %struct.cpumask*)* %1, null
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ugt i32 %2, %cpu
  %or.cond26 = select i1 %tobool3.not, i1 %cmp.not, i1 false
  br i1 %or.cond26, label %if.end7, label %cleanup

if.end5:                                          ; preds = %if.end
  %.old = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not.old = icmp ugt i32 %.old, %cpu
  br i1 %cmp.not.old, label %if.end7, label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %if.end5
  %tobool8.not = icmp eq %struct.cpumask* %dest, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef nonnull %dest, %struct.cpumask* noundef nonnull %call) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end18

if.else:                                          ; preds = %if.end7
  %call14 = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull %call) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.else, %if.then9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end5, %land.lhs.true, %entry, %if.end18
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry ], [ -22, %land.lhs.true ], [ -22, %if.end5 ], [ -22, %if.then9 ], [ -22, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ipi_send_mask(i32 noundef %virq, %struct.cpumask* noundef %dest) local_unnamed_addr #0 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %virq) #10
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cond.end6, label %cond.end

cond.end:                                         ; preds = %entry
  %call1 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef nonnull %call) #7
  %tobool2.not = icmp eq %struct.irq_data* %call1, null
  br i1 %tobool2.not, label %cond.end6, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %call4 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef nonnull %call1) #7
  br label %cond.end6

cond.end6:                                        ; preds = %entry, %cond.end, %cond.true3
  %cond42 = phi %struct.irq_data* [ %call1, %cond.true3 ], [ null, %cond.end ], [ null, %entry ]
  %cond7 = phi %struct.irq_chip* [ %call4, %cond.true3 ], [ null, %cond.end ], [ null, %entry ]
  %call8 = call fastcc i32 @ipi_send_verify(%struct.irq_chip* noundef %cond7, %struct.irq_data* noundef %cond42, %struct.cpumask* noundef %dest, i32 noundef 0) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end26, label %if.then, !prof !10

if.then:                                          ; preds = %cond.end6
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/ipi.c\22; .popsection; .long 14472b - 14470b; .short 334; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !12
  br label %cleanup

if.end26:                                         ; preds = %cond.end6
  %call27 = call i32 @__ipi_send_mask(%struct.irq_desc* noundef %call, %struct.cpumask* noundef %dest) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_subset(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_subset(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #10
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef 256, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #10
  ret i64 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }

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
!8 = !{i64 2152001298}
!9 = !{i64 2152003434}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152005536}
!12 = !{i64 2152007345}
