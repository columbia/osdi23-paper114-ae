; ModuleID = 'drivers/clocksource/timer-of.c'
source_filename = "drivers/clocksource/timer-of.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.timer_of = type { i32, %struct.device_node*, [48 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, i8*, [16 x i8] }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.module = type opaque
%struct.of_timer_base = type { i8*, i8*, i32 }
%struct.of_timer_irq = type { i32, i32, i32, i8*, i64, i32 (i32, i8*)* }
%struct.of_timer_clk = type { %struct.clk*, i8*, i32, i64, i64 }
%struct.clk = type opaque

@.str = private unnamed_addr constant [24 x i8] c"\013Failed to iomap (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013Failed to get clock for %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013Failed for enable clock for %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013Failed to get clock rate for %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013Failed to get interrupt %s for %pOF\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\013Failed to map interrupt for %pOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\013Failed to request irq %d for %pOF\0A\00", align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @timer_of_init(%struct.device_node* noundef %np, %struct.timer_of* noundef %to) local_unnamed_addr #0 section ".init.text" {
entry:
  %flags1 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 0
  %0 = load i32, i32* %flags1, align 64
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %of_base = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 4
  %call = call fastcc i32 @timer_of_base_init(%struct.device_node* noundef %np, %struct.of_timer_base* noundef %of_base) #5
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  %.pre = load i32, i32* %flags1, align 64
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry
  %1 = phi i32 [ %0, %entry ], [ %.pre, %if.then.if.end4_crit_edge ]
  %ret.0 = phi i32 [ -22, %entry ], [ 0, %if.then.if.end4_crit_edge ]
  %flags.0 = phi i32 [ 0, %entry ], [ 1, %if.then.if.end4_crit_edge ]
  %and6 = and i32 %1, 2
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end14, label %if.then8

if.then8:                                         ; preds = %if.end4
  %of_clk = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 6
  %call9 = call fastcc i32 @timer_of_clk_init(%struct.device_node* noundef %np, %struct.of_timer_clk* noundef %of_clk) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %out_fail

if.end12:                                         ; preds = %if.then8
  %or13 = or i32 %flags.0, 2
  %.pre89 = load i32, i32* %flags1, align 64
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end4
  %2 = phi i32 [ %.pre89, %if.end12 ], [ %1, %if.end4 ]
  %ret.1 = phi i32 [ 0, %if.end12 ], [ %ret.0, %if.end4 ]
  %flags.1 = phi i32 [ %or13, %if.end12 ], [ %flags.0, %if.end4 ]
  %and16 = and i32 %2, 4
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end14
  %of_irq = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 5
  %call19 = call fastcc i32 @timer_of_irq_init(%struct.device_node* noundef %np, %struct.of_timer_irq* noundef %of_irq) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end24, label %out_fail

if.end24:                                         ; preds = %if.then18, %if.end14
  %ret.2 = phi i32 [ %ret.1, %if.end14 ], [ 0, %if.then18 ]
  %name = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 3, i32 21
  %3 = load i8*, i8** %name, align 8
  %tobool25.not = icmp eq i8* %3, null
  br i1 %tobool25.not, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end24
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %4 = load i8*, i8** %full_name, align 8
  store i8* %4, i8** %name, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24
  %np30 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 1
  store %struct.device_node* %np, %struct.device_node** %np30, align 8
  br label %cleanup

