; ModuleID = 'kernel/irq/proc.c'
source_filename = "kernel/irq/proc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.proc_dir_entry = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.62, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.62 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.60, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.0 = type { i32 }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.anon.1, [0 x i64] }
%struct.anon.1 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.2, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.2 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.45, %union.anon.46, i32 }
%struct.request_queue = type opaque
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.59, i32, [12 x i8] }
%union.anon.59 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.11, %union.anon.25, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.25 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.61, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.61 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.37, %struct.list_head, %struct.list_head, %union.anon.38 }
%struct.lockref = type { %union.anon.35 }
%union.anon.35 = type { i64 }
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.27, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.28, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.29, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.34, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.27 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.28 = type { %struct.callback_head }
%union.anon.29 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.26 }
%union.anon.26 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.34 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.32 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.30, %struct.qspinlock }
%union.anon.30 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.32 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.msi_msg = type opaque
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, void (%struct.irq_desc*)*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@register_irq_proc.register_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @register_irq_proc.register_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @register_irq_proc.register_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@root_irq_dir = internal unnamed_addr global %struct.proc_dir_entry* null, align 8
@no_irq_chip = external dso_local global %struct.irq_chip, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"smp_affinity\00", align 1
@irq_affinity_proc_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @irq_affinity_proc_open, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* @irq_affinity_proc_write, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"affinity_hint\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"smp_affinity_list\00", align 1
@irq_affinity_list_proc_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @irq_affinity_list_proc_open, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* @irq_affinity_list_proc_write, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"effective_affinity\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"effective_affinity_list\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"spurious\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@show_interrupts.prec = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"CPU%-8d\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"%*d: \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%10u \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" %8s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" %*lu\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" %*s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Edge\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"-%-8s\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@no_irq_affinity = dso_local local_unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"count %u\0Aunhandled %u\0Alast_unhandled %u ms\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"irq/default_smp_affinity\00", align 1
@default_affinity_proc_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @default_affinity_open, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* @default_affinity_write, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 8
@chained_action = external dso_local global %struct.irqaction, align 64
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@switch.table.show_irq_affinity = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_handler_proc(i32 noundef %irq, %struct.irqaction* noundef %action) local_unnamed_addr #0 {
entry:
  %name = alloca [128 x i8], align 1
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !7
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #8
  %dir = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 23
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %tobool.not = icmp eq %struct.proc_dir_entry* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %dir1 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 12
  %2 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir1, align 8
  %tobool2.not = icmp eq %struct.proc_dir_entry* %2, null
  br i1 %tobool2.not, label %lor.lhs.false3, label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %name4 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 11
  %3 = load i8*, i8** %name4, align 16
  %tobool5.not = icmp eq i8* %3, null
  br i1 %tobool5.not, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = call fastcc i32 @name_unique(i32 noundef %irq, %struct.irqaction* noundef %action) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %4 = load i8*, i8** %name4, align 16
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %4) #8
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %call13 = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef nonnull %0, %struct.proc_dir_entry* noundef %5) #8
  store %struct.proc_dir_entry* %call13, %struct.proc_dir_entry** %dir1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %if.end
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @name_unique(i32 noundef %irq, %struct.irqaction* noundef readonly %new_action) unnamed_addr #0 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #8
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #9
  %action2 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 4
  %name7 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new_action, i64 0, i32 11
  %action.031 = load %struct.irqaction*, %struct.irqaction** %action2, align 8
  %tobool.not32 = icmp eq %struct.irqaction* %action.031, null
  br i1 %tobool.not32, label %do.body11, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %action.033 = phi %struct.irqaction* [ %action.0, %for.inc ], [ %action.031, %entry ]
  %cmp3.not = icmp eq %struct.irqaction* %action.033, %new_action
  br i1 %cmp3.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.033, i64 0, i32 11
  %0 = load i8*, i8** %name, align 16
  %tobool5.not = icmp eq i8* %0, null
  br i1 %tobool5.not, label %for.inc, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %1 = load i8*, i8** %name7, align 16
  %call9 = call i32 @strcmp(i8* noundef %1, i8* noundef nonnull %0) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body11, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true6
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.033, i64 0, i32 3
  %action.0 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool.not = icmp eq %struct.irqaction* %action.0, null
  br i1 %tobool.not, label %do.body11, label %for.body

