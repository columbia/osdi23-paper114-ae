; ModuleID = 'drivers/irqchip/irq-gic-common.c'
source_filename = "drivers/irqchip/irq-gic-common.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
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
%struct.gic_quirk = type { i8*, i8*, i1 (i8*)*, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\016GIC: enabling workaround for %s\0A\00", align 1
@irq_controller_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gic_enable_of_quirks(%struct.device_node* noundef %np, %struct.gic_quirk* nocapture noundef readonly %quirks, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %desc11 = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %quirks, i64 0, i32 0
  %0 = load i8*, i8** %desc11, align 8
  %tobool.not12 = icmp eq i8* %0, null
  br i1 %tobool.not12, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %desc14 = phi i8** [ %incdec.ptr, %for.inc ], [ %desc11, %entry ]
  %1 = getelementptr inbounds i8*, i8** %desc14, i64 1
  %2 = load i8*, i8** %1, align 8
  %call = call i32 @of_device_is_compatible(%struct.device_node* noundef %np, i8* noundef %2) #4
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %init = getelementptr inbounds i8*, i8** %desc14, i64 2
  %3 = bitcast i8** %init to i1 (i8*)**
  %4 = load i1 (i8*)*, i1 (i8*)** %3, align 8
  %call2 = call i1 %4(i8* noundef %data) #4
  br i1 %call2, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %desc14, align 8
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* noundef %5) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %do.end, %for.body
  %incdec.ptr = getelementptr i8*, i8** %desc14, i64 4
  %6 = load i8*, i8** %incdec.ptr, align 8
  %tobool.not = icmp eq i8* %6, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gic_enable_quirks(i32 noundef %iidr, %struct.gic_quirk* nocapture noundef readonly %quirks, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %desc15 = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %quirks, i64 0, i32 0
  %0 = load i8*, i8** %desc15, align 8
  %tobool.not16 = icmp eq i8* %0, null
  br i1 %tobool.not16, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %desc19 = phi i8** [ %incdec.ptr, %for.inc ], [ %desc15, %entry ]
  %1 = getelementptr inbounds i8*, i8** %desc19, i64 1
  %2 = load i8*, i8** %1, align 8
  %tobool1.not = icmp eq i8* %2, null
  br i1 %tobool1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %indvars = bitcast i8** %desc19 to %struct.gic_quirk*
  %iidr2 = getelementptr inbounds i8*, i8** %desc19, i64 3
  %3 = bitcast i8** %iidr2 to i32*
  %4 = load i32, i32* %3, align 8
  %mask = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %indvars, i64 0, i32 4
  %5 = load i32, i32* %mask, align 4
  %and = and i32 %5, %iidr
  %cmp.not = icmp eq i32 %4, %and
  br i1 %cmp.not, label %if.end4, label %for.inc

if.end4:                                          ; preds = %if.end
  %init = getelementptr inbounds i8*, i8** %desc19, i64 2
  %6 = bitcast i8** %init to i1 (i8*)**
  %7 = load i1 (i8*)*, i1 (i8*)** %6, align 8
  %call = call i1 %7(i8* noundef %data) #4
  br i1 %call, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end4
  %8 = load i8*, i8** %desc19, align 8
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* noundef %8) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %do.end, %if.end, %for.body
  %incdec.ptr = getelementptr i8*, i8** %desc19, i64 4
  %9 = load i8*, i8** %incdec.ptr, align 8
  %tobool.not = icmp eq i8* %9, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @gic_configure_irq(i32 noundef %irq, i32 noundef %type, i8* noundef %base, void ()* noundef readonly %sync_access) local_unnamed_addr #0 {
entry:
  %rem = shl i32 %irq, 1
  %mul = and i32 %rem, 30
  %shl = shl nuw i32 2, %mul
  %0 = lshr i32 %irq, 2
  %mul1 = and i32 %0, 1073741820
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #6
  %idx.ext = zext i32 %mul1 to i64
  %add.ptr = getelementptr i8, i8* %base, i64 %idx.ext
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #7, !srcloc !7
  %and = and i32 %type, 12
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %neg = xor i32 %shl, -1
  %and4 = and i32 %1, %neg
  br label %if.end8

if.else:                                          ; preds = %entry
  %and5 = and i32 %type, 3
  %tobool6.not = icmp eq i32 %and5, 0
  %or = select i1 %tobool6.not, i32 0, i32 %shl
  %spec.select = or i32 %1, %or
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %and4, %if.then ], [ %spec.select, %if.else ]
  %cmp9 = icmp eq i32 %val.0, %1
  br i1 %cmp9, label %do.body12, label %if.end20