out_fail:                                         ; preds = %if.then18, %if.then8
  %ret.3 = phi i32 [ %call9, %if.then8 ], [ %call19, %if.then18 ]
  %flags.2 = phi i32 [ %flags.0, %if.then8 ], [ %flags.1, %if.then18 ]
  %and31 = and i32 %flags.2, 4
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %out_fail
  %of_irq34 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 5
  call fastcc void @timer_of_irq_exit(%struct.of_timer_irq* noundef %of_irq34) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %out_fail
  %and36 = and i32 %flags.2, 2
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end35
  %of_clk39 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 6
  call fastcc void @timer_of_clk_exit(%struct.of_timer_clk* noundef %of_clk39) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35
  %and41 = and i32 %flags.2, 1
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end40
  %of_base44 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 4
  call fastcc void @timer_of_base_exit(%struct.of_timer_base* noundef %of_base44) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end40, %if.then43, %if.end29
  %retval.0 = phi i32 [ %ret.2, %if.end29 ], [ %ret.3, %if.then43 ], [ %ret.3, %if.end40 ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @timer_of_base_init(%struct.device_node* noundef %np, %struct.of_timer_base* nocapture noundef %of_base) unnamed_addr #0 section ".init.text" {
entry:
  %name = getelementptr inbounds %struct.of_timer_base, %struct.of_timer_base* %of_base, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %0, null
  %index2 = getelementptr inbounds %struct.of_timer_base, %struct.of_timer_base* %of_base, i64 0, i32 2
  %1 = load i32, i32* %index2, align 8
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call i8* @of_io_request_and_map(%struct.device_node* noundef %np, i32 noundef %1, i8* noundef nonnull %0) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i8* @of_iomap(%struct.device_node* noundef %np, i32 noundef %1) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call3, %cond.false ]
  %base = getelementptr inbounds %struct.of_timer_base, %struct.of_timer_base* %of_base, i64 0, i32 0
  store i8* %cond, i8** %base, align 8
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %cond) #7
  br i1 %call5, label %do.end, label %return

do.end:                                           ; preds = %cond.end
  %2 = load i8*, i8** %name, align 8
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %2) #8
  %3 = load i8*, i8** %base, align 8
  %call9 = call fastcc i64 @PTR_ERR(i8* noundef %3) #7
  %conv = trunc i64 %call9 to i32
  br label %return

return:                                           ; preds = %cond.end, %do.end
  %retval.0 = phi i32 [ %conv, %do.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @timer_of_clk_init(%struct.device_node* noundef %np, %struct.of_timer_clk* nocapture noundef %of_clk) unnamed_addr #0 section ".init.text" {
entry:
  %name = getelementptr inbounds %struct.of_timer_clk, %struct.of_timer_clk* %of_clk, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call %struct.clk* @of_clk_get_by_name(%struct.device_node* noundef %np, i8* noundef nonnull %0) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %index = getelementptr inbounds %struct.of_timer_clk, %struct.of_timer_clk* %of_clk, i64 0, i32 2
  %1 = load i32, i32* %index, align 8
  %call2 = call %struct.clk* @of_clk_get(%struct.device_node* noundef %np, i32 noundef %1) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.clk* [ %call, %cond.true ], [ %call2, %cond.false ]
  %clk = getelementptr inbounds %struct.of_timer_clk, %struct.of_timer_clk* %of_clk, i64 0, i32 0
  store %struct.clk* %cond, %struct.clk** %clk, align 8
  %2 = bitcast %struct.clk* %cond to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %2) #7
  br i1 %call4, label %if.then, label %if.end10

if.then:                                          ; preds = %cond.end
  %call6 = call fastcc i64 @PTR_ERR(i8* noundef %2) #7
  %conv = trunc i64 %call6 to i32
  %cmp.not = icmp eq i32 %conv, -517
  br i1 %cmp.not, label %out, label %do.end

do.end:                                           ; preds = %if.then
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* noundef %np) #8
  br label %out

if.end10:                                         ; preds = %cond.end
  %call12 = call fastcc i32 @clk_prepare_enable(%struct.clk* noundef %cond) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end10
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* noundef %np) #8
  br label %out_clk_put

if.end20:                                         ; preds = %if.end10
  %3 = load %struct.clk*, %struct.clk** %clk, align 8
  %call22 = call i64 @clk_get_rate(%struct.clk* noundef %3) #6
  %rate = getelementptr inbounds %struct.of_timer_clk, %struct.of_timer_clk* %of_clk, i64 0, i32 3
  store i64 %call22, i64* %rate, align 8
  %tobool24.not = icmp eq i64 %call22, 0
  br i1 %tobool24.not, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end20
  %call30 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* noundef %np) #8
  %4 = load %struct.clk*, %struct.clk** %clk, align 8
  call fastcc void @clk_disable_unprepare(%struct.clk* noundef %4) #7
  br label %out_clk_put