do.body11:                                        ; preds = %for.inc, %land.lhs.true6, %entry
  %ret.0 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true6 ], [ 1, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call1) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_irq_proc(i32 noundef %irq, %struct.irq_desc* nocapture noundef %desc) local_unnamed_addr #0 {
entry:
  %name = alloca [10 x i8], align 1
  %conv = zext i32 %irq to i64
  %0 = inttoptr i64 %conv to i8*
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %1, i8 0, i64 10, i1 false), !annotation !7
  %2 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @root_irq_dir, align 8
  %tobool.not = icmp eq %struct.proc_dir_entry* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %3 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %cmp = icmp eq %struct.irq_chip* %3, @no_irq_chip
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(%struct.mutex* noundef nonnull @register_irq_proc.register_lock) #8
  %dir = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 23
  %4 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %tobool2.not = icmp eq %struct.proc_dir_entry* %4, null
  br i1 %tobool2.not, label %if.end4, label %out_unlock

if.end4:                                          ; preds = %if.end
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 noundef %irq) #8
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @root_irq_dir, align 8
  %call6 = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef nonnull %1, %struct.proc_dir_entry* noundef %5) #8
  store %struct.proc_dir_entry* %call6, %struct.proc_dir_entry** %dir, align 8
  %tobool9.not = icmp eq %struct.proc_dir_entry* %call6, null
  br i1 %tobool9.not, label %out_unlock, label %if.end11

if.end11:                                         ; preds = %if.end4
  %call13 = call %struct.proc_dir_entry* @proc_create_data(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 noundef 420, %struct.proc_dir_entry* noundef nonnull %call6, %struct.proc_ops* noundef nonnull @irq_affinity_proc_ops, i8* noundef %0) #8
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %call15 = call %struct.proc_dir_entry* @proc_create_single_data(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef %6, i32 (%struct.seq_file*, i8*)* noundef nonnull @irq_affinity_hint_proc_show, i8* noundef %0) #8
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %call17 = call %struct.proc_dir_entry* @proc_create_data(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i16 noundef 420, %struct.proc_dir_entry* noundef %7, %struct.proc_ops* noundef nonnull @irq_affinity_list_proc_ops, i8* noundef %0) #8
  %8 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %call19 = call %struct.proc_dir_entry* @proc_create_single_data(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef %8, i32 (%struct.seq_file*, i8*)* noundef nonnull @irq_node_proc_show, i8* noundef %0) #8
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %call21 = call %struct.proc_dir_entry* @proc_create_single_data(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef %9, i32 (%struct.seq_file*, i8*)* noundef nonnull @irq_effective_aff_proc_show, i8* noundef %0) #8
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %call23 = call %struct.proc_dir_entry* @proc_create_single_data(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef %10, i32 (%struct.seq_file*, i8*)* noundef nonnull @irq_effective_aff_list_proc_show, i8* noundef %0) #8
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %call26 = call %struct.proc_dir_entry* @proc_create_single_data(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef %11, i32 (%struct.seq_file*, i8*)* noundef nonnull @irq_spurious_proc_show, i8* noundef %0) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4, %if.end, %if.end11
  call void @mutex_unlock(%struct.mutex* noundef nonnull @register_irq_proc.register_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %out_unlock
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_data(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.proc_ops* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_single_data(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_affinity_hint_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %mask = alloca [1 x %struct.cpumask], align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = load i8*, i8** %private, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %conv) #8
  %2 = bitcast [1 x %struct.cpumask]* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !7
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %mask) #9
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #9
  %affinity_hint = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 18
  %3 = load %struct.cpumask*, %struct.cpumask** %affinity_hint, align 16
  %tobool.not = icmp eq %struct.cpumask* %3, null
  br i1 %tobool.not, label %do.body7, label %if.then4

if.then4:                                         ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %arraydecay, %struct.cpumask* noundef nonnull %3) #9
  br label %do.body7