do.body12:                                        ; preds = %if.end8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %val.0, i8* %add.ptr) #7, !srcloc !8
  %2 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #7, !srcloc !7
  %cmp28.not = icmp eq i32 %2, %val.0
  %spec.select69 = select i1 %cmp28.not, i32 0, i32 -22
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #6
  %tobool40.not = icmp eq void ()* %sync_access, null
  br i1 %tobool40.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.end20
  call void %sync_access() #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then41, %do.body12
  %retval.0 = phi i32 [ 0, %do.body12 ], [ %spec.select69, %if.then41 ], [ %spec.select69, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags() #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #6
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gic_dist_config(i8* noundef %base, i32 noundef %gic_irqs, void ()* noundef readonly %sync_access) local_unnamed_addr #0 {
entry:
  %cmp41 = icmp ugt i32 %gic_irqs, 32
  br i1 %cmp41, label %for.body.lr.ph, label %for.end24

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, i8* %base, i64 3072
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  br i1 %cmp41, label %for.body4.lr.ph, label %for.end24

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %add.ptr5 = getelementptr i8, i8* %base, i64 1024
  br label %for.body4

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.042 = phi i32 [ 32, %for.body.lr.ph ], [ %add, %for.body ]
  %div = lshr exact i32 %i.042, 2
  %idx.ext = zext i32 %div to i64
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %add.ptr1) #7, !srcloc !8
  %add = add i32 %i.042, 16
  %cmp = icmp ult i32 %add, %gic_irqs
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond11.preheader:                             ; preds = %for.body4
  br i1 %cmp41, label %for.body13.lr.ph, label %for.end24

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %add.ptr14 = getelementptr i8, i8* %base, i64 896
  %add.ptr18 = getelementptr i8, i8* %base, i64 384
  br label %for.body13

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %i.144 = phi i32 [ 32, %for.body4.lr.ph ], [ %add9, %for.body4 ]
  %idx.ext6 = zext i32 %i.144 to i64
  %add.ptr7 = getelementptr i8, i8* %add.ptr5, i64 %idx.ext6
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1600085856, i8* %add.ptr7) #7, !srcloc !8
  %add9 = add i32 %i.144, 4
  %cmp3 = icmp ult i32 %add9, %gic_irqs
  br i1 %cmp3, label %for.body4, label %for.cond11.preheader

for.body13:                                       ; preds = %for.body13.lr.ph, %for.body13
  %i.246 = phi i32 [ 32, %for.body13.lr.ph ], [ %add23, %for.body13 ]
  %div15 = lshr exact i32 %i.246, 3
  %idx.ext16 = zext i32 %div15 to i64
  %add.ptr17 = getelementptr i8, i8* %add.ptr14, i64 %idx.ext16
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr17) #7, !srcloc !8
  %add.ptr21 = getelementptr i8, i8* %add.ptr18, i64 %idx.ext16
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr21) #7, !srcloc !8
  %add23 = add i32 %i.246, 32
  %cmp12 = icmp ult i32 %add23, %gic_irqs
  br i1 %cmp12, label %for.body13, label %for.end24

for.end24:                                        ; preds = %for.body13, %entry, %for.cond2.preheader, %for.cond11.preheader
  %tobool.not = icmp eq void ()* %sync_access, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end24
  call void %sync_access() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @gic_cpu_config(i8* noundef %base, i32 noundef %nr, void ()* noundef readonly %sync_access) local_unnamed_addr #0 {