if.end31:                                         ; preds = %if.end20
  %sub = add i64 %call22, 249
  %div = udiv i64 %sub, 250
  %period = getelementptr inbounds %struct.of_timer_clk, %struct.of_timer_clk* %of_clk, i64 0, i32 4
  store i64 %div, i64* %period, align 8
  br label %out

out:                                              ; preds = %if.then, %do.end, %out_clk_put, %if.end31
  %ret.0 = phi i32 [ %conv, %do.end ], [ -517, %if.then ], [ %ret.1, %out_clk_put ], [ 0, %if.end31 ]
  ret i32 %ret.0

out_clk_put:                                      ; preds = %if.then25, %do.end17
  %ret.1 = phi i32 [ %call12, %do.end17 ], [ -22, %if.then25 ]
  %5 = load %struct.clk*, %struct.clk** %clk, align 8
  call void @clk_put(%struct.clk* noundef %5) #6
  br label %out
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @timer_of_irq_init(%struct.device_node* noundef %np, %struct.of_timer_irq* noundef %of_irq) unnamed_addr #0 section ".init.text" {
entry:
  %add.ptr = getelementptr %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 -9, i32 3
  %clkevt1 = getelementptr inbounds i8*, i8** %add.ptr, i64 8
  %0 = bitcast i8** %clkevt1 to %struct.clock_event_device*
  %name = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 3
  %1 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @of_irq_get_byname(%struct.device_node* noundef %np, i8* noundef nonnull %1) #6
  %irq = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 0
  store i32 %call, i32* %irq, align 8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end6, label %if.end12

do.end6:                                          ; preds = %if.then
  %2 = load i8*, i8** %name, align 8
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* noundef %2, %struct.device_node* noundef %np) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 1
  %3 = load i32, i32* %index, align 4
  %call10 = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %np, i32 noundef %3) #6
  %irq11 = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 0
  store i32 %call10, i32* %irq11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.else
  %4 = phi i32 [ %call, %if.then ], [ %call10, %if.else ]
  %irq13 = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 0
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* noundef %np) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %percpu = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 2
  %5 = load i32, i32* %percpu, align 8
  %tobool22.not = icmp eq i32 %5, 0
  %handler26 = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 5
  %6 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler26, align 8
  br i1 %tobool22.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end21
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %7 = load i8*, i8** %full_name, align 8
  %8 = bitcast i8** %clkevt1 to i8*
  %call24 = call fastcc i32 @request_percpu_irq(i32 noundef %4, i32 (i32, i8*)* noundef %6, i8* noundef %7, i8* noundef %8) #7
  br label %cond.end33

cond.false:                                       ; preds = %if.end21
  %flags = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 4
  %9 = load i64, i64* %flags, align 8
  %tobool27.not = icmp eq i64 %9, 0
  %spec.select = select i1 %tobool27.not, i64 82432, i64 %9
  %full_name31 = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %10 = load i8*, i8** %full_name31, align 8
  %11 = bitcast i8** %clkevt1 to i8*
  %call32 = call fastcc i32 @request_irq(i32 noundef %4, i32 (i32, i8*)* noundef %6, i64 noundef %spec.select, i8* noundef %10, i8* noundef %11) #7
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false, %cond.true
  %cond34 = phi i32 [ %call24, %cond.true ], [ %call32, %cond.false ]
  %tobool35.not = icmp eq i32 %cond34, 0
  %12 = load i32, i32* %irq13, align 8
  br i1 %tobool35.not, label %if.end43, label %do.end39

do.end39:                                         ; preds = %cond.end33
  %call42 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 noundef %12, %struct.device_node* noundef %np) #8
  br label %cleanup