do.body7:                                         ; preds = %entry, %if.then4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call3) #9
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %arraydecay17 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0, i32 0, i64 0
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 noundef %4, i64* noundef nonnull %arraydecay17) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_node_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = load i8*, i8** %private, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %conv) #8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_effective_aff_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %call = call fastcc i32 @show_irq_affinity(i32 noundef 2, %struct.seq_file* noundef %m) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_effective_aff_list_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %call = call fastcc i32 @show_irq_affinity(i32 noundef 3, %struct.seq_file* noundef %m) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_spurious_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = load i8*, i8** %private, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %conv) #8
  %irq_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 10
  %2 = load i32, i32* %irq_count, align 4
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 12
  %3 = load i32, i32* %irqs_unhandled, align 16
  %last_unhandled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 11
  %4 = load i64, i64* %last_unhandled, align 8
  %call1 = call i32 @jiffies_to_msecs(i64 noundef %4) #8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %call1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_irq_proc(i32 noundef %irq, %struct.irq_desc* nocapture noundef readonly %desc) local_unnamed_addr #0 {
entry:
  %name = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8 0, i64 10, i1 false), !annotation !7
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @root_irq_dir, align 8
  %tobool.not = icmp eq %struct.proc_dir_entry* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %dir = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 23
  %2 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  %tobool1.not = icmp eq %struct.proc_dir_entry* %2, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.proc_dir_entry* noundef nonnull %2) #8
  %3 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.proc_dir_entry* noundef %3) #8
  %4 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.proc_dir_entry* noundef %4) #8
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.proc_dir_entry* noundef %5) #8
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.proc_dir_entry* noundef %6) #8
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), %struct.proc_dir_entry* noundef %7) #8
  %8 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct.proc_dir_entry* noundef %8) #8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 noundef %irq) #8
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @root_irq_dir, align 8
  call void @remove_proc_entry(i8* noundef nonnull %0, %struct.proc_dir_entry* noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(i8* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_handler_proc(i32 noundef %irq, %struct.irqaction* nocapture noundef readonly %action) local_unnamed_addr #0 {
entry:
  %dir = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 12
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %dir, align 8
  call void @proc_remove(%struct.proc_dir_entry* noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(%struct.proc_dir_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_irq_proc() local_unnamed_addr #0 {
entry:
  %call = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #8
  store %struct.proc_dir_entry* %call, %struct.proc_dir_entry** @root_irq_dir, align 8
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @register_default_affinity_proc() #9
  %call1 = call %struct.irq_desc* @irq_to_desc(i32 noundef 0) #8
  %0 = load i32, i32* @nr_irqs, align 4
  %cmp14.not = icmp eq i32 %0, 0
  br i1 %cmp14.not, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %desc.017 = phi %struct.irq_desc* [ %call5, %for.inc ], [ %call1, %if.end ]
  %irq.015 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %tobool2.not = icmp eq %struct.irq_desc* %desc.017, null
  br i1 %tobool2.not, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  call void @register_irq_proc(i32 noundef %irq.015, %struct.irq_desc* noundef nonnull %desc.017) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %inc = add nuw i32 %irq.015, 1
  %call5 = call %struct.irq_desc* @irq_to_desc(i32 noundef %inc) #8
  %1 = load i32, i32* @nr_irqs, align 4
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @register_default_affinity_proc() unnamed_addr #0 {
entry:
  %call = call %struct.proc_dir_entry* @proc_create(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i16 noundef 420, %struct.proc_dir_entry* noundef null, %struct.proc_ops* noundef nonnull @default_affinity_proc_ops) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @arch_show_interrupts(%struct.seq_file* noundef %p, i32 noundef %prec) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @show_interrupts(%struct.seq_file* noundef %p, i8* nocapture noundef readonly %v) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %v to i64*
  %1 = load i64, i64* %0, align 8
  %conv = trunc i64 %1 to i32
  %2 = load i32, i32* @nr_irqs, align 4
  %cmp = icmp slt i32 %2, %conv
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %2, %conv
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %3 = load i32, i32* @show_interrupts.prec, align 4
  %call = call i32 @arch_show_interrupts(%struct.seq_file* noundef %p, i32 noundef %3) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.cond.preheader, label %if.end19

for.cond.preheader:                               ; preds = %if.end5
  %cmp11220 = icmp sgt i32 %2, 999
  br i1 %cmp11220, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader
  %cmp11 = icmp sgt i32 %2, 9999
  br i1 %cmp11, label %for.body.1, label %for.end

for.body.1:                                       ; preds = %for.body
  %cmp11.1 = icmp sgt i32 %2, 99999
  br i1 %cmp11.1, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.body.1
  %cmp11.2 = icmp sgt i32 %2, 999999
  br i1 %cmp11.2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.body.2
  %cmp11.3 = icmp sgt i32 %2, 9999999
  br i1 %cmp11.3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.body.3
  %cmp11.4 = icmp sgt i32 %2, 99999999
  br i1 %cmp11.4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.body.4
  %cmp11.5 = icmp sgt i32 %2, 999999999
  %spec.select = select i1 %cmp11.5, i32 10, i32 9
  br label %for.end

for.end:                                          ; preds = %for.body.5, %for.body, %for.body.1, %for.body.2, %for.body.3, %for.body.4, %for.cond.preheader
  %storemerge.lcssa219 = phi i32 [ 3, %for.cond.preheader ], [ 4, %for.body ], [ 5, %for.body.1 ], [ 6, %for.body.2 ], [ 7, %for.body.3 ], [ 8, %for.body.4 ], [ %spec.select, %for.body.5 ]
  store i32 %storemerge.lcssa219, i32* @show_interrupts.prec, align 4
  %add = add nuw nsw i32 %storemerge.lcssa219, 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #8
  %call14224 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #10
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp15225 = icmp ult i32 %call14224, %4
  br i1 %cmp15225, label %for.body17, label %for.end18

for.body17:                                       ; preds = %for.end, %for.body17
  %call14226 = phi i32 [ %call14, %for.body17 ], [ %call14224, %for.end ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call14226) #8
  %call14 = call i32 @cpumask_next(i32 noundef %call14226, %struct.cpumask* noundef nonnull @__cpu_online_mask) #10
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp15 = icmp ult i32 %call14, %5
  br i1 %cmp15, label %for.body17, label %for.end18

for.end18:                                        ; preds = %for.body17, %for.end
  call void @seq_putc(%struct.seq_file* noundef %p, i8 noundef 10) #8
  br label %if.end19

if.end19:                                         ; preds = %for.end18, %if.end5
  call fastcc void @__rcu_read_lock() #8
  %call20 = call %struct.irq_desc* @irq_to_desc(i32 noundef %conv) #8
  %tobool.not = icmp eq %struct.irq_desc* %call20, null
  br i1 %tobool.not, label %outsparse, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %call21 = call fastcc i1 @irq_settings_is_hidden(%struct.irq_desc* noundef nonnull %call20) #9
  br i1 %call21, label %outsparse, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 2
  %6 = load i32*, i32** %kstat_irqs, align 8
  %tobool25.not = icmp eq i32* %6, null
  br i1 %tobool25.not, label %if.end39.thread, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %if.end24
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %call28227 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #10
  %cmp29228 = icmp ult i32 %call28227, %7
  br i1 %cmp29228, label %for.body31.lr.ph, label %if.end39.thread237

for.body31.lr.ph:                                 ; preds = %for.cond27.preheader
  %8 = ptrtoint i32* %6 to i64
  br label %for.body31

for.body31:                                       ; preds = %for.body31.lr.ph, %for.body31
  %call28230 = phi i32 [ %call28227, %for.body31.lr.ph ], [ %call28, %for.body31 ]
  %any_count.0229 = phi i64 [ 0, %for.body31.lr.ph ], [ %or, %for.body31 ]
  %idxprom = sext i32 %call28230 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  %add35 = add i64 %9, %8
  %10 = inttoptr i64 %add35 to i32*
  %11 = load i32, i32* %10, align 4
  %conv37 = zext i32 %11 to i64
  %or = or i64 %any_count.0229, %conv37
  %call28 = call i32 @cpumask_next(i32 noundef %call28230, %struct.cpumask* noundef nonnull @__cpu_online_mask) #10
  %cmp29 = icmp ult i32 %call28, %7
  br i1 %cmp29, label %for.body31, label %if.end39

if.end39:                                         ; preds = %for.body31
  %action40 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 4
  %12 = load %struct.irqaction*, %struct.irqaction** %action40, align 8
  %tobool41.not = icmp eq %struct.irqaction* %12, null
  br i1 %tobool41.not, label %land.lhs.true, label %lor.lhs.false42

if.end39.thread237:                               ; preds = %for.cond27.preheader
  %action40239 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 4
  %13 = load %struct.irqaction*, %struct.irqaction** %action40239, align 8
  %tobool41.not240 = icmp eq %struct.irqaction* %13, null
  br i1 %tobool41.not240, label %outsparse, label %lor.lhs.false42

if.end39.thread:                                  ; preds = %if.end24
  %action40209 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 4
  %14 = load %struct.irqaction*, %struct.irqaction** %action40209, align 8
  %tobool41.not210 = icmp eq %struct.irqaction* %14, null
  br i1 %tobool41.not210, label %outsparse, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end39.thread237, %if.end39.thread, %if.end39
  %action40214 = phi %struct.irqaction** [ %action40209, %if.end39.thread ], [ %action40, %if.end39 ], [ %action40239, %if.end39.thread237 ]
  %any_count.1211 = phi i64 [ 0, %if.end39.thread ], [ %or, %if.end39 ], [ 0, %if.end39.thread237 ]
  %call43 = call fastcc i32 @irq_desc_is_chained(%struct.irq_desc* noundef nonnull %call20) #9
  %tobool44 = icmp eq i32 %call43, 0
  %tobool45 = icmp ne i64 %any_count.1211, 0
  %or.cond = select i1 %tobool44, i1 true, i1 %tobool45
  br i1 %or.cond, label %if.end47, label %outsparse

land.lhs.true:                                    ; preds = %if.end39
  %tobool45.old.not = icmp eq i64 %or, 0
  br i1 %tobool45.old.not, label %outsparse, label %if.end47

if.end47:                                         ; preds = %land.lhs.true, %lor.lhs.false42
  %action40213 = phi %struct.irqaction** [ %action40, %land.lhs.true ], [ %action40214, %lor.lhs.false42 ]
  %15 = load i32, i32* @show_interrupts.prec, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 noundef %15, i32 noundef %conv) #8
  %call49232 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #10
  %16 = load i32, i32* @nr_cpu_ids, align 4
  %cmp50233 = icmp ult i32 %call49232, %16
  br i1 %cmp50233, label %for.body52, label %do.body67

for.body52:                                       ; preds = %if.end47, %cond.end
  %call49234 = phi i32 [ %call49, %cond.end ], [ %call49232, %if.end47 ]
  %17 = load i32*, i32** %kstat_irqs, align 8
  %tobool54.not = icmp eq i32* %17, null
  br i1 %tobool54.not, label %cond.end, label %do.body55

do.body55:                                        ; preds = %for.body52
  %18 = ptrtoint i32* %17 to i64
  %idxprom63 = sext i32 %call49234 to i64
  %arrayidx64 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom63
  %19 = load i64, i64* %arrayidx64, align 8
  %add65 = add i64 %19, %18
  %20 = inttoptr i64 %add65 to i32*
  %21 = load i32, i32* %20, align 4
  br label %cond.end

cond.end:                                         ; preds = %for.body52, %do.body55
  %cond = phi i32 [ %21, %do.body55 ], [ 0, %for.body52 ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef %cond) #8
  %call49 = call i32 @cpumask_next(i32 noundef %call49234, %struct.cpumask* noundef nonnull @__cpu_online_mask) #10
  %22 = load i32, i32* @nr_cpu_ids, align 4
  %cmp50 = icmp ult i32 %call49, %22
  br i1 %cmp50, label %for.body52, label %do.body67

do.body67:                                        ; preds = %cond.end, %if.end47
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 15
  %call71 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #9
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 1
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 1, i32 4
  %23 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool74.not = icmp eq %struct.irq_chip* %23, null
  br i1 %tobool74.not, label %if.else94, label %if.then75

if.then75:                                        ; preds = %do.body67
  %irq_print_chip = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %23, i64 0, i32 23
  %24 = load void (%struct.irq_data*, %struct.seq_file*)*, void (%struct.irq_data*, %struct.seq_file*)** %irq_print_chip, align 8
  %tobool78.not = icmp eq void (%struct.irq_data*, %struct.seq_file*)* %24, null
  br i1 %tobool78.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %if.then75
  call void %24(%struct.irq_data* noundef %irq_data, %struct.seq_file* noundef %p) #8
  br label %if.end95

if.else:                                          ; preds = %if.then75
  %name = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %23, i64 0, i32 1
  %25 = load i8*, i8** %name, align 8
  %tobool86.not = icmp eq i8* %25, null
  br i1 %tobool86.not, label %if.else91, label %if.then87

if.then87:                                        ; preds = %if.else
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %25) #8
  br label %if.end95

if.else91:                                        ; preds = %if.else
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %if.end95

if.else94:                                        ; preds = %do.body67
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then79, %if.else91, %if.then87, %if.else94
  %domain = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 1, i32 5
  %26 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 32
  %tobool97.not = icmp eq %struct.irq_domain* %26, null
  %27 = load i32, i32* @show_interrupts.prec, align 4
  br i1 %tobool97.not, label %if.else100, label %if.then98

if.then98:                                        ; preds = %if.end95
  %hwirq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 1, i32 2
  %28 = load i64, i64* %hwirq, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef %27, i64 noundef %28) #8
  br label %if.end101

if.else100:                                       ; preds = %if.end95
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef %27, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #8
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then98
  %call103 = call fastcc i1 @irqd_is_level_type(%struct.irq_data* noundef %irq_data) #9
  %cond105 = select i1 %call103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* noundef %cond105) #8
  %name106 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call20, i64 0, i32 29
  %29 = load i8*, i8** %name106, align 16
  %tobool107.not = icmp eq i8* %29, null
  br i1 %tobool107.not, label %if.end110, label %if.then108