entry:
  %cmp27 = icmp sgt i32 %nr, 0
  br i1 %cmp27, label %for.body.lr.ph, label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, i8* %base, i64 896
  %add.ptr2 = getelementptr i8, i8* %base, i64 384
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body
  br i1 %cmp27, label %for.body8.lr.ph, label %for.end15

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %add.ptr9 = getelementptr i8, i8* %base, i64 1024
  br label %for.body8

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %div = sdiv i32 %i.028, 8
  %idx.ext = sext i32 %div to i64
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr1) #7, !srcloc !8
  %add.ptr5 = getelementptr i8, i8* %add.ptr2, i64 %idx.ext
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr5) #7, !srcloc !8
  %add = add i32 %i.028, 32
  %cmp = icmp slt i32 %add, %nr
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %i.130 = phi i32 [ 0, %for.body8.lr.ph ], [ %add14, %for.body8 ]
  %mul = shl i32 %i.130, 2
  %div10 = sdiv i32 %mul, 4
  %idx.ext11 = sext i32 %div10 to i64
  %add.ptr12 = getelementptr i8, i8* %add.ptr9, i64 %idx.ext11
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1600085856, i8* %add.ptr12) #7, !srcloc !8
  %add14 = add i32 %i.130, 4
  %cmp7 = icmp slt i32 %add14, %nr
  br i1 %cmp7, label %for.body8, label %for.end15

for.end15:                                        ; preds = %for.body8, %entry, %for.cond6.preheader
  %tobool.not = icmp eq void ()* %sync_access, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end15
  call void %sync_access() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #6
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #4
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @irq_controller_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #4
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #7, !srcloc !12
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #7, !srcloc !13
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #6
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !14

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #7, !srcloc !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @irq_controller_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @irq_controller_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #7, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @irq_controller_lock to i8*), i8 0) #7, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #7, !srcloc !18
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { cold nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2151432513, i64 2151432560, i64 2151432566, i64 2151432603, i64 2151432621, i64 2151433541, i64 2151433589, i64 2151433637, i64 2151433700, i64 2151433749, i64 2151432699, i64 2151432724, i64 2151432750, i64 2151432756, i64 2151432793, i64 2151432799, i64 2151432849, i64 2151432895, i64 2151432928}
!8 = !{i64 3527542}
!9 = !{i64 2149698406}
!10 = !{i64 2149724249}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149309738, i64 2149309785, i64 2149309791, i64 2149309828, i64 2149309846, i64 2149311157, i64 2149311205, i64 2149311253, i64 2149311316, i64 2149311365, i64 2149309924, i64 2149309949, i64 2149309975, i64 2149309981, i64 2149310823, i64 2149310863, i64 2149310881, i64 2149310913, i64 2149310941, i64 2149310995, i64 2149311015, i64 2149311112, i64 2149310004, i64 2149310018, i64 2149310024, i64 2149310074, i64 2149310120, i64 2149310153}
!13 = !{i64 2149311917, i64 2149311964, i64 2149311970, i64 2149312007, i64 2149312025, i64 2149312968, i64 2149313016, i64 2149313064, i64 2149313127, i64 2149313176, i64 2149312103, i64 2149312128, i64 2149312154, i64 2149312160, i64 2149312197, i64 2149312203, i64 2149312253, i64 2149312299, i64 2149312332}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149304035, i64 2149304082, i64 2149304088, i64 2149304125, i64 2149304143, i64 2149305484, i64 2149305532, i64 2149305580, i64 2149305643, i64 2149305692, i64 2149304221, i64 2149304246, i64 2149304272, i64 2149304278, i64 2149305150, i64 2149305190, i64 2149305208, i64 2149305240, i64 2149305268, i64 2149305322, i64 2149305342, i64 2149305439, i64 2149304301, i64 2149304315, i64 2149304321, i64 2149304371, i64 2149304417, i64 2149304450}
!16 = !{i64 2147843358, i64 2147843391, i64 2147843444, i64 2147843503, i64 2147843537, i64 2147843592, i64 2147843621, i64 2147843641}
!17 = !{i64 2149667536}
!18 = !{i64 2149315751, i64 2149315798, i64 2149315804, i64 2149315841, i64 2149315859, i64 2149317170, i64 2149317218, i64 2149317266, i64 2149317329, i64 2149317378, i64 2149315937, i64 2149315962, i64 2149315988, i64 2149315994, i64 2149316836, i64 2149316876, i64 2149316894, i64 2149316926, i64 2149316954, i64 2149317008, i64 2149317028, i64 2149317125, i64 2149316017, i64 2149316031, i64 2149316037, i64 2149316087, i64 2149316133, i64 2149316166}