if.end43:                                         ; preds = %cond.end33
  %irq45 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 23
  store i32 %12, i32* %irq45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end39, %do.end18, %do.end6
  %retval.0 = phi i32 [ %call, %do.end6 ], [ %cond34, %do.end39 ], [ 0, %if.end43 ], [ -22, %do.end18 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @timer_of_irq_exit(%struct.of_timer_irq* noundef %of_irq) unnamed_addr #0 section ".init.text" {
entry:
  %add.ptr = getelementptr %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 -9, i32 3
  %clkevt1 = getelementptr inbounds i8*, i8** %add.ptr, i64 8
  %percpu = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 2
  %0 = load i32, i32* %percpu, align 8
  %tobool.not = icmp eq i32 %0, 0
  %irq2 = getelementptr inbounds %struct.of_timer_irq, %struct.of_timer_irq* %of_irq, i64 0, i32 0
  %1 = load i32, i32* %irq2, align 8
  %2 = bitcast i8** %clkevt1 to i8*
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @free_percpu_irq(i32 noundef %1, i8* noundef %2) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i8* @free_irq(i32 noundef %1, i8* noundef %2) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @timer_of_clk_exit(%struct.of_timer_clk* nocapture noundef %of_clk) unnamed_addr #0 section ".init.text" {
entry:
  %rate = getelementptr inbounds %struct.of_timer_clk, %struct.of_timer_clk* %of_clk, i64 0, i32 3
  store i64 0, i64* %rate, align 8
  %clk = getelementptr inbounds %struct.of_timer_clk, %struct.of_timer_clk* %of_clk, i64 0, i32 0
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  call fastcc void @clk_disable_unprepare(%struct.clk* noundef %0) #7
  %1 = load %struct.clk*, %struct.clk** %clk, align 8
  call void @clk_put(%struct.clk* noundef %1) #6
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @timer_of_base_exit(%struct.of_timer_base* nocapture noundef readonly %of_base) unnamed_addr #0 section ".init.text" {
entry:
  %base = getelementptr inbounds %struct.of_timer_base, %struct.of_timer_base* %of_base, i64 0, i32 0
  %0 = load i8*, i8** %base, align 8
  call void @iounmap(i8* noundef %0) #6
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @timer_of_cleanup(%struct.timer_of* noundef %to) local_unnamed_addr #0 section ".init.text" {
entry:
  %flags = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 0
  %0 = load i32, i32* %flags, align 64
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %of_irq = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 5
  call fastcc void @timer_of_irq_exit(%struct.of_timer_irq* noundef %of_irq) #5
  %.pre = load i32, i32* %flags, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and2 = and i32 %1, 2
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %of_clk = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 6
  call fastcc void @timer_of_clk_exit(%struct.of_timer_clk* noundef %of_clk) #5
  %.pre16 = load i32, i32* %flags, align 64
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %2 = phi i32 [ %.pre16, %if.then4 ], [ %1, %if.end ]
  %and7 = and i32 %2, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5
  %of_base = getelementptr inbounds %struct.timer_of, %struct.timer_of* %to, i64 0, i32 4
  call fastcc void @timer_of_base_exit(%struct.of_timer_base* noundef %of_base) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_io_request_and_map(%struct.device_node* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_iomap(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk* @of_clk_get_by_name(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk* @of_clk_get(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_prepare_enable(%struct.clk* noundef %clk) unnamed_addr #4 {
entry:
  %call = call i32 @clk_prepare(%struct.clk* noundef %clk) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @clk_enable(%struct.clk* noundef %clk) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @clk_unprepare(%struct.clk* noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call1, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_get_rate(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_disable_unprepare(%struct.clk* noundef %clk) unnamed_addr #4 {
entry:
  call void @clk_disable(%struct.clk* noundef %clk) #6
  call void @clk_unprepare(%struct.clk* noundef %clk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @request_percpu_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i8* noundef %devname, i8* noundef %percpu_dev_id) unnamed_addr #4 {
entry:
  %call = call i32 @__request_percpu_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef 0, i8* noundef %devname, i8* noundef %percpu_dev_id) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @request_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef %flags, i8* noundef %name, i8* noundef %dev) unnamed_addr #4 {
entry:
  %call = call i32 @request_threaded_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i32 (i32, i8*)* noundef null, i64 noundef %flags, i8* noundef %name, i8* noundef %dev) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, i32 (i32, i8*)* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, i32 (i32, i8*)* noundef, i32 (i32, i8*)* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @free_irq(i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(i8* noundef) local_unnamed_addr #1

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold nobuiltin "no-builtins" }
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