if.then108:                                       ; preds = %if.end101
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %29) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end101
  %30 = load %struct.irqaction*, %struct.irqaction** %action40213, align 8
  %tobool112.not = icmp eq %struct.irqaction* %30, null
  br i1 %tobool112.not, label %if.end118, label %if.then113

if.then113:                                       ; preds = %if.end110
  %name114 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %30, i64 0, i32 11
  %31 = load i8*, i8** %name114, align 16
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %31) #8
  %next235 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %30, i64 0, i32 3
  %32 = load %struct.irqaction*, %struct.irqaction** %next235, align 8
  %cmp115.not236 = icmp eq %struct.irqaction* %32, null
  br i1 %cmp115.not236, label %if.end118, label %while.body

while.body:                                       ; preds = %if.then113, %while.body
  %33 = phi %struct.irqaction* [ %35, %while.body ], [ %32, %if.then113 ]
  %name117 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %33, i64 0, i32 11
  %34 = load i8*, i8** %name117, align 16
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* noundef %34) #8
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %33, i64 0, i32 3
  %35 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %cmp115.not = icmp eq %struct.irqaction* %35, null
  br i1 %cmp115.not, label %if.end118, label %while.body

if.end118:                                        ; preds = %while.body, %if.then113, %if.end110
  call void @seq_putc(%struct.seq_file* noundef %p, i8 noundef 10) #8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call71) #9
  br label %outsparse

outsparse:                                        ; preds = %if.end39.thread237, %if.end39.thread, %land.lhs.true, %lor.lhs.false42, %if.end19, %lor.lhs.false, %if.end118
  call fastcc void @rcu_read_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %outsparse, %if.then4
  %retval.0 = phi i32 [ %call, %if.then4 ], [ 0, %outsparse ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_hidden(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 1048576
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_is_chained(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %cmp = icmp eq %struct.irqaction* %0, @chained_action
  %1 = zext i1 %cmp to i32
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #9
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_level_type(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 8192
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_affinity_proc_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call i8* @PDE_DATA(%struct.inode* noundef %inode) #8
  %call1 = call i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef nonnull @irq_affinity_proc_show, i8* noundef %call) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @irq_affinity_proc_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buffer, i64 noundef %count, i64* nocapture noundef readnone %pos) #0 {
entry:
  %call = call fastcc i64 @write_irq_affinity(i32 noundef 0, %struct.file* noundef %file, i8* noundef %buffer, i64 noundef %count) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(%struct.inode* noundef, %struct.file* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(%struct.file* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_affinity_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %call = call fastcc i32 @show_irq_affinity(i32 noundef 0, %struct.seq_file* noundef %m) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @PDE_DATA(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @show_irq_affinity(i32 noundef %type, %struct.seq_file* noundef %m) unnamed_addr #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = load i8*, i8** %private, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %conv) #8
  switch i32 %type, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  %arraydecay = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 3, i64 0
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call2 = call fastcc %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data* noundef %irq_data) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %mask.0 = phi %struct.cpumask* [ %call2, %sw.bb1 ], [ %arraydecay, %sw.bb ]
  %2 = icmp ult i32 %type, 4
  br i1 %2, label %switch.lookup, label %cleanup

switch.lookup:                                    ; preds = %sw.epilog
  %3 = sext i32 %type to i64
  %switch.gep = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.show_irq_affinity, i64 0, i64 %3
  %switch.load = load i8*, i8** %switch.gep, align 8
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %mask.0, i64 0, i32 0, i64 0
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef %switch.load, i32 noundef %4, i64* noundef %arraydecay4) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %switch.lookup, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %sw.epilog ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 4, i64 0
  ret %struct.cpumask* %arraydecay
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @write_irq_affinity(i32 noundef %type, %struct.file* nocapture noundef readonly %file, i8* noundef %buffer, i64 noundef %count) unnamed_addr #0 {
entry:
  %new_value = alloca [1 x %struct.cpumask], align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %call1 = call i8* @PDE_DATA(%struct.inode* noundef %call) #8
  %0 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %0 to i32
  %1 = bitcast [1 x %struct.cpumask]* %new_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !7
  %call2 = call i1 @irq_can_set_affinity_usr(i32 noundef %conv) #8
  %call2.not = xor i1 %call2, true
  %2 = load i32, i32* @no_irq_affinity, align 4
  %tobool = icmp ne i32 %2, 0
  %or.cond = select i1 %call2.not, i1 true, i1 %tobool
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %new_value) #9
  %tobool6.not = icmp eq i32 %type, 0
  %conv10 = trunc i64 %count to i32
  %arraydecay11 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %new_value, i64 0, i64 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call9 = call fastcc i32 @cpumask_parselist_user(i8* noundef %buffer, i32 noundef %conv10, %struct.cpumask* noundef nonnull %arraydecay11) #9
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call12 = call fastcc i32 @cpumask_parse_user(i8* noundef %buffer, i32 noundef %conv10, %struct.cpumask* noundef nonnull %arraydecay11) #9
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %err.0 = phi i32 [ %call9, %if.then7 ], [ %call12, %if.else ]
  %tobool14.not = icmp eq i32 %err.0, 0
  br i1 %tobool14.not, label %if.end16, label %free_cpumask

if.end16:                                         ; preds = %if.end13
  %arraydecay17 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %new_value, i64 0, i64 0
  %call18 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef nonnull %arraydecay17) #9
  br i1 %call18, label %if.else23, label %free_cpumask

if.else23:                                        ; preds = %if.end16
  %call25 = call i32 @irq_set_affinity(i32 noundef %conv, %struct.cpumask* noundef nonnull %arraydecay17) #8
  %tobool26.not = icmp eq i32 %call25, 0
  %conv28 = trunc i64 %count to i32
  %spec.select = select i1 %tobool26.not, i32 %conv28, i32 %call25
  br label %free_cpumask

free_cpumask:                                     ; preds = %if.end16, %if.else23, %if.end13
  %err.1 = phi i32 [ %err.0, %if.end13 ], [ %spec.select, %if.else23 ], [ -22, %if.end16 ]
  %conv32 = sext i32 %err.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %free_cpumask
  %retval.0 = phi i64 [ %conv32, %free_cpumask ], [ -5, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @irq_can_set_affinity_usr(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %mask) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_parselist_user(i8* noundef %buf, i32 noundef %len, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %call = call i32 @bitmap_parselist_user(i8* noundef %buf, i32 noundef %len, i64* noundef %arraydecay, i32 noundef 256) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_parse_user(i8* noundef %buf, i32 noundef %len, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %call = call i32 @bitmap_parse_user(i8* noundef %buf, i32 noundef %len, i64* noundef %arraydecay, i32 noundef 256) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %src1p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_intersects(i64* noundef %arraydecay) #9
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist_user(i8* noundef, i32 noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse_user(i8* noundef, i32 noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_intersects(i64* noundef %src1) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_intersects(i64* noundef %src1, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i32 noundef 256) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_affinity_list_proc_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call i8* @PDE_DATA(%struct.inode* noundef %inode) #8
  %call1 = call i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef nonnull @irq_affinity_list_proc_show, i8* noundef %call) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @irq_affinity_list_proc_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buffer, i64 noundef %count, i64* nocapture noundef readnone %pos) #0 {
entry:
  %call = call fastcc i64 @write_irq_affinity(i32 noundef 1, %struct.file* noundef %file, i8* noundef %buffer, i64 noundef %count) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_affinity_list_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %call = call fastcc i32 @show_irq_affinity(i32 noundef 1, %struct.seq_file* noundef %m) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.proc_ops* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @default_affinity_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call i8* @PDE_DATA(%struct.inode* noundef %inode) #8
  %call1 = call i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef nonnull @default_affinity_show, i8* noundef %call) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @default_affinity_write(%struct.file* nocapture noundef readnone %file, i8* noundef %buffer, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %new_value = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %new_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %new_value) #9
  %conv = trunc i64 %count to i32
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %new_value, i64 0, i64 0
  %call1 = call fastcc i32 @cpumask_parse_user(i8* noundef %buffer, i32 noundef %conv, %struct.cpumask* noundef nonnull %arraydecay) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %out

if.end3:                                          ; preds = %entry
  %call5 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef nonnull %arraydecay) #9
  br i1 %call5, label %if.end7, label %out

if.end7:                                          ; preds = %if.end3
  call fastcc void @cpumask_copy(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0), %struct.cpumask* noundef nonnull %arraydecay) #9
  br label %out

out:                                              ; preds = %if.end3, %entry, %if.end7
  %err.0 = phi i32 [ %call1, %entry ], [ %conv, %if.end7 ], [ -22, %if.end3 ]
  %conv11 = sext i32 %err.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i64 %conv11
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @default_affinity_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 noundef %0, i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0, i32 0, i64 0)) #8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #9
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
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
  %call39 = call fastcc i32 @static_key_count() #9
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
define internal fastcc i32 @static_key_count() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #7, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #7, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #7, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  call void @rcu_read_unlock_strict() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{i64 2149396459}
!9 = !{i64 2149422302}
!10 = !{i64 2149937009}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148962286, i64 2148962333, i64 2148962339, i64 2148962376, i64 2148962394, i64 2148963705, i64 2148963753, i64 2148963801, i64 2148963864, i64 2148963913, i64 2148962472, i64 2148962497, i64 2148962523, i64 2148962529, i64 2148963371, i64 2148963411, i64 2148963429, i64 2148963461, i64 2148963489, i64 2148963543, i64 2148963563, i64 2148963660, i64 2148962552, i64 2148962566, i64 2148962572, i64 2148962622, i64 2148962668, i64 2148962701}
!13 = !{i64 2148964465, i64 2148964512, i64 2148964518, i64 2148964555, i64 2148964573, i64 2148965516, i64 2148965564, i64 2148965612, i64 2148965675, i64 2148965724, i64 2148964651, i64 2148964676, i64 2148964702, i64 2148964708, i64 2148964745, i64 2148964751, i64 2148964801, i64 2148964847, i64 2148964880}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148956583, i64 2148956630, i64 2148956636, i64 2148956673, i64 2148956691, i64 2148958032, i64 2148958080, i64 2148958128, i64 2148958191, i64 2148958240, i64 2148956769, i64 2148956794, i64 2148956820, i64 2148956826, i64 2148957698, i64 2148957738, i64 2148957756, i64 2148957788, i64 2148957816, i64 2148957870, i64 2148957890, i64 2148957987, i64 2148956849, i64 2148956863, i64 2148956869, i64 2148956919, i64 2148956965, i64 2148956998}
!16 = !{i64 2147926185, i64 2147926218, i64 2147926271, i64 2147926330, i64 2147926364, i64 2147926419, i64 2147926448, i64 2147926468}
!17 = !{i64 2149210971}
!18 = !{i64 2148968299, i64 2148968346, i64 2148968352, i64 2148968389, i64 2148968407, i64 2148969718, i64 2148969766, i64 2148969814, i64 2148969877, i64 2148969926, i64 2148968485, i64 2148968510, i64 2148968536, i64 2148968542, i64 2148969384, i64 2148969424, i64 2148969442, i64 2148969474, i64 2148969502, i64 2148969556, i64 2148969576, i64 2148969673, i64 2148968565, i64 2148968579, i64 2148968585, i64 2148968635, i64 2148968681, i64 2148968714}
!19 = !{i64 2149937226}
